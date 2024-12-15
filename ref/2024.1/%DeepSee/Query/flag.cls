/// This class defines a function flag within a DeepSee query.<br/>
Class %DeepSee.Query.flag Extends node [ System = 3 ]
{

/// Return the type of this node.<br/>
Method %GetType() As %String
{
}

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Execute and build the axes output for this node.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

}
