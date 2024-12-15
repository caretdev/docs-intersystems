/// Zen page for System Management Portal - Machine Learning Configurations
Class %CSP.UI.Portal.ML.Configurations Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Class name of application this page belongs to.
/// Parameter APPLICATION = "%CSP.UI.Portal.Application";
/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "ML Configurations";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ML.Configurations.zen";

Parameter HELPADDRESS = "System Administration,Configurations,Machine Learning Configurations";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property DefaultConfig As %String [ InitialExpression = {##class(%SYS.ML.Configuration).%GetSystemDefault()} ];

Property EditPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.ML.Configuration.zen",,1)} ];

/// Store translated targetCol linkCaption for <condition>
Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];

Property colDetails As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Details")} ];

Property colEdit As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Edit")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod changeDefault() [ Language = javascript ]
{
}

ClassMethod SaveDefault(defaultConfig As %String) As %String [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

ClientMethod doDetails(name) [ Language = javascript ]
{
}

ClientMethod doEdit(name) [ Language = javascript ]
{
}

ClientMethod doNew() [ Language = javascript ]
{
}

/// Delete existing configuration.
ClientMethod deleteSetting(PID) [ Language = javascript ]
{
}

/// Call server delete method.
ClassMethod DeleteItem(PID) As %String [ ZenMethod ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value, tableID) [ Language = javascript ]
{
}

/// Disable save button for EMS-managed pages.
/// Be sure to use this.invokeSuper('onloadHandler',arguments); when overriding.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Return config data if a configname is given.
Method GetMLConfig(ByRef pParms As %String, Output pObject As %RegisteredObject) As %Status
{
}

}
