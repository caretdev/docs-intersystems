Class %DeepSee.PMML.Definition.Util.Predicate Extends %DeepSee.PMML.Definition.extendableNode [ Abstract, System = 3 ]
{

Method %WriteComputeCode(pVar As %String, pObj As %String, pIndent As %String, pStream As %Stream.TmpCharacter) As %Status
{
}

Method %GetComputeCode(pObj As %String) As %String [ Abstract ]
{
}

Method %GetAsTree(Output pTree) As %Status [ Abstract, Internal ]
{
}

Method %ValidateNames(ByRef pDictionary) As %Status
{
}

}
