Unit ServerValidator;

Interface

Uses
  SysUtils, Classes, ActiveX, ComObj,
  MsXml, MsXmlParser,
  StringSupport,
  AdvObjects, AdvBuffers, AdvNameBuffers, AdvMemories, AdvVclStreams, AdvZipReaders, AdvZipParts,
  FHIRTypes, FHIRResources, FHIRValidator, FHIRParser, FHIRUtilities, FHIRProfileUtilities,
  TerminologyServer;

Type

  TFHIRServerValidatorContext = class (TValidatorServiceProvider)
  private
    FTerminologyServer : TTerminologyServer;
    procedure SetTerminologyServer(const Value: TTerminologyServer);

  public
    Constructor Create; Override;
    Destructor Destroy; Override;

    Function Link : TFHIRServerValidatorContext; overload;

    procedure SeeResource(r : TFhirResource); override;

    Property TerminologyServer : TTerminologyServer read FTerminologyServer write SetTerminologyServer;

    function fetchResource(t : TFhirResourceType; url : String) : TFhirResource; override;

    function expand(vs : TFhirValueSet) : TFHIRValueSet; override;
    function supportsSystem(system : string) : boolean; override;
    function validateCode(system, code, display : String) : TValidationResult; override;
    function validateCode(system, code, version : String; vs : TFHIRValueSet) : TValidationResult; override;
    function validateCode(code : TFHIRCoding; vs : TFhirValueSet) : TValidationResult; override;
    function validateCode(code : TFHIRCodeableConcept; vs : TFhirValueSet) : TValidationResult; override;
  end;


Implementation

{ TFHIRServerValidatorContext }

constructor TFHIRServerValidatorContext.Create;
begin
  inherited;
end;

destructor TFHIRServerValidatorContext.Destroy;
begin
  FTerminologyServer.Free;
  inherited;
end;


function TFHIRServerValidatorContext.Link: TFHIRServerValidatorContext;
begin
  result := TFHIRServerValidatorContext(inherited Link);
end;

procedure TFHIRServerValidatorContext.SeeResource(r : TFhirResource);
begin
  if (r.ResourceType in [frtValueSet, frtConceptMap]) then
    FTerminologyServer.SeeSpecificationResource(r)
  else
    inherited SeeResource(r);
end;

function TFHIRServerValidatorContext.validateCode(system, code, version: String; vs: TFHIRValueSet): TValidationResult;
var
  c : TFHIRCoding;
  p : TFHIRParameters;
begin
  c := TFhirCoding.Create;
  try
    c.system := system;
    c.code := code;
    c.version := version;
    p := FTerminologyServer.validate(vs, c, false);
    try
      result := TValidationResult.Create;
      try
        if not p.bool['result'] then
        begin
          result.Severity := IssueSeverityError;
          result.Message := p.str['message'];
        end;
        result.Link;
      finally
        result.free;
      end;
    finally
      p.Free;
    end;
  finally
    c.Free;
  end;
end;

procedure TFHIRServerValidatorContext.SetTerminologyServer(const Value: TTerminologyServer);
begin
  FTerminologyServer.Free;
  FTerminologyServer := Value;
end;

function TFHIRServerValidatorContext.fetchResource(t : TFhirResourceType; url : String) : TFhirResource;
begin
  if t = frtValueSet then
    result := FTerminologyServer.getValueSetByUrl(url)
  else
    result := inherited fetchResource(t, url);
end;

function TFHIRServerValidatorContext.expand(vs : TFhirValueSet) : TFHIRValueSet;
begin
  result := FTerminologyServer.expandVS(vs, '', '', '', 0, 0, 0, true);
end;

function TFHIRServerValidatorContext.supportsSystem(system : string) : boolean;
begin
  result := FTerminologyServer.supportsSystem(system);
end;

function TFHIRServerValidatorContext.validateCode(system, code, display : String) : TValidationResult;
var
  op : TFHIROperationOutcome;
begin
  op := TFHIROperationOutcome.create;
  try
    result := TValidationResult.Create;
    try
      if FTerminologyServer.checkCode(op, '', code, system, display) then
        result.Severity := IssueSeverityNull
      else if op.issueList.Count = 1 then
      begin
        result.Severity := op.issueList[0].severity;
        if op.issueList[0].details = nil then
          result.Message := op.issueList[0].diagnostics
        else
          result.Message := op.issueList[0].details.text;
      end
      else
      begin
        result.Severity := IssueSeverityError;
        result.Message := '??';
      end;
      result.Link;
    finally
      result.Free;
    end;
  finally
    op.Free;
  end;
end;


function TFHIRServerValidatorContext.validateCode(code: TFHIRCoding; vs: TFhirValueSet): TValidationResult;
var
  p : TFhirParameters;
begin
  result := TValidationResult.Create;
  try
    p := FTerminologyServer.validate(vs, code, false);
    try
      result.Message := p.str['result'];
      if p.bool['result'] then
        result.Severity := IssueSeverityInformation
      else
        result.Severity := IssueSeverityError;
    finally
      p.Free;
    end;
    result.Link;
  finally
    result.Free;
  end;
end;


function TFHIRServerValidatorContext.validateCode(code: TFHIRCodeableConcept; vs: TFhirValueSet): TValidationResult;
var
  p : TFhirParameters;
begin
  result := TValidationResult.Create;
  try
    p := FTerminologyServer.validate(vs, code, false);
    try
      result.Message := p.str['message'];
      if p.bool['result'] then
        result.Severity := IssueSeverityInformation
      else
        result.Severity := IssueSeverityError;
    finally
      p.Free;
    end;
    result.Link;
  finally
    result.Free;
  end;
end;

end.
