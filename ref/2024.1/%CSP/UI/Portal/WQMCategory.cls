/// Zen page for System Management Portal - Edit WQM Category
Class %CSP.UI.Portal.WQMCategory Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Work Queue Manager Category";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.WQMCategory.zen";

Parameter HELPADDRESS = "System Administration,Configuration,System Configuration,WQM Category";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.WQMCategories.zen";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Do not register in recent list
Parameter RECENT = 0;

/// ID for edit.
Property PID As %String(ZENURL = "PID");

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];

/// If set to 1 then the generic Save and Cancel button will be shown on the ribbon bar.
Property IsEditForm As %Boolean [ InitialExpression = 1 ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod getProxy() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Save current item. Subclass may override.
ClientMethod doSave() [ Language = javascript ]
{
}

/// Call server save method.
ClassMethod SaveData(pProxy As %ZEN.proxyObject, isNew As %Boolean) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method PopulateFields() As %Status
{
}

}
