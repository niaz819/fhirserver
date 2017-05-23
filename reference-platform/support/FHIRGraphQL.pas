unit FHIRGraphQL;

{
Copyright (c) 2011+, HL7 and Health Intersections Pty Ltd (http://www.healthintersections.com.au)
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.
 * Neither the name of HL7 nor the names of its contributors may be used to
   endorse or promote products derived from this software without specific
   prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
}


interface

uses
  SysUtils, Classes,
  StringSupport,
  AdvObjects, AdvGenerics,
  MsXml, MsXmlparser,
  GraphQL,
  FHIRBase, FHIRTypes, FHIRResources, FHIRParser, FHIRUtilities, FHIRPath;

type
  TFHIRGraphQLEngineDereferenceEvent = function(appInfo : TAdvObject; context : TFHIRResource; reference : TFHIRReference; out targetContext, target : TFHIRResource) : boolean of Object;
  TFHIRGraphQLEngineReverseDereferenceEvent = procedure (appInfo : TAdvObject; focusType, focusId, requestType, requestParam : String; params : TAdvList<TGraphQLArgument>; start, limit : integer; list : TAdvList<TFhirResource>) of Object;
  TFHIRGraphQLEngineSearchEvent = function (appInfo : TAdvObject; requestType: String; params : TAdvList<TGraphQLArgument>; start, limit : integer) : TFHIRBundle of Object;

  TFHIRGraphQLEngine = class (TAdvObject)
  private
    FOnFollowReference : TFHIRGraphQLEngineDereferenceEvent;
    FOnFollowReverseReference : TFHIRGraphQLEngineReverseDereferenceEvent;
    FOnSearch : TFHIRGraphQLEngineSearchEvent;

    FFocus : TFHIRResource;
    FQueryName : String;
    FOutput : TGraphQLObjectValue;
    FDocument : TGraphQLDocument;
    FAppinfo : TAdvObject;

    procedure SetDocument(const Value: TGraphQLDocument);
    procedure SetFocus(const Value: TFHIRResource);

    procedure checkNoDirectives(directives : TAdvList<TGraphQLDirective>);
    function readInteger(value, name : String): integer;
    function hasArgument(arguments : TAdvList<TGraphQLArgument>; name, value : String) : boolean;
    function targetTypeOk(arguments : TAdvList<TGraphQLArgument>; dest : TFHIRResource) : boolean;

    function filter(context : TFhirResource; prop:TFHIRProperty; arguments : TAdvList<TGraphQLArgument>; values : TFHIRObjectList; extensionMode : boolean)  : TAdvList<TFHIRObject>;
    function filterResources(fhirpath : TGraphQLArgument; bnd : TFHIRBundle)  : TAdvList<TFHIRResource>; overload;
    function filterResources(fhirpath : TGraphQLArgument; list : TAdvList<TFHIRResource>)  : TAdvList<TFHIRResource>; overload;
    procedure processObject(context : TFHIRResource; source : TFHIRObject; target : TGraphQLObjectValue; selection : TAdvList<TGraphQLSelection>);
    procedure processPrimitive(arg : TGraphQLArgument; value : TFHIRObject);
    procedure processReference(context : TFHIRResource; source : TFHIRObject; field : TGraphQLField; target : TGraphQLObjectValue);
    procedure processReverseReference(source : TFHIRResource; field : TGraphQLField; target : TGraphQLObjectValue);
    procedure processValues(context : TFHIRResource; sel: TGraphQLSelection; prop: TFHIRProperty; target: TGraphQLObjectValue; values : TAdvList<TFHIRObject>; extensionMode : boolean);
    procedure processSearch(target : TGraphQLObjectValue; selection : TAdvList<TGraphQLSelection>);
    procedure SetAppInfo(const Value: TAdvObject);

  public
    Constructor Create; override;
    Destructor Destroy; override;
    property appInfo : TAdvObject read FAppinfo write SetAppInfo;

    // the focus resource - if there is one. If there isn't, then the focus is a collection
    property focus : TFHIRResource read FFocus write SetFocus;

    // the graphql document to execute
    property queryDocument : TGraphQLDocument read FDocument write SetDocument;

    // the name of the query (if there is more than one
    property queryName : String read FQueryName write FQueryName;

    // where output is going to go
    property output : TGraphQLObjectValue read FOutput;

    property OnFollowReference : TFHIRGraphQLEngineDereferenceEvent read FOnFollowReference write FOnFollowReference;
    property OnFollowReverseReference : TFHIRGraphQLEngineReverseDereferenceEvent read FOnFollowReverseReference write FOnFollowReverseReference;
    property OnSearch : TFHIRGraphQLEngineSearchEvent read FOnSearch write FOnSearch;

    procedure execute;
  end;

implementation

{ TFHIRGraphQLEngine }

procedure TFHIRGraphQLEngine.checkNoDirectives(directives: TAdvList<TGraphQLDirective>);
begin
  if not directives.Empty then
    raise EGraphQLException.Create('Directives are not supported');
end;

constructor TFHIRGraphQLEngine.Create;
begin
  inherited;

end;

destructor TFHIRGraphQLEngine.Destroy;
begin
  FAppinfo.Free;
  FFocus.Free;
  FOutput.Free;
  FDocument.Free;
  inherited;
end;

procedure TFHIRGraphQLEngine.SetAppInfo(const Value: TAdvObject);
begin
  FAppinfo.Free;
  FAppinfo := Value;
end;

procedure TFHIRGraphQLEngine.SetDocument(const Value: TGraphQLDocument);
begin
  FDocument.Free;
  FDocument := Value;
end;

procedure TFHIRGraphQLEngine.SetFocus(const Value: TFHIRResource);
begin
  FFocus.Free;
  FFocus := Value;
end;

function TFHIRGraphQLEngine.targetTypeOk(arguments: TAdvList<TGraphQLArgument>; dest: TFHIRResource): boolean;
var
  list : TStringList;
  arg : TGraphQLArgument;
begin
  list := TStringList.Create;
  try
    for arg in arguments do
      if (arg.Name = 'type') and (arg.Values.Count = 1) then
        list.Add(arg.Values[0].ToString());
    if list.Count = 0 then
      result := true
    else
      result := list.IndexOf(dest.fhirType) > -1;
  finally
    list.Free;
  end;
end;

procedure TFHIRGraphQLEngine.execute;
begin
  if FDocument = nil then
    raise Exception.Create('Unable to process graphql - graphql document missing');

  FOutput.Free;
  FOutput := TGraphQLObjectValue.Create;

  // todo: initial conditions
  if FDocument.Operations.Count <> 1 then
    raise Exception.Create('Unable to process graphql');

  checkNoDirectives(FDocument.Operations[0].Directives);
  if FFocus = nil then
    processSearch(FOutput, FDocument.Operations[0].SelectionSet)
  else
    processObject(FFocus, FFocus, FOutput, FDocument.Operations[0].SelectionSet);
end;

function TFHIRGraphQLEngine.filter(context : TFhirResource; prop:TFHIRProperty; arguments: TAdvList<TGraphQLArgument>; values: TFHIRObjectList; extensionMode : boolean): TAdvList<TFHIRObject>;
  function hasExtensions(obj : TFHIRObject) : boolean;
  begin
    if obj is TFhirBackboneElement then
      result := (TFhirBackboneElement(obj).extensionList.Count > 0) or (TFhirBackboneElement(obj).modifierExtensionList.Count > 0)
    else if obj is TFhirDomainResource then
      result := (TFhirDomainResource(obj).extensionList.Count > 0) or (TFhirDomainResource(obj).modifierExtensionList.Count > 0)
    else if obj is TFhirElement then
      result := (TFhirElement(obj).extensionList.Count > 0)
    else
      result := false;
  end;
  function passesExtensionMode(obj : TFHIRObject) : boolean;
  begin
    if not obj.isPrimitive then
      result := not extensionMode
    else if extensionMode then
      result := (obj.getId <> '') or hasExtensions(obj)
    else
      result := obj.primitiveValue <> '';
  end;
var
  fp : TStringBuilder;
  arg : TGraphQLArgument;
  p : TFHIRProperty;
  v : TFHIRObject;
  fpe : TFHIRExpressionEngine;
  node: TFHIRExpressionNode;
begin
  result := TAdvList<TFHIRObject>.create;
  try
    if values.Count > 0 then
    begin
      fp := TStringBuilder.Create;
      try
        for arg in arguments do
        begin
          if (arg.Values.Count <> 1) then
            raise Exception.Create('Incorrect number of arguments');
          if values[0].isPrimitive then
            raise Exception.Create('Attempt to use a filter ('+arg.Name+') on a primtive type ('+prop.Type_+')');
          if (arg.Name = 'fhirpath') then
            fp.Append(' and '+arg.Values[0].ToString)
          else
          begin
            p := values[0].getPropertyValue(arg.Name);
            if p = nil then
              raise Exception.Create('Attempt to use an unknown filter ('+arg.Name+') on a type ('+prop.Type_+')');
            p.Free;
            fp.Append(' and '+arg.Name+' = '''+arg.Values[0].ToString+'''');
          end;
        end;
        if fp.Length = 0 then
          for v in values do
          begin
            if passesExtensionMode(v) then
              result.Add(v.Link)
          end
        else
        begin
          fpe := TFHIRExpressionEngine.Create(nil);
          try
            node := fpe.parse(fp.ToString.Substring(5));
            try
              for v in values do
               if passesExtensionMode(v) and fpe.evaluateToBoolean(nil, context, v, node) then
                 result.Add(v.Link)
            finally
              node.Free;
            end;
          finally
            fpe.Free;
          end;
        end;
      finally
        fp.Free;
      end;
    end;
    result.link;
  finally
    result.Free;
  end;
end;

function TFHIRGraphQLEngine.filterResources(fhirpath : TGraphQLArgument; bnd : TFHIRBundle): TAdvList<TFHIRResource>;
var
  p : TFHIRProperty;
  be : TFhirBundleEntry;
  fpe : TFHIRExpressionEngine;
  node : TFHIRExpressionNode;
begin
  result := TAdvList<TFHIRResource>.create;
  try
    if bnd.entryList.Count > 0 then
    begin
      if (fhirpath = nil) then
        for be in bnd.entryList do
          result.Add(be.resource.Link)
      else
      begin
        fpe := TFHIRExpressionEngine.Create(nil);
        try
          node := fpe.parse(fhirpath.Values[0].ToString);
          try
            for be in bnd.entryList do
              if fpe.evaluateToBoolean(nil, be.resource, be.resource, node) then
                result.Add(be.resource.Link)
          finally
            node.Free;
          end;
        finally
          fpe.Free;
        end;
      end;
    end;
    result.link;
  finally
    result.Free;
  end;
end;

function TFHIRGraphQLEngine.filterResources(fhirpath : TGraphQLArgument; list : TAdvList<TFhirResource>): TAdvList<TFHIRResource>;
var
  p : TFHIRProperty;
  v : TFHIRResource;
  fpe : TFHIRExpressionEngine;
  node : TFHIRExpressionNode;
begin
  result := TAdvList<TFHIRResource>.create;
  try
    if list.Count > 0 then
    begin
      if (fhirpath = nil) then
        for v in list do
          result.Add(v.Link)
      else
      begin
        fpe := TFHIRExpressionEngine.Create(nil);
        try
          node := fpe.parse(fhirpath.Values[0].ToString);
          try
            for v in list do
              if fpe.evaluateToBoolean(nil, v, v, node) then
                result.Add(v.Link)
          finally
            node.Free;
          end;
        finally
          fpe.Free;
        end;
      end;
    end;
    result.link;
  finally
    result.Free;
  end;
end;


function TFHIRGraphQLEngine.hasArgument(arguments: TAdvList<TGraphQLArgument>; name, value: String): boolean;
var
  arg : TGraphQLArgument;
begin
  for arg in arguments do
    if (arg.Name = name) and arg.hasValue(value) then
      exit(true);
  result := false;
end;

procedure TFHIRGraphQLEngine.processValues(context : TFHIRResource; sel: TGraphQLSelection; prop: TFHIRProperty; target: TGraphQLObjectValue; values : TAdvList<TFHIRObject>; extensionMode : boolean);
var
  arg: TGraphQLArgument;
  value: TFHIRObject;
  new: TGraphQLObjectValue;
begin
  arg := target.addField(sel.field.Alias, prop.IsList);
  for value in values do
  begin
    if value.isPrimitive and not extensionMode then
    begin
      if not sel.field.SelectionSet.Empty then
        raise EGraphQLException.Create('Encountered a selection set on a scalar field type');
      processPrimitive(arg, value)
    end
    else
    begin
      if sel.field.SelectionSet.Empty then
        raise EGraphQLException.Create('No Fields selected on a complex object');
      new := TGraphQLObjectValue.Create;
      try
        arg.Values.Add(new.Link);
        processObject(context, value, new, sel.field.SelectionSet);
      finally
        new.Free;
      end;
    end;
  end;
end;

function TFHIRGraphQLEngine.readInteger(value, name: String): integer;
begin
  result := StrToIntDef(value, -1);
  if result = -1 then
    raise EGraphQLException.Create('Illegal value for '+name+': '+value);
end;

function IsPrimitive(typename : String) : boolean;
begin
  result := StringArrayExistsSensitive(['boolean', 'integer', 'string', 'decimal', 'uri', 'base64Binary', 'instant', 'date', 'dateTime', 'time', 'code', 'oid', 'id', 'markdown', 'unsignedInt', 'positiveInt'], typename);
end;

procedure TFHIRGraphQLEngine.processObject(context : TFHIRResource; source: TFHIRObject; target: TGraphQLObjectValue; selection: TAdvList<TGraphQLSelection>);
var
  sel : TGraphQLSelection;
  prop : TFHIRProperty;
  fragment : TGraphQLFragment;
  vl : TAdvList<TFHIRObject>;
begin
  for sel in selection do
  begin
    if (sel.Field <> nil) then
    begin
      checkNoDirectives(sel.Field.Directives);
      prop := source.getPropertyValue(sel.field.Name);
      if (prop = nil) and sel.field.Name.startsWith('_') then
        prop := source.getPropertyValue(sel.field.Name.substring(1));
      try
        if prop = nil then
        begin
          if (sel.field.Name = 'resource') and (source.fhirType = 'Reference') then
            processReference(context, source, sel.field, target)
          else if isResourceName(sel.field.Name) and (source is TFhirResource) then
            processReverseReference(source as TFhirResource, sel.field, target)
          else
            raise EGraphQLException.Create('Unknown property '+sel.field.Name+' on '+source.fhirType);
        end
        else
        begin
          if not IsPrimitive(prop.Type_) and sel.field.Name.startsWith('_') then
            raise EGraphQLException.Create('Unknown property '+sel.field.Name+' on '+source.fhirType);

          vl := filter(context, prop, sel.field.Arguments, prop.Values, sel.field.Name.startsWith('_'));
          try
           if not vl.Empty then
             processValues(context, sel, prop, target, vl, sel.field.Name.startsWith('_'));
          finally
            vl.Free;
          end;
        end;
      finally
        prop.Free;
      end;
    end
    else if sel.InlineFragment <> nil then
    begin
      checkNoDirectives(sel.InlineFragment.Directives);
      if sel.InlineFragment.TypeCondition = '' then
        raise EGraphQLException.Create('Not done yet - inline fragment with no type condition'); // cause why? why is it even valid?
      if source.fhirType = sel.InlineFragment.TypeCondition then
        processObject(context, source, target, sel.InlineFragment.SelectionSet);
    end
    else
    begin
      checkNoDirectives(sel.FragmentSpread.Directives);
      fragment := queryDocument.fragment(sel.FragmentSpread.Name);
      if fragment = nil then
        raise EGraphQLException.Create('Unable to resolve fragment '+sel.FragmentSpread.Name);

      if fragment.TypeCondition = '' then
        raise EGraphQLException.Create('Not done yet - inline fragment with no type condition'); // cause why? why is it even valid?
      if source.fhirType = fragment.TypeCondition then
        processObject(context, source, target, fragment.SelectionSet);
    end;
  end;
end;

procedure TFHIRGraphQLEngine.processPrimitive(arg : TGraphQLArgument; value: TFHIRObject);
var
  s : String;
begin
  s := value.fhirType;
  if (s = 'integer') or (s = 'decimal') or (s = 'unsignedInt') or (s = 'positiveInt') then
    arg.values.add(TGraphQLNumberValue.Create(value.primitiveValue))
  else if (s = 'boolean') then
    arg.values.add(TGraphQLNameValue.Create(value.primitiveValue))
  else
    arg.values.add(TGraphQLStringValue.Create(value.primitiveValue));
end;


procedure TFHIRGraphQLEngine.processReference(context : TFHIRResource; source: TFHIRObject; field: TGraphQLField; target: TGraphQLObjectValue);
var
  ref : TFhirReference;
  ok : boolean;
  ctxt, dest : TFhirResource;
  arg: TGraphQLArgument;
  new : TGraphQLObjectValue;
begin
  if not (source is TFhirReference) then
    raise EGraphQLException.Create('Not done yet');
  if not assigned(FOnFollowReference) then
    raise EGraphQLException.Create('Resource Referencing services not provided');

  ref := TFhirReference(source).Link;
  try
    ok := FOnFollowReference(appInfo, context, ref, ctxt, dest);
    if ok then
      try
        if targetTypeOk(field.Arguments, dest) then
        begin
          arg := target.addField(field.Alias, false);
          new := TGraphQLObjectValue.Create;
          try
            arg.Values.Add(new.Link);
            processObject(ctxt, dest, new, field.SelectionSet);
          finally
            new.Free;
          end;
        end;
      finally
        ctxt.Free;
        dest.Free;
      end
    else if not hasArgument(field.Arguments, 'optional', 'true') then
      raise EGraphQLException.Create('Unable to resolve reference to '+ref.reference);
  finally
    ref.Free;
  end;
end;

procedure TFHIRGraphQLEngine.processReverseReference(source: TFHIRResource; field: TGraphQLField; target: TGraphQLObjectValue);
var
  arg, parg : TGraphQLArgument;
  list, vl : TAdvList<TFHIRResource>;
  v : TFhirResource;
  new : TGraphQLObjectValue;
  params : TAdvList<TGraphQLArgument>;
  start, limit : integer;
begin
  start := 0;
  limit := 0;
  if not assigned(FOnFollowReverseReference) then
    raise EGraphQLException.Create('Resource Referencing services not provided');

  parg := field.argument('_reference');
  if (parg = nil) or (parg.values.count <> 1) then
    raise Exception.Create('Reverse References must have an argument "_reference" which specifies which search parameter to use for reverse reference matching');
  list := TAdvList<TFHIRResource>.create;
  try
    params := TAdvList<TGraphQLArgument>.create;
    try
      for arg in field.Arguments do
      begin
        if arg.Name = 'start' then
          start := readInteger(arg.Values[0].toString, 'start')
        else if arg.Name = 'limit' then
          limit := readInteger(arg.Values[0].toString, 'limit')
        else if (arg.Name <> '_reference') and (arg.Name <> 'fhirpath') then
          params.add(arg.Link);
      end;
      FOnFollowReverseReference(FAppinfo, source.fhirType, source.id, field.Name, parg.values[0].ToString, params, start, limit, list);
    finally
      params.Free;
    end;
    vl := filterResources(field.argument('fhirpath'), list);
    try
      if not vl.Empty then
      begin
        arg := target.addField(field.Alias, true);
        for v in vl do
        begin
          new := TGraphQLObjectValue.Create;
          try
            arg.Values.Add(new.Link);
            processObject(v, v, new, field.SelectionSet);
          finally
            new.Free;
          end;
        end;
      end;
    finally
      vl.Free;
    end;
  finally
    list.Free;
  end;
end;

procedure TFHIRGraphQLEngine.processSearch(target: TGraphQLObjectValue; selection: TAdvList<TGraphQLSelection>);
var
  sel : TGraphQLSelection;
  vl : TAdvList<TFHIRResource>;
  v : TFhirResource;
  start, limit : integer;
  params : TAdvList<TGraphQLArgument>;
  arg : TGraphQLArgument;
  new : TGraphQLObjectValue;
  bnd : TFHIRBundle;
  link : TFhirBundleLink;
begin
  for sel in selection do
  begin
    if (sel.Field = nil) then
      raise EGraphQLException.Create('Only field selections are allowed in this context');
    checkNoDirectives(sel.Field.Directives);

    start := 0;
    limit := 0;
    if not assigned(FOnSearch) then
      raise EGraphQLException.Create('Resource Referencing services not provided');
    params := TAdvList<TGraphQLArgument>.create;
    try
      for arg in sel.field.Arguments do
      begin
        if arg.Name = 'start' then
          start := readInteger(arg.Values[0].toString, 'start')
        else if arg.Name = 'limit' then
          limit := readInteger(arg.Values[0].toString, 'limit')
        else if (arg.Name = 'id') then
          params.add(TGraphQLArgument.Create('_id', arg.values[0].link))
        else if (arg.Name <> 'fhirpath') then
          params.add(arg.Link);
      end;
      bnd := FOnSearch(FAppinfo, sel.field.Name, params, start, limit);
      try
        arg := nil;
        new := nil;
        for link in bnd.link_List do
          if StringArrayExistsSensitive(['first', 'next', 'last', 'previous'], link.relation) then
          begin
            if (arg = nil) then
            begin
              arg := target.addField(sel.field.Alias, true);
              new := TGraphQLObjectValue.Create;
              arg.Values.Add(new.Link);
              new.addField('type', false).Values.Add(TGraphQLStringValue.create('paging'));
            end;
            new.addField(link.relation, false).Values.Add(TGraphQLStringValue.create(link.url.Substring(link.url.IndexOf('?'))));
          end;

        vl := filterResources(sel.field.argument('fhirpath'), bnd);
        try
          if not vl.Empty then
          begin
            arg := target.addField(sel.field.Alias, true);
            for v in vl do
            begin
              new := TGraphQLObjectValue.Create;
              try
                new.addField('type', false).Values.Add(TGraphQLStringValue.create('resource'));
                arg.Values.Add(new.Link);
                processObject(v, v, new, sel.field.SelectionSet);
              finally
                new.Free;
              end;
            end;
          end;
        finally
          vl.Free;
        end;


        // todo: search links
      finally
        bnd.Free;
      end;
    finally
      params.Free;
    end;
  end;
end;

end.
