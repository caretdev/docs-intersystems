Class %iKnow.DeepSee.Dimensions.Entities Extends %iKnow.DeepSee.Dimensions.Base [ Deprecated, System = 4 ]
{

Property %ikSkipList As %Integer;

Property %ikUseStemming As %Boolean;

ClassMethod %Create(pCube As %String, pFactNo As %Integer, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %DeepSee.ComputedDimension.Base
{
}

Method %FindComputedMemberByKeyInternal(pKey As %String, Output pFlag As %Boolean, Output pMemberName As %String, Output pMemberId As %String, pComputeBitset As %Boolean = 1) As %Status [ Internal, Private ]
{
}

Method %FindComputedMemberByName(pName As %String, Output pFlag As %Boolean, Output pMemberKey As %String, Output pMemberId As %String) As %Status [ Internal ]
{
}

/// Build the bitset that corresponds to the given computed dimension "spec".
Method %OnComputeBitset(pSpec As %String, pIndexKey As %String) As %Status
{
}

/// Method combining the functionality of <method>%MemberSearch</method> and
/// <method>%OnGetComputedMembersFiltered</method> to avoid having the same code twice.<br/>
/// Returns entries of the form:<br/>
/// 		pMembers(n) = $lb(id, name, key)<br/>
/// Expects any predefined dimension members to supplied with <var>pMemmbers</var> upfront!
Method %OnGetComputedMembersInternal(ByRef pMembers, pSearchKey As %String = "", pRollupKey As %String = "", ByRef pRange As %String = "") As %Status [ Internal ]
{
}

Method GetEntitySortType() [ Internal, Private ]
{
}

/// Return number of members.
ClassMethod %Count(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Integer
{
}

}
