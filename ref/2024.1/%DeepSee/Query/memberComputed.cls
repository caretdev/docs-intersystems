/// Specialized version of the member class used for computed dimensions.
Class %DeepSee.Query.memberComputed Extends %DeepSee.Query.member [ System = 4 ]
{

/// Process the member id, name, and key information for this member.
/// Put the result into <var>pSet</var>.
Method %ProcessMembers(pParent As %Integer, Output pSet As %List) As %Status [ Internal ]
{
}

/// Test if <var>pName</var> is a valid member name.
Method %FindMemberByName(pName As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, pLevel As %Integer = "", Output pMemberKey As %String) As %Status [ Internal ]
{
}

/// Find the member with the given key.
Method %FindMemberByKey(pKey As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, Output pMemberValue As %String, pRecurse As %Boolean = 1) As %Status [ Internal ]
{
}

/// Find the set of members that match the given criteria and place them
/// into the axis tree.<br/>
ClassMethod %GetMembers(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pRollupKey As %String, pParent As %Integer, pKey As %String, ByRef pNodeNo As %Integer, pRecurse As %Integer = 0, ByRef pRange As %String, ByRef pMemberList) As %Status
{
}

/// Given an MDX expression, return an info node ($list) for the resolved expression.<br/>
ClassMethod %GetNodeForMDX(Output pNode As %List, pCubeName As %String, pParent As %Integer, pName As %String, pExpr As %String) As %Status
{
}

}
