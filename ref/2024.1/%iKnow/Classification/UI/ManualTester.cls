Class %iKnow.Classification.UI.ManualTester Extends (%ZEN.Component.page, TestUtils) [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%iKnow";

Parameter AUTONS = 1;

Property classifier As %ZEN.Datatype.string(ZENURL = "CLASSIFIER");

Property text As %ZEN.Datatype.string;

Property config As %ZEN.Datatype.string(ZENURL = "CONFIG") [ InitialExpression = {$$$DEFAULTCONFIG} ];

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod reset() [ Language = javascript ]
{
}

ClientMethod categorize() [ Language = javascript ]
{
}

Method GetClassifierClass() As %String [ Private ]
{
}

Method GetDetailInput(Output pText As %String, Output pConfig As %String, Output pDomainId As %Integer, Output pSrcId As %Integer) As %Status [ Private ]
{
}

/// Default style for Zen pages
XData Style
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
