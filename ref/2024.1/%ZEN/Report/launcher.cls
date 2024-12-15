/// This is a ZEN Report Launch Page
Class %ZEN.Report.launcher Extends %ZEN.Component.page [ Deprecated, System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION;

/// Displayed name of this page.
Parameter PAGENAME;

/// Domain used for localization.
Parameter DOMAIN;

Property ReportClass As %String(MAXLEN = 255, ZENURL = "REPORT");

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this page.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

}
