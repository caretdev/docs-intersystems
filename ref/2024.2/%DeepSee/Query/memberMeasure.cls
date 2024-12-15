/// Specialized version of the member class used for measures.
Class %DeepSee.Query.memberMeasure Extends %DeepSee.Query.member [ System = 4 ]
{

/// Test if <var>pName</var> is a valid measure name.
Method %FindMemberByName(pName As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, pLevel As %Integer = "", Output pMemberKey As %String) As %Status [ Internal ]
{
}

/// Set the state of this member using the current meta data node.
Method %ApplyState(pType As %String) As %Status
{
}

/// Process the member name and key information for this tuple.
/// Put the result into <var>pSet</var>.
Method %ProcessMembers(pParent As %Integer, Output pSet As %List) As %Status
{
}

/// Find the set of members that match the given criteria and place them
/// into the axis tree.<br/>
/// In this case, return all measures for the current cube.
ClassMethod %GetMembers(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pRollupKey As %String, pParent As %Integer, pKey As %String, ByRef pNodeNo As %Integer, pRecurse As %Integer = 0, ByRef pRange As %String, ByRef pMemberList) As %Status
{
}

}
