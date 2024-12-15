/// Base class for DeepSee RunTime nodes that contain children.
Class %DeepSee.Query.group Extends node [ Abstract, System = 3 ]
{

/// Children of this group.<br/>
/// The type of the children depends on context.
Relationship children As %DeepSee.Query.node(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = parent ];

/// Diagnostic. Print value of this node to the console.
Method %PrintNode(pLevel As %Integer = 0)
{
}

/// Execute the pre-processing logic for this node.
Method %PreProcess(pIsSlicer As %Boolean = 0) As %Status
{
}

/// Process this node within the context of the filter section of a query<br/>
Method %ProcessFilter(ByRef pFilterTree As %List, pCube As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer) As %Status [ Internal ]
{
}

/// Test this node to make sure all data references are currently marked enabled in the cube.
Method %IsEnabled(pCube As %String = "", Output pStatus As %Status = {$$$OK}, Output pReason As %String = "") As %Boolean
{
}

}
