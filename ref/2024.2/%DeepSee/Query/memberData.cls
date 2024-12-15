/// Specialized version of the member class used for data dimensions.
Class %DeepSee.Query.memberData Extends %DeepSee.Query.member [ System = 3 ]
{

/// See if there is a member with the given name within the specified
/// dimension,hierarchy, and/or level.<br/>
/// If <var>pLevel</var> is supplied, only look in that level.<br/>
/// Set <var>pFlag</var> true if a member is found.<br/>
/// On return, fills in memberSpec<br/>
/// 	memberSpec(level) = $LB(name,key)<br/>
/// 	<br/>
/// memberSpec(0) = $LB("All Time")<br/>
/// memberSpec(1) = $LB(2006,2006)<br/>
/// memberSpec(2) = $LB("Quarter 1", "Q1 2006")<br/>
/// memberSpec(3) = $LB("January","Jan 2006")<br/>
///
Method %FindMemberByName(pName As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, pLevel As %Integer = "", Output pMemberKey As %String) As %Status [ Internal ]
{
}

/// Find the member with the given key.
Method %FindMemberByKey(pKey As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, Output pMemberValue As %String, pRecurse As %Boolean = 1) As %Status [ Internal ]
{
}

/// Get members and place them into <var>pSet</var>.<br/>
ClassMethod %GetMembers(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pRollupKey As %String, pParent As %Integer, pKey As %String, ByRef pNodeNo As %Integer, pRecurse As %Integer = 0, ByRef pRange As %String, ByRef pMemberList) As %Status
{
}

/// Get one member and place it into <var>pSet</var>.<br/>
/// <var>pKey</var>, is the key for the base member to return.</br>
/// <var>pRelation</var> indicates how this member is related to the base member.
/// "same","lead", "lag", etc.<br/>
/// <var>pOffset</var>, is an optional offset to apply to the relation.
ClassMethod %GetRelatedMember(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pRollupKey As %String, pParent As %Integer, Output pSet As %List, pKey As %String = "", pRelation As %String, pOffset As %Integer = 0, pValue As %String = "", pAllowMissing As %Integer = 0) As %Status [ Internal ]
{
}

/// Get the parent of the current member and place it into <var>pSet</var>.<br/>
ClassMethod %GetParentMember(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pParent As %Integer, Output pSet As %List, pKey As %String) As %Status [ Internal ]
{
}

/// Get the nth child of the current member and place it into <var>pSet</var>.<br/>
ClassMethod %GetNthChild(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pParent As %Integer, Output pSet As %List, pKey As %String, pNumber As %Integer) As %Status [ Internal ]
{
}

/// Lookup the value of the given dimension property.
ClassMethod %GetPropertyValue(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pProperty As %String, pParent As %Integer, Output pSet As %List, pKey As %String) As %Status [ Internal ]
{
}

/// Return the ordinal position of this member within its parent group.
/// For convenience, also return the parent key for this member.
Method %GetMemberOffset(Output pOffset As %Integer, pKey As %String, Output pParentKey As %String) As %Status [ Internal ]
{
}

}
