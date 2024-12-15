/// This class defines a member specification within a DeepSee query.<br/>
/// A member specification defines a specific member from a dimension
/// such as "[Product]", "[Product].[Name]", or "[Location}.[Boston]".<br/>
/// A set of members may be grouped within a single tuple or a single member
/// may exist stand-alone.<br/>
/// Every memberSpec has a corresponding <class>member</class> object
/// that implements any operations needed to be run against the member,
/// such as getting a list of dimension members for a given member.<br/>
Class %DeepSee.Query.memberSpec Extends group [ System = 3 ]
{

/// Specification string for this member.
/// This is text from the query.
Property spec As %DeepSee.Datatype.string(MAXLEN = 32000, XMLPROJECTION = "attribute");

/// Member object that provides the member API for this member.
/// This is created during the pre-processing phase.
Property %member As %DeepSee.Query.member(XMLPROJECTION = "none");

/// This array holds our member spec *after* it has been resolved.
Property %resolvedSpec As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// This array holds a list of which items in the resolved list are quoted.
Property %resolvedQuoted As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Resolved member keys, if any.
Property %memberKeys As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Break our spec into it constituent parts.<br/>
/// If the spec contains named parameters, resolve them.<br/>
/// We do this as soon as we are first asked for our value and then
/// we hold onto the resolved value.
Method %ResolveValue() As %Status [ Internal ]
{
}

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Return type of this node.
Method %GetType() As %String
{
}

/// Return the member provider object associated with this node.
Method %GetMemberProvider() As %DeepSee.Query.member
{
}

/// Execute the pre-processing logic for this node.
Method %PreProcess(pIsSlicer As %Boolean = 0) As %Status
{
}

/// Execute and build the axes output for this tuple.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

/// Process the filter output for this tuple
Method %ProcessFilter(ByRef pFilterTree As %List, pCube As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer) As %Status [ Internal ]
{
}

/// Parse the given member spec and create a member API object from it.<br/>
/// A member spec is of the form "A.B.C"; it is passed via the array <var>pSpec</var>:
/// pSpec(1)=A, etc.<br/>
/// The array <var>pQuoted</var> indicates whether a part of the spec is a quoted identifier (and thus cannot be a function).<br/>
/// The array <var>pMemberKey</var> indicates whether a part of the spec is member key (e.g., &2007).<br/>
/// On return <var>pMember</var> contains the member provider object that can be used to process the member.<br/>
/// We assume that if the spec contained a function it was already removed before this point.
Method %SpecToMember(ByRef pSpec, ByRef pQuoted, ByRef pMemberKey, Output pMember As %DeepSee.Query.member) As %Status [ Internal ]
{
}

/// Given a member spec, create a memberSpec object that can be used to access
/// members.
ClassMethod %ConstructMemberSpec(pSpec As %String, Output pMemberSpec As %DeepSee.Query.memberSpec) As %Status [ Internal ]
{
}

/// Retrieve the display names for the level and member of a memberSpec object.
/// This is used for converting a logical node in a query object to values suitable for use in the
/// user interface.
Method %GetMemberDisplayValues(pCubeName As %String = "", Output pLevelName = "", Output pMemberName = "") As %Status [ Internal ]
{
}

/// Test this node to make sure all data referenced by the spec is enabled in this cube.
Method %IsEnabled(pCube As %String = "", Output pStatus As %Status = {$$$OK}, Output pReason As %String = "") As %Boolean
{
}

}
