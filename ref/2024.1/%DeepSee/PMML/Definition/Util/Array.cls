Class %DeepSee.PMML.Definition.Util.Array Extends AbstractArray [ System = 3 ]
{

Property type As %DeepSee.PMML.Datatype.String(VALUELIST = ",int,string,real", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property Values As %DeepSee.PMML.Datatype.String(MAXLEN = "", XMLPROJECTION = "CONTENT");

Method ValuesAsArray(Output pArray) As %Status
{
}

Method Length(Output pSC As %Status = {$$$OK}) As %Integer
{
}

Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

}
