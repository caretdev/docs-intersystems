/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Import dialog for Management Portal
/// <p><b>Please do not modify any part of this dialog without COMPLETELY testing all cases!!!<br/>
/// This dialog is used by Classes/Routines/Globals for Namespaces and Classes/Routines for Databases.<br/>
/// Please be extremely careful!!! </b></p>
Class %CSP.UI.Portal.Dialog.Import Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.Dialog.Import.zen";

Parameter RESOURCE = "%Development:USE";

/// Displayed name of this page.
Parameter PAGENAME = "Import";

Parameter AUTONS As BOOLEAN = 1;

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// If greater than this size then show content will not be available.
Parameter CheckMaxSize = 10000000;

Property CHARSET As %String;

/// Type from where we get the selected items from: Class or Routine.
Property FILETYPE As %ZEN.Datatype.string(ZENURL = "FILETYPE");

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");

Property FILEFLAG As %ZEN.Datatype.string;

Property INPUTTYPE As %ZEN.Datatype.string(ZENURL = "INPUTTYPE");

/// This is the temporary file name we saved on remote server, only saved when Input Type is LOCAL.
Property LOCALFILENAME As %ZEN.Datatype.string;

/// If this is 1 then file content will not be shown and entire file will be imported in the background.
Property IMPORTALL As %Boolean [ InitialExpression = "0" ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod selectLocalFile() [ Language = javascript ]
{
}

ClientMethod changedImportType(thisObj) [ Language = javascript ]
{
}

/// User changed to pick file between Remote and Local
ClientMethod doLocationChange(flag) [ Language = javascript ]
{
}

/// Start the Import
ClientMethod doImport() [ Language = javascript ]
{
}

/// Update the state of the template buttons.
/// Subclasses should call this method when they need to
/// update the state of the footer buttons.
ClientMethod updateState() [ Language = javascript ]
{
}

/// This method is fired up after onDrawContent is finished. Hide progress message and display error if exists.
ClientMethod drawDone(tab) [ Language = javascript ]
{
}

/// Return true if this template can go to the next page (i.e., enable
/// the Next button).<br>
ClientMethod canGoNext() [ Language = javascript ]
{
}

/// Return true if this template can go to the previous page (i.e., enable
/// the Back button).<br>
/// This is implemented by subclasses.
ClientMethod canGoBack() [ Language = javascript ]
{
}

/// Return true if this template can Finish (i.e., enable
/// the Finish button).<br>
ClientMethod canFinish() [ Language = javascript ]
{
}

ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

/// Go to the next page of the template (if there is one).<br>
ClientMethod nextPage() [ Language = javascript ]
{
}

/// Go to the previous page of the template (if there is one).<br>
/// This is implemented by subclasses.
ClientMethod previousPage() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

/// User clicked the Browse button.
ClientMethod browseSelect(name) [ Language = javascript ]
{
}

/// Returning from file select OR qualifers dialog and setting the value into the appropriate field.
/// The id of the field that needs to be updated is saved in "dialogClicked".
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// This is called when the template is first displayed;
/// This provides a chance to load the last filetype, etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

ClientMethod getSelected() [ Language = javascript ]
{
}

ClientMethod toggleCheckboxes(cbState) [ Language = javascript ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

/// FILTTYPE=Class/Routine/Global, ImportType=FILE/DIR
ClassMethod SaveSelection(FILETYPE, ImportType, FileName) [ ZenMethod ]
{
}

/// Draw content of the import file for user to select from.
/// For Global, check size and type. Do not show file content for Sequential file larger than 10MB.
ClassMethod DrawContent(pSeed) As %Status
{
}

/// tab = 2: Content - when DrawContent is finished, Status is "Done".
ClassMethod GetStatus(tab, FILETYPE) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Validate file name. If ImportType is DIR then check if directory exists.
ClassMethod ValidateFile(FILETYPE, ImportType, FILE) As %Integer [ ZenMethod ]
{
}

ClassMethod PrepareAction(filetype, selectedRows) As %String [ ZenMethod ]
{
}

/// This method is invoked only when user selects to import from Local Machine.<br/>
/// The necessary parameters are passed in URL. The temp file name is saved in %session and to be used in loading content.
ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status
{
}

}
