/// Specialized version of the member class used for calculated members.<br/>
/// A calculated member is defined using the WITH clause of a query or
/// in the calculatedMember section of a cube definition.<br/>
/// This provider is used in the cases where there is a calculated member for a dimension
/// that is not defined as an actual dimension. Its only function is to indicate the
/// presence of a calculated member.
Class %DeepSee.Query.memberCalculated Extends member [ System = 3 ]
{

/// Find the member with the given key.
/// In this case, the key and value are the same.
Method %FindMemberByKey(pKey As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, Output pMemberValue As %String, pRecurse As %Boolean = 1) As %Status [ Internal ]
{
}

/// Test if <var>pName</var> is a valid member name.
Method %FindMemberByName(pName As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, pLevel As %Integer = "", Output pMemberKey As %String) As %Status [ Internal ]
{
}

/// Set the state of this member using the current meta data node.
Method %ApplyState(pType As %String) As %Status
{
}

/// Test if this member supports the given function.
Method %SupportsFunction(pFunction As %String, Output pMessage As %String) As %Boolean
{
}

}
