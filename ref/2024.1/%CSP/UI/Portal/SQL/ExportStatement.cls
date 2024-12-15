/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Export SQL Statement dialog for Management Portal SQL.
/// <p><b>Please do not modify any part of this dialog without COMPLETELY testing all cases!!!<br/>
/// This dialog is used by SQL for exporting single SQL statement or all statements per namespace.<br/>
/// </b></p>
Class %CSP.UI.Portal.SQL.ExportStatement Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.ExportStatement.zen";

Parameter RESOURCE = "%Development:USE";

/// Displayed name of this page.
Parameter PAGENAME = "ExportSQLStatement";

Parameter AUTONS As BOOLEAN = 1;

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// If export individual statement, HASH is not null
Property HASH As %ZEN.Datatype.string(ZENURL = "HASH");

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");

/// 1 = Export All; 0 = Export individual statement where HASH should be defined.
Property EXPORTALL As %ZEN.Datatype.string(ZENURL = "EXPORTALL");

Property FILETYPE As %ZEN.Datatype.string [ InitialExpression = "SQLSTATEMENT" ];

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

/// User clicked the Browse button.
ClientMethod browseSelect(name, wildcard) [ Language = javascript ]
{
}

/// Check if file is empty.
ClientMethod validateFile(fileName) [ Language = javascript ]
{
}

/// Returning from file select OR qualifers dialog and setting the value into the appropriate field.
/// The id of the field that needs to be updated is saved in "dialogClicked".
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

Method GetTempFileName(pDocName) As %String [ ZenMethod ]
{
}

/// User clicked the Export or Export in Background button.
ClientMethod doExport() [ Language = javascript ]
{
}

Method CheckFileStatus(pFilename) [ ZenMethod ]
{
}

ClientMethod doDownload(filename) [ Language = javascript ]
{
}

ClassMethod DownloadStream(pFilename As %String, pDocName As %String) [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// User changed to export file between Server or Browser
ClientMethod doLocationChange(flag) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
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

ClassMethod SaveLastFile(pFileName, pFileType) [ ZenMethod ]
{
}

/// Check to see if file exists
ClassMethod FileExists(filename) As %Integer [ ZenMethod ]
{
}

}
