/// Page to obtain an access token for a connection to a managed file transfer provider.
Class %CSP.UI.Portal.MFT.Authorize Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Managed File Transfer Authorization";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.MFT.Authorize.zen";

/// Parameter HELPADDRESS = "System Administration,Security";
Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

/// If it's set to 1 then Save and Cancel buttons will show in top bar
Property IsEditForm As %Boolean [ InitialExpression = 0 ];

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");

Property ConnectionName As %ZEN.Datatype.string(ZENURL = "ConnectionName");

Property PageScope As %ZEN.Datatype.string(ZENURL = "PageScope");

Property AuthorizationCodeURL As %String;

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

ClientMethod getAccessToken() [ Language = javascript ]
{
}

ClientMethod doCheckToken() [ Language = javascript ]
{
}

ClientMethod doRevokeToken() [ Language = javascript ]
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

/// Get the authorization code url
ClassMethod GetAuthorizationCodeURL(connection As %SYS.MFT.Connection.Base, scope As %String, Output sc As %Status) As %String
{
}

ClassMethod CheckToken(name As %String, scope As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod RevokeToken(name As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

}
