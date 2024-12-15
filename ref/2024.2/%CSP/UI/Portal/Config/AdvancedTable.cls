/// Template for System Management Portal - Configure a large group of settings that are defined in one class,
/// such as Config.Miscellaneous, Config.Startup and Config.config (for advanced memory)
Class %CSP.UI.Portal.Config.AdvancedTable Extends %CSP.UI.Portal.Template [ Abstract, System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Config.AdvancedTable.zen";

Parameter EMSSERVICE = "Config";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Name of the current configuration class
Property ConfigClass As %ZEN.Datatype.string;

Property HelpLink As %String;

/// Subject name for the setting page.
Property Subject As %String;

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked Edit. Go to Edit page.
ClientMethod editItem(tRow) [ Language = javascript ]
{
}

/// User clicked Help. Build the help link and open popup.
ClientMethod helpItem(tRow) [ Language = javascript ]
{
}

/// Draw HTML for the table. pSeed = "Memory" or "Miscellaneous" or "Startup"
Method DrawTable(pSeed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
