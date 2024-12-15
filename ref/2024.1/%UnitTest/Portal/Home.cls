Class %UnitTest.Portal.Home Extends %UnitTest.Portal.standardPage [ DependsOn = %ZEN.Component.tableNavigator, System = 4 ]
{

Method %OnGetTitle() As %String
{
}

/// Contents of this page:
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method calcStatus(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

Method delCell(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClientMethod deleteInstance(id) [ Language = javascript ]
{
}

ClassMethod DelInst(id As %Integer) As %Status [ ZenMethod ]
{
}

Method %OnGetPageName() As %String
{
}

}
