/// This class defines a "set" function within a DeepSee query.<br/>
/// A set function takes the form:
/// FUNC(a,b,c).
Class %DeepSee.Query.setFunction Extends function [ System = 3 ]
{

/// Used to indicate which class of functions this class supports.
Parameter FUNCTIONCLASS = "set";

/// Format string to apply to this member.
Property formatString As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

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

/// JMD844: Utility function.
/// For an argument to a CROSSJOIN, find the element reference (d,h,l) and return whether
/// it is a candidate for optimized crossjoin (0 no, 1 perhaps, 2 yes).
Method %FindCrossJoinInfo(pArg As %DeepSee.Query.node, Output pDim As %Integer, Output pHier As %Integer, Output pLevel As %Integer) As %Boolean [ Internal ]
{
}

/// Utility function. Test if a node or any of its children have "cmbr" nodes.
/// Returns a list of all cmbrs nodes found.
/// No longer used.
Method %TestForCMBR(pCubeIndex As %String, pKey As %String, pNodeNo As %Integer, Output pCmbrNode As %List) As %Boolean [ Internal ]
{
}

/// Perform a pre-Crossjoin operation. This prepares crossjoins for more optimal slicer behavior
Method PreCrossjoin(pIsSlicer As %Boolean = 0) As %Status [ Internal ]
{
}

/// Perform a Pre-Filter operation. This creates the subquery needed for certain functions.
Method PreFilter(pIsSlicer As %Boolean = 0) As %Status [ Internal ]
{
}

/// Utility method. Test if there is a currentMember reference within the query node.
Method %HasCurrentMember(pSet As %DeepSee.Query.node) As %Boolean [ Internal ]
{
}

/// Perform a Filter operation the given items in <var>pSets</var>.
/// The first item is a set and the second item is an expression.
Method Filter(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, ByRef pSets As %Integer) As %Status [ Internal ]
{
}

/// Perform a Rank operation the given items in <var>pSets</var>.
Method Rank(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, ByRef pSets As %Integer) As %Status [ Internal ]
{
}

/// Perform an Hierarchize operation on the given items in node <var>pSet</var>.
Method Hierarchize(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pFlag As %String = "") As %Status [ Internal ]
{
}

/// Perform an Order operation on the given items in node <var>pSet</var>.
Method Order(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pSort As %String = "ASC") As %Status [ Internal ]
{
}

/// Perform one of the top operations on the given items in node <var>pSet</var>.
/// These include TOPCOUNT,BOTTOMCOUNT,TOPPERCENT,BOTTOMPERCENT,TOPSUM, and BOTTOMSUM.
Method TopFunction(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pIndex As %Integer, pFunction As %String) As %Status [ Internal ]
{
}

/// Process an IIF function.<br/>
Method IIF(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

/// Process the given cell function:
/// A cell function calculated values based on the actual
/// cells in the final result. (e.g. %CELL).
Method CellFunction(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, ByRef pNewNodeNo As %Integer, pParent As %Integer, ByRef pArgs As %Integer, pFunction As %String) As %Status [ Internal ]
{
}

/// Apply the given aggregate function, <var>pFunction</var>, to the members of the given set.
Method Aggregate(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, ByRef pSets As %Integer, pAggregate As %String, pFlag As %String = "") As %Status [ Internal ]
{
}

/// Remove node <var>pNode</var> and its children from the axis tree.
/// <var>pTempIndex</var> is the subscript in temp global containing the filter data set.
Method %ApplyFilterToSet(pCube As %String, pCubeIndex As %String, pKey As %String, pNodeNo As %Integer, pTempIndex As %Integer) As %Status [ Internal, Private ]
{
}

/// Apply ordering to node <var>pSet</var> and its children within the axis tree.<br/>
/// This ordering breaks the hierarchy of the set: all children are sorted together.<br/>
/// On return, <var>pNodeValue</var> contains, by node, the value used to sort the nodes.
Method %ApplyBreakingOrderToSet(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pTempIndex As %Integer, pSortFlag As %String, Output pNodeValues As %Double) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// This allows the caller to immediately set the local function property by providing the
/// function name in the call to <method>%New</method>.
Method %OnNew(pFunction As %String = "") As %Status [ Private, ServerOnly = 1 ]
{
}

/// This is used by %ApplyBreakingOrderToSet to visit child nodes recursively.
Method %ProcessNodesForBreakingOrder(pCube As %String, pCubeIndex As %String, pKey As %String, pTempIndex As %Integer, pNodeNo As %Integer, pIndex As %Binary, ByRef pSortedListIndex) [ Internal, Private ]
{
}

/// Apply ordering to node <var>pSet</var> and its children within the axis tree.<br/>
/// This ordering preserves the hierarchy of the set.
Method %ApplyOrderToSet(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pTempIndex As %Integer, pSortFlag As %String, pPostFlag As %Boolean = 0, pNestedSortKey As %String = "") As %Status [ Internal, Private ]
{
}

/// This is used by %ApplyOrderToSet to visit child nodes recursively.
Method %ProcessNodesForOrder(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, ByRef pGraph, ByRef pFactToNode, pTempIndex As %Integer, pSortKey As %Integer, pSortDir As %Integer, pPostFlag As %Boolean = 0, pLevel As %Integer = 0) [ Internal, Private ]
{
}

/// Perform a Distinct on a set: remove any duplicate items.<br/>
Method Distinct(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet1 As %Integer) As %Status [ Internal ]
{
}

/// Perform a Union on 2 sets.<br/>
/// If <var>pAllFlag</var> = "ALL", include all members otherwise remove duplicates.
Method Union(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet1 As %Integer, pSet2 As %Integer, pAllFlag As %String = "") As %Status [ Internal ]
{
}

/// Perform an Intersect or Except on 2 sets.<br/>
/// If <var>pAllFlag</var> = "ALL", include all members otherwise remove duplicates in the first set.<br/>
/// If <var>pExcept</var> is true, then perform an Except otherwise perform an Intersect.
Method Intersect(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet1 As %Integer, pSet2 As %Integer, pAllFlag As %String = "", pExcept As %Boolean = 0) As %Status [ Internal ]
{
}

/// Perform a Head,Tail, or SubSet on the given sets.<br/>
/// If <var>pDirection</var> = 1, move forward through the set, if -1, move backwards.<br/>
/// <var>pStartIndex</var> is index number if the first item to include.
/// <var>pCount</var> is number of items in the resulting set.
Method HeadsOrTails(pFunction As %String, pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet1 As %Integer, pDirection As %Integer, pStartIndex As %Integer, pCount As %Integer, pDelaySubset = 0) As %Status [ Internal ]
{
}

/// Perform a Cousin function on 2 members.<br/>
/// COUSIN(member,ancestor) finds a new member under *ancestor* with the same relationship to
/// *ancestor* that *member* has to the *ancestor* level.
Method Cousin(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pMemberNo As %Integer, pAncestorNo As %Integer) As %Status [ Internal ]
{
}

/// Perform a CrossJoin on a pair sets.<br/>
/// If <var>pNonEmpty</var> is true, remove empty tuples from the results.<br/>
/// If <var>pOptimized</var> is true, then both sets are from the same hierarchy and we will
/// restrict members of the second set against the current member of the first.
/// If <var>pHideChildren</var> is true, remove labels for the second set.<br/>
Method CrossJoin(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet1 As %Integer, pSet2 As %Integer, pNonEmpty As %Boolean = 0, pOptimized As %Boolean = 0, pHideChildren As %String = "") As %Status [ Internal ]
{
}

Method DispatchOrderingFunction(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pFunction As %String, pContextNode As %Integer, pParent As %Integer, pSet As %Integer) As %Status [ Internal ]
{
}

/// Test if the given dependsOn index contains the combination of pKey1 and pKey2.
/// pRCube1 and pRCube2 are set if there are relationships.
Method %CheckDepends(pCubeIndex As %String, pDependIndex As %String, pKey1 As %String, pKey2 As %String, pRCube1 As %String, pRCube2 As %String = "") As %Boolean [ Internal ]
{
}

/// Convert an axis node to a text representation.
/// This is used for duplicate elimination.
Method %NodeToText(pCubeIndex As %String, pKey As %String, pNodeNo As %Integer, Output pText As %String) As %Status
{
}

/// Perform VisualTotals on a set.<br/>
Method VisualTotals(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pPattern As %String) As %Status [ Internal ]
{
}

/// Perform a %AddParents on a set: add the (distinct) parent member of each member to the set.<br/>
/// If called on a set with multiple dimensions, add parents at each level and add parent
/// nodes without children.
Method AddParents(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer) As %Status [ Internal ]
{
}

/// Find the parent member for given member.<br/>
/// This is a helper function used by some of the set functions.
Method %GetParentMember(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pParent As %Integer, Output pSet As %List, pKey As %String, pName As %String) As %Status [ Internal, Private ]
{
}

/// Construct a member provider for given member.<br/>
/// This is a helper function used by some of the set functions.
Method %ConstructMemberProvider(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, Output pMember As %DeepSee.Query.member, pKey As %String, pName As %String = "") As %Status [ Internal, Private ]
{
}

/// Apply the %LABEL function to the given expression.
Method Label(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pLabel As %String, pFormat As %String, pSolveOrder As %Integer = 0, pStyle As %String = "", pHeaderStyle As %String = "") As %Status [ Internal ]
{
}

/// Apply the %SPACE function to the current axis (adds an empty " " to it).
Method Space(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer) As %Status [ Internal ]
{
}

/// Perform a PeriodsToDate function.<br/>
Method PeriodsToDate(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pLevel1 As %DeepSee.Query.node, pSet2 As %Integer) As %Status [ Internal ]
{
}

/// Perform a ParallelPeriod function.<br/>
Method ParallelPeriod(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pLevel As %DeepSee.Query.node, pIndex As %Integer, pSet1 As %Integer) As %Status [ Internal ]
{
}

/// Perform an Ancestor function.<br/>
/// ANCESTOR(member,level) returns the ancestor of *member* at the same level as *level*.<br/>
/// *level* can also be a number specifying distance from *member*.
Method Ancestor(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pMemberNo As %Integer, pLevelArg As %DeepSee.Query.node) As %Status [ Internal ]
{
}

/// Perform a Descendants function.<br/>
/// DESCENDANTS(member,level) returns the descendants of *member* at the same level as *level*.<br/>
/// *level* can also be a number specifying distance from *member*.
Method Descendants(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pMemberNo As %Integer, pMemberArg As %DeepSee.Query.node, pLevelArg As %DeepSee.Query.node, pFlag = "") [ Internal ]
{
}

/// Recursively process a member graph for the DESCENDANTS function. This places all members of
/// the provided pGraph into the axis cache under a single parent. Each branch of the tree is
/// completely written before moving to the next branch.
Method %ProcessDescendantsGraphNode(ByRef pGraph, pGraphNodeNo, pCube, pKey, ByRef pNodeNo, pParent, pFlag, pSelfLevelNo) [ Internal, Private ]
{
}

/// Perform a Opening/ClosingPeriod function (determined by <var>pClosing</var>).<br/>
Method OpenClosePeriod(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pLevel1 As %DeepSee.Query.node, pSet2 As %Integer, pClosing As %Boolean = 0) As %Status [ Internal ]
{
}

/// Pre-MDX: preprocessing for MDX() function.
Method PreMDX(pIsSlicer As %Boolean = 0) As %Status [ Internal ]
{
}

/// Perform a %MDX (subquery) operation.
Method MDX(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, ByRef pNewNodeNo As %Integer, pParent As %Integer, ByRef pArgValue As %String, ByRef pSets As %Integer) As %Status [ Internal ]
{
}

/// Pre-KPI: preprocessing for KPI() function.
Method PreKPI(pIsSlicer As %Boolean = 0) As %Status [ Internal ]
{
}

/// Perform a %KPI (lookup KPI) operation.
Method KPI(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, ByRef pNewNodeNo As %Integer, pParent As %Integer, ByRef pArgValue As %String, ByRef pSets As %Integer) As %Status [ Internal ]
{
}

/// Pre-TimeWindow: preprocessing for %TimeWindow() function.
Method PreTimeWindow(pIsSlicer As %Boolean = 0) As %Status [ Internal ]
{
}

/// Pre-TimeRange: preprocessing for %TimeRange() function.
Method PreTimeRange(pIsSlicer As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod LagOrLeadEndpoint(pOldGroup As %DeepSee.Query.group, pCubeIndex As %String, pDirection As %String, Output pNewGroup As %DeepSee.Query.group) As %Status
{
}

/// Pre-OR: preprocessing for %OR() function.
Method PreOR(pIsSlicer As %Boolean = 0) As %Status [ Internal ]
{
}

/// Perform a CUBE operation on the given items in <var>pArgValues</var>, which takes the form:<br>
/// <var>pArgValues</var>(1) = The reference cube for this axis<br>
/// <var>pArgValues</var>(2) = The target dimension requested on this axis<br>
/// <var>pArgValues</var>(n) = shared dimensions between the cubes<br>
/// This function is generated and inserted into a subquery in the specific case where the target
/// subcube does not itself define the target dimension.
Method CUBE(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, ByRef pNewNodeNo As %Integer, pParent As %Integer, ByRef pArgValues As %String) As %Status [ Internal ]
{
}

/// Construct a single member that is the OR of the elements of a given set.
Method ORSET(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pSet As %Integer) As %Status [ Internal ]
{
}

/// Implementation of the %TERMLIST/%LOOKUP function.<br/>
/// Create a set from the elements within the given termlist.<br/>
/// If <var>pFlag</var> is "EXCLUDE", create a tuple of %NOT members.
Method TermList(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pTermList As %String, pFlag As %String = "", pTermKey As %String = "", pField As %String = "", pDefaultValue As %String = "") As %Status [ Internal ]
{
}

/// Test to see whether this is an oredring function that might require special processing
Method %IsOrderingFunction(pFunctionName = "") As %Boolean
{
}

/// Search out the AND/OR depth in a particular node
ClassMethod AnalyzeORNode(pQueryNode = {$$$NULLOREF}, ByRef pStructure = 0, pDepth = 0, pParent = 0, pMaxDepth = 0) As %Status
{
}

/// Transform a crossjoin structure to be used within an established orset. The results will be
/// the appropriate ortuple construct situated in the same position as the <var>pCJRootNo</var>
/// reference node when this method was called.
/// The incoming <var>pNodeNo</var> is expected to be the final node in the axis, and will
/// be returned as the next available node after the transform.
/// The <var>pParent</var> is the node this entire construct should ultimately be filed under.
ClassMethod ORizeCrossJoin(pCubeIndex As %String, pKey As %String, pCJRootNo As %Integer = "", ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pCJRootParent As %Integer, ByRef pNewCJRootNo As %Integer = 0) As %Status [ Internal ]
{
}

}
