/// System Management Portal - Advanced Configuration
Class %CSP.UI.Portal.Config.AdvancedEdit [ Abstract, System = 4 ]
{

/// ID for edit. Null if adding new device.
Property PID As %String;

/// Subject name for the setting page.
Property Subject As %String;

XData Style
{
}

/// Override in subclass
ClientMethod validate() [ Language = javascript ]
{
}

/// Override in subclass
ClientMethod getProxy() [ Language = javascript ]
{
}

/// Save current item. Subclass may override.
ClientMethod doSave() [ Language = javascript ]
{
}

ClassMethod GetPropertyArray(pProxy As %ZEN.proxyObject, Output Properties) As %Status
{
}

/// Call server save method.
ClassMethod SaveData(Subject As %String, PID As %String, pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Get Class Name by Subject for package = "Config"
ClassMethod GetClassName(Subject As %String) As %String
{
}

Method PopulateFields() As %Status
{
}

}
