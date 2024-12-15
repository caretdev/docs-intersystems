/// This class implements a computed dimension that uses an external SET definition
/// to resolve members.<br/>
///
Class %DeepSee.ComputedDimension.SET Extends %DeepSee.ComputedDimension.Base [ System = 4 ]
{

/// Type reported back to the UI. This determines what type of control to display
/// for filters based on this class.
Parameter DIMTYPE = "mdx";

/// Array of arguments from the SET class spec.
Property %args As %String [ MultiDimensional ];

/// Test if <var>pName</var> is a valid member name.
Method %FindComputedMemberByName(pName As %String, Output pFlag As %Boolean, Output pMemberKey As %String, Output pMemberId As %String) As %Status [ Internal ]
{
}

/// Build the bitset that corresponds to the given computed dimension "spec".
Method %OnComputeBitset(pSpec As %String, pIndexKey As %String) As %Status
{
}

/// Execute a search for members.<br/>
/// Return a list of the form:<br/>
/// pList(n) = $LB(value,key)
Method %MemberSearch(pSearchKey As %String, Output pList As %List) As %Status
{
}

/// Parse an argument list "(arg:value,arg:value)" for a SET class.
/// Return an array of names and values.
ClassMethod %ParseArgList(pArgList As %String, Output pList As %String) As %Status
{
}

}
