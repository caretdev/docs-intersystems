///  Zen page for System Management Portal - Edit Mirror Database Properties
Class %CSP.UI.Portal.DatabaseMirror Extends %CSP.UI.Portal.DatabaseTemplate [ System = 4 ]
{

///  Displayed name of this page.
Parameter PAGENAME = "Mirror Database Properties";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.DatabaseMirror.zen";

Parameter HELPADDRESS = "Home,Configuration,Databases,Edit Mirror Database";

Property IsPrimary As %ZEN.Datatype.boolean [ InitialExpression = {$SYSTEM.Mirror.IsPrimary()} ];

Property FailoverDB As %ZEN.Datatype.boolean;

Property MirrorSetName As %ZEN.Datatype.string(ZENURL = "Mirror");

Property OldMaxSize As %ZEN.Datatype.integer;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

///  Set focus to the Name field.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod changeReadOnly(newVal) [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod validate(proxy) [ Language = javascript ]
{
}

ClientMethod updateDirectory(NewDirectory) [ Language = javascript ]
{
}

///  if user entered MaxSize, need to make sure it is not less than 'Size'.
ClientMethod changeMaxSize(newVal) [ Language = javascript ]
{
}

///  if user entered Size, need to make sure it is not greater than 'MaxSize'.
ClientMethod changeSize(newVal) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method DrawSizes(pSeed As %String) As %Status
{
}

/// Sizes from Other System
Method LoadOtherSizes(Name As %String, OtherSizes As %String) As %String
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

///  Save general association data to server.<br/>
///  Returns proxy.ok = 1 (save successful) or 0 (error occurred)<br/>
///  proxy.Message (save successful, with warning message: require restart)<br/>
///  proxy.ErrorMessage (save failed and display this error message).
///  If proxy.ok is 1 and no messages returned then we return to Database list page.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SaveLocalProp(dirname As %String, cursize As %String, maxsize As %String, expsize As %String, blocksize As %String) As %Status
{
}

}
