///
/// System Management Portal - Reports Settings
Class %CSP.UI.Portal.Reports Extends %CSP.UI.Portal.Template [ System = 4 ]
{

///
/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

///
/// Displayed name of this page.
Parameter PAGENAME = "Reports Settings";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Reports.zen";

Parameter HELPADDRESS = "Home,Configuration";

///
/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property msgTestFail As %String;

Property msgTestSuccess As %String;

Property lblDone As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Done")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

///
/// Launching a file selector window.
ClientMethod doBrowse(what) [ Language = javascript ]
{
}

///
/// Returning from file select OR qualifers dialog and setting the value into the appropriate field.
///
/// The id of the field that needs to be updated is saved in "dialogClicked".
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

///
/// Use clicked a transform radio button.
ClientMethod changeTransform() [ Language = javascript ]
{
}

///
/// Save current item.
ClientMethod doSave() [ Language = javascript ]
{
}

///
/// Test current item.
ClientMethod testItem() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

///
/// Save file into global. Outside white spaces are stripped.
ClassMethod SaveData(transformerpath, transformerconfig, transUse, renderserverport) As %ZEN.proxyObject [ ZenMethod ]
{
}

///
/// Test to verify that the xsl engine is configured correctly
ClassMethod TestSetup() As %String [ ZenMethod ]
{
}

///
/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
