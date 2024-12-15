/// System Management Portal - System Administration - Edit User
Class %CSP.UI.Portal.User Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

///  Displayed name of this page.
Parameter PAGENAME = "Edit User";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.User.zen";

Parameter HELPADDRESS = "System Administration,Security,Users,Edit User";

Parameter EMSSERVICE = "Users";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.Users.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property EditDisabled As %Boolean;

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property IsNewSave As %Integer(ZENURL = "new");

Property NumTabs As %Integer [ InitialExpression = 9 ];

Property PasswordRequired As %Boolean [ InitialExpression = 0 ];

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

ClientMethod neverExpiresChanged() [ Language = javascript ]
{
}

ClientMethod twoFactorModified() [ Language = javascript ]
{
}

ClientMethod changeNS(ns) [ Language = javascript ]
{
}

ClientMethod passwordChanged(newvalue) [ Language = javascript ]
{
}

ClientMethod doChangeName(name) [ Language = javascript ]
{
}

ClientMethod doCopyUser(user) [ Language = javascript ]
{
}

ClientMethod doGenerateQRCode() [ Language = javascript ]
{
}

ClientMethod doProfile() [ Language = javascript ]
{
}

ClientMethod doPhoneProvider() [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod showqr() [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

ClassMethod ValidateRoutine(pRoutine, pNamespace) As %Boolean [ ZenMethod ]
{
}

ClassMethod GetQR(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Call server save method.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method CopyUser(UserName As %String) As %Status [ ZenMethod ]
{
}

Method GenerateQRCode(UserName As %String) As %Status [ ZenMethod ]
{
}

Method ParseUsername(UserName As %String) As %String [ ZenMethod ]
{
}

/// Fill in form fields. Used when loading the page for edit or when choosing a copy from user during creation
Method PopulateFields(ByRef Properties As %String) As %Status
{
}

Method DrawTabHeader(pSeed As %String) As %Status
{
}

Method PopulateNSDropdown(Type As %Integer, Output displayList As %String, Output valueList As %String) As %Status
{
}

Method PopulateTwoFactor() As %Status [ ZenMethod ]
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

///  Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the (localized) name of the page.
///  This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// / Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
