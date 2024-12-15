/// Elements are defined in the subclasses, to ensure the right element sequence
Class %DeepSee.PMML.Definition.Models.AbstractModel Extends %DeepSee.PMML.Definition.extendableNode [ Abstract, System = 3 ]
{

Property modelName As %DeepSee.PMML.Datatype.String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE", XSDTYPE = "xs:string");

Property functionName As %DeepSee.PMML.Datatype.MiningFunction(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property algorithmName As %DeepSee.PMML.Datatype.String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE", XSDTYPE = "xs:string");

Property isScorable As %DeepSee.PMML.Datatype.Boolean(XMLPROJECTION = "ATTRIBUTE");

Method %ValidateNames(ByRef pGlobalDictionary) As %Status [ Final ]
{
}

Method %OnValidateNames(ByRef pDictionary) As %Status
{
}

ClassMethod %GetModelClass() As %String [ CodeMode = objectgenerator, Internal ]
{
}

Method %IsOutputFeatureSupported(pFeature As %String, pValue As %String = "", Output pSC As %Status) As %Boolean [ Internal ]
{
}

}
