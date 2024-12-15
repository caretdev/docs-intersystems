/// System Management Portal - System Administration - Edit Privileged Routine Application
Class %CSP.UI.Portal.Applications.PrivRoutine Extends %CSP.UI.Portal.Applications.EditTemplate [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

///  Displayed name of this page.
Parameter PAGENAME = "Edit Privileged Routine Application";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Applications.PrivRoutine.zen";

Parameter HELPADDRESS = "System Administration,Security,Applications,Privileged Routine Applications";

Parameter EMSSERVICE = "Security";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.Applications.PrivRoutineList.zen";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property ApplicationType As %Integer [ InitialExpression = {$$$AppTypePrivRoutine} ];

Property EditHeader As %String;

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property IsNewSave As %Integer(ZENURL = "new");

Property NumTabs As %Integer [ InitialExpression = 4 ];

Property RolesHeader As %String;

Property RoutinesHeader As %String;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Set focus to the Name or Description field, disable fields if DispatchClass is defined.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

ClientMethod doAddRoutine() [ Language = javascript ]
{
}

ClientMethod doRemoveRoutine(element) [ Language = javascript ]
{
}

Method AddRoutine(PID As %String, Element As %String) As %String [ ZenMethod ]
{
}

Method RemoveRoutine(PID As %String, Element As %String) As %String [ ZenMethod ]
{
}

/// Call server save method.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method DrawRoutineTab(pSeed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

///  Return the array of links to show in the locator bar.<br/>
///  pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the (localized) name of the page.
///  This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
