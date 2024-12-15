Class %UnitTest.Portal.TestSuite Extends %UnitTest.Portal.standardPage [ DependsOn = %ZEN.Component.tableNavigator, System = 4 ]
{

Property RealSuite As %String [ Calculated ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method BuildTestInstance() As %Status
{
}

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
{
}

Method RealSuiteGet() As %Status
{
}

Method %OnGetTitle() As %String
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

}
