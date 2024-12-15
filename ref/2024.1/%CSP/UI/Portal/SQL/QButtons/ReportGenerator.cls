/// System Management Portal - SQL Performance Tool - Troubleshooting Report Generator
Class %CSP.UI.Portal.SQL.QButtons.ReportGenerator Extends (%CSP.UI.Template.Property, %CSP.UI.Portal.SQL.QButtons.Utils) [ System = 4 ]
{

/// Switch namespace $NAMESPACE is present
Parameter AUTONS As BOOLEAN = 1;

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.QButtons.ReportGenerator.zen";

Parameter HELPADDRESS = "Home,Generate SQL Troubleshooting Report";

/// Displayed name of this page.
Parameter PAGENAME = "SQL QButtons Report Generator";

/// Security requirement
Parameter RESOURCE = "%Development";

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");

Property msgWRC As %ZEN.Datatype.string [ InitialExpression = {$$$Text("Please enter a WRC number that already exist in the table or select existing IDs from the table.")} ];

Property OpenDetailsPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/exp/%25CSP.UI.Portal.SQL.QButtons.OpenDetails.cls",,1)} ];

Property SaveQueryOutputPage As %ZEN.Datatype.string [ InitialExpression = {$P(..Link("%25CSP.UI.Portal.SQL.QButtons.SaveQueryOutput.zen"),"?$NAMESPACE",1)} ];

Property ViewProcessPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/op/%25CSP.UI.Portal.ProcessDetails.zen",,1)} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Write upto 80 characters of query statement in tablePane
Method DrawQueryText(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod adjustSizes() [ Language = javascript ]
{
}

/// This method checked whether the WRC number user entered exists in the table
/// The Generate button is disabled if it is the saved queries does not include the WRC.
ClientMethod checkWRCResult() As %Boolean [ Language = javascript ]
{
}

/// If user selected one or more checkboxes, then get the WRC numbers from that
/// Otherwise check to see if user entered a WRC number in the WRC Number field.
ClientMethod doClear() [ Language = javascript ]
{
}

ClientMethod getSelectedList() [ Language = javascript ]
{
}

/// Show Plan and other details on a separate tab
ClientMethod openDetails(PID) [ Language = javascript ]
{
}

ClientMethod doGenerate() [ Language = javascript ]
{
}

ClientMethod refreshTable() [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod toggleFields(hideflag) [ Language = javascript ]
{
}

/// This function is executed when SaveQuery is processed to run in the background.
ClientMethod timeout() [ Language = javascript ]
{
}

ClientMethod doSelectRow() [ Language = javascript ]
{
}

ClientMethod validateWRCNum() As %Boolean [ Language = javascript ]
{
}

/// Clear data by WRC. If single wrcnum is passed in, clear that.
/// If a list of selected IDs are passed in, clear each one in the list.
ClassMethod ClearClick(wrcnum As %String = "", selectedIDs As %String = "") As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod RemoveRow(delId As %String) As %Integer [ ZenMethod ]
{
}

ClassMethod SaveClick(QueryText, WRCNum, includeresults) As %String [ ZenMethod ]
{
}

ClassMethod WRCRowExists(WRCNum) As %Boolean [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

///  Return the array of links to show in the locator bar.<br/>
///  pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Draw html for details title: SQL Statement
Method DrawDetailsTitle(pId) As %Status
{
}

ClassMethod JobSaveQuery(query, WRCNum, includeresults) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// View details of a background process for Show Plan
ClientMethod doViewProcess() [ Language = javascript ]
{
}

ClientMethod doClearQueryText() [ Language = javascript ]
{
}

}
