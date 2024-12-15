Class %DeepSee.PMML.Model.Tree Extends AbstractModel [ Abstract, System = 4 ]
{

Parameter TRACEWEIGHTTYPE [ Internal ] = "tree";

Parameter SUPPORTSSIMPLEMODE [ Internal ] = 1;

ClassMethod %CreateModelClass(pClass As %Dictionary.ClassDefinition, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Internal ]
{
}

ClassMethod CreateSubTreeMethod(pClass As %Dictionary.ClassDefinition, pEnableDefaultChild As %Boolean = 0) As %Dictionary.MethodDefinition [ Internal, Private ]
{
}

ClassMethod EndSubTreeMethod(pMethod As %Dictionary.MethodDefinition) As %Status
{
}

ClassMethod %OnGetOutputFeature(pMethod As %Stream.Object, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pOutputField As %DeepSee.PMML.Definition.OutputField, ByRef pFeatureValueVar As %String, Output pSupported As %Boolean) As %Status [ Internal, Private ]
{
}

ClassMethod %WriteNodeBranch(pNode As %DeepSee.PMML.Definition.Models.Trees.TreeNode, pClass As %Dictionary.ClassDefinition, pCode As %Stream.TmpCharacter, pLevel As %Integer = 0, pParentsDefaultChild As %String = "", pTreeModel As %DeepSee.PMML.Definition.Models.TreeModel) As %Status [ Internal, Private ]
{
}

}
