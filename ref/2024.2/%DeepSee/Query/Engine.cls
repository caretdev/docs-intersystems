/// Contains the logic for calculating the results of a DeepSee query.
Class %DeepSee.Query.Engine Extends %RegisteredObject [ System = 3 ]
{

/// Maximum number of items in a listing.
/// Setting this above 20000 can cause browser timeouts.
Parameter MAXLISTING = 20000;

/// <b>DEPRECATED</b> - Use <method>%DeepSee.Utils:%PurgeObsoleteCache</method>.
/// Delete all unused buckets from the result cache
/// for cube <var>pCubeName</var>.
ClassMethod %PurgeBuckets(pCubeName As %String) As %Status [ Deprecated, Internal ]
{
}

/// Get the bucket list for the given cube.<br/>
/// If the list is not in the cache, build it
/// and store it in the results global for the cube.<br/>
/// The list is of the form:<br/>
/// pBucketList(bucketNo) = slotNo<br/>
/// <var>pActiveChunk</var> contains the number of the active chunk.
ClassMethod %GetBucketList(pCubeName As %String, Output pBucketList As %Integer, Output pActiveChunk As %Integer) As %Status [ Internal ]
{
}

/// Invalidate any buckets affected by the given bitmap chunks from the result cache
/// for cube <var>pCubeName</var>.<br/>
/// As a side effect, test if the active chunk has changed, if so
/// adjust buckets to compensate.
ClassMethod %InvalidateBuckets(pCubeName As %String, pFactClass As %String, ByRef pChunkList) As %Status [ Internal ]
{
}

/// Notification that a cube has been removed / recompiled.
ClassMethod %CubeRemoved(pCubeName As %String, pClassName As %String) As %Status
{
}

/// Clear the results cache for the given cube.
/// If <var>pResultsOnly</var> is true, then only clear the results cache.
ClassMethod %ClearCache(pCubeName As %String, pResultsOnly As %Boolean = 0) As %Status
{
}

/// Compute the values of cells within the result cube.<br/>
/// <var>pCube</var> is the name of the cube.<br/>
/// <var>pKey</var> is the query key.<br/>
/// <var>pBucketNo</var> is the logical bucket number to execute.<br/>
/// <var>pSlotNo</var> is the physical bucket slot number containing the results.<br/>
/// <var>pSection</var>, if defined, specifies, by axis, which sections of the result to calculate:<br/>
/// pSection(axis) = $LB(startNode,endNode)<br/>
/// <var>pTrace</var> is a debugging flag.<br/>
ClassMethod %ExecuteForBucket(pCube As %String, pKey As %String, pBucketNo As %Integer, pSlotNo As %Integer, ByRef pSections As %List, pTrace As %Boolean = 0, ByRef pStats) As %Status [ Internal ]
{
}

/// For a given query, consolidate the partial answers into a final answer
/// and, if required, remove empty rows and columns.<br/>
/// <var>pNonEmptyList</var> is an additional list of non-empty axes to apply when folding
/// compound cubes.
ClassMethod %Consolidate(pCube As %String, pKey As %String, ByRef pBucketList As %Integer, pTrace As %Boolean = 0, ByRef pStats, ByRef pNonEmptyList) As %Status [ Internal ]
{
}

/// Compute all the cell expressions within a consolidated query.
/// This is called during the consolidation phase and also to update expressions
/// as pending results are resolved.
ClassMethod %ComputeExpressions(pCube As %String, pKey As %String, pPhase As %Integer, ByRef pCalcCells, Output pPendingCells, ByRef pNonEmptyList) As %Status [ Internal ]
{
}

/// This is called by %ComputeExpressions
/// pCalcCells contains the list of addresses for all cells that need to be computed.
/// %ResolveComputations returns an ordered list (pOrderedCalcCells) of the form:
///       pOrderedCalcCells(index)=cellAddr
/// The addresses are ordered such a way that no cell contains a computation referencing a cell
/// occurring later in the list. This means that %ComputeExpressions can evaluate all calculated cells
/// in a single pass.
ClassMethod %ResolveComputations(pCube As %String, pKey As %String, ByRef pCalcCells, Output pOrderedCalcCells, pFinalAxisCount As %String, ByRef pRealAxisKey) As %Status [ Internal ]
{
}

/// Compute the "weight" of the given node within an axis.
/// This is used to determine which axis has precedence when computing a cell value.
ClassMethod %ComputeCellWeight(pCubeIndex As %String, pAxisKey As %String, pNodeNo As %Integer, Output pWeight As %Decimal, Output pSolveOrder As %Decimal, pLevel As %Integer = 0, ByRef pVisited) [ Internal ]
{
}

/// If the given query has pending results, update them.
ClassMethod %UpdatePendingResults(pCube As %String, pKey As %String, Output pPending As %Boolean) As %Status [ Internal ]
{
}

/// Find the tuple expression for the given cell in the given query.
/// Prepend the axis # onto each tuple (#:).
ClassMethod %ComputeTupleForCell(pCube As %String, pKey As %String, ByRef pAddr, Output pTuple) As %Status [ Internal ]
{
}

/// Return the spec (tuple) for a given axis node in a query.
/// For example, this would return the MDX tuple for the rows clause of a given pivot cell.
ClassMethod %GetSpecForAxisNode(pCube As %String, pKey As %String, pAxisNo As %Integer, pNodeNo As %Integer, ByRef pPluginInfo As %String) As %String [ Internal ]
{
}

/// Extract elements from <var>pSet</var> and concatenate them. Concatenate this result with pTerms
ClassMethod CombineSetAndTerms(ByRef pSet, pTerms, Output pNumTerms, Output pSC) As %String [ Internal ]
{
}

/// Get set of (leaf) descendant nodes for a given member node
ClassMethod %GetDescendantNodes(ByRef pNodeList, pCubeIndex As %String, pAxisKey As %Integer, pNodeNo As %Integer) [ Internal ]
{
}

/// Given a node number, find the node <var>pOffset</var> nodes away.
/// This is used by spreadsheet functions to resolve addresses.
ClassMethod %FindRelativeNode(pCubeIndex As %String, pAxisKey As %Integer, pAxisRoot As %Integer, pNodeNo As %Integer, pOffset As %Integer, pCheckNonempty = 0, pQueryKey As %String = "", pAxisNo As %Integer = "") As %Integer [ Internal ]
{
}

/// This is called at the start of processing for an aggregate function.<br/>
/// <var>pFunction</var> is the aggregate function.<br/>
/// <var>pFlags</var> is a set of flags for the aggregate function.<br/>
/// <var>pContext</var> is used to hold any context required to compute the
/// aggregate.<br/>
ClassMethod %AggregateStart(pFunction As %String, ByRef pFlags, ByRef pContext) As %Status
{
}

/// This is called during processing for an aggregate function.
/// It is called for each value in the set being aggregated.
ClassMethod %AggregateAccum(pFunction As %String, ByRef pFlags, ByRef pContext, pValue) As %Status
{
}

/// This is called at the end of processing for an aggregate function.<br/>
/// If the aggregate is being computed in the background, then <var>pPendingInfo</var> will contain details.
ClassMethod %AggregateEnd(pFunction As %String, ByRef pFlags, ByRef pContext, Output pResult, Output pPendingInfo, pCubeName As %String = "", pQueryKey As %String = "") As %Status
{
}

/// For a completed query, construct an index of all visible leaf
/// nodes, in display order, for each axis.<br/>
/// This takes the form:<br/>
/// Results("leaf",axisNo,leafNo) = nodeNo
ClassMethod %BuildLeafIndex(pCube As %String, pKey As %String) As %Status [ Internal ]
{
}

/// For a completed query, compute totals and other aggregates for each row and column
/// of the result.
/// If the query has more than 2 axes, then this does nothing.
ClassMethod %ComputeTotals(pCube As %String, pKey As %String, ByRef pMaxValue As %Decimal, ByRef pMinValue As %Decimal) As %Status [ Internal ]
{
}

/// Build an array (in the ^||DeepSee.Temp global) of the values in the first "column" of a query for each "row".<br/>
/// This is used by functions such as Filter et. al. to get values from subquery
/// results.<br/>
/// On return <var>pIndex</var> holds the subscript for the temp global.<br/>
/// The results are returned in an array subscripted by internal tuple names:<br/>
/// Fact : Value $C(2)  Fact : Value<br/>
/// In addition, the total of the value is returned via <var>pTotal</var> as some
/// consumers are interested in this value.<br/>
/// If <var>pPreserveOrder</var>, then the results are returned in ranked order using a leading
/// numeric subscript.
ClassMethod %GetAxisValues(Output pIndex, pCube As %String, pKey As %String, Output pTotal As %Double, pPreserveOrder As %Boolean = 0) As %Status [ Internal ]
{
}

/// Call <method>%Intersect</var> with the <var>pExistsOnly</var> flag set.
ClassMethod %IntersectExists(pCube As %String, pIndex1 As %String, pKey1 As %String, pIndex2 As %String = "", pKey2 As %String = "") As %Boolean [ Internal ]
{
}

/// Given a pair of index and key names, test if there
/// is an intersection of the implied sets
/// within the specified cube. Return true (1) if there is a possible intersection. If a slicer is present
/// it will also be applied before testing the intersection.<br/>
/// This method may be called in two modes, controlled by <var>pExistsOnly</var>:<br>
/// 0 - Fully compute the intersection for any bucket looked at in this intersection and cache the result for later use<br>
/// 1 - Stop examination of the requested intersection as soon as a single fact is found that fits the supplied intersect parameters
ClassMethod %Intersect(pCube As %String, pIndex1 As %String, pKey1 As %String, pIndex2 As %String = "", pKey2 As %String = "", pExistsOnly = 0) As %Boolean [ Internal ]
{
}

/// Traverse a node of type "orset", beginning at the bottom and working up. If any of the
/// nodes contained in the orset intersect with the the node represented by pNode2, the method
/// will return true. If there are zero intersections in any of the nodes in the orset chain,
/// the method returns false.
ClassMethod %IntersectOrset(pCubeIndex, pKey, pOrsetLeafNode, pNode2, Output pStatus As %Status) As %Boolean [ Internal ]
{
}

/// Compute the number of facts within the current slicer.
/// Return -1 if there is no slicer or all/most facts are selected by it or
/// if the count is greater than <var>pMaxCount</var>.
ClassMethod %CountFactsWithSlicer(pCube As %String, pSlicerKey As %String, pMaxCount As %Integer = 10000) As %Integer [ Internal ]
{
}

/// Given a slicer axis key, return a graph of branch nodes in the slicer that
/// can be to compute the facts within the slicer.<br/>
/// The branch structure looks like:<br/>
/// pBranch(1)=2<br/>
/// pBranch(1,1)=$lb(1,2006)<br/>
/// pBranch(1,2)=$lb(8,"24")<br/>
/// pBranch(2)=2<br/>
/// pBranch(2,1)=$lb(1,2007)<br/>
/// pBranch(2,2)=$lb(8,"24")<br/>
/// Each top-level branch needs to be OR'd together, within each branch items are ANDed.
/// Each node contains $LB(fact,key).<br/>
/// <var>pReferencedFacts</var> is array of facts referenced in the slicer; this is used
/// to disambiguate slicers with no effect from slicers that restrict everything.
ClassMethod %GetBranchesForSlicer(pCube As %String, pSlicerKey As %String, Output pBranch, Output pHasRelations As %Boolean, Output pReferencedFacts As %String) As %Status [ Internal ]
{
}

ClassMethod %MergeRelatedBranches(ByRef pRelatedBranch, Output pLocalBranch) As %Status
{
}

/// The raw collection of the slicer branches can produce branches that define logically null sets.
/// This removes those branches, and removes duplicate entries within a branch that would lead to
/// extra processing.
ClassMethod %CleanBranchesForSlicer(ByRef pSlicerBranches, pCube As %String = "") As %Status
{
}

/// Examine the branch-representation of an AND within the slicer and reduce it to
/// the smallest number of logically separate elements. In this process, duplicate entries
/// of a single fact is removed, and contradictory intersections nullify the entire branch.
ClassMethod %ReduceSlicerAndBranch(ByRef pAndBranch, pCube As %String = "") As %Status [ Internal ]
{
}

/// Reduce to minimal AND logic for the purposes of identifying global fact restrictions.
/// This attempts to simplify the restriction terms by reducing a slicer tree<br>
/// pSlicerBranches(OrIndex,AndIndex)<br>
/// structure into a single OR branch. This produces the minimally restrictive representation of the slicer.
/// Note that this should not be used when calculating the final results, as it will throw away
/// some restrictions!
ClassMethod %ReduceOrsInSlicer(ByRef pSlicerBranches, pCube As %String = "") As %Status
{
}

/// Return the bit mask from the slicer for a given slicer branch and a given chunk.
/// <var>pCubeName</var> is the uppercase cubename.
ClassMethod %GetSlicerMask(pCubeIndex As %String, ByRef pMask As %Binary, ByRef pBranch, pBranchNo As %Integer = 0, pChunk As %Integer = 0, pSlotNo As %Integer = 0) As %Status [ Internal ]
{
}

/// For a given query, resolve currentMember references.
/// This means looking at all other axes and applying the CurrentMember
/// expression to every case where the current member appears.
ClassMethod %ResolveCurrentMembers(pCube As %String, pKey As %String, pQuery As %DeepSee.Query.query) As %Status [ Internal ]
{
}

/// Process current member information for one cell.
ClassMethod %ProcessOneCurrentMember(pCube As %String, pKey As %String, pQuery As %DeepSee.Query.query, ByRef pAddr, ByRef pMap, pSlicerAxis As %Integer) As %Status [ Internal ]
{
}

/// Compute a cell spec for one node within a current member cell (pAddr).
ClassMethod %ComputeCMbrCellSpec(Output pCellSpec, Output pMsr, Output pCellAgg, Output pCellMsrScale, Output pCellMsrType, pCube As %String, pKey As %String, ByRef pAddr, pCMbrAxis, pCMbrCubeIndex, pLocalKey, pLeafNodeNo, ByRef pReferencedNodes, pIsSlicer As %Boolean = 0, pFilterSpec As %List = "") As %Status [ Internal ]
{
}

/// For a given query, compute any bitsets that come from queries against related cubes.
ClassMethod %ResolveRelationships(pCube As %String, pKey As %String, pUseAgents As %Boolean = 0) As %Status [ Internal ]
{
}

/// Produce all join index entries for a particular <var>pSpec</var>. The references <var>pCube</var> and <var>pKey</var>are required.
/// The array <var>pRelation</var> contains the metadata about the current relationships in play in the cube. The by-reference
/// <var>pIntersect</var> can be used to prevent duplicate calculations of the same join index keys.
ClassMethod %SpecToJoinIndex(pSpec As %List, pCube As %String = "", pKey As %String = "", pUseAgents As %Boolean = 1, ByRef pRelation, ByRef pIntersect, pGroupId As %String = "") As %Status
{
}

/// This is a deep relationships spec conversion method. It will take the subquery text and convert the spec
/// to the original form. This takes in a related cube that is running the query, the cube of the target relationship dimension,
/// the name of the relation, the spec text, and if the output should include the key or not.
ClassMethod %ConvertDeepSpec(pDRelCube As %String, pSpecialRelCube As %String, pRelName As %String, pDSpec As %String, pIncludeKey As %Boolean = 0) As %String [ Internal ]
{
}

/// This method will iterate through the query object of a complex spec. Once a memberSpec is reached,
/// the spec will be replaced by the original top level query spec. This helps match the tIntersectIndex
ClassMethod %ConvertDeepMemberSpec(pDRelCube As %String, pSpecialRelCube As %String, pRelName As %String, pNode As %DeepSee.Query.node) As %Status [ Internal ]
{
}

/// Given a cube, a remote cube, and a "key code" describing an interection against
/// the remote cube, construct an index in the cube based on intersecting the remote
/// bits and transposing to local bits.
ClassMethod %CreateJoinIndex(pCube As %String, pRemoteCube As %String, pFactNo As %Integer, pKeyCode As %String, pQueryKey As %String) As %Status [ Internal ]
{
}

/// Given a cube and member within a cube (fact and id value), find the distinct
/// set of correlated members in one or more other facts (given by list of fact numbers: <var>pFactList</var>).
/// This is used by compound cubes.<br/>
/// On return <var>pMembers</var> contains the set of distinct id values.<br/>
/// This takes the form: pMembers(n) = $LB(fact1id,fact2id,...)
/// <var>pStatement</var> is the SQL statement object used to fetch the results. It is possible
/// to pass this into a subsequent call to avoid re-preparing the query.
ClassMethod %GetCorrelatedMembers(pCube As %String, ByRef pStatement As %SQL.StatementResult, Output pMembers, pFactNo As %Integer, pFactId As %String, pFactList As %List) As %Status [ Internal ]
{
}

/// For a level (<var>pFactNo</var>) with a dependsOn attribute, find the set of members
/// that apply for the given "master" fact.
ClassMethod %FindDependentMembers(pCube As %String, ByRef pMemberIds As %String, pFactNo As %Integer, pMasterFactNo As %Integer, pMasterId As %String, pConditionNo As %Integer = 0) As %Status [ Internal ]
{
}

/// Process any subset functions that have been noted for processing in the axis cache under<br>
///   ^DeepSee.Cache.Axis(cube,axisKey,"subset")<br>
/// For each subset node the results currently in the result cache will be trimmed according to the subset
/// function and the count of that subset function. If multiple subset functions are nested within one another,
/// the innermost function will be processed first and subsequent nested functions will be processed on the remaining
/// results.<br>
/// If these nodes do not exist in the axis cache this method will do nothing.
ClassMethod %ProcessResultSubset(pCube, pQueryKey, pAxisNo) As %Status
{
}

/// Diagnostic.
ClassMethod %PrintCells(pCubeName As %String, pKey As %String) [ Internal ]
{
}

/// Given a current address in the results cache, find the root node for the aggregate. If the input address is not the
/// child of an aggregate, change nothing. If <var>pFindAggregate</var>=1, then search the axes for a special aggregate node.
/// If none is found,
ClassMethod %ResolveAggregateAddress(pCubeIndex = "", pQueryKey = "", ByRef pAddr, pRealAxisCount = "", pFindAggregate = 0) As %Status
{
}

/// Set the logging global to signal the engine to record events according to the appropriate level.
/// pLogLevel may be set to<br>
/// - 1 - Record basic metrics such as method timers
/// - 2 - Record actual counts of computational operations during query execution
ClassMethod %SetLogging(pLogLevel = 0)
{
}

/// Return the current MDX Engine log setting.
ClassMethod %GetLogSetting()
{
}

/// Clear all data stored in the runtime log. This preserves the original log level setting.
ClassMethod %ClearLog()
{
}

/// Diagnostic printout of the recorded computation metrics
ClassMethod %PrintLog(Output pStatistics, pVerbose = 1)
{
}

}
