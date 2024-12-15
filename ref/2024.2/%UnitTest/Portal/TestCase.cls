Class %UnitTest.Portal.TestCase Extends %UnitTest.Portal.standardPage [ DependsOn = %ZEN.Component.tableNavigator, System = 4 ]
{

Property RealSuite As %String [ Calculated ];

Property RealTestCase As %String [ Calculated ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method BuildTestInstance() As %Status
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

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
{
}

Method RealSuiteGet() As %Status
{
}

Method RealTestCaseGet() As %Status
{
}

}
