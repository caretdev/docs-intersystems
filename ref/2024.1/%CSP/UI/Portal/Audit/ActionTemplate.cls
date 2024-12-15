Class %CSP.UI.Portal.Audit.ActionTemplate Extends %CSP.UI.Portal.Template [ Abstract, System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property Action As %String;

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doFinish() [ Language = javascript ]
{
}

ClientMethod validate(DaysOption) [ Language = javascript ]
{
}

ClassMethod StartAction(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Actually write out result.
/// When the page is first opened, seed is null.
ClassMethod DrawResult(seed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

}
