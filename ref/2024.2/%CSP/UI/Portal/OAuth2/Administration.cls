/// Page to define OAuth2 administration options
Class %CSP.UI.Portal.OAuth2.Administration Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "OAuth 2.0 Administration";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.OAuth2.Administration.zen";

Parameter HELPADDRESS = "System Administration,Security,OAuth2,Administration";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_OAuth2_Registration";

/// If it's set to 1 then Save and Cancel buttons will show in top bar
Property IsEditForm As %Boolean [ InitialExpression = 0 ];

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this pane.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod revokeUser() [ Language = javascript ]
{
}

Method %OnGetPageName() As %String
{
}

/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

ClassMethod RevokeTokenForUser(pUserName) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
