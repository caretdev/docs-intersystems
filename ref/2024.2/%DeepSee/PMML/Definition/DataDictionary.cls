Class %DeepSee.PMML.Definition.DataDictionary Extends extendableNode [ System = 3 ]
{

Property numberOfFields As %DeepSee.PMML.Datatype.IntNumber(MINVAL = 1, XMLPROJECTION = "ATTRIBUTE");

Property DataFields As list Of DataField(XMLNAME = "DataField", XMLPROJECTION = "ELEMENT");

Property Taxonomies As list Of Taxonomy(XMLNAME = "Taxonomy", XMLPROJECTION = "ELEMENT");

Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %GetDictionary(ByRef pDictionary) As %Status
{
}

Method AddField(pField As DataField) As %Status
{
}

}
