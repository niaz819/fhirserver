Program ClinicalDocumentEditor;

uses
  FastMM4 in '..\..\Libraries\FMM\FastMM4.pas',
  Forms,
  CDEForm in 'CDEForm.pas' {TWordProcessorForm},
  FastMM4Messages in '..\..\Libraries\FMM\FastMM4Messages.pas',
  DropBMPTarget in '..\..\Libraries\ui\DropBMPTarget.pas',
  DropSource in '..\..\Libraries\ui\DropSource.pas',
  DropTarget in '..\..\Libraries\ui\DropTarget.pas',
  FHIR.Cda.Base in '..\..\Libraries\cda\FHIR.Cda.Base.pas',
  FHIR.Cda.Documents in '..\..\Libraries\cda\FHIR.Cda.Documents.pas',
  FHIR.Cda.Narrative in '..\..\Libraries\cda\FHIR.Cda.Narrative.pas',
  FHIR.Cda.Objects in '..\..\Libraries\cda\FHIR.Cda.Objects.pas',
  FHIR.Cda.Parser in '..\..\Libraries\cda\FHIR.Cda.Parser.pas',
  FHIR.Cda.Types in '..\..\Libraries\cda\FHIR.Cda.Types.pas',
  FHIR.Dicom.Dictionary in '..\..\Libraries\dicom\FHIR.Dicom.Dictionary.pas',
  FHIR.Dicom.Extractor in '..\..\Libraries\dicom\FHIR.Dicom.Extractor.pas',
  FHIR.Dicom.JpegLS in '..\..\Libraries\dicom\FHIR.Dicom.JpegLS.pas',
  FHIR.Dicom.Objects in '..\..\Libraries\dicom\FHIR.Dicom.Objects.pas',
  FHIR.Dicom.Parser in '..\..\Libraries\dicom\FHIR.Dicom.Parser.pas',
  FHIR.Dicom.Writer in '..\..\Libraries\dicom\FHIR.Dicom.Writer.pas',
  FHIR.Graphics.GdiPlus in '..\..\Libraries\ui\FHIR.Graphics.GdiPlus.pas',
  FHIR.Support.Binary in '..\..\reference-platform\support\FHIR.Support.Binary.pas',
  FHIR.Support.Certs in '..\..\reference-platform\support\FHIR.Support.Certs.pas',
  FHIR.Support.Collections in '..\..\reference-platform\support\FHIR.Support.Collections.pas',
  FHIR.Support.Threads in '..\..\reference-platform\support\FHIR.Support.Threads.pas',
  FHIR.Support.DateTime in '..\..\reference-platform\support\FHIR.Support.DateTime.pas',
  FHIR.Support.Decimal in '..\..\reference-platform\support\FHIR.Support.Decimal.pas',
  FHIR.Support.Exceptions in '..\..\reference-platform\support\FHIR.Support.Exceptions.pas',
  FHIR.Support.Generics in '..\..\reference-platform\support\FHIR.Support.Generics.pas',
  FHIR.Support.Graphics in '..\..\Libraries\ui\FHIR.Support.Graphics.pas',
  FHIR.Support.Html in '..\..\reference-platform\support\FHIR.Support.Html.pas',
  FHIR.Support.Json in '..\..\reference-platform\support\FHIR.Support.Json.pas',
  FHIR.Support.MXml in '..\..\reference-platform\support\FHIR.Support.MXml.pas',
  FHIR.Support.Math in '..\..\reference-platform\support\FHIR.Support.Math.pas',
  FHIR.Support.Mime in '..\..\reference-platform\support\FHIR.Support.Mime.pas',
  FHIR.Support.Objects in '..\..\reference-platform\support\FHIR.Support.Objects.pas',
  FHIR.Support.Ole in '..\..\reference-platform\support\FHIR.Support.Ole.pas',
  FHIR.Support.Printing in '..\..\Libraries\wp\FHIR.Support.Printing.pas',
  FHIR.Support.Shell in '..\..\reference-platform\support\FHIR.Support.Shell.pas',
  FHIR.Support.Signatures in '..\..\reference-platform\support\FHIR.Support.Signatures.pas',
  FHIR.Support.Stream in '..\..\reference-platform\support\FHIR.Support.Stream.pas',
  FHIR.Support.Strings in '..\..\reference-platform\support\FHIR.Support.Strings.pas',
  FHIR.Support.System in '..\..\reference-platform\support\FHIR.Support.System.pas',
  FHIR.Support.Text in '..\..\reference-platform\support\FHIR.Support.Text.pas',
  FHIR.Support.WinInet in '..\..\reference-platform\support\FHIR.Support.WinInet.pas',
  FHIR.Support.Xml in '..\..\reference-platform\support\FHIR.Support.Xml.pas',
  FHIR.Support.Zip in '..\..\reference-platform\support\FHIR.Support.Zip.pas',
  FHIR.Ucum.IFace in '..\..\reference-platform\support\FHIR.Ucum.IFace.pas',
  FHIR.Uix.Advanced in '..\..\Libraries\ui\FHIR.Uix.Advanced.pas',
  FHIR.Uix.Base in '..\..\Libraries\ui\FHIR.Uix.Base.pas',
  FHIR.Uix.Controls in '..\..\Libraries\ui\FHIR.Uix.Controls.pas',
  FHIR.Uix.Dialogs in '..\..\Libraries\ui\FHIR.Uix.Dialogs.pas',
  FHIR.Uix.Forms in '..\..\Libraries\ui\FHIR.Uix.Forms.pas',
  FHIR.Uix.Images in '..\..\Libraries\ui\FHIR.Uix.Images.pas',
  FHIR.WP.Builder in '..\..\Libraries\wp\FHIR.WP.Builder.pas',
  FHIR.WP.Cda in '..\..\Libraries\wp\FHIR.WP.Cda.pas',
  FHIR.WP.Control in '..\..\Libraries\wp\FHIR.WP.Control.pas',
  FHIR.WP.Definers in '..\..\Libraries\wp\FHIR.WP.Definers.pas',
  FHIR.WP.Dialogs in '..\..\Libraries\wp\FHIR.WP.Dialogs.pas',
  FHIR.WP.Document in '..\..\Libraries\wp\FHIR.WP.Document.pas',
  FHIR.WP.Dragon in '..\..\Libraries\wp\FHIR.WP.Dragon.pas',
  FHIR.WP.Engine in '..\..\Libraries\wp\FHIR.WP.Engine.pas',
  FHIR.WP.FieldDefiners in '..\..\Libraries\wp\FHIR.WP.FieldDefiners.pas',
  FHIR.WP.Format in '..\..\Libraries\wp\FHIR.WP.Format.pas',
  FHIR.WP.Handler in '..\..\Libraries\wp\FHIR.WP.Handler.pas',
  FHIR.WP.Html in '..\..\Libraries\wp\FHIR.WP.Html.pas',
  FHIR.WP.Icons in '..\..\Libraries\wp\FHIR.WP.Icons.pas',
  FHIR.WP.Imaging in '..\..\Libraries\wp\FHIR.WP.Imaging.pas',
  FHIR.WP.Menus in '..\..\Libraries\wp\FHIR.WP.Menus.pas',
  FHIR.WP.Native in '..\..\Libraries\wp\FHIR.WP.Native.pas',
  FHIR.WP.Odt in '..\..\Libraries\wp\FHIR.WP.Odt.pas',
  FHIR.WP.Printing in '..\..\Libraries\wp\FHIR.WP.Printing.pas',
  FHIR.WP.Renderer in '..\..\Libraries\wp\FHIR.WP.Renderer.pas',
  FHIR.WP.Rtf in '..\..\Libraries\wp\FHIR.WP.Rtf.pas',
  FHIR.WP.Settings in '..\..\Libraries\wp\FHIR.WP.Settings.pas',
  FHIR.WP.Spelling in '..\..\Libraries\wp\FHIR.WP.Spelling.pas',
  FHIR.WP.Text in '..\..\Libraries\wp\FHIR.WP.Text.pas',
  FHIR.WP.Toolbar in '..\..\Libraries\wp\FHIR.WP.Toolbar.pas',
  FHIR.WP.Types in '..\..\Libraries\wp\FHIR.WP.Types.pas',
  FHIR.WP.Unicode in '..\..\Libraries\wp\FHIR.WP.Unicode.pas',
  FHIR.WP.V2Ft in '..\..\Libraries\wp\FHIR.WP.V2Ft.pas',
  FHIR.WP.Widgets in '..\..\Libraries\wp\FHIR.WP.Widgets.pas',
  FHIR.WP.Working in '..\..\Libraries\wp\FHIR.WP.Working.pas',
  FHIR.Web.Fetcher in '..\..\reference-platform\support\FHIR.Web.Fetcher.pas',
  FHIR.Web.Mapi in '..\..\reference-platform\support\FHIR.Web.Mapi.pas',
  GraphicColor in '..\..\Libraries\ui\GraphicColor.pas',
  GraphicCompression in '..\..\Libraries\ui\GraphicCompression.pas',
  GraphicEx in '..\..\Libraries\ui\GraphicEx.pas',
  GraphicStrings in '..\..\Libraries\ui\GraphicStrings.pas',
  JPG in '..\..\Libraries\ui\JPG.pas',
  MZLib in '..\..\Libraries\ui\MZLib.pas',
  ScintCDA in '..\..\Libraries\ui\ScintCDA.pas',
  ScintEdit in '..\..\Libraries\ui\ScintEdit.pas',
  ScintInt in '..\..\Libraries\ui\ScintInt.pas',
  FHIR.Cda.Writer in '..\..\Libraries\cda\FHIR.Cda.Writer.pas',
  VirtualTrees in '..\..\Libraries\treeview\Source\VirtualTrees.pas',
  VTAccessibilityFactory in '..\..\Libraries\treeview\Source\VTAccessibilityFactory.pas',
  VirtualTrees.StyleHooks in '..\..\Libraries\treeview\Source\VirtualTrees.StyleHooks.pas',
  VirtualTrees.Classes in '..\..\Libraries\treeview\Source\VirtualTrees.Classes.pas',
  VirtualTrees.WorkerThread in '..\..\Libraries\treeview\Source\VirtualTrees.WorkerThread.pas',
  VirtualTrees.ClipBoard in '..\..\Libraries\treeview\Source\VirtualTrees.ClipBoard.pas',
  VirtualTrees.Utils in '..\..\Libraries\treeview\Source\VirtualTrees.Utils.pas',
  VTHeaderPopup in '..\..\Libraries\treeview\Source\VTHeaderPopup.pas',
  VirtualTrees.Export in '..\..\Libraries\treeview\Source\VirtualTrees.Export.pas',
  FHIR.WP.AnnotationDefiners in '..\..\Libraries\wp\FHIR.WP.AnnotationDefiners.pas',
  FHIR.WP.Snomed in '..\..\Libraries\wp\FHIR.WP.Snomed.pas',
  FHIR.WP.Addict in '..\..\Libraries\wp\FHIR.WP.Addict.pas',
  CDEOptions in 'CDEOptions.pas' {CDEOptionsForm},
  OidFetcher in 'OidFetcher.pas' {OidFetcherForm},
  cdaHeaderForm in 'cdaHeaderForm.pas',
  IIEditor in 'IIEditor.pas' {IIEditForm},
  OIDCache in 'OIDCache.pas',
  FHIR.Support.Fpc in '..\..\reference-platform\support\FHIR.Support.Fpc.pas',
  FHIR.Support.Osx in '..\..\reference-platform\support\FHIR.Support.Osx.pas';

{$R *.RES}
{$R WindowsXP.RES}

Begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TWordProcessorForm, WordProcessorForm);
  Application.Run;
End.

