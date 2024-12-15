/// This page allows to print current active license and user selected license file to a printer.
Class %CSP.UI.Portal.License.Print Extends (%CSP.Portal.standardDialog, %CSP.UI.Portal.License.Utils) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter RESOURCE = "%Admin_Manage:USE";

/// Displayed name of this page.
Parameter PAGENAME = "PrintLicense";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.License.Print.zen";

/// Display title of this page <title></title>
Parameter PAGETITLE = "Print License";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// Switch namespace for this page:
Parameter AUTONS As BOOLEAN = 0;

/// Schema name passed in from URL.
Property Filename As %String(ZENURL = "Filename");

/// This XML block defines the contents of this page.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Prepare to start printing
ClientMethod doPrint() [ Language = javascript ]
{
}

ClientMethod doCancel() [ Language = javascript ]
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

ClassMethod DrawDate(pSeed As %String) As %Status
{
}

ClassMethod PrintFile(pFile As %String) As %Status
{
}

}
