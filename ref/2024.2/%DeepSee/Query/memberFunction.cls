/// This class defines a member function within a DeepSee query.<br/>
/// A "member" function is a function that is syntactically part of a member:
/// member.FUNC or member.FUNC(a)<br/>
/// These are sometimes referred to as operators within MDX.
Class %DeepSee.Query.memberFunction Extends function [ System = 3 ]
{

/// Used to indicate which class of functions this class supports.
Parameter FUNCTIONCLASS = "mbr";

/// Member object that provides the member API for the member
/// returned by this function, if any.
/// This is created during the axis-processing phase.
Property %member As %DeepSee.Query.member(XMLPROJECTION = "none") [ Internal ];

/// For CurrentMember functions, this contains additional functions to apply to the current
/// member once it is resolved.
Property %cmbrQualifier As %String(MAXLEN = 1000, XMLPROJECTION = "none") [ Internal ];

/// For CurrentMember functions, this contains any MDX that wraps the current member.
Property %cmbrWrapper As %String(MAXLEN = 1000, XMLPROJECTION = "none") [ Internal ];

/// For CurrentMember functions, this is used to output a marker value for this node
/// when %ToString is called.
Property %cmbrMarker As %String(MAXLEN = 50, XMLPROJECTION = "none") [ Internal ];

/// For CurrentMember functions, this is the function used to aggregate children of the
/// currentMember reference, if any.
Property %cmbrAgg As %String(MAXLEN = 50, XMLPROJECTION = "none") [ Internal ];

/// For CurrentMember functions, this is the name of the measure used to aggregate children of the
/// currentMember reference, if any.
Property %cmbrMeasure As %String(MAXLEN = 255, XMLPROJECTION = "none") [ Internal ];

/// For CurrentMember functions, this a literal value to apply to children of the currentMember
/// reference, if any.
Property %cmbrLiteral As %String(MAXLEN = 2000, XMLPROJECTION = "none") [ Internal ];

/// For CurrentMember functions, this is the label used for the current member.
Property %cmbrLabel As %String(MAXLEN = 250, XMLPROJECTION = "none") [ Internal ];

/// For CurrentMember functions, this is the format used for the current member.
Property %cmbrFormat As %String(MAXLEN = 250, XMLPROJECTION = "none") [ Internal ];

/// For CurrentMember functions, this is the relationship part of the member spec, if applicable.
/// E.g., "[Doctors]".
Property %cmbrRelSpec As %String(MAXLEN = 2000, XMLPROJECTION = "none") [ Internal ];

/// For CurrentMember functions, this is the original request string for use in generating keys.
Property %cmbrKeyText As %String(XMLPROJECTION = "none") [ Internal ];

/// Return the member provider object associated with this node.
Method %GetMemberProvider() As %DeepSee.Query.member
{
}

/// Test if function metadata is in the DeepSeeFunctionGLVN global.
/// If not, put it there.
ClassMethod %BuildFunctionMetaData() As %Status
{
}

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Execute the pre-processing logic for this node.
Method %PreProcess(pIsSlicer As %Boolean = 0) As %Status
{
}

/// Execute and build the axes output for this axis.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

/// Execute the CurrentMember function on the given member and place results into <var>pSet</var>.<br/>
Method FXCurrentMember(pCube As %String, pParent As %Integer, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute the Members function on the given member and place results into the axis global.<br/>
/// This will return all members of the current node.<br/>
/// The work of getting the members is delegated to the member object <var>pMember</var>.
/// If <var>pIncludeCalc</var> is true, return calculated members as well.
Method FXMembers(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pMember As %DeepSee.Query.member, pIncludeCalc As %Boolean = 0, pTopMembers As %Boolean = 0) As %Status [ Internal ]
{
}

/// Execute the Children function on the given member and place results into <var>pSet</var>.<br/>
/// This will return all children of the current member node.<br/>
/// The work of getting the members is delegated to the member object <var>pMember</var>.
Method FXChildren(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pMember As %DeepSee.Query.member, pReturnSelf As %Boolean = 0) As %Status [ Internal ]
{
}

/// Execute the Siblings function on the given member and place results into <var>pSet</var>.<br/>
/// This will return all siblings of the current member node.<br/>
/// The work of getting the members is delegated to the member object <var>pMember</var>.
Method FXSiblings(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pMember As %DeepSee.Query.member) As %Status [ Internal ]
{
}

/// Execute the FirstChild function on the given member and place results into <var>pSet</var>.<br/>
/// This will return the first child of the current member node.<br/>
/// The work of getting the members is delegated to the member object <var>pMember</var>.
Method FXFirstChild(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute the LastChild function on the given member and place results into <var>pSet</var>.<br/>
/// This will return the last child of the current member node.<br/>
/// The work of getting the members is delegated to the member object <var>pMember</var>.
Method FXLastChild(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute Parent function on the given member and place results into <var>pSet</var>.<br/>
Method FXParent(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute %AllMember function on the given member and place results into <var>pSet</var>.<br/>
/// This finds the All member for the current dimension (if present).
Method FXAllMember(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute the special %All function on the given member and place results into <var>pSet</var>.<br/>
/// This cause all references to this level along other rows and columns to be ignored.
/// The slicer is still applied.
Method FXAll(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute the special %NOT function on the given member and place results into <var>pSet</var>.<br/>
/// This adds a negation marker to the key for given member.
Method FXNot(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute FirstSibling function on the given member and place results into <var>pSet</var>.<br/>
Method FXFirstSibling(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute LastSibling function on the given member and place results into <var>pSet</var>.<br/>
Method FXLastSibling(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute PrevMember function on the given member and place results into <var>pSet</var>.<br/>
Method FXPrevMember(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute NextMember function on the given member and place results into <var>pSet</var>.<br/>
Method FXNextMember(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List) As %Status [ Internal ]
{
}

/// Execute Lag function on the given member and place results into <var>pSet</var>.<br/>
Method FXLag(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List, ByRef pArgs As %DeepSee.Query.node) As %Status [ Internal ]
{
}

/// Execute Lead function on the given member and place results into <var>pSet</var>.<br/>
/// <var>pArgs</var> contains the array of arguments for this function.
Method FXLead(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List, ByRef pArgs As %DeepSee.Query.node) As %Status [ Internal ]
{
}

/// Execute Properties function on the given member and place results into <var>pSet</var>.<br/>
/// <var>pArgs</var> contains the array of arguments for this function.
Method FXProperties(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List, ByRef pArgs As %DeepSee.Query.node) As %Status [ Internal ]
{
}

/// Change the default aggregate to <var>pAggregate</var> on the current measure and place results into <var>pSet</var>.<br/>
Method FXChangeAggregate(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List, pAggregate As %String) As %Status [ Internal ]
{
}

/// Execute the internal function %RANK on the given member and place results into <var>pSet</var>.<br/>
/// <var>pArgs</var> contains the array of arguments for this function.<br/>
/// This function is used when a RANK operation had to be run on a resolved CurrentMember.
Method FXRank(pCube As %String, pParent As %Integer, pMember As %DeepSee.Query.member, Output pSet As %List, ByRef pArgs As %DeepSee.Query.node) As %Status [ Internal ]
{
}

}
