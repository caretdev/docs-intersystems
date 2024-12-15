/// This value editor is specific for the Configure individual Startup/Memory/Compatibility settings
Class %CSP.UI.Portal.Config.ValueEditor Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Config.ValueEditor.zen";

Parameter HELPADDRESS = "Home,Configuration";

Parameter EMSSERVICE = "Config";

Parameter RECENT = 0;

/// A CSL listing those properties that should get a restart required warning even if the
/// parent class does not implement the NoRestartOnActivate method.
Parameter RESTARTREQUIREDLIST = "NullSubscripts";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Name of the current configuration class
Property ClassName As %ZEN.Datatype.string(ZENURL = "ClassName");

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property IsRequired As %Boolean [ InitialExpression = 0 ];

Property PID As %ZEN.Datatype.string(ZENURL = "PID");

Property pType As %ZEN.Datatype.string;

/// Subject name for the setting page.
Property Subject As %String(ZENURL = "Subject");

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Provide contents of description component only if locale is English.
Method %GetDescHTML(pSeed As %String) As %Status
{
}

/// Check if field is required and make value is not null
ClientMethod doSave() [ Language = javascript ]
{
}

Method DrawAfterCreatePage() As %Status
{
}

/// Call server save method. Values passed in is delimited by "|" if there are more than one.
ClassMethod SaveData(ConfigClass As %String, Properties As %String, Values As %String, SelectedType As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Perform any necessary validation on the values being set
/// <var>pMessage</var> is the error message to be displayed if validation fails
ClassMethod Validate(pConfigClass As %String, ByRef pProperties As %String, ByRef pMessage As %String = "") As %Boolean
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
/// Subclasses may override.
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
