/// This page allows to print a table to a printer.
Class %CSP.UI.Portal.SQL.PrintTable Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

/// Displayed name of this page.
Parameter PAGENAME = "PrintTable";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.PrintTable.zen";

Parameter RESOURCE = "%Development";

/// Display title of this page <title></title>
Parameter PAGETITLE = "Print Table";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// Switch namespace for this page:
Parameter AUTONS As BOOLEAN = 1;

/// Namespace passed in from URL.
Property NAMESPACE As %String(ZENURL = "$NAMESPACE");

/// Schema name passed in from URL.
Property Schema As %String(ZENURL = "$ID1");

/// Table name passed in from URL.
Property Table As %String(ZENURL = "$ID2");

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this page.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Prepare to start printing
ClientMethod doPrint() [ Language = javascript ]
{
}

ClientMethod doClose() [ Language = javascript ]
{
}

/// Show or hide the other information
ClientMethod show(tableName) [ Language = javascript ]
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

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
