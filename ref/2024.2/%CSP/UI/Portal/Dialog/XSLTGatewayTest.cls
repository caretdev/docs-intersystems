/// Dialog popup for Zen Report Render Server actions.
Class %CSP.UI.Portal.Dialog.XSLTGatewayTest Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Dialog.XSLTGatewayTest.zen";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Displayed name of this page.
Parameter PAGENAME = "Test XSLT Gateway server";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// If true, then this dialog displays a Cancel button.
Parameter CANCELBUTTON = 0;

Property Action As %String;

Property Draw1 As %Boolean [ InitialExpression = 0 ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Provide HTML content according to the action.
Method DrawArea1(pSeed As %String) As %Status
{
}

/// This demonstrates a transformation by simply sorting the elements within the XML
/// The difference between this method and the one in XSLT2.Examples is that here
/// we escape the output as it is displayed in HTML contents, and change to namespace SAMPLES.
ClassMethod Example1() As %String
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// If the user presses the ENTER key, this popup window will close.
ClientMethod onkeydownHandler(evt) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

XData ExampleXML
{
}

XData Example1XSL
{
}

}
