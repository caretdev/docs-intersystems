/// for ..%ikDictLevel = "D" (dictionary)
/// 	KEY: [dictId]
/// 		NAME: [dictName]
///
/// for ..%ikDictLevel = "I" (dictionary item)
/// 	KEY: [dictItemId]
/// 		NAME: [dictItemName]
Class %iKnow.DeepSee.Dimensions.Dictionaries Extends %iKnow.DeepSee.Dimensions.Base [ Deprecated, System = 4 ]
{

Property %ikDictLevel As %String(VALUELIST = ",D,I");

Property %ikDictDomainId As %Integer;

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

Method GetId(pName As %String) As %Integer [ Internal ]
{
}

Method GetName(pId As %Integer) As %String [ Internal, Private ]
{
}

/// Create a instance of this dimension class.
ClassMethod %Create(pCube As %String, pFactNo As %Integer, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %DeepSee.ComputedDimension.Base
{
}

ClassMethod %GetDictLevel(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %String [ Private ]
{
}

Parameter DICTIONARYNAMEPREFIX [ Internal ] = "DeepSee - ";

Parameter ITEMNAMEPREFIX [ Internal ] = ":DS:";

/// Returns the dictionary name used for a DeepSee Term List
/// Note: assumes version >= 3 (for cross-domain dictionary use)
ClassMethod GetDictionaryName(pTermListName As %String) As %String [ CodeMode = objectgenerator, Internal ]
{
}

ClassMethod GetTermListName(pDictionaryName As %String) As %String [ CodeMode = objectgenerator, Internal ]
{
}

ClassMethod GetDictionaryItemURI(pTermListURI As %String) As %String [ CodeMode = objectgenerator, Internal ]
{
}

ClassMethod GetTermListURI(pDictionaryItemURI As %String) As %String [ CodeMode = objectgenerator, Internal ]
{
}

/// Return number of members.
ClassMethod %Count(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Integer
{
}

}
