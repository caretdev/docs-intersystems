/// This class defines a range within a DeepSee query.<br/>
/// A range is set defined by a starting and ending member.
/// It corresponds to the A:B syntax within MDX.
Class %DeepSee.Query.range Extends node [ System = 3 ]
{

/// Starting member for this range.
/// This can be a <class>memberSpec</class> or a <class>memberFunction</class>.
Property startMember As %DeepSee.Query.node;

/// Ending member for this range.
/// This can be a <class>memberSpec</class> or a <class>memberFunction</class>.
Property endMember As %DeepSee.Query.node;

/// Member object that provides the member API for the range.
/// This is created during the pre-processing phase.
Property %member As %DeepSee.Query.member(XMLPROJECTION = "none");

/// Return type of this node.
Method %GetType() As %String
{
}

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Execute the pre-processing logic for this node.
Method %PreProcess(pIsSlicer As %Boolean = 0) As %Status
{
}

/// Execute and build the axes output for this set.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

}
