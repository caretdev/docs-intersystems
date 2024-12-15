/// System Management Portal - Advanced Configuration
Class %CSP.UI.Portal.Config.AdvancedList [ Abstract, System = 4 ]
{

Property EditPage As %String;

/// Subject name for the setting page.
Property Subject As %String;

XData Style
{
}

/// User clicked the "New" button
ClientMethod doNew(passSubject) [ Language = javascript ]
{
}

/// User clicked the Add or Edit button.
ClientMethod editItem(PID, isNew, passSubject) [ Language = javascript ]
{
}

/// Delete existing item.
ClientMethod deleteItem(name) [ Language = javascript ]
{
}

/// Refresh table.
ClientMethod refreshTable() [ Language = javascript ]
{
}

/// Call server delete method.
ClassMethod DeleteData(Subject As %String, Name As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Get Class Name by Subject for package = "Config"
ClassMethod GetClassName(Subject As %String) As %String
{
}

}
