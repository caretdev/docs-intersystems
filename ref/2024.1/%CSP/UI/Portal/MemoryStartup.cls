/// System Management Portal - Memory and Startup
Class %CSP.UI.Portal.MemoryStartup Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Memory and Startup";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.MemoryStartup.zen";

Parameter HELPADDRESS = "Home,Configuration,Memory and Startup";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Do not allow this page to auto-switch namespaces if $NAMESPACE is specified
Parameter AUTONS As BOOLEAN = 0;

Parameter EMSSERVICE = "Config";

/// Holds the system default values for DB memory allocation, comma-delimited
Property AutoDBMem As %String;

/// Holds the system default value for routine cache memory allocation
Property Autoroutines As %Integer [ InitialExpression = {##class(%SYS.System).GetRoutineCache()} ];

Property DBSizesAllowed As %String;

Property Is32Bit As %Boolean [ InitialExpression = {$zu(40,0,2) = 4} ];

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property NotWindows As %Boolean;

/// Holds the current value for per-process memory
Property Oldbbsiz As %Integer;

/// Holds the current values for DB memory allocation, comma-delimited
Property OldDBMem As %String;

/// Holds the current Superserver port
Property OldDefaultPort As %Integer;

/// Holds the current database cache setting (automatic or manual configuration)
Property OldManualConfig As %Boolean;

/// Holds the current routine cache setting (automatic or manual configuration)
Property OldManualRoutines As %Boolean;

/// Holds the current value for routine cache memory allocation
Property Oldroutines As %String;

Property RestartMsg As %String [ InitialExpression = {$$$Text("Modification saved. You must restart the system for the new values to take effect.")} ];

Property InvalidMessage As %String [ InitialExpression = {$$$Text("Invalid value.")} ];

Property EditPort As %ZEN.Datatype.integer(ZENURL = "EditPort");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod clearError(ctl) [ Language = javascript ]
{
}

ClientMethod changeRadio(newVal, routines) [ Language = javascript ]
{
}

/// validate the control value. pass is either "true" or "false" indicating if there is already a field failed pass validation.<br>
/// defaultVal - value to set into the field if it is blank<br>
/// checkRange - if true, additionally check whether the number is in range: minVal - maxVal, inclusive<br>
/// validVal - if specified, an additional valid value outside the range
ClientMethod validateRequiredAndRange(ctl, pass, defaultVal, checkRange, minVal, maxVal, validVal) As %Boolean [ Language = javascript ]
{
}

ClientMethod validate(proxy) [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod doModified() [ Language = javascript ]
{
}

ClientMethod setButtonCaption(text) [ Language = javascript ]
{
}

ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method HideComponent(id As %String)
{
}

Method %OnGetPageName() As %String
{
}

/// This method resets the modified indicator and return user to the parent page.
ClientMethod doCancel() [ Language = javascript ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
