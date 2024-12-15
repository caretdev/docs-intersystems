Class %DeepSee.PMML.Definition.Util.Interval Extends DataFieldRange [ System = 3 ]
{

Property closure As %DeepSee.PMML.Datatype.String(VALUELIST = ",openClosed,openOpen,closedOpen,closedClosed", XMLPROJECTION = "ATTRIBUTE");

Property leftMargin As %DeepSee.PMML.Datatype.Number(XMLPROJECTION = "ATTRIBUTE");

Property rightMargin As %DeepSee.PMML.Datatype.Number(XMLPROJECTION = "ATTRIBUTE");

Method %GetAsCondition(pVarName As %String = "tValue") As %String
{
}

}
