/// System Management Portal - System Administration - Edit Client Application
Class %CSP.UI.Portal.Applications.Client Extends %CSP.UI.Portal.Applications.EditTemplate [ System = 4 ]
{

///  Displayed name of this page.
Parameter PAGENAME = "Edit Client Application";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Applications.Client.zen";

Parameter HELPADDRESS = "System Administration,Security,Applications,Client Applications";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.Applications.ClientList.zen";

Property ApplicationType As %Integer [ InitialExpression = {$$$AppTypeExecutable} ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Set focus to the Name or Description field, disable fields if DispatchClass is defined.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod doRegister() [ Language = javascript ]
{
}

ClientMethod doUnregister(rowNum) [ Language = javascript ]
{
}

/// Returning from file select and setting the value into the appropriate field.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod doNewBrowse(fieldID, wildcard, onlyDir) [ Language = javascript ]
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

ClassMethod Unregister(PID As %String, DeleteIndex As %Integer) As %Status [ ZenMethod ]
{
}

ClassMethod Register(PID As %String, Directory As %String) As %Status [ ZenMethod ]
{
}

Method DrawAppList(pSeed As %String) As %Status
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
