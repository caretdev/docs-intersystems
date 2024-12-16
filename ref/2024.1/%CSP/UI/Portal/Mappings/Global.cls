/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Edit Service Popup Dialog for Management Portal
Class %CSP.UI.Portal.Mappings.Global Extends %CSP.UI.Portal.Mappings.Template [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mappings.Global.zen";

/// Displayed name of this page.
Parameter PAGENAME = "Global Mapping";

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod toggle(groupID) [ Language = javascript ]
{
}

ClientMethod checkFields() [ Language = javascript ]
{
}

ClientMethod doChangeDB(newVal) [ Language = javascript ]
{
}

ClientMethod doChangeSubscript(newVal) [ Language = javascript ]
{
}

ClientMethod validate() [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClassMethod DrawExample(pSeed) As %Status
{
}

/// Call server save method.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
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

Method DrawCollations() As %Status
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

}