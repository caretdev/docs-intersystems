Class %CSP.UI.Portal.NLSImport Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Import Locale";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.NLSImport.zen";

Parameter HELPADDRESS = "Home,Configuration,Import Locale";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Returning from file select OR qualifiers dialog and setting the value into the appropriate field.
/// The id of the field that needs to be updated is saved in "dialogClicked".
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Launching a file selector window.
ClientMethod doBrowse(fieldID) [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Save current item.
ClientMethod doImport() [ Language = javascript ]
{
}

/// Call server save method.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) name of the page.
///  This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

}
