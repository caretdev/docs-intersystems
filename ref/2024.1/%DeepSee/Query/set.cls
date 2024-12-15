/// This class defines an set within a DeepSee query.<br/>
/// A set can contain <class>tuple</class> objects within its
/// <property>children</property> collection.
Class %DeepSee.Query.set Extends group [ System = 3 ]
{

/// Return type of this node.
Method %GetType() As %String
{
}

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Execute and build the axes output for this set.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

}
