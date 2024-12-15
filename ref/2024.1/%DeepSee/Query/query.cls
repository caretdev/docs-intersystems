/// This class holds run-time information for a DeepSee MDX statement and
/// provides the machinery to prepare and execute it (via the
/// <class>%DeepSee.ResultSet</class> interface.
Class %DeepSee.Query.query Extends node [ System = 3 ]
{

/// Name of the cube this query is based on.<br/>
/// This is the FROM clause of the query.
Property cube As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// This indicates what type of MDX statement this is.
Property queryType As %DeepSee.Datatype.string(VALUELIST = ",SELECT,DRILLTHROUGH,CREATE,DROP,%BITSET", XMLPROJECTION = "attribute") [ InitialExpression = "SELECT" ];

/// For CREATE or DROP statements this specifies the target of the command.
Property %target As %DeepSee.Datatype.string(VALUELIST = ",SET,MEMBER", XMLPROJECTION = "none") [ Internal ];

/// For DROP statements this specifies the key of the item to be dropped.
Property %targetKey As %DeepSee.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// If true, then use results caching for this query.
Property useCache As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// If true, then this is a query on a compound cube.
Property %isCompound As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If true, this query is being run as a subquery in a compound cube.
Property %isCompoundMember As %Boolean [ InitialExpression = 0 ];

/// Contains the parent cube name if query is a member of a subquery.
Property parentCube As %String;

/// If true, then the query must be recomputed-- the cached results are not guaranteed to be up-to-date.
Property %mustCompute As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// If true, then the axes for the query must be recomputed.
Property %recomputeAxes As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// Indicates, by axis, if empty value needs to be removed after processing.
/// This is used by compound queries.
Property %removeEmpty As %Boolean(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// If true recompute previously run queries whose data has been updated.
/// otherwise return old values.
Property recompute As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 1 ];

/// If true, execute using background agents.<br/>
/// This is set when using async mode.
Property useAgents As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// If true, execute this query in "plan" mode.<br/>
Property showPlan As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// Axes defined for this query.
Relationship axes As %DeepSee.Query.axis(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = query ];

/// For subqueries, remember which parent query initiated it.
Property parentQueryKey As %String(XMLPROJECTION = "none");

/// Canonic form of WITH clause. Used internally to create hash keys.
Property parentWITHText As %String(XMLPROJECTION = "none") [ Internal ];

/// Collection of all subqueries associated with this query.
Property subqueries As list Of %DeepSee.ResultSet(XMLPROJECTION = "NONE");

/// Slicer defined for this query.<br/>
/// This is the WHERE clause of the query.<br/>
/// From a definition perspective this is no different than any other axis.
Property slicer As %DeepSee.Query.axis(XMLPROJECTION = "ELEMENT");

/// Filter(s) defined for this query.<br/>
/// This is the ISC extension %FILTER clause of the query.
Property filters As list Of %DeepSee.Query.axis(XMLPROJECTION = "ELEMENT");

/// Used to hold cube/subjectArea level filter.
Property filterAxis As %DeepSee.Query.axis(XMLPROJECTION = "NONE");

/// Used as an indicator as to which axis supplies the measure information for this query. The
/// slicer is denoted by a 0, other axes are logged as their 1-based number. A value of -1 for this property
/// indicates the default measure will be used.
Property measureAxis As %Integer [ InitialExpression = -1 ];

/// Canonic form of WITH clause. Used internally to create hash keys.
Property %WITHText As %String(XMLPROJECTION = "none") [ Internal ];

/// Collection of <i>Named Sets</i> defined within the WITH clause of the query.
Property namedSets As array Of %DeepSee.Query.namedSet(XMLKEYNAME = "setName", XMLPROJECTION = "ELEMENT");

/// Collection of <i>Calculated Members</i> defined within the WITH clause of the query.
/// These are indexed by Dimension.MemberName.
Property calculatedMembers As array Of %DeepSee.Query.calculatedMember(XMLKEYNAME = "memberName", XMLPROJECTION = "ELEMENT");

/// Hash key used to address the results for this query.
/// This allows a query to be prepared and later restored.
Property %QueryKey As %String(XMLPROJECTION = "none") [ Internal ];

/// Array of timing and performance statistics for this query.
Property %Statistics As %DeepSee.Datatype.string [ Internal, MultiDimensional ];

/// List of fields in RETURN clause for DRILLTHROUGH statement.
Property %returnList As %String(MAXLEN = 2000, XMLPROJECTION = "none") [ Internal ];

/// List of fields in %ORDER BY clause for DRILLTHROUGH statement.
Property %orderList As %String(MAXLEN = 2000, XMLPROJECTION = "none") [ Internal ];

/// Name of listing specified by %LISTING statement in query.
Property %listing As %String(MAXLEN = 255, XMLPROJECTION = "none") [ Internal ];

/// For a drillthrough, this indicates whether the listing query is against the source table
/// or the fact table.
Property %listingSource As %String(VALUELIST = "source,facts", XMLPROJECTION = "none") [ Internal ];

/// Array of named parameters with current values.<br/>
Property %NamedParameters As %String [ Internal, MultiDimensional ];

/// Array of named parameter values supplied when this query was executed.<br/>
Property %ParameterValues As %String [ Internal, MultiDimensional ];

/// If true, this query contains references to related cubes.<br/>
/// This is set during the axis prepare phase.
Property %hasRelations As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// If true, this query contains references to related cubes.<br/>
/// Set during the parse phase, might replace %hasRelations.
Property %hasRelationship As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// If true, this query contains an %SQLRESTRIICT statement.<br/>
/// Set during the parse phase.
Property %hasSqlRestrict As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// Maximum number of rows returned by a DRILLTHROUGH query.
/// This is set by the MAXROWS directive within a DRILLTHROUGH query.
Property %MaxListingRows As %Integer [ InitialExpression = 1000, Internal ];

/// For queries on compound cubes, this is the set of keys for the subqueries that have to be executed
/// and then joined.
Property compoundQueries As list Of %String(XMLPROJECTION = "NONE");

/// For DRILLTHROUGH queries on compound cubes, this is the MDX DRILLTHROUGH statements for each leg
/// of the compound query.
Property compoundDrillthroughs As list Of %String(XMLPROJECTION = "NONE");

/// Original text for each axis. Used as part of the axis key.<br/>
Property %originalAxisText As %String [ Internal, MultiDimensional ];

/// Original components of the WITH clause. Order is not necessarily preserved from the original query text.
Property %originalWITHContents As %String;

/// Current pivot variable settings for this query.
Property %variables As %String [ MultiDimensional ];

/// This holds a copy of all lock keys protecting this execution.
Property %LockKeys As %String [ MultiDimensional ];

/// Log a step within the execution of this query.
/// This is an internal diagnostic.
ClassMethod %QueryTrace(pMethod As %String, pCubeName As %String, pMessage As %String = "") As %Status [ Internal ]
{
}

/// Diagnostic. Print value of this node to the console.
Method %PrintNode(pLevel As %Integer = 0)
{
}

/// Prepare this query.<br/>
/// This is the first step in executing a query.
Method %Prepare() As %Status
{
}

/// Check if pMember has an ORDER() function in it (or in one of its children).
Method %HasOrder(pMember, Output pHasOrder, Output pGroup) As %Status
{
}

/// Check if a given group has a subset function (HEAD, TAIL, SUBSET) in it and,
/// if so, return the first such subgroup with output pGroup.
Method %HasSubsetFunction(ByRef pMember, Output pGroup, Output pHasSubsetFunction) As %Status
{
}

/// Make sure this query has an executable set of axes. Axes 0 and 1 (COLUMNS, ROWS)
/// are required, axis 2 is optional. If either Rows or Columns are missing,
/// insert a placeholder %SEARCH term
Method %CompleteAxes() As %Status
{
}

/// Test if a group has a current member in it.
Method %HasCurrentMember(pGroup As %DeepSee.Query.group) As %Boolean [ Internal ]
{
}

/// Test if a group has a crossjoin in it (with an aggregate or expression as its first child).
Method %HasCrossJoin(pGroup As %DeepSee.Query.group) As %Boolean [ Internal ]
{
}

/// Test if <var>pFunc</var> is an aggregate function
ClassMethod %IsAggFunc(pFunc As %String) As %Boolean
{
}

/// Rewrite a group and clean up the current member functions within it.
/// On return <var>pCmbrIndex</var> contains the list of cmbr substitutions:
/// pCmbrIndex("$$CMBRn$$") = spec<br/>
/// <var>pCmbrID</var> and <var>pCmbrList</var> are used to track state as this function recurses.
Method %RewriteForCurrentMember(pParentGroup As %DeepSee.Query.group, pGroup As %DeepSee.Query.group, Output pNewGroup As %DeepSee.Query.group, ByRef pCmbrIndex, ByRef pCmbrID, Output pCmbrList, pLevel As %Integer = 0, pTreatAsExpr As %Boolean = 0) As %Status [ Internal ]
{
}

/// Rewrite a group and rewrite any CJOIN(agg(a),b) to CJOIN(b,agg(a))).
/// Do the same for expression in the first child.
Method %RewriteForCrossJoin(pParentGroup As %DeepSee.Query.group, pGroup As %DeepSee.Query.group, Output pNewGroup As %DeepSee.Query.group, pLevel As %Integer = 0) As %Status [ Internal ]
{
}

/// Rewrite a group if necessary to sort the members of pOppAxis.
Method %RewriteForOrder(pAxis As %DeepSee.Query.axis, pOppAxis As %DeepSee.Query.axis) As %Status
{
}

/// Utility. See if this spec is for a measure. If so return the measure name.
ClassMethod %GetMeasureFromSpec(pSpec As %String, Output pMeasure) As %Status [ Internal ]
{
}

/// Push a current member down into an expression tree.
Method %PushDownCurrentMember(Output pNewGroup As %DeepSee.Query.group, pCurrMember As %DeepSee.Query.group, pExpr As %DeepSee.Query.group, pLevel As %Integer = 0) As %Status [ Internal ]
{
}

/// Build member restriction data from the materialized slicer axis.
/// This is called by %GetMembers to prune the results based on the current slicer.
Method %ProcessSlicerRestrictions(Output pBranches, Output pNoData As %Boolean) As %Status [ Internal ]
{
}

/// Walk down a given node within the slicer and flatten expressions and aggregate functions.
Method %FlattenSlicer(pNode As %DeepSee.Query.group, pLevel As %Integer = 0, Output pMoveAll As %Boolean) As %Status [ Internal ]
{
}

/// Combine all filters into the slicer.
Method %CombineFiltersWithSlicer() As %Status [ Internal ]
{
}

/// Given a cube, subquery key, and timestamp, determine if there
/// is an up-to-date result cache for the query.
/// Return true (1) if this is the case.<br/>
/// As a side effect, remove any out-of-date portions of the result cache for this query.
ClassMethod %TestSubQueryCache(pCubeName As %String, pQueryKey As %String, pTimestamp As %String, Output pCurrent As %Boolean, pQueryCube As %String) As %Status
{
}

ClassMethod %CheckSubqueryResultsCache(pMainCube, pCubeName, pQueryKey, ByRef pUpToDate = 1) As %Status
{
}

ClassMethod %CheckResultsCache(pCubeName, pQueryKey, ByRef pUpToDate = 1) As %Status
{
}

/// Prepare the results cache for this query so that it
/// can contain the axis and cell values.<br/>
/// If the query is already in the results cache, then this
/// method may decide to re-use the previous results.
Method %InitializeResultsCache() As %Status [ Internal ]
{
}

/// Called after the axes are ready, this method does the final check to
/// determine if the query results can be re-used and if not, fills in
/// the starting values for the result cache.
Method %PrepareResultsCache() As %Status [ Internal, Private ]
{
}

/// Return the set of named parameters values defined by this query.
Method %GetParameterInfo(Output pParms) As %Status
{
}

/// Execute the pre-processing logic for this node.
Method %PreProcessQuery() As %Status
{
}

/// Execute this query using background agents.<br/>
/// If <var>pWait</var> is true (1) then do not return until the background
/// agents are finished.<br/>
/// If <var>pWait</var> is false, then <var>pTaskGroupId</var> will return the task group id
/// used to execute the query.
Method %ExecuteAsynch(pWait As %Boolean = 0, Output pTaskGroupId As %String, pAxesOnly As %Boolean = 0, pAxisQuery As %String = "", ByRef pParms) As %Status
{
}

/// Apply the set of named parameters values to this query and
/// then make sure the result cache is ready to accept values.
Method %ExecuteParameters(ByRef pParms) As %Status
{
}

/// Execute this query and materialize the contents of the result axes.<br/>
/// The results are written to the results cache.
Method %ExecuteAxes() As %Status [ Internal ]
{
}

Method %ReserveAxes(Output pAxesAvailable) As %Status [ Internal ]
{
}

/// Utility method to remove the zprocessing node for reserved axes
ClassMethod %ReleaseReservedAxes(pCubeName, pQueryKey) As %Status [ Internal ]
{
}

Method %MakeReserveAxisKey(pType As %String, pAxis As axis, Output pReserveKey As %String, pOriginalSpec As %String = "") As %String [ Internal ]
{
}

/// Set up the axis cache for the given axis.
/// Also test if the axis already exists and is up-to-date.<br/>
/// On return, <var>pUpToDate</var> is 1 if the axis is up-to-date,
/// 0 if it is not, and -1 if it is a reference axis that needs further checking.
Method %InitializeAxisCache(pType As %String, pAxis As axis, Output pAxisKey As %String, Output pUpToDate As %Integer, pOriginalSpec As %String = "") As %Status [ Internal ]
{
}

/// Execute this query and calculate the contents of the resulting cells.<br/>
/// Note that this may be called on a partially constructed
/// query object if a ResultSet was prepared using an existing
/// query key.<br/>
Method %ExecuteCells(pTrace As %Boolean = 0) As %Status [ Internal ]
{
}

/// This does the actual work of splitting the
/// cells into buckets and sections and executing them.<br/>
/// This may be called from a background agent.
ClassMethod %ExecuteIntermediateCells(pCubeName As %String, pQueryKey As %String, pUseAgents As %Boolean = 1, pTrace As %Boolean = 0, ByRef pStats) As %Status [ Internal ]
{
}

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Convert the WITH clause for this query (named sets and calculated members) to a canonic text representation.
Method %WITHToString() As %String
{
}

/// See if the specified named set is defined.<br/>
/// <var>pName</var> should not have [ ] characters around it.
Method %LookupNamedSet(pName As %String, ByRef pSet As %DeepSee.Query.set, Output pSC As %Status) As %Boolean
{
}

/// See if the specified calculated member is defined.<br/>
/// <var>pMemberSpec</var> is an array of the names making up the member spec.
/// <var>pCount</var> is the number of names to look at in the list.
/// None of the names in the list should have [ ] characters around them.<br/>
/// If the last item in the list is the name of one of the few functions allowed on calculated dimensions,
/// then <var>pIsFunc</var> is set.
Method %LookupCalculatedMember(ByRef pMemberSpec As %String, pCount As %Integer, ByRef pSet As %DeepSee.Query.set, Output pSC As %Status, Output pIsFunc As %Boolean, pUseKey As %Boolean = 0) As %Boolean
{
}

/// Find the list of calculated members in the given dimension.
/// Return a list of their names:
/// pList(UNAME) = name
Method %GetCalculatedMembers(pDimName As %String, ByRef pList As %String) As %Status
{
}

/// Add the given subquery to the list of subqueries and return its key (for subsequent lookup).
Method %RegisterSubQuery(pMDX As %String, Output pKey As %Integer, pAxis As axis = "", pSkipWITH As %Boolean = 0) As %Status
{
}

/// Create and prepare a result set for a subquery within this query.
Method %CreateSubQueryResultSet(pMDX As %String, Output pRS As %DeepSee.ResultSet, pSkipWITH As %Boolean = 0) As %Status
{
}

/// Retrieve a ResultSet from the set of registered subqueries.
Method %GetSubQuery(pKey As %Integer, Output pRS As %DeepSee.ResultSet) As %Status
{
}

/// Clear out current statistics for this query.
Method %ClearStatistics()
{
}

/// Write out current statistics for this query.
Method %PrintStatistics()
{
}

/// Evaluate the given named parameter and return its value.
Method %ResolveNamedParm(pParmName As %String, Output pValue As %String) As %Status [ Internal ]
{
}

/// Compute a CRC on the given query axis.<br/
/// This is used to determine if a cached axis is still valid.
ClassMethod %ComputeAxisCRC(pCube As %String, pAxisKey As %String, Output pCRC) As %Status [ Internal ]
{
}

/// Combine the results of a set of subqueries against the components of a compound cube.
Method %FoldCompoundQueries() As %Status [ Internal ]
{
}

/// Rewrite this query for use by a leg of a compound query.<br/>
/// <var>pNonEmptyInfo</var> indicates which axes are NON EMPTY; this is because
/// the rewritten query does not have NON EMPTY-- it is applied at the end of the query.
Method %RewriteCompoundQuery(Output pMDX As %String, pPrimaryCube As %String, pSubCube As %String, Output pNonEmptyInfo) As %Status [ Internal ]
{
}

Method %RewriteWITH(pWithText As %String, pPrimaryCube As %String, pSubCube As %String, Output pText As %String) As %Status [ Internal ]
{
}

/// Rewrite part of a query for use by a compound query.
Method %RewriteGroup(Output pNewGroup As %DeepSee.Query.group, pIsSlicer As %Boolean, pPrimaryCube As %String, pSubCube As %String, pGroup As group, ByRef pCalcMbrNames As %String) As %Status [ Internal ]
{
}

/// Return the RFC 1766 code of the current language.
/// Used to ensure that cached values preserve localization.
ClassMethod %GetLanguage() As %String [ Internal ]
{
}

/// See if a time range can be compressed into smaller units.
Method %CompressTimeRange(pNode As %DeepSee.Query.range) As %DeepSee.Query.node [ Internal ]
{
}

/// Given a start and end of a date range, return a set of ranges that cover the original
/// range with as few members as possible. The higher level units are months and years.
/// Return an array of ranges:<br/>
/// pRange(n) = $LB("day|month|year",start,end)<br/>
ClassMethod %SplitDateRange(pStartDate As %Date, pEndDate As %Date, Output pRange, pCalendar As %String = "gregorian") As %Boolean [ Internal ]
{
}

/// Return the last day (number) of the given year and month.
ClassMethod %GetLastDay(pYear As %Integer, pMonth As %Integer, pCalendar As %String) As %Integer [ Internal ]
{
}

/// Return the last day (number) of the given year and month.
ClassMethod %GetLastDayHorolog(pYear As %Integer, pMonth As %Integer, pCalendar As %String = "gregorian") As %Integer [ Internal ]
{
}

ClassMethod %GetFirstDayHorolog(pYear As %Integer, pMonth As %Integer, pCalendar As %String = "gregorian") As %Integer [ Internal ]
{
}

/// Return the last day (number) of the given year and month.
ClassMethod %SplitDate(pDate As %Date, pCalendar As %String = "gregorian", Output pYear, Output pMonth, Output pDay) As %Status [ Internal ]
{
}

/// Rewrite a group and rewrite any SUM(timeRange) as SUM(foldedTimeRange).
/// Also applies to %OR().
Method %RewriteForTimeFolding(pParentGroup As %DeepSee.Query.group, pGroup As %DeepSee.Query.group, Output pNewGroup As %DeepSee.Query.group, pLevel As %Integer = 0) As %Status [ Internal ]
{
}

/// Utility method.
/// Try to find the dimension info assoiciated with the provided query object.
Method %FindMemberInfo(pNode As %DeepSee.Query.node, Output pMember As %DeepSee.Query.member) As %Status [ Internal ]
{
}

/// Utility Method. Determine whether the current node can be considered a measure.
/// Returns:
/// "cell" 	- This node is a spreadsheet function and is exempt
/// 1 		- This node functions as a measure
/// 0 		- This node does not function as a measure
ClassMethod %IsMeasure(pNode As %DeepSee.Query.node, Output pStatus) As %String [ Internal ]
{
}

/// Utility Method. Determine whether the current node can be considered a member
ClassMethod %IsMember(pNode As %DeepSee.Query.node, Output pStatus) As %Boolean [ Internal ]
{
}

/// Test for an existence of a measure in <var>pNode</var>.
ClassMethod %HasMeasure(pNode As %DeepSee.Query.node, ByRef pStatus As %Status) As %Boolean [ Internal ]
{
}

/// Utility method to test for related cube terms in a %DeepSee.Query.node object
ClassMethod %HasRelations(pCube, pNode As %DeepSee.Query.node, ByRef pStatus As %Status) As %Boolean
{
}

/// Add a %LABEL to <var>pReferenceGroup</var>. The label is supplied to the method as an abstracted
/// %LABEL object <var>pLabel</var>. The input group is placed in the first argument of a %LABEL
/// which contains all the same parameters that are defined in <var>pLabel</var>. The newly labeled group
/// is returned in <var>pLabeledGroup</var>.
ClassMethod %AddLabel(pReferenceGroup As %DeepSee.Query.group, pLabel As %DeepSee.Query.group = "", Output pLabeledGroup As %DeepSee.Query.group) As %Status
{
}

/// Remove the %LABEL and expose the group is is acting upon. The abstracted contents of the %LABEL
/// are returned as the <var>pLabelGroup</var>.
ClassMethod %RemoveLabel(pReferenceGroup As %DeepSee.Query.group, Output pLabelGroup As %DeepSee.Query.group, Output pInnerGroup As %DeepSee.Query.group) As %Status
{
}

ClassMethod %RemoveLabelsInFilterExpression(pReferenceGroup As %DeepSee.Query.group, Output pOutputGroup As %DeepSee.Query.group, pCubeName As %String = "") As %Status
{
}

/// Test to determine if the two provided crossjoin terms are swap-exempt
ClassMethod %IsCrossjoinSwapExempt(pNode1, pNode2) As %Boolean [ Internal ]
{
}

/// Write the node as the columns clause in an %MDX subquery.
ClassMethod %RewriteNodeAsSubquery(pNode) As %DeepSee.Query.node
{
}

Method %SetVariables(ByRef pVariables) As %Status
{
}

/// Resolve any instances of "$variable.Name" in the text <var>pMDX</var> using values in the lookup array
/// <var>pVariables</var>.
ClassMethod %ResolveVariablesInText(pMDX As %String, ByRef pVariables) As %Status
{
}

/// Set the axis to a literal null
ClassMethod %NullifyAxis(pAxisKey) As %Status
{
}

/// Generate the result key for the current query object.
Method %CreateResultKey(Output pStatus As %Status = {$$$OK}, Output pFinalText = "", pRefreshKey As %Boolean = 0, pMDXRequest As %String = "") As %String
{
}

/// Generate an axis key for a %DeepSee.Query.axis object.
Method %CreateAxisKey(Output pStatus As %Status = {$$$OK}, pType = "", pAxis As %DeepSee.Query.axis = {$$$NULLOREF}, pOriginalSpec = "", Output pFinalText = "", pRefreshKey As %Boolean = 0) As %String
{
}

/// This method provides a means for safely killing previously cached results without destroying the<br>
/// ^DeepSee.Cache.Results(CUBEKEY,QueryKey,"query") <br>
/// node. Primarily this allows %PrepareKey to function if an execution determines the remainder of the cache is stale
/// and cannot be reused.
ClassMethod %ClearQueryResults(pCubeName As %String = "", pQueryKey As %String = "") As %Status [ Internal ]
{
}

/// Test the current query object for enabled dimensions, measures, and relationships as aplicable.
/// If all items have completed a build process and contain queryable data, the query is executable.
Method %IsExecutable(Output pStatus = {$$$OK}, Output pReason As %String = "") As %Boolean
{
}

}
