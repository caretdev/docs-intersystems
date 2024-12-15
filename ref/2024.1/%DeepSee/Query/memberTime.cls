/// Specialized version of the member class used for time dimensions.
Class %DeepSee.Query.memberTime Extends member [ System = 3 ]
{

/// See if the given name is a member of a level.<br/>
/// If <var>pLevel</var> is supplied, only look in that level.<br/>
Method %FindMemberByName(pName As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, pLevel As %Integer = "", Output pMemberKey As %String) As %Status [ Internal ]
{
}

/// See if the given key is a member of a level.
Method %FindMemberByKey(pKey As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, Output pMemberValue As %String, pRecurse As %Boolean = 1) As %Status [ Internal ]
{
}

/// Find the set of members that match the given criteria and place them into the axis tree.
ClassMethod %GetMembers(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pRollupKey As %String, pParent As %Integer, pKey As %String, ByRef pNodeNo As %Integer, pRecurse As %Integer = 0, ByRef pRange As %String, ByRef pMemberList) As %Status
{
}

/// Get the nth child of the current member and place it into <var>pSet</var>.<br/>
/// Note that we ignore null values for time dimensions in this case.
ClassMethod %GetNthChild(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pParent As %Integer, Output pSet As %List, pKey As %String, pNumber As %Integer) As %Status [ Internal ]
{
}

/// Get one member and place it into <var>pSet</var>.<br/>
/// <var>pKey</var>, is the key for the base member to return.</br>
/// <var>pRelation</var> indicates how this member is related to the base member.
/// "same","lead", "lag", etc.<br/>
/// <var>pOffset</var>, is an optional offset to apply to the relation.
/// Note that we ignore null values for time dimensions in this case.
ClassMethod %GetRelatedMember(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pRollupKey As %String, pParent As %Integer, Output pSet As %List, pKey As %String, pRelation As %String, pOffset As %Integer = 0, pValue As %String = "", pAllowMissing As %Integer = 0) As %Status [ Internal ]
{
}

/// Get the parent of the current member and place it into <var>pSet</var>.<br/>
ClassMethod %GetParentMember(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pParent As %Integer, Output pSet As %List, pKey As %String) As %Status [ Internal ]
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

/// Find the time level class for the given level.
Method %GetLevelClass(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, Output pLevelClass As %String) As %Status
{
}

/// Find the range of time between a starting and ending member.
ClassMethod %GetBaseRange(pStartMember As %DeepSee.Query.memberTime, pEndMember As %DeepSee.Query.memberTime, Output pStartTime As %Date, Output pEndTime As %Date) As %Status
{
}

/// Return a set of member keys within the given time window (for %TimeWindow).
/// Return a list of $LB(levelNo,key)
Method %GetMembersInWindow(pStartTime As %Date, pEndTime As %Date, Output pMemberList) As %Status
{
}

}
