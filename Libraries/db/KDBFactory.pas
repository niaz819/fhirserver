{! 1 !}
{0.00-010  30 Jun 04 12:31  [21152]  User: Grahame Grieve    fix startup problem}

unit KDBFactory;

interface

uses
  KDBDialects,
  KDBManager,
  KSettings;

type
  EKDBFactoryException = class(EKDBException);

procedure KDBConvertSettings(ASettings : TSettingsAdapter);

function KDBDescribeDB(ASettings : TSettingsAdapter; APlatforms : TKDBPlatforms; var VDescription : String) : Boolean;
function KDBManagerFactory(AProvider : TKDBProvider) : TKDBManagerClass; overload;
function KDBManagerFactory(AProvider : String) : TKDBManagerClass; overload;
function KDBManagerFactory(AName : String; ASettings : TSettingsAdapter; AIdent : String = '') : TKDBManager; overload;
function DecryptPassword(sPassword : String) : String;

implementation

uses
  IdSoapUtilities,
  KProcs,
  {$IFDEF VER140}
  KDBDBExpress,
  {$ENDIF}
  {$IFNDEF UNICODE}
  KDBFirebird,
  KDBOdbcExpress,
  {$ENDIF}
  KDBMySQLConn,
  KDBSoapClient,
  SysUtils;

const
  ASSERT_UNIT = 'KDBFactory';

procedure KDBConvertSettings(ASettings : TSettingsAdapter);
var
  LPlatform : TKDBPlatform;
  s : String;
begin
// convert from old style format to new style format
  if (ASettings.ReadString('Factory') <> 'new') and ((ASettings.ReadString('SymbolicName') <> '') or (ASettings.ReadString('Name') <> '')) then
    begin
    ASettings.WriteString('Name', ASettings.ReadString('SymbolicName'));
    if ASettings.ReadInteger('Platform', -1) <> -1 then
      begin
      LPlatForm := TKDBPlatform(ASettings.ReadInteger('Platform'));
      end
    else
      begin
      s := ASettings.ReadString('Platform');
      if StringStartsWith(s, 'kdbSQLServer', true) then
        LPlatForm := kdbSQLServer
      else
        LPlatForm := TKDBPlatform(IdStringToEnum(TypeInfo(TKDBPlatform), s));
      end;
    case LPlatForm of
      kdbDBIsam :
         begin
         ASettings.WriteString('Provider', IdEnumToString(TypeInfo(TKDBProvider), ord(kdbpDBIsam)));
         ASettings.WriteString('Directory', ASettings.ReadString('DatabaseDirectory'));
         end;
      kdbInterbase :
         begin
         ASettings.WriteString('Provider', IdEnumToString(TypeInfo(TKDBProvider), ord(kdbpFirebird)));
         // other settings OK
         end;
    else
      // odbc
      if ASettings.ReadString('DSN') <> '' then
        begin
        ASettings.WriteString('Provider', IdEnumToString(TypeInfo(TKDBProvider), ord(kdbpDSN)));
        end
      else
        begin
        ASettings.WriteString('Provider', IdEnumToString(TypeInfo(TKDBProvider), ord(kdbpODBC)));
        ASettings.WriteString('ODBCDriver', ASettings.ReadString('Driver'));
        end;
    end;
    ASettings.WriteString('Factory', 'new');
    end;
end;

function KDBDescribeDB(ASettings : TSettingsAdapter; APlatforms : TKDBPlatforms; var VDescription : String) : Boolean;
var
  LProv : TKDBProvider;
  LPlat : TKDBPlatform;
  s : string;
begin
  try
    if ASettings.ReadString('Provider', '') = '' then
      begin
      raise EKDBFactoryException.create('Database access not configured');
      end;
    LProv := TKDBProvider(IdStringToEnum(TypeInfo(TKDBProvider), ASettings.ReadString('Provider', '')));
    if ASettings.ReadInteger('Platform', -1) <> -1 then
      begin
      LPlat := TKDBPlatform(ASettings.ReadInteger('Platform', 0));
      end
    else
      begin
      s := ASettings.ReadString('Platform', '');
      if StringStartsWith(s, 'kdbSQLServer', true) then
        LPlat := kdbSQLServer
      else
        LPlat := TKDBPlatform(IdStringToEnum(TypeInfo(TKDBPlatform), s));
      end;
    if not (LPlat in APlatforms) then
      begin
      raise EKDBFactoryException.create('Platform '+ASettings.ReadString('Platform', '')+' is not supported');
      end;
    case LProv of
      kdbpUnknown : raise EKDBFactoryException.create('unknown provider');
      kdbpDSN : VDescription := ASettings.ReadString('DSN')+' ['+ASettings.ReadString('Username')+']';
      kdbpODBC : VDescription := '\\'+ASettings.ReadString('Server')+'\'+ASettings.ReadString('Database')+' ['+ASettings.ReadString('Username')+']';
      kdbpFirebird : VDescription := '\\'+ASettings.ReadString('Server')+'\'+ASettings.ReadString('Database')+' ['+ASettings.ReadString('Username')+']';
      kdbpDBIsam : VDescription := ASettings.ReadString('Directory');
      kdbpDBXpress : raise EKDBFactoryException.create('DBXpress not handled yet');
      kdbpSoapClient : VDescription := ASettings.ReadString('URL');
      kdbpMySQL : VDescription := '\\'+ASettings.ReadString('Server')+'\'+ASettings.ReadString('Database')+' ['+ASettings.ReadString('Username')+']';
      kdbpAccess : VDescription := ASettings.ReadString('Database');
    else
      raise EKDBFactoryException.create('Unexpected Provider');
    end;
    VDescription := DescribePlatform(LPlat)+': '+VDescription;
    result := true;
  except
    on e:exception do
      begin
      result := false;
      VDescription := 'Error: '+e.Message;
      end;
  end;
end;

function KDBManagerFactory(AProvider : TKDBProvider) : TKDBManagerClass;
const ASSERT_LOCATION = ASSERT_UNIT+'.KDBManagerFactory1';
begin
  case AProvider of
  {$IFNDEF LINUX}
    kdbpDSN : result := TKDBOdbcDSN;
    kdbpODBC : result := TKDBOdbcDirect;
    kdbpFirebird : result := TFireBirdConnMan;
    kdbpSoapClient : result := TKDBSoapConnMan;
    kdbpAccess : result := TKDBOdbcDirect;
    kdbpMySQL : result := TMySQLConnMan;
  {$ENDIF}
  {$IFDEF VER140}
    kdbpDBXpress : result := TDBExpressConnMan;
  {$ENDIF}
  else
    // kdbpUnknown,
    raise EKDBFactoryException.create(ASSERT_LOCATION+': the provider '+IdEnumToString(TypeInfo(TKDBProvider), ord(AProvider))+' is not known or not supported by this system');
  end;
end;

function KDBManagerFactory(AProvider : String) : TKDBManagerClass;
const ASSERT_LOCATION = ASSERT_UNIT+'.KDBManagerFactory2';
begin
  result := KDBManagerFactory(TKDBProvider(IdStringToEnum(TypeInfo(TKDBProvider), AProvider)));
end;

function KDBManagerFactory(AName : String; ASettings : TSettingsAdapter; AIdent : String = '') : TKDBManager;
const ASSERT_LOCATION = ASSERT_UNIT+'.KDBManagerFactory3';
begin
  if AName = '' then
    begin
    AName := ASettings.ReadString('Name');
    end;
  result := KDBManagerFactory(ASettings.ReadString('Provider', '')).Create(AName, ASettings, AIdent);
end;

function DecryptPassword(sPassword : String) : String;
begin
  Result := strDecrypt(sPassword, 19278);
end;

end.


