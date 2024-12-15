/// %CSP.UI.Component.SMPDynaTree
Class %CSP.UI.Component.SMPDynaTree Extends %ZEN.Component.dynaTree [ System = 3 ]
{

/// Default url of image used for a leaf node in the tree (for SMP it is none)
Parameter IMAGENODE;

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

/// / Draw HTML to display a given node in the tree graph.
/// <var>pState</var> contains state info for each level of the tree:
/// 0 no siblings; 1 prev sibling only; 2 both siblings; 3 next sibling only.
Method %DrawNode(ByRef pTree, pNode As %Integer, pOffset As %Integer, pLevel As %Integer, ByRef pState, pParentNode As %Integer) [ Internal ]
{
}

/// Built-in drag handler for tree component.
/// Let the user drag the selected node.
ClientMethod dragStartHandler(dragData) [ Language = javascript ]
{
}

}
