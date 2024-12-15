Class %CSP.UI.Portal.DatabaseVolumes Extends %CSP.UI.Portal.DatabaseTemplate [ System = 4 ]
{

///  Displayed name of this page.
Parameter PAGENAME = "Multi-Volume Properties";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.DatabaseVolumes.zen";

Parameter HELPADDRESS = "Home,Configuration,Local Databases,Multi-Volume Properties";

Property currentVolDir As %ZEN.Datatype.string;

Property curVolSize As %ZEN.Datatype.integer;

Property SoftMinimum As %ZEN.Datatype.integer;

Property IsNotMounted As %ZEN.Datatype.integer;

Property IsRO As %ZEN.Datatype.integer;

Property LastVolumeSize As %ZEN.Datatype.integer;

Property LastVolumeDirectory As %ZEN.Datatype.string;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod doSelectRow() [ Language = javascript ]
{
}

ClientMethod changeVolDir(newdir) [ Language = javascript ]
{
}

ClientMethod browseVolDir(action) [ Language = javascript ]
{
}

ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod doTableViewSwitch() [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod doSaveExpand() [ Language = javascript ]
{
}

ClassMethod NormalizeDir(dir As %String) As %String [ ZenMethod ]
{
}

ClassMethod CheckVolDir(dbdir, ndir As %String) As %Integer [ ZenMethod ]
{
}

ClassMethod CreateDirectory(dir As %String) As %Integer [ ZenMethod ]
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

///  Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
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

///  Save general association data to server.<br/>
///  Returns proxy.ok = 1 (save successful) or 0 (error occurred)<br/>
///  proxy.Message (save successful, with warning message: require restart)<br/>
///  proxy.ErrorMessage (save failed and display this error message).
///  If proxy.ok is 1 and no messages returned then we return to Database list page.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method DrawSize(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

}
