/// System Management Portal - System Administration - Edit Role
Class %CSP.UI.Portal.Role Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

///  Displayed name of this page.
Parameter PAGENAME = "Edit Role";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Role.zen";

Parameter HELPADDRESS = "System Administration,Security,Users,Edit Role";

Parameter EMSSERVICE = "Security";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.Roles.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property CurrResources As %String;

Property CurrTab As %Integer [ InitialExpression = 0 ];

Property EditDisabled As %Boolean;

Property IsDB As %Boolean [ InitialExpression = 0 ];

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property IsNewSave As %Integer(ZENURL = "new");

Property IsSystem As %Boolean [ InitialExpression = 0 ];

Property NumTabs As %Integer [ InitialExpression = 9 ];

XData Style
{
}

XData SVGStyle
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Set focus to the Name or Description field, disable fields if DispatchClass is defined.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

ClientMethod changeNS(ns) [ Language = javascript ]
{
}

ClientMethod doEditResource(resource, permissions) [ Language = javascript ]
{
}

ClientMethod doAddResource() [ Language = javascript ]
{
}

ClientMethod doDeleteResource(resource) [ Language = javascript ]
{
}

ClientMethod doCopyRole(role) [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Call server save method.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod DeleteResource(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method CopyRole(Role As %String) As %Status [ ZenMethod ]
{
}

Method DrawResources(pSeed As %String) As %Status
{
}

/// Fill in form fields. Used when loading the page for edit or when choosing a copy from role during creation
Method PopulateFields(ByRef Properties As %String) As %Status
{
}

Method DrawTabHeader(pSeed As %String) As %Status
{
}

Method PopulateNSDropdown(Type As %Integer, Output displayList As %String, Output valueList As %String) As %Status
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
