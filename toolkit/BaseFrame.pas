unit BaseFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Edit, FMX.TabControl, FMX.TreeView, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Platform,
  IniFiles,
  FHIRBase, FHIRResources, FHIRClient;

type
  TOnOpenResourceEvent = procedure (sender : TObject; client : TFHIRClient; format : TFHIRFormat; resource : TFHIRResource) of object;

  TBaseFrame = class(TFrame)
  private
    FTabs : TTabControl;
    FTab  : TTabItem;
    FIni: TIniFile;
    FOnOpenResource : TOnOpenResourceEvent;
  public
    property Tabs : TTabControl read FTabs write FTabs;
    property Tab : TTabItem read FTab write FTab;
    property Ini : TIniFile read FIni write FIni;
    property OnOpenResource : TOnOpenResourceEvent read FOnOpenResource write FOnOpenResource;

    procedure load; virtual;
    procedure Close;

    function canSave : boolean; virtual;
    function canSaveAs : boolean; virtual;
    function isDirty : boolean; virtual;
    function nameForSaveDialog : String; virtual;
    function save : boolean; virtual;
    function saveAs(filename : String; format : TFHIRFormat) : boolean; virtual;
    function hasResource : boolean; virtual;
    function currentResource : TFHIRResource; virtual;
    function originalResource : TFHIRResource; virtual;

    function markbusy : IFMXCursorService;
    procedure markNotBusy(cs : IFMXCursorService);
  end;

implementation

{ TBaseFrame }

function TBaseFrame.canSave: boolean;
begin
  result := false;
end;

function TBaseFrame.canSaveAs: boolean;
begin
  result := false;
end;

procedure TBaseFrame.Close;
var
  i : integer;
begin
  i := tabs.TabIndex;
  tab.Free;
  if i > 0 then
    tabs.TabIndex := i - 1
  else
    tabs.TabIndex := 0;
end;

function TBaseFrame.currentResource: TFHIRResource;
begin
  result := nil;
end;

function TBaseFrame.hasResource: boolean;
begin
  result := false;
end;

function TBaseFrame.isDirty: boolean;
begin
  result := false;
end;

procedure TBaseFrame.load;
begin

end;

function TBaseFrame.markbusy : IFMXCursorService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXCursorService) then
    result := TPlatformServices.Current.GetPlatformService(IFMXCursorService) as IFMXCursorService
  else
    result := nil;
  if Assigned(result) then
  begin
    TForm(Tabs.Owner).Cursor := result.GetCursor;
    result.SetCursor(crHourGlass);
  end;
end;

procedure TBaseFrame.markNotBusy(cs: IFMXCursorService);
begin
  if Assigned(CS) then
    cs.setCursor(TForm(Tabs.Owner).Cursor);
end;

function TBaseFrame.nameForSaveDialog: String;
begin
  result := '';
end;

function TBaseFrame.originalResource: TFHIRResource;
begin
  result := nil;
end;

function TBaseFrame.save : boolean;
begin
  raise Exception.Create('Not implemented');
end;

function TBaseFrame.saveAs(filename: String; format: TFHIRFormat): boolean;
begin
  raise Exception.Create('Not implemented');
end;

end.