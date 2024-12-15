Class %iKnow.DeepSee.Dimensions.Base Extends %DeepSee.ComputedDimension.Base [ Abstract, Deprecated, System = 4 ]
{

Parameter CACHECOMPUTEDBITSET = "CHECK";

Property %ikDomainId As %Integer [ InitialExpression = -1 ];

Property %ikMeasure As %String;

Property %ikDomainType As %String(VALUELIST = "DeepSee,iKnow");

Parameter MAXRESULTS [ Internal ] = 100;

Parameter COMBINATIONLOGIC [ Internal ] = "OR";

ClassMethod %Create(pCube As %String, pFactNo As %Integer, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %DeepSee.ComputedDimension.Base
{
}

/// Return the type of this class (used by UI components).
ClassMethod %GetDimType() As %String
{
}

/// If this represents multiple keys, use a hash, otherwise use the simple ID
Method %ComputeIndexKey(pMemberKey As %String) As %String
{
}

Method %FindComputedMemberByKey(pKey As %String, Output pFlag As %Boolean, Output pMemberName As %String, Output pMemberId As %String) As %Status [ Internal ]
{
}

Method %FindComputedMemberByKeyInternal(pKey As %String, Output pFlag As %Boolean, Output pMemberName As %String, Output pMemberId As %String, pComputeBitset As %Boolean = 1) As %Status [ Abstract, Internal, Private ]
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

/// Workaround until PL96734 is sorted<br/>
/// NOTE: forwards to <method>%OnGetComputedMembersInternal</method>
Method %OnGetComputedMembers(ByRef pMemberList) As %Status
{
}

/// Find the set of members for this computed dimension object.<br/>
/// pMemberList(n) = $LB(id,name,key)<br/>
/// The top node of <var>pMemberList</var> will contain the next value of n to use.<br/>
/// NOTE: forwards to <method>%OnGetComputedMembersInternal</method>
Method %OnGetComputedMembersFiltered(ByRef pMemberList, pRollupKey As %String = "", ByRef pRange As %String = "") As %Status
{
}

/// Execute a search for members.<br/>
/// Return a list of the form:<br/>
/// pList(n) = $LB(value,key)<br/>
/// NOTE: forwards to <method>%OnGetComputedMembersInternal</method>
Method %MemberSearch(pSearchKey As %String, Output pList As %List) As %Status
{
}

/// Returns the current query context (as per <method>%GetCurrentQuery</method>) in the form
/// of a <class>%iKnow.Filters.Filter</class> object.
Method %GetQueryContextFilter(Output pSC As %Status) As %iKnow.Filters.Filter [ Private ]
{
}

}
