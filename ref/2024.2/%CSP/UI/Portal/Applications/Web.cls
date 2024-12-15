/// System Management Portal - System Administration - Edit Web Application
Class %CSP.UI.Portal.Applications.Web Extends %CSP.UI.Portal.Applications.EditTemplate [ System = 4 ]
{

///  Displayed name of this page.
Parameter PAGENAME = "Edit Web Application";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Applications.Web.zen";

Parameter HELPADDRESS = "System Administration,Security,Applications,Web Applications";

Parameter EMSSERVICE = "Security";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.Applications.WebList.zen";

Property ApplicationType As %Integer [ InitialExpression = {$$$AppTypeCSP} ];

Property IsSysApp As %Boolean [ InitialExpression = 0 ];

Property OldDefaultApp As %String;

Property UserChangedPath As %Boolean [ InitialExpression = 0 ];

Property enableWebType As %String [ InitialExpression = "REST" ];

Property PythonAppProtocol As %String [ InitialExpression = "WSGI" ];

Property NumTabs As %Integer [ InitialExpression = 4 ];

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

ClientMethod doCopyApp(newApp) [ Language = javascript ]
{
}

ClientMethod enableWebTypeChanged(value) [ Language = javascript ]
{
}

ClientMethod PythonProtocolChanged(value) [ Language = javascript ]
{
}

ClientMethod JWTAuthChanged() [ Language = javascript ]
{
}

ClientMethod setSubEnablers() [ Language = javascript ]
{
}

/// Disable/enable the CSP setting fields if DispatchClass is defined/undefined. (Deprecated)
ClientMethod dispatchClassModified(newClass) [ Deprecated, Language = javascript ]
{
}

/// If the user enters a path, it will not be overwritten by then choosing a CopyFrom application
ClientMethod pathChanged(newPath) [ Language = javascript ]
{
}

/// When the app name changes, redraw the cookie path options
ClientMethod updateCookiePath(newName) [ Language = javascript ]
{
}

ClientMethod updateDefaultApp(newNS) [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod validate(proxy) As %Boolean [ Language = javascript ]
{
}

/// Evaluate whether changing the name of this web app will cause Interoperability and Analytics to become unusable in this namespace
/// based on whether the instance is Interoperability or Analytics enabled and whether this app is the one with a name matching the namespace name
Method GiveRenameWarning(PID As %String, pNamespace As %String) As %Boolean [ ZenMethod ]
{
}

Method IsEnsembleNamespace(pNamespace) As %Boolean [ CodeMode = expression, ZenMethod ]
{
}

ClassMethod GetDefaultApp(Nsp As %String) As %String [ ZenMethod ]
{
}

Method DrawDefaultApp(Nsp As %String) [ ZenMethod ]
{
}

Method DrawCookiePath(Name As %String) [ ZenMethod ]
{
}

Method CopyApp(AppName As %String) As %Status [ ZenMethod ]
{
}

/// Validate dependencies for a WSGI app
Method ValidateWSGI(protocol As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Call server save method.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Build a list of available authentication types
ClassMethod BuildAutheArray() As %ListOfDataTypes
{
}

/// Fill in form fields. Used when loading the page for edit or when choosing a copy from app during creation
Method PopulateFields(CopyApp As %Boolean, ByRef Properties As %String, AutheArray As %ListOfDataTypes) As %Status
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

ClassMethod CheckEventClass(pClassName, pNamespace) As %Boolean [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

/// Wrap the tabChanged() method from %CSP.UI.Portal.Applications.EditTemplate so that the Save button is also usable for the fourth tab
ClientMethod tabChangedWeb(index) [ Language = javascript ]
{
}

/// pSeed holds all the origins to be displayed, separated by ";". This method draws the CORS origins allowlist table and the CORS header tables from the seed. Returns $$$OK when successful. pType=1 means this method is drawing the CORS origins allowlist. pType=2 means this method is drawing the CORS headers table.
Method DrawCorsTable(pType, pSeed As %String) As %Status
{
}

/// pSeed holds all the origins to be displayed, separated by ";". This method is called by content pane and draws the CORS origins table from the seed. Returns $$$OK when successful.
Method DrawOriginsTable(pSeed As %String) As %Status
{
}

/// pSeed holds all the headers to be displayed, separated by ";". This method is called by content pane and draws the CORS headers table from the seed. Returns $$$OK when successful.
Method DrawHeadersTable(pSeed As %String) As %Status
{
}

/// doAddCors is called when user wants to add an entry to the CORS origins allowlist or CORS headers table. pType=1 means this method is adding to the CORS origins allowlist. pType=2 means this method is adding to the CORS headers table.
ClientMethod doAddCors(pType) [ Language = javascript ]
{
}

/// deleteCors removes one element from CORS table and updates the table. Type=1 means this method is deleting from the CORS origins allowlist. pType=2 means this method is deleting from the CORS headers table. DeleteIndex is the index of the table to delete; this value starts counting at 0.
ClientMethod deleteCors(pType,  DeleteIndex) [ Language = javascript ]
{
}

/// deleteAllCors removes all elements from a CORS table and updates the table. pType=1 means this method is deleting from the CORS origins allowlist. pType=2 means this method is deleting from the CORS headers table.
ClientMethod deleteAllCors(pType) [ Language = javascript ]
{
}

/// ValidateNoRepeats checks that the new element is not a repeat. newElement is the new entry. allowlist is a string of all the elements, separated by ";". Return 1 for a good new element or an error message for a bad new element.
ClientMethod ValidateNoRepeats(newElement,  allowlist) As %String [ Language = javascript ]
{
}

/// ValidateOrigin checks that the new origin is a valid origin with proper schema, host, and port. newOrigin is the new entry. Return $$$OK for a good origin or an error message for a bad origin.
ClassMethod ValidateOrigin(newOrigin As %String) As %String [ ZenMethod ]
{
}

}
