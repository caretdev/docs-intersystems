/// This represents a tuple within a query.<br/>
/// A tuple specifies a specific set of facts within the cube.<br/>
/// This corresponds to the (A,B,C) construct in MDX.<br/>
Class %DeepSee.Query.tuple Extends set [ System = 3 ]
{

/// Return type of this node.
Method %GetType() As %String
{
}

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Process axes for this set.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

}
