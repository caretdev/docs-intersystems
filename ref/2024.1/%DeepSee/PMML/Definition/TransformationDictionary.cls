Class %DeepSee.PMML.Definition.TransformationDictionary Extends extendableNode [ System = 3 ]
{

Property DefineFunctions As list Of DefineFunction(XMLNAME = "DefineFunction", XMLPROJECTION = "ELEMENT");

Property DerivedFields As list Of DerivedField(XMLNAME = "DerivedField", XMLPROJECTION = "ELEMENT");

Method %ValidateNames(ByRef pDictionary) As %Status
{
}

}
