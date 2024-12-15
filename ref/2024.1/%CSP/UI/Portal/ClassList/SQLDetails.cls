Class %CSP.UI.Portal.ClassList.SQLDetails Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter RESOURCE = "%Development";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.ClassList.SQLDetails.zen";

/// Displayed name of this page.
Parameter PAGENAME = "ClassSQLDetails";

/// Display title of this page
Parameter PAGETITLE = "Class SQL Details";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// Switch namespace for this page:
Parameter AUTONS As BOOLEAN = 1;

Property Schema As %String(ZENURL = "SCHEMA");

Property Table As %String(ZENURL = "TABLE");

/// This XML block defines the contents of this page.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

}
