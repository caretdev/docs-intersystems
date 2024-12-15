/// This class (or its subclass) is used by the DeepSee Query Engine
/// to process members within a DeepSee query.<br/>
/// A <class>member</class> object is not a node within an MDX query graph.<br/>
/// Certain nodes (namely the <class>memberSpec</class> node) will create
/// an instance of <class>member</class> object (based on the type of member) and delegate to it certain member-related
/// tasks. This is how the difference between time and data dimensions is implemented.<br/>
/// This is an abstract class, the actual work is done
/// by subclasses.
Class %DeepSee.Query.member Extends %RegisteredObject [ Abstract, System = 3 ]
{

/// Name of the cube this member belongs to.
Property %cube As %DeepSee.Datatype.string;

/// The tuple object that owns this member.
Property %tuple As %DeepSee.Query.tuple;

/// Array of known value/id/key triplets for each level.
Property %memberSpec As %List [ MultiDimensional ];

/// Dimension # referred to by the tuple.
Property %dimNumber As %Integer;

/// Hierarchy # referred to by the tuple.
Property %hierNumber As %Integer;

/// Level # referred to by the tuple.
Property %levelNumber As %Integer;

/// Name for the all level for this member.
Property %allName As %DeepSee.Datatype.string;

/// Member name or value referred to by the tuple.
Property %name As %DeepSee.Datatype.string;

/// Member id value (optional).
Property %memberId As %DeepSee.Datatype.string;

/// Member key value (optional).
Property %memberKey As %DeepSee.Datatype.string;

/// Member type.<br/>
/// This indicates the context specified by the tuple expression.<br/>
/// The value can be one of the dst macros ($$$dstSet etc.).<br/>
/// This is used to determine which function can be applied to this tuple.
Property %type As %DeepSee.Datatype.string;

/// Aggregate to apply to this measure (if applicable).
Property %aggregate As %DeepSee.Datatype.string;

/// Create an instance of <class>%DeepSee.Query.member</member>.
ClassMethod %CreateMember(pClassName As %String, Output tSC As %Status, pCube As %String, pTuple As %DeepSee.Query.tuple, pDimNo As %Integer, pHierNo As %Integer, pAllName As %String = "") As %DeepSee.Query.member [ Final, Internal ]
{
}

/// Set the current level number context for this member.
Method %SetLevelNo(pLevelNo As %Integer) [ Final, Internal ]
{
}

/// Return the type of this member.
Method %GetType() As %String [ Final, Internal ]
{
}

/// Set the state of this member using the current meta data node.
Method %ApplyState(pType As %String) As %Status
{
}

/// Helper method: Get information about the given level from the
/// cube meta data.<br/>
/// As a side effect, set the dependency variable, %dsDepends.
ClassMethod %GetNodeInfo(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, Output pFact As %String, Output pStarClass As %String, Output pStarField As %String, Output pStarSort As %String, Output pRollup As %String, Output pSortDir As %String, Output pFormat As %String, Output pMemberList As %String, Output pStarKeyField As %String) As %Boolean [ Final, Internal ]
{
}

/// Helper method: Get the ALL level name for dimension, if present.
/// Also return the localized caption via <var>pCaption</var>.
ClassMethod %GetAllName(pCubeName As %String, pDimNo As %Integer, Output pCaption As %String) As %String [ Final, Internal ]
{
}

/// Helper method: Get the Null Replacement value for the given level.
/// Also return the localized caption via <var>pCaption</var>.
ClassMethod %GetNullName(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, Output pCaption As %String) As %String [ Final, Internal ]
{
}

/// Helper method: Get the time offset and format values for the given level.
ClassMethod %GetTimeOffset(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, Output pFormat As %String) As %String [ Final, Internal ]
{
}

/// Process the member id, name, and key information for this member.
/// Put the result into <var>pSet</var>.
Method %ProcessMembers(pParent As %Integer, Output pSet As %List) As %Status [ Internal ]
{
}

/// See if there is a member with the given name within the specified
/// dimension,hierarchy, and/or level.<br/>
/// If <var>pLevel</var> is supplied, only look in that level.<br/>
/// Set <var>pFlag</var> true if a member is found.<br/>
/// On return, fills in memberSpec<br/>
/// 	memberSpec(level) = $LB(name,key)<br/>
/// 	<br/>
/// memberSpec(0) = $LB("All Time")<br/>
/// 	memberSpec(1) = $LB(2006,2006)<br/>
/// memberSpec(2) = $LB("Quarter 1", "Q1 2006")<br/>
/// memberSpec(3) = $LB("January","Jan 2006")<br/>
///
Method %FindMemberByName(pName As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, pLevel As %Integer = "", Output pMemberKey As %String) As %Status [ Internal ]
{
}

/// Find the member with the given key within the given hierarchy.
/// If <var>pRecurse</var> is true, look at the current level and continue through higher levels until a match is found.
Method %FindMemberByKey(pKey As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, Output pMemberValue As %String, pRecurse As %Boolean = 1) As %Status [ Internal ]
{
}

/// Get members and place them into the axis tree.<br/>
/// <var>pRecurse</var>, if 1, indicates that this function is to be called
/// recursively to build a tree of members. If -1, include the All level (if present)
/// and the top level (used by %TOPMEMBERS).</br>
/// <var>pRange</var>, if defined, is an array contains a starting and ending
/// key value.<br/>
/// <var>pMemberList</var>, if defined, is an INLIST used for certain optimized member operations.
ClassMethod %GetMembers(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pRollupKey As %String, pParent As %Integer, pKey As %String, ByRef pNodeNo As %Integer, pRecurse As %Integer = 0, ByRef pRange As %String, ByRef pMemberList) As %Status
{
}

/// Get one member and place it into <var>pSet</var>.<br/>
/// <var>pKey</var>, is the key for the base member to return.</br>
/// <var>pRelation</var> indicates how this member is related to the base member.
/// "same","lead", "lag", etc.<br/>
/// <var>pOffset</var>, is an optional offset to apply to the relation.
ClassMethod %GetRelatedMember(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pRollupKey As %String, pParent As %Integer, Output pSet As %List, pKey As %String, pRelation As %String, pOffset As %Integer = 0, pValue As %String = "", pAllowMissing As %Integer = 0) As %Status [ Internal ]
{
}

/// Get the parent of the current member and place it into <var>pSet</var>.<br/>
ClassMethod %GetParentMember(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pParent As %Integer, Output pSet As %List, pKey As %String) As %Status [ Internal ]
{
}

/// Get the nth child of the current member and place it into <var>pSet</var>.<br/>
/// If <var>pNumber</var> is 1 return the first child; 2 for the second, etc.<br/>
/// If <var>pNumber</var> is -1 return the last child; -2 for the second from end, etc.<br/>
ClassMethod %GetNthChild(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pParent As %Integer, Output pSet As %List, pKey As %String, pNumber As %Integer) As %Status [ Internal ]
{
}

/// Lookup the value of the given dimension property.
ClassMethod %GetPropertyValue(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pProperty As %String, pParent As %Integer, Output pSet As %List, pKey As %String) As %Status [ Internal ]
{
}

/// Find the rollup key for the specified level.
Method %GetRollupKey(pLevelNo As %Integer, pKey As %String, Output pRollupKey As %String) As %Status [ Final, Internal ]
{
}

/// Return the ordinal position of this member within its parent group.
/// For convenience, also return the parent key for this member.
Method %GetMemberOffset(Output pOffset As %Integer, pKey As %String, Output pParentKey As %String) As %Status [ Internal ]
{
}

/// Test if this member supports the given feature.
/// For example, "NOW".
ClassMethod %HasFeature(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pFeature As %String) As %Boolean
{
}

/// Test if this member supports the given function.
Method %SupportsFunction(pFunction As %String, Output pMessage As %String) As %Boolean
{
}

}