Class %UnitTest.Portal.Indices Extends %UnitTest.Portal.standardPage [ DependsOn = %ZEN.Component.tableNavigator, System = 4 ]
{

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method BuildTestInstance() As %Status
{
}

Method %OnGetTitle() As %String
{
}

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

}
