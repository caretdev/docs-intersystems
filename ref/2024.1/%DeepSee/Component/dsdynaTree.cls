Class %DeepSee.Component.dsdynaTree Extends %ZEN.Component.dynaTree [ System = 3 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

/// Draw HTML to display a given node in the tree graph.
/// <var>pState</var> contains state info for each level of the tree:
/// 0 no siblings; 1 prev sibling only; 2 both siblings; 3 next sibling only.
Method %DrawNode(ByRef pTree, pNode As %Integer, pOffset As %Integer, pLevel As %Integer, ByRef pState, pParentNode As %Integer) [ Internal ]
{
}

}
