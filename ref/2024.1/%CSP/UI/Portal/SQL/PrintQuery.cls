/// This page allows to print execute query result to a printer.
Class %CSP.UI.Portal.SQL.PrintQuery Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

/// Displayed name of this page.
Parameter PAGENAME = "PrintQuery";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.PrintQuery.zen";

Parameter RESOURCE = "%Development";

/// Display title of this page <title></title>
Parameter PAGETITLE = "Print Query";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// Switch namespace for this page:
Parameter AUTONS As BOOLEAN = 1;

/// Namespace passed in from URL.
Property NAMESPACE As %String(ZENURL = "$NAMESPACE");

/// History Id passed in from URL.
Property HistoryId As %String(ZENURL = "$ID1");

/// Save to file name
Property FileName As %String;

Property RuntimeMode As %ZEN.Datatype.string(ZENURL = "RuntimeMode") [ InitialExpression = "2" ];

Property Dialect As %ZEN.Datatype.string(ZENURL = "Dialect") [ InitialExpression = "Nothing" ];

Property ObjectSelectMode As %Integer(ZENURL = "ObjectSelectMode") [ InitialExpression = 0 ];

Property MaxRows As %ZEN.Datatype.string(ZENURL = "MaxRows") [ InitialExpression = "1000" ];

Property ShowRowNum As %ZEN.Datatype.boolean(ZENURL = "ShowRowNum") [ InitialExpression = 0 ];

/// Whether to execute the SQL query in the foreground [Passed in from URL]
Property Foreground As %ZEN.Datatype.boolean(ZENURL = "Foreground") [ InitialExpression = 0 ];

Property msgSelect As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a file name.")} ];

Property msgValidate As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("File already exists. Overwrite the existing file?")} ];

Property CurrentQueryID As %ZEN.Datatype.integer [ Internal ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this page.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Prepare to start printing
ClientMethod doPrint() [ Language = javascript ]
{
}

/// User clicked the Browse button.
ClientMethod browseSelect() [ Language = javascript ]
{
}

ClientMethod getWildcard(value) [ Language = javascript ]
{
}

/// User changed File Format. Update the file extension in the file name.
ClientMethod updateFileExt(Format) [ Language = javascript ]
{
}

/// Prepare to start export
ClientMethod doSave() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod doClose() [ Language = javascript ]
{
}

/// Show or hide the other information
ClientMethod show(name) [ Language = javascript ]
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

/// Prepare for background export of the file.
ClassMethod StartExport(pHistoryId, pFileName, pDisplayMode, pRuntimeMode, pDialect, pObjectSelectMode) As %Integer [ ZenMethod ]
{
}

/// Return 0 if file is directory; 2 if file exists.
ClassMethod ValidateFile(FileName) As %Integer [ ZenMethod ]
{
}

/// Return file name with new extension
ClassMethod GetFile(Format, FileName) As %String [ ZenMethod ]
{
}

Method DrawHTML(pText As %String(MAXLEN="")) As %Status
{
}

ClassMethod %OnFinishBackgroundTask(pTaskID As %String) As %Status
{
}

ClassMethod %OnMonitorBackgroundTask(pTaskID As %String, pStatus As %String, pPercentComplete As %Float)
{
}

ClassMethod StartQueryExecution(pRunInBackground As %Boolean = 1, pQueryID As %Integer, pRuntimeMode As %String, pDialect As %String, pObjectSelectMode As %Integer, pShowRowNum As %Boolean, pMaxRows As %Integer) As %Status
{
}

Method StartQuery(pSQL As %String, foreground As %Boolean = 0) As %Boolean [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Get the (localized) title string for the dialog.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
Method %OnGetSubtitle() As %String
{
}

}
