/// System Management Portal - Advanced Configuration
Class %CSP.UI.Portal.Config.Advanced [ Abstract, System = 4 ]
{

Property Properties As %String;

/// Subject name for the setting page.
Property Subject As %String;

/// Override in subclass
ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Save current item. Subclass may override.
ClientMethod doSave() [ Language = javascript ]
{
}

ClassMethod SaveData(Subject As %String, Properties As %String, Values As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method PopulateFields() As %Status
{
}

}
