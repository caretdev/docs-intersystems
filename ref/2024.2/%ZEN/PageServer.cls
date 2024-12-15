/// Special CSP class used by the Zen Page Editor.
Class %ZEN.PageServer Extends %CSP.Page [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

/// Event handler for <b>PreHTTP</b> event:
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Create a page object from its XML definition.
ClassMethod %CreatePage(pClass As %String) As %ZEN.Component.page
{
}

}
