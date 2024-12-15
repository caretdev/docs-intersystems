/// This class contains a number of DeepSee utility methods.
Class %DeepSee.Utils Extends %RegisteredObject [ System = 4 ]
{

Parameter DOMAIN = "%DeepSee";

/// Stops all DeepSee background agents, clears any pending tasks,
/// and clears the result cache for the current namespace.
/// If <var>pClearCells</var> is true, then the cell cache for the
/// current namespace is also cleared.<br/>
/// This method is provided as a convenience for developers for
/// use on development or test systems. You should not use this method
/// on production systems as it will have immediate effect on the
/// performance of end user operations.
ClassMethod %Reset(pClearCells As %Boolean = 0) As %Status
{
}

/// Test if the current query execution should be cancelled.
/// Not currently used.
ClassMethod %TestForCancel(pFlag As %String = "") As %Boolean [ Internal ]
{
}

/// Run the server init code.<br/>
/// This gives customer applications a chance to establish environmental settings.
/// This is called whenever a DeepSee session is created or when a background process begins work on a %DeepSee.WorkMgr queue.<br/>
/// The server init code is a valid ObjectScript expression stored in the ^DeepSee.InitCode global.
/// Server init code should not write any output to the current device nor
/// should this code kill any % variables required by Zen or DeepSee.
ClassMethod %RunServerInitCode() As %Status
{
}

/// Run the server close code.<br/>
/// This gives customer applications a chance to clear environmental settings.
/// This method is called whenever a DeepSee session is closed or when a background process completes work on a %DeepSee.WorkMgr queue.<br/>
/// The server close code is a valid ObjectScript expression stored in the ^DeepSee.CloseCode global.
/// Server close code should not write any output to the current device nor
/// should this code kill any % variables required by Zen or DeepSee.
ClassMethod %RunServerCloseCode() As %Status
{
}

/// Run the server audit code.<br/>
/// This gives customer applications a chance to audit viewing of DeepSee dashboard pages.
/// This is called whenever a DeepSee dashaboard is viewed in the user portal.<br/>
/// The server audit code is a valid ObjectScript expression stored in the ^DeepSee.AuditCode global.
/// Server audit code should not write any output to the current device nor
/// should this code kill any % variables required by Zen or DeepSee.<br/>
/// The variable, %dsDashboard, will contain the id (name) of the current dashboard item.
ClassMethod %RunServerAuditCode(pDashboardId As %String) As %Status
{
}

/// Test if the given cube is available for querying.
ClassMethod %IsCubeAvailable(pCubeName As %String, Output pReason As %String) As %Boolean
{
}

/// Update <em>all</em> facts in the DeepSee cube <var>pCubeName</var>
/// with data from the source table.<br/>
/// This will delete any information currently in the cube.<br><br>
/// <var>pAsync</var> controls whether DeepSee performs the build in multiple background processes.
/// If this argument is true, the system uses multiple processes and does not return until they are all complete.
/// If this argument is false, the system uses a single process and does not return until it is complete.<br>
/// If you have specified initialBuildOrder, the system will reset the value of pAsync to 0 and use a single process to build the cube.
/// The presence of initialBuildOrder in the cube definition will override this setting and will force <var>pAsync</var>=0.
/// The parameter may be passed by reference to communicate to the caller whether or not this
/// override has taken place.<br/>
/// When a limit is imposed on background agents for a particular namespace using <method>%SetAgentCount</method>, only one build may be active
/// at a time in that namespace. This will not have any effect on behavior of builds in other namespaces.<br/>
/// If <var>pVerbose</var> is true, then status information is written to the console.<br/>
/// If <var>pIndexOnly</var> is true, only rebuild the fact table indices.<br/>
/// If <var>pMaxFacts</var> is non-zero, then only build this number of facts.<br/>
/// <var>pTracking</var> is an internal argument used when this method is run in the background and specifies that status information should be stored.<br/>
/// <var>pBuildStatistics</var> returns an array of information about the cube build. <br/>
/// The array has four subscripts. For example, if tStats is the argument used, as in: <br/>
/// do ##class(%DeepSee.Utils).%BuildCube("PATIENTS",1,,,,,.tStats) the array will look like the following: <br/>
/// 		tStats("elapsedTime")=10.000643          <br/>
/// 		tStats("errors")=1                       <br/>
/// 		tStats("factCount")=5000                 <br/>
/// 		tStats("missingReferences")=1            <br/>
/// <br/>
/// If the <var>pFactList</var> is supplied the build will only update the columns listed in that fact list.
/// The list must consist of the specific fact names and can have either a comma-delimited or $LB format.
/// If this list is supplied, the specific facts being updated will be individually marked as unavailable for queries
/// and queries referencing dimensions based on those facts will throw an error on prepare.
ClassMethod %BuildCube(pCubeName As %String = "", pAsync As %Boolean = 1, pVerbose As %Boolean = 1, pIndexOnly As %Boolean = 0, pMaxFacts As %Integer = 0, pTracking As %Boolean = 1, ByRef pBuildStatistics As %String = "", pFactList As %String = "") As %Status
{
}

/// Log a %Status to the ^DeepSee.BuildErrors global.
ClassMethod %LogBuildError(pCubeName As %String = "", pRecordID As %Integer = 0, pStatus As %Status = {$$$OK}) As %Status
{
}

/// Command line utility for monitoring cube build progress. This repeats the same information
/// available to the Architect's build winow in a terminal.
ClassMethod %BuildStatus(pCubeName As %String = "")
{
}

/// For the given cube, iterate over all facts in the build error log and attempt to
/// reprocess each fact. If the processing succeeds, remove the item from the error log.
ClassMethod %FixBuildErrors(pCube As %String, pVerbose As %Boolean = 1) As %Status
{
}

/// Display the list of errors encountered in the most recent build of the given cube.
ClassMethod %PrintBuildErrors(pCube As %String = "", pMaxErrors = 0)
{
}

/// Precompute aggregate values for the given cube (if its precompute property is non-zero).<br/>
/// If <var>pAsync</var> is true, then background tasks are used.<br/>
/// If <var>pVerbose</var> is true, then status information is written to the console.<br/>
ClassMethod %PrecomputeAggregates(pCubeName As %String, pAsync As %Boolean = 1, pVerbose As %Boolean = 1, pTracking As %Boolean = 0) As %Status
{
}

/// Precompute the aggregates witin the given cube and the given group name within the cube's
/// CellCache specification.<br/>
/// Set <var>pGroupName</var> to "*" for all groups.
ClassMethod %ComputeAggregateGroup(pCubeName As %String, pGroupName As %String, pVerbose As %Boolean = 1) As %Status
{
}

/// Loop over fact table for cube and precompute the aggregates for the specified combinations
/// in <var>pCombo</var>.<br/>
/// pCombo(n) = "FactName1,FactName2,MsrName1"
ClassMethod %ComputeAggregateCombos(pCubeName As %String, ByRef pCombos, pVerbose As %Boolean = 1, pTracking As %Boolean = 0) As %Status
{
}

/// Compute aggregate combinations for one "bucket".
ClassMethod %ComputeAggregateForBucket(pCubeName As %String, pStartChunk As %Integer, pEndChunk As %Integer, ByRef pFactList, ByRef pWorkList, pVerbose As %Boolean = 1, ByRef pCount As %Integer) As %Status [ Internal ]
{
}

/// Delete any stale cache for cube <var>pCubeName</var>.
ClassMethod %DeleteObsoleteCache(pCubeName = "") As %Status [ Internal ]
{
}

/// [Deprecated] Cache is purged automatically on cube update and does not need to be called in user code.
ClassMethod %PurgeObsoleteCache(pCubeName As %String) As %Status [ Internal ]
{
}

/// For the specified cube, update one fact from the source table (with id of <var>pSourceId</var>).
/// If the fact does not yet exist, it is inserted, if does exist it is updated.<br/>
/// If <var>pVerbose</var> is true, then status information is written to the console.<br/>
/// <var>pMissingReferences</var> how missing references to related cubes were encountered.
/// Refer to the <method>%SynchronizeCube</method> for details.<br/>
/// This method logs current time as the cube's last data update but does not advance the cube's DSTIME timestamp.
ClassMethod %ProcessFact(pCubeName As %String, pSourceId As %String = "", pVerbose As %Boolean = 0, Output pMissingReferences As %Integer, pFactList As %String = "") As %Status
{
}

/// For the specified cube, delete one fact from the source table (with id of <var>pSourceId</var>).
/// If <var>pVerbose</var> is true, then status information is written to the console.<br/>
/// This method logs current time as the cube's last data update but does not advance the cube's DSTIME timestamp.
ClassMethod %DeleteFact(pCubeName As %String, pSourceId As %String = "", pVerbose As %Boolean = 0) As %Status
{
}

/// For the specified cube, find and apply all changes from the source data that have been made since the
/// last call to this method.
/// If <var>pVerbose</var> is true, then status information is written to the console.<br><br>
/// On return, <var>pFactsUpdated</var> will return the number of facts updated.<br><br>
/// By default, reads from the source table use READ COMMITTED mode, you can turn this off
/// (if you can tolerate reads of values from uncommitted transactions) by setting
/// <var>pReadCommitted</var> to 0.<br><br>
/// If this cube has facts that reference (via relationships) facts within another cube and any
/// of those remote facts are missing (because the related cube has not been synchronized), then
/// this method will report success and the missing references will be treated as build errors.<br>
/// To avoid this type of error, it is better to plan your synchronization so that the related cubes are
/// synchronized first (in the same order the cubes are built).<br><br>
/// The <var>pCheckReferences</var> argument is deprecated and no longer has any effect on updates.<br><br>
/// <var>pAsync</var> controls whether DeepSee performs the synchronize in multiple background processes.
/// If this argument is true, the system uses multiple processes and does not return until they are all complete.
/// If this argument is false, the system uses a single process and does not return until it is complete.<br>
/// By default this method runs in the synchronous mode to avoid any potential interference
/// with agents involved in background processing. If asynchronous mode is turned on, the synchronization work
/// will be divided among all available Low priority agents.<br><br>
/// <var>pSynchronizeStatistics</var> returns an array of information about the synchronize. <br>
/// The array has four subscripts. For example, if tStats is the argument used, as in: <br>
/// do ##class(%DeepSee.Utils).%SynchronizeCube("PATIENTS",1,,,,,.tStats) the array might look like the following: <br>
/// 		tStats("elapsedTime")=.000643          <br/>
/// 		tStats("errors")=1                     <br/>
/// 		tStats("factCount")=5                  <br/>
/// 		tStats("missingReferences")=1          <br/>
/// <br>
/// If any errors occur during the synchronize process but all source records are successfully checked,
/// this cube will treat processing for this timestamp as complete. The expectation is that any
/// individual update errors can and should be resolved individually or through the <method>%FixBuildErrors</method>
/// method and not by the synchronize itself.
ClassMethod %SynchronizeCube(pCubeName As %String = "", pVerbose As %Boolean = 1, Output pFactsUpdated As %Integer, pReadCommitted As %Boolean = 1, pCheckReferences As %Boolean = 1, pAsync As %Boolean = 0, ByRef pSynchronizeStatistics As %String = "") As %Status
{
}

/// Process the ^OBJ.DSTIME update buffer into the concurrency-protected
/// update global. To protect an update entry in the ^OBJ.DSTIME buffer within
/// a transaction, the process setting the buffer should use
/// <example language="cos">
/// 	Lock +^DeepSee.Build(pClassName,ID)
/// </example>
/// The <var>ID</var> is not needed for concurrency protection between the transactional process
/// and <method>%ProcessUpdateBuffer</method>, but will prevent lock contention between
/// transactional processes if this is used.
ClassMethod %ProcessUpdateBuffer(pClassName = "", pNoKill = 0) As %Status [ Internal ]
{
}

/// Clear the update buffer for a given class. This will completely remove the current contents
/// of ^OBJ.DSTIME(<var>pClassName</var>).
ClassMethod %ClearUpdateBuffer(pClassName = "") As %Status [ Internal ]
{
}

/// Test the ^OBJ.DSTIME update buffer for new updates in the class <var>pClassName</var>
ClassMethod %HasUpdates(pClassName = "") As %Boolean
{
}

/// Update the sync timestamp for the given cube.
ClassMethod %SetCubeDSTime(pCubeName As %String, pVersion As %Integer = "") As %Status
{
}

/// Query the sync timestamp for the given cube.
ClassMethod %GetCubeDSTime(pCubeName As %String, Output pStatus As %Status) As %Integer
{
}

/// Purge all entries in the listing cache older than <var>pStartDay</var>. If this is
/// omitted, the start day used will be the current day.
ClassMethod %PurgeListings(pVerbose As %Integer = 0, pStartDay = "") As %Status
{
}

/// <p><method>%PurgeDSTIME</method> purges all nodes in ^DeepSee.Update that have already been processed by all cubes,
/// and by all classes that extend <class>%DeepSee.TimeSync</class>.
/// This method checks the DSTIME value for each cube, and for each class that extends %DeepSee.TimeSync,
/// and computes the oldest DSTIME value that has not yet been
/// synchronized. All DSTIME values older than that time are purged from the DSTIME index.</p>
/// <p>If a class has entries in the DSTIME index and no cubes use that class as a source class then those DSTIME
/// entries are not purged.</p>
/// <p>
/// <table border=1>
/// <th>
/// Parameters
/// </th>
/// <tr>
/// 		<td>pVerbose</td>
/// 		<td>Input</td>
/// 		<td>
/// 			If true then status messages will be displayed on the current device.
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>pPurged</td>
/// 		<td>Output</td>
/// 		<td>
/// 			An array of DSTIME entries that have been purged. For example:
/// 			<pre>
/// 		purged("DeepSee.Study.CityRainfall")=1
/// 		purged("DeepSee.Study.Patient")=2
/// 		purged("HoleFoods.Transaction")=0
/// 			</pre>
/// 			The array subscript is the class name and the value is the DSTIME value that was purged.
/// 		</td>
/// </tr>
/// </table>
/// </p>
/// <br>
/// 	<p>
/// 	<b>Return value</b>: This method returns a %Status value indicating success or failure.
/// 	</p>
ClassMethod %PurgeDSTIME(pVerbose As %Integer = 0, Output pPurged As %Library.String(MAXLEN="")) As %Status
{
}

/// Purge the ^OBJ.DSTIME update buffer when there are no cubes present to clear entries
/// via updates.<br>
/// <var>pClass</var> [Required] - The class to be purged from the ^OBJ.DSTIME update buffer.
/// The "*" wildcard may be used to purge all classes present in the buffer.<br>
/// <var>pPurgeUpTo</var> [Required] - This is the oldest timestamp that must be retained in the purge.
/// Every entry older than this will be removed. The "*" wildcard may be used to remove all entries for
/// the given <var>pClass</var>.<br>
/// <var>pIncrement</var> - If true, the purge method will automatically advance the top node of ^OBJ.DSTIME
/// to advance the timestamp of all non-interval type entries to support the next purge. This parameter is set to
/// 1 by default.
ClassMethod %PurgeUpdateBuffer(pClass As %String = "", pPurgeUpTo As %String = "", pIncrement As %Boolean = 1, pVerbose As %Boolean = 0) As %Status
{
}

/// Delete all indices and cache values for the given cube.
ClassMethod %KillCube(pCubeName As %String = "", pForce = 0) As %Status
{
}

/// Delete any KPI cache values for the given cube.
ClassMethod %KillKPICacheForCube(pCubeName As %String) As %Status
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the logical name of its %COUNT measure.
ClassMethod %GetCountName(pCubeName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the display name of its %COUNT measure.
ClassMethod %GetCountCaption(pCubeName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the class name of its fact table.
ClassMethod %GetCubeFactClass(pCubeName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the SQL name of its fact table.
ClassMethod %GetCubeFactTable(pCubeName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the number of rows within its fact table.
ClassMethod %GetCubeFactCount(pCubeName As %String, Output pStatus As %Status) As %Integer
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the number of members within the given dimension level.
ClassMethod %GetCubeMemberCount(pCubeName As %String, Output pStatus As %Status, pDimName As %String = "", pHierName As %String = "", pLevelName As %String = "") As %Integer
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return its name in its original case.
ClassMethod %GetCubeName(pCubeName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// test if it is abstract.<br/>
/// An abstract cube does not contain any data and cannot be queried.
ClassMethod %IsCubeAbstract(pCubeName As %String, Output pStatus As %Status) As %Boolean
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// test if it is a compound cube (composed of two or more cubes joined together).<br/>
ClassMethod %IsCubeCompound(pCubeName As %String, Output pJoinList As %String, Output pStatus As %Status) As %Boolean
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the date and time that the cube definition was last modifed.
ClassMethod %GetCubeModifiedDate(pCubeName As %String, Output pStatus As %Status) As %DeepSee.Datatype.dateTime
{
}

/// Given the logical name, <var>pKPI</var> of a DeepSee KPI,
/// return the date of the time the KPI definition was modified (in $H format).
ClassMethod %GetKPIModifiedDate(pKPI As %String, Output pStatus As %Status) As %DeepSee.Datatype.dateTime
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube, return its caption.
ClassMethod %GetCubeCaption(pCubeName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pKPI</var> of a DeepSee KPI, return its caption.
ClassMethod %GetKPICaption(pKPI As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// test if it exists.
ClassMethod %CubeExists(pCubeName As %String = "", Output pStatus As %Status) As %Boolean
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// test if it exists.
ClassMethod %KPIExists(pKPIName As %String = "", Output pStatus As %Status) As %Boolean
{
}

/// Test that the current user holds privileges on the given cube.
ClassMethod %CheckPrivilege(pCubeName As %String) As %Boolean [ Final ]
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the class name of the cube definition.
ClassMethod %GetCubeClass(pCubeName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the class name of it associated actionClass, if any.
ClassMethod %GetCubeActionClass(pCubeName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube return its class description.
ClassMethod %GetCubeDescription(pCubeName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pKPIName</var> of a DeepSee KPI,
/// return its name in its original case.
ClassMethod %GetKPIName(pKPIName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pKPIName</var> of a DeepSee KPI, test if it is public.
ClassMethod %IsKPIPublic(pKPIName As %String) As %Boolean
{
}

/// Given the logical name, <var>pKPIName</var> of a DeepSee KPI return its class description.
ClassMethod %GetKPIDescription(pKPIName As %String, Output pStatus As %Status) As %String
{
}

/// Given the logical name, <var>pKPIName</var> of a DeepSee KPI,
/// return the class name of the KPI definition.
ClassMethod %GetKPIClass(pKPIName As %String, Output pStatus As %Status) As %String
{
}

/// Return a list of all currently defined DeepSee KPIs visible to the current user.
/// This is used by utilities.<br/>
/// This list takes the form:<br/>
/// pList(NAME) = $LB(name,caption,moddate,type)
ClassMethod %GetKPIList(Output pList) As %Status [ Final ]
{
}

/// Return a list of all currently defined DeepSee "Plug-in" KPIs visible to the current user.
/// If <var>pBaseName</var> is provided, then only list plug-ins visible to this base cube.<br/>
/// This is used by utilities.<br/>
/// This list takes the form:<br/>
/// pList(NAME) = $LB(name,caption,moddate,type)<br/>
/// pList(NAME,"props",propName) = ""<br/>
ClassMethod %GetKPIPlugInList(Output pList, pBaseName As %String = "", pPlugInType As %String = "", pUseCubeVersion As %Boolean = 0) As %Status [ Final ]
{
}

/// Return a list of all currently defined DeepSee worksheets visible to the current user.
/// This is used by utilities.<br/>
/// This list takes the form:<br/>
/// pList(NAME) = $LB(name,caption,moddate,type)<br/>
/// If <var>pHidden</var> is true, then include trash and local items.
ClassMethod %GetWorksheetList(Output pList, pHidden As %Boolean = 0) As %Status [ Final ]
{
}

/// Return a list of all currently defined Business Metrics visible to the current user.
/// This is used by utilities.<br/>
/// This list takes the form:<br/>
/// pList(NAME) = $LB(name,caption,moddate,type)
ClassMethod %GetMetricList(Output pList) As %Status [ Final ]
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the default cube element (dimension and possibly level) as a string ("[Product].[Name]").<br/>
/// Note: this is no longer used by DeepSee.
ClassMethod %GetDefaultMember(pCubeName As %String) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the name of the default Measure.
/// Note: this is no longer used by DeepSee.
ClassMethod %GetDefaultMeasure(pCubeName As %String) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// and a dimension name, return the name of the default Hierarchy (this
/// is only defined if there is no more than one hierarchy for this dimension).
ClassMethod %GetDefaultHierarchy(pCubeName As %String, pDimName As %String) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// and a dimension and hierarchy name, return the name of the default Level (this
/// is only defined if there is no more than one level for this hierarchy).
ClassMethod %GetDefaultLevel(pCubeName As %String, pDimName As %String, pHierName As %String) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube known to exist,
/// return true if it is a base cube (and not a Subject Area).
ClassMethod %IsBaseCube(pCubeName As %String) As %Boolean [ Internal ]
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee subject area known to exist,
/// return its base cube.
ClassMethod %GetBaseCube(pCubeName As %String) As %String
{
}

ClassMethod %GetSourceClass(pCubeName As %String) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// and the name of a relationship in the cube, return the name of the cube referred to by the
/// relationship.
ClassMethod %GetRelatedCube(pCubeName As %String, pRelationName As %String) As %String
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// and the name of a dimension, test if the dimension is a relationship.
ClassMethod %IsRelationship(pCubeName As %String, pDimension As %String) As %Boolean
{
}

/// Return a list of the dimensions (and measures) within the specified cube.<br/>
/// On return, <var>pInfo</var> will contain array of the form:<br/>
/// pInfo(DimNo,HierNo,LevelNo) = $LB(type,DimName,HierName,LevelName)<br/>
/// type can be "d","h","l","m","r" or "all" for dimension, hierarchy, level, measure, relationship or all level.<br/>
/// Note that all measures are found under DimNo 0 and have no LevelName.
/// Dimensions whose name starts with "%" are not listed.<br/>
/// Dimensions that only contain calculated members are returned as:<br/>
/// pInfo(-1,hierNo,memberNo)<br/>
/// If <var>pUseInFilter</var> is true, then only return levels whose useInFilter flag is true.<br/>
/// If <var>pExtendedInfo</var> is true, also return $LB(factNumber, factID, SQL column ID, isEnabled, inProgress) settings.<br/>
/// If <var>pShowAll</var> is true, include hidden items in the return list.
ClassMethod %GetDimensionList(pCube As %String, ByRef pInfo, pIncludeCalcMbrs As %Boolean = 0, pUseInFilter As %Boolean = 0, pExtendedInfo As %Boolean = 0, pShowAll As %Boolean = 0) As %Status
{
}

/// Get the members (dimensions, measures, and actual members of dimensions) of the specified cube as a tree format that can
/// be displayed within a <class>%ZEN.Component.dynaTree</class>.<br/>
/// <var>pCube</var> is the cube name.<br/>
/// <var>pTree</var> is an array returned by reference that contains the member data.<br/>
/// <var>pSkipMeasures</var> is used internally and indicates that measures (as well as named filters) should not be listed.<br/>
/// <var>pRoot</var> is used to specify that an incremental load of children is requested; if provided it is the spec of a parent node.<br/>
/// <var>pLocalCalcMembers</var> is used to pass in additional calculated members.<br/>
/// <var>pLocalNamedSets</var> is used to pass in additional named sets.<br/>
/// <var>pVisited</var> and <var>pRelatedBy</var> are not used.<br/>
/// <var>pSkeleton</var> indicates that members and relationships are not displayed.<br/>
ClassMethod %GetMemberTree(pCube As %String, ByRef pTree, ByRef pVisited As %String, pSkipMeasures As %Boolean = 0, pRoot As %String = "", ByRef pLocalCalcMembers As %List, ByRef pLocalNamedSets As %List, pRelatedBy As %String = "", pLevel As %Integer = 0, pSkeleton As %Boolean = 0) As %Status
{
}

/// Get list of saved pivots for a cube for display within a tree.
ClassMethod %GetPivotTree(pCube As %String, ByRef pTree, pCurrPivot As %String = "") As %Status
{
}

/// Get list of quality measures for display within a tree.
ClassMethod %GetQualityMeasureTree(pCube As %String, ByRef pTree) As %Status
{
}

/// Copy source tree (from root) into <var>pTree</var> at the given parent node.
/// Return number of nodes copied.
ClassMethod %CopyTree(pName As %String, ByRef pTree, pParent As %Integer, ByRef pSource, pRoot As %Integer) As %Integer [ Internal ]
{
}

/// Return the dimension,hierarchy, and level number of the specified element
/// within the specified cube.<br/>
/// <var>pCubeName</var> is the name of the cube.<br/>
/// <var>pSpec</var> specifies the dimension in the form:
/// "Dim.Hier.Level" or "Dim.Hier.Level.member".<br/>
/// If <var>pStrict</var> is false, then find a level: Hier or Level can be omitted if they are not ambiguous.<br/>
/// <var>pSpecInfo</var> is the array produced by parsing <var>pSpec</var>.
/// This is returned as a convenience.<br/>
/// <var>pLocalCalcMembers</var> is an optional list of locally defined calculated members.
/// <var>pLocalNamedSets</var> is an optional list of locally defined named sets.
ClassMethod %GetDimensionInfo(pCubeName As %String, pSpec As %String, Output pDimNo, Output pHierNo, Output pLevelNo, Output pRelationName As %String, Output pRelationSpec As %String, Output pSpecInfo As %String, ByRef pLocalCalcMembers, pStrict As %Boolean = 1, ByRef pLocalNamedSets) As %Status
{
}

/// Given the dimension,hierarchy, and level number for a dimension
/// within the specified cube, return it's specification string.
ClassMethod %GetDimensionSpec(pCubeName As %String, Output pSpec As %String, pDimNo As %Integer, pHierNo As %Integer = 0, pLevelNo As %Integer = 0) As %Status
{
}

/// Return the measures within the given cube as an array of form:<br/>
/// pMeasures(n) = $LB(name,caption,type,hidden,factName)<br/>
/// If <var>pSkipCalculated</var> is true, then do not include calculated measures.
ClassMethod %GetCubeMeasures(pCube As %String, ByRef pMeasures, pSkipCalculated As %Boolean = 0) As %Status
{
}

/// Return all named filters for a given cube as an array of form:<br/>
/// pFilters(n) = $LB(name,tooltip,spec,cube)<br/>
ClassMethod %GetNamedFilters(pCube As %String, ByRef pFilters, pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Delete the given named filter for the given cube.
/// If <var>pFilterName</var> is "*", then delete all named filters for the cube.
ClassMethod %DeleteNamedFilter(pCube As %String, pFilterName As %String = "", pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Return details on the given named filter in the array <var>pInfo</var>.
ClassMethod %GetNamedFilterInfo(pCube As %String, pFilterName As %String, Output pInfo, pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Save a named filter.
ClassMethod %SaveNamedFilter(pCube As %String, pFilterName As %String, pTooltip As %String, pSpec As %String, pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Return all shared calculated members for a given cube as an array of form:<br/>
/// pCalcMbrs(n) = $LB(name,tooltip,dimension,cube)<br/>
ClassMethod %GetSharedCalcMembers(pCube As %String, ByRef pCalcMbrs, pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Delete the given shared calculated member for the given cube.
/// If <var>pCalcMbrName</var> is "*", then delete all shared calculated members for the cube.
ClassMethod %DeleteSharedCalcMember(pCube As %String = "", pCalcMbrName As %String = "", pDimension As %String = "", pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Return details on the given shared calculated member in the array <var>pInfo</var>.
ClassMethod %GetSharedCalcMemberInfo(pCube As %String, pDimension As %String = "", pCalcMbrName As %String = "", Output pInfo, pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Store the details of a calulated member in the shared location.
ClassMethod %SaveSharedCalcMember(pCube As %String = "", pCalcMbrName As %String = "", pDimension = "", pValueExpression = "", pFormatString = "", pSolveOrder, pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Return all pivot variables for a given cube as an array of form:<br/>
/// pVariables(n) = $LB(name,caption,defValue,context,desc)<br/>
ClassMethod %GetPivotVariables(pCube As %String, ByRef pVariables, pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Delete the given pivot variable for the given cube.
/// If <var>pVariableName</var> is "*", then delete all pivot variables for the cube.
ClassMethod %DeletePivotVariable(pCube As %String, pVariableName As %String = "", pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Return details on the given pivot variable in the array <var>pInfo</var>.
ClassMethod %GetPivotVariableInfo(pCube As %String, pVariableName As %String, Output pInfo, pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Save a pivot variable.
/// The variable's attributes are in the array <var>pInfo</var>.
ClassMethod %SavePivotVariable(pCube As %String, pVariableName As %String, ByRef pInfo As %String, pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Find all values for a given pivot variable.<br/>
/// Return pValues(n) = $LB(text,spec)
ClassMethod %GetPivotVariableValues(pCube As %String, pVariableName As %String, Output pValues, pUseCubeVersion As %Boolean = 0) As %Status
{
}

/// Return the searchable measures within the given cube as an array of form:<br/>
/// pMeasures(n) = $LB(name,caption,type)
ClassMethod %GetCubeSearchableMeasures(pCube As %String, ByRef pMeasures) As %Status
{
}

/// Return the localized display name for a given element within the given cube.
ClassMethod %GetDimensionCaption(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, ByRef pCaption As %String) As %Status
{
}

/// Return the localized display name for a given element within the given cube given a dimension,
/// hierarchy, and level name.
ClassMethod %GetMemberCaption(pCube As %String, pDimName As %String, pHierName As %String = "", pLevelName As %String = "", ByRef pCaption As %String) As %Status
{
}

/// Return the localized description for a given element within the given cube given a dimension,
/// hierarchy, and level name.
ClassMethod %GetMemberDescription(pCube As %String, pDimName As %String, pHierName As %String = "", pLevelName As %String = "", ByRef pDescription As %String) As %Status
{
}

/// Test if a given element within the given cube has child levels.
ClassMethod %MemberHasChildren(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, ByRef pHasChildren As %Boolean) As %Status
{
}

/// Given a cube and a measure name, i.e. "Patient Count", return the fact table column name for that measured.
ClassMethod %GetMeasureFact(pCube As %String, pMeasureName As %String, Output pMeasureFact As %String) As %Status
{
}

/// Return the fact name associated with a given element within the given cube.
ClassMethod %GetDimensionFact(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, ByRef pFactName As %String) As %Status
{
}

/// Return the properties of a given level within the given cube as an array of form:<br/>
/// pProperties(n) = $LB(name,caption,type)
ClassMethod %GetDimensionProperties(pCube As %String, pDimName As %String, pHierName As %String, pLevelName As %String, ByRef pProperties) As %Status
{
}

/// Return a list of all levels within the given cube.<br/>
/// On return <var>pLevels</var> contains a list of all levels of the form:<br/>
/// pLevels(n) = $LB(type,dimName,hierName,levelName)<br/>
/// Type is "l" for level, "m" for measure (in which case there is no levelName) or
/// "r" for relationship (in which case there is only a dimension name).<br/>
/// If <var>pSkipAll</var> is true, do not return any "all" levels.<br/>
/// If <var>pSkipComputed</var> is true, do not return any levels for computed dimensions.<br/>
ClassMethod %GetCubeLevels(pCube As %String, ByRef pLevels, pSkipAll As %Boolean = 0, pSkipComputed As %Boolean = 0) As %Status
{
}

/// Return an array of all (non-default) listings for the given cube.
/// The array is of the form:<br/>
/// pListings(name) = $LB(caption,fields,order,type,source,edit)<br/>
/// If there are no listings, then <var>pListings</var> will be undefined.<br/>
/// If <var>pType</var> is defined, then only return listings of the given type.
ClassMethod %GetCubeListings(pCube As %String, Output pListings As %List, pType As %String = "") As %Status
{
}

/// Return an array of all defined listing fields for the given cube.
/// The array is of the form:<br/>
/// pListings(name) = $LB(caption,expression)<br/>
/// If there are no listing fields, then <var>pFields</var> will be undefined.<br/>
ClassMethod %GetCubeListingFields(pCube As %String, Output pFields As %List) As %Status
{
}

/// Return a list of members of the specified dimension
/// for the specified cube.<br/>
/// <var>pCubeName</var> is the name of the cube.<br/>
/// <var>pSpec</var> specifies the dimension in the form:
/// "Dim.Hier.Level".<br/>
/// <var>pContext</var> is used to indicate a particular calling context. This affects the behavior when trimming the list of members using related filters.<br/>
/// The list is returned via <var>pMembers</var>. This takes the form:<br/>
/// pMembers(n) = $LB(value,name,memberId,memberKey,[description])<br/>
/// Return the member class as a convenience.<br/>
/// If <var>pRelatedFilters</var> is provided, it is an array of other filter values to use to
/// restrict the set of members. It takes the form:<br/>
/// pRelatedFilters(spec) = key<br/>
/// If <var>pCalcMode</var> is 1, then only return calculated members.
/// If <var>pCalcMode</var> is -1, then only return non-calculated members.
ClassMethod %GetDimensionMembers(pCubeName As %String, pSpec As %String, pContext As %String = "", Output pMembers, pMaxMembers As %Integer = 100, Output pMemberClass As %String, ByRef pRelatedFilters, pCalcMode As %Integer = 0, pSearchKey As %String = "") As %Status
{
}

/// Convert a string <var>pSpec</var> into array form and add it to the array <var>pFilterArray</var>. The
/// value for <var>pSpec</var> may be any valid MDX WHERE clause referencing non-calculated members.
/// If a member being inserted into the array already exists, the selection data will be replaced by the
/// intersection of the preexisting member or set and the new member or set provided by the argument.
ClassMethod %FilterSpecToArray(pCube As %String, pSpec As %String, ByRef pFilterArray) As %Status
{
}

/// Perfroms the actual work of recursively walking a slicer tree and representing it as an array if possible.
/// Contents of the <var>pFilterArray</var> can be returned in two different forms:<br>
/// Single argument: pFilterArray(levelSpec) = key<br>
/// heterogeneous %OR: pFilterArray(ORText,levelSpec) = key
ClassMethod %SlicerNodeToSpecArray(node As %DeepSee.Query.node, ByRef pFilterArray) As %Status [ Internal ]
{
}

/// Give a cube, a level within the cube, and the key value of a member of the level,
/// return the name of the level member.<br/>
/// <var>pCubeName</var> is the name of the cube.<br/>
/// <var>pSpec</var> specifies the dimension in the form:
/// "Dim.Hier.Level".<br/>
/// <var>pKey</var> is a key value. This may include the &[] around the key value.<br/>
/// <var>pValue</var> is the returned display value.<br/>
ClassMethod %GetLevelNameForKey(pCubeName As %String, pSpec As %String, pKey As %String, Output pValue As %String) As %Status
{
}

/// Parse a filter key value and convert all keys to display values in the context of <var>pKPIClass</var>.
ClassMethod %ParseKeyForDisplay(pKey As %String, Output pValue As %String, pKPIClass As %String = "", pFilterName As %String = "") As %Status
{
}

/// Given a cube and the dimension, heirarchy, and level numbers, translate the member ID
/// into the member key.
/// <var>pCubeName</var> is the name of the cube.<br/>
/// <var>pID</var> is an ID in the dimension's star table.<br/>
/// <var>pKey</var> is the returned key corresponding to that ID.<br/>
ClassMethod %GetMemberKeyForID(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pID As %String, Output pKey As %String) As %Status [ Internal ]
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return an instance of the <class>%DeepSee.Model.cube</class>
/// meta-data object that describes the cube.<br/>
/// Return "" if the given cube does not exist.<br/>
/// When called on a subject area, this redirects to %GetSubjectAreaModel.
ClassMethod %GetModel(pCubeName As %String, Output pStatus As %Status) As %DeepSee.Model.cube
{
}

/// Given the logical name, <var>pName</var> of a DeepSee subject,
/// return an instance of the <class>%DeepSee.Model.SubjectArea.subjectArea</class>
/// meta-data object that describes the cube.<br/>
/// Return "" if the given cube does not exist.<br/>
/// This method does not work on base cubes; use %GetModel.
ClassMethod %GetSubjectAreaModel(pName As %String, Output pStatus As %Status) As %DeepSee.Model.SubjectArea.subjectArea
{
}

/// Builds a list of functions (methods) for a given FunctionSet class
/// This list is returned in <var>funcset</var>.<br/>
/// The list is of the form list(NAME) = $LB(class,name,specparsed,return).<br/>
/// This method is not currently used.
/// [Previously private]
ClassMethod %GetFunctionSet(ByRef funcset, pClass As %String) As %Status
{
}

/// Builds a list of available time level classes.
/// The list is of the form pClasses(calendar,NAME) = class.
/// [Previously private]
ClassMethod %GetTimeLevelClasses(Output pClasses) As %Status
{
}

/// Protected lookup of the type of a time function. If the argument <var>pClassName</var>
/// is not a valid time class (extends <class>%DeepSee.Time.AbstractLevel</class>), then the
/// method returns an empty string.
ClassMethod %GetTimeLevelType(pClassName As %String) As %String
{
}

/// Protected lookup of the calendar used for a time function. If the argument <var>pClassName</var>
/// is not a valid time class (extends <class>%DeepSee.Time.AbstractLevel</class>), then the
/// method returns an empty string.
ClassMethod %GetTimeLevelCalendar(pClassName As %String) As %String
{
}

/// Given a date in $H format and a calendar, return the number of days since Jan 0 1900
/// This is excel's version of $H and is needed to export dates as dates to excel
ClassMethod %ExcelFormatDate(pDate As %String, pCalendar As %String) As %String
{
}

/// Loop over all indices for a given cube and show details.<br/>
/// <var>pCubeName</var> is the name of the cube.<br/>
/// <var>pFlags</var> is a set of flags that can control what is analyzed:
/// flags include "i" (include indices), "f" (include facts), "c" (include cell cache).
/// The default is "i".<br/>
/// <var>pVerbose</var> indicates that status information is to be displayed while the analysis is done.<br/>
ClassMethod %Analyze(pCubeName As %String, pFlags As %String = "i", pVerbose As %Boolean = 1) As %Status
{
}

/// Examine the levels and measures for a given cube and report on how many missing values there are.<br/>
/// <var>pCubeName</var> is the name of the cube.<br/>
ClassMethod %AnalyzeMissing(pCube As %String) As %Status
{
}

/// Return an array of the dimension tables (class names) used for a given cube.
/// If <var>pCardinality</var> is true, compute the size of each table.
ClassMethod %GetDimensionTables(pCubeName As %String, Output pStarTables, pCardinality As %Boolean = 0) As %Status
{
}

/// Rebuild the indices for every dimension table used for cube <var>pCubeName</var>.
/// If <var>pCubeName</var> is "*", then perform this on every cube within the current namespace
/// that is visible to the current user.
ClassMethod %BuildDimensionTableIndices(pCubeName As %String, pVerbose As %Boolean = 1) As %Status
{
}

/// Read portion of fact table into memory.
/// Used during index loading.
ClassMethod %ReadFacts(pCubeName As %String, pStartId As %Integer, pEndId As %Integer) [ Internal ]
{
}

/// Loop over all indices for the given cube and compress them.
ClassMethod %CompressIndices(pCubeName As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// Convert a class name of the form %Library.xxx to %xxx.
ClassMethod %DenormalizeType(pType As %String) As %String [ CodeMode = expression ]
{
}

/// Returns the SQL table name for class <var>pClass</var>. Returns the empty string if the supplied <var>pClass</var>
/// does not have an associated table.
ClassMethod %GetSQLTableName(pClass As %String, pVerifyExists = 0) As %String
{
}

/// Returns the SQL name of property <var>pProp</var> for class <var>pClass</var>.
ClassMethod %GetSQLColumnName(pClass As %String, pProp As %String) As %String [ Final ]
{
}

/// Return an <b>array</b> of all currently defined DeepSee Cubes visible to the current user.
/// This is used by utilities.<br/>
/// This array takes the form:<br/>
/// pList(NAME) = $LB(name,caption,moddate,type)<br/>
/// <var>pType</var>, if defined, can be "cubes" or "subjectAreas". This will limit the returned
/// list to those item types.<br/>
/// <var>pNonAbstract</var>, if true, limits the returned items to non-abstract cubes.<br/>
/// <var>pBaseCube</var>, if provided, limits the returned items to the base cube and its descendants.<br/>
/// If there are no cubes, then <var>pList</var> will be <b>undefined</b>.
ClassMethod %GetCubeList(Output pList, pType As %String = "", pNonAbstract As %Boolean = 0, pBaseCube As %String = "") As %Status [ Final ]
{
}

/// Return an array of all currently DeepSee Cubes and subject areas
/// in a format that can be used by a finderDialog.
/// <var>pType</var>, if defined, can be "cubes" or "subjectAreas". This will limit the returned
/// list to those item types.
/// <var>pNonAbstract</var>, if true, limits the returned items to non-abstract cubes.
ClassMethod %GetCubeListArray(ByRef pParameters, Output pMetaData, Output %pData, pType As %String = "", pNonAbstract As %Boolean = 0) As %Status [ Final, Internal ]
{
}

/// Return an array of all currently defined DeepSee Pivots
/// in a format that can be used by a finderDialog.
ClassMethod %GetPivotListArray(ByRef pParameters, Output pMetaData, Output %pData) As %Status [ Final, Internal ]
{
}

/// Return an array of all currently defined DeepSee dashboards
/// in a format that can be used by a finderDialog.
ClassMethod %GetDashboardListArray(ByRef pParameters, Output pMetaData, Output %pData) As %Status [ Final, Internal ]
{
}

/// Return an array of all currently defined, public DeepSee KPIs
/// in a format that can be used by a finderDialog.
ClassMethod %GetKPIListArray(ByRef pParameters, Output pMetaData, Output %pData) As %Status [ Final, Internal ]
{
}

/// Return an array of all currently defined DeepSee Worksheets
/// in a format that can be used by a finderDialog.
ClassMethod %GetWorksheetListArray(ByRef pParameters, Output pMetaData, Output %pData) As %Status [ Final, Internal ]
{
}

/// Return an array of all currently defined Business Metrics
/// in a format that can be used by a finderDialog.
ClassMethod %GetMetricListArray(ByRef pParameters, Output pMetaData, Output %pData) As %Status [ Final, Internal ]
{
}

/// Helper method.
/// Convert the items in <var>pList</var> into an array that can be used by a finderDialog.
ClassMethod %BuildItemListArray(ByRef pList, Output pMetaData, Output %pData, ByRef pParameters) As %Status [ Final, Internal ]
{
}

/// Return a list of all currently defined MDX functions.
/// This is used by utilities.<br/>
/// If <var>pAsTree</var> is true, return a format that a tree control can consume.
ClassMethod %GetFunctionList(Output pList, pAsTree As %Boolean = 0) As %Status [ Final ]
{
}

/// This utility method tests a DeepSee time level class to
/// verify that it is implemented correctly.<br/>
/// There are several tests:<br/>
/// Test 1: test the %Convert, %KeyToValue, and %ValueToKey methods.<br/>
/// Test 2: test the %Convert, %KeyToValue, and %ValueToKey methods.<br/>
ClassMethod %TestTimeClass(pClassName As %String, pTest As %Integer = 1, pFormat As %String = "") As %Status
{
}

/// Compute pre-loaded cell cache entries for the given cube
/// based on the cell cache specification within the cube's definition.
ClassMethod %LoadCellCache(pCubeName As %String) As %Status
{
}

/// Generate and execute a query that will force the update of the
/// cell cache for given cube and levels.
ClassMethod %ComputeCellCache(pCubeName As %String, ByRef pSpec) As %Status
{
}

/// Parse the given DeepSee range expression.<br/>
/// A range expression takes the form:<br/>
/// spec:replace;spec:replace;<br/>
/// spec takes the form:<br/>
/// value | (value,value) | [value,value] <br/>
/// () specifies a non-inclusive edge of a range.<br/>
/// [] specifies a inclusive edge of a range.<br/>
/// <var>pContext</var> is used for error reporting.
/// <var>pCode</var> contains a generated expression that
/// implement the range expression (using x as an input value).
ClassMethod %ParseRangeExpression(pRange As %String, Output pOutput, pContext As %String = "", Output pCode As %String) As %Status
{
}

ClassMethod %ExpandRangeMacro(ByRef pReplace As %String, pExp As %String, pContext As %String = "") As %Status [ Private ]
{
}

/// Delete the given DeepSee log file.
ClassMethod %KillLogFile(pFileName As %String = "DeepSeeTasks") As %Status [ Internal ]
{
}

/// Appends an error message to a DeepSee log file within the log directory. This method uses
/// locks to support simultaneous updates from from multiple processes.<br/>
/// <var>pSource</var> is the source of the error.<br/>
/// <var>pMsg</var> is the error message.<br/>
/// <var>pFileName</var> is the name of the log file.
/// This should not include a file path or file extension.<br/>
ClassMethod %WriteToLog(pSource As %String = "", pMsg As %String = "", pFileName As %String = "DeepSeeTasks") As %Status [ Internal ]
{
}

/// Return the full name of a DeepSee log file.
ClassMethod %GetLogFileName(pFileName As %String = "DeepSeeTasks") As %String [ Internal ]
{
}

/// Return the properties of a cube data source in a format that can be consumed
/// by a Zen dynaTree control.<br/>
/// <var>pRoot</var> is used to specify that an incremental load of children is requested; if provided it is the spec of a parent node.<br/>
ClassMethod %GetDataSourceTree(pClass As %String, Output pTree, ByRef pParms, pLevel As %Integer = 0, pParentRef As %String = "", pRoot As %String = "") As %Status
{
}

/// Utility method to create and save a cube definition class. Used by Architect.
ClassMethod %SaveCubeDefinition(pClassName As %String, pSuper As %String = "", pDesc As %String, pModel As %DeepSee.Model.cube, pDomain As %String = "", pDependsOn As %String = "") As %Status [ Internal ]
{
}

/// Utility method to create and save a subject area definition class. Used by Architect.
ClassMethod %SaveSubjectAreaDefinition(pClassName As %String, pSuper As %String = "", pDesc As %String, pModel As %DeepSee.Model.SubjectArea.subjectArea, pDomain As %String = "", pDependsOn As %String = "") As %Status [ Internal ]
{
}

/// Return a list of all currently defined DeepSee Pivots visible to the current user.
/// This is used by utilities.<br/>
/// This list takes the form:<br/>
/// pList(NAME) = $LB(name,caption,moddate,type)<br/>
/// If <var>pHidden</var> is true, then include trash and local items.<br/>
/// If <var>pCubeName</var> is provided, then only list pivots based on it.
ClassMethod %GetPivotList(Output pList, pHidden As %Boolean = 0, pCubeName As %String = "") As %Status [ Final ]
{
}

/// Return a list of all currently defined DeepSee dashboards visible to the current user.
/// This is used by utilities.<br/>
/// This list takes the form:<br/>
/// pList(NAME) = $LB(name,caption,moddate,type)
ClassMethod %GetDashboardList(Output pList) As %Status [ Final ]
{
}

/// Utility method. Convert a date value to %Date ($H) format.<br/>
/// <var>pDateType</var> indicates the incoming date format.
ClassMethod %ConvertDate(pDate As %String, pDateType As %String) As %Date
{
}

/// Set the default number of background processes used by DeepSee for the group specified by <var>pType</var>.
/// Tasks executed by background agents are divided into "build" and "runTime" groups. This method can be used
/// to set a per-group limit or to set a maximum number of processes that may be active across multiple groups.
/// The limits can be set with the following value for <var>pType</var>:<br>
/// - "build" - number of agents that will be requested for a single worker group performing cube build tasks<br>
/// - "runTime" - number of agents that will be requested for queries and processing of user code such as KPIs<br>
/// - "buildMax" - the maximum number of agents that can be active for user tasks<br>
/// - "runTimeMax" - the maximum number of agents that can be active for user tasks
ClassMethod %SetAgentCount(pNumAgents As %Integer = "", pType = "build", Output pStatus As %Status) As %Integer
{
}

/// Get the current default agent count for the group specified by <var>pType</var>.
/// <var>pType</var> can be used to query any of the limits:<br>
/// - "build" - number of agents that will be requested for a single worker group performing cube build tasks<br>
/// - "runTime" - number of agents that will be requested for queries and processing of user code such as KPIs<br>
/// - "buildMax" - the maximum number of agents that can be active for build tasks<br>
/// - "runTimeMax" - the maximum number of agents that can be active for user tasks
ClassMethod %GetAgentCount(pType = "build", Output pStatus As %Status) As %Integer
{
}

/// Set an entry into the DS Time index used to track changes to transactional classes.<br/>
/// This is intended for classes that use DSTIME="manual" and wish to maintain the DSTIME index
/// manually. It should be called whenever an instance of the class is inserted, updated, or deleted.<br/>
/// <var>pClassName</var> is the (case-sensitive) class name of the transactional class.<br/>
/// <var>pObjectId</var> is object id of the affected object instance.<br/>
/// <var>pAction</var> is 0 for updates, 1 for inserts, and 2 for deletes.<br/>
/// <var>pInterval</var> is the time interval value corresponding to the DSINTERVAL parameter. If this is not greater than zero then
/// a standard DSTIME index entry is set, otherwise a DSINTERVAL index entry is set.<br>
ClassMethod %SetDSTimeIndex(pClassName As %String, pObjectId As %String, pAction As %Integer, pInterval As %Integer = 0)
{
}

/// Return the URL for the DeepSee management portal error page.
ClassMethod %GetErrorPageURL(pError As %String) As %String
{
}

/// Given a class name, return the set of classes projected for collection properties of the class.
ClassMethod %GetCollectionProjections(pClassname As %String, ByRef pProjectedClass As %String(MAXLEN=255)) As %Status
{
}

/// Add a time interval to a given date (in $H format).<br/>
/// The interval is of the form "99y99m99d" (years, months, and days).
/// There can be a leading minus sign.
ClassMethod %AddTimeInterval(pDate As %Date, pInterval As %String) As %Date
{
}

/// Return number of days in the given year and month.
ClassMethod %DaysInMonth(y, m) As %Integer
{
}

/// Return number of days in the given year and month.
ClassMethod %HijriDaysInMonth(y = "", m = "", calendar = "hijriTabular") As %Integer
{
}

/// Add a time interval to a given date (in $H format).<br/>
/// The interval is of the form "99y99m99d" (years, months, and days).
/// There can be a leading minus sign.
ClassMethod %AddHijriTimeInterval(pDate As %Date, pInterval As %String, pCalendar As %String = "hijriTabular") As %Date
{
}

/// Return whether the given year is a leap year.
ClassMethod %IsLeapYear(y) As %Boolean
{
}

/// Return whether the given year is a leap year.
ClassMethod %IsHijriLeapYear(y, calendar = "hijriTabular") As %Boolean
{
}

/// Format a date value (in $H format) according to the format in <var>pFormat</var>.<br/>
/// The format string can contain:<br/>
/// "y" - Year number (4 digits).<br/>
/// "q" - Quarter number.<br/>
/// "m" - Month number, with no leading zero.<br/>
/// "mm" - Month number, with leading zero.<br/>
/// "mmm" - Short name of month (using server locale).<br/>
/// "mmmm" - Long name of month (using server locale).<br/>
/// "d" - Day number, with no leading zero.<br/>
/// "dd" - Day number, with leading zero.<br/>
/// "ddd" - Short name of day (using server locale).<br/>
/// "dddd" - Long name of day (using server locale).<br/>
/// "\x" - display character "x"<br/>
/// " " - space<br/>
/// "/" - "/" <br/>
/// "-" - "-" <br/>
/// "." - "." <br/>
ClassMethod %FormatDate(pDate As %Date, pFormat As %String = "") As %String
{
}

/// Unformat a date value according to the given format and convert to $H (or "").<br/>
/// See <method>%FormatDate</method> for information on formats.
ClassMethod %UnformatDate(pValue As %String, pFormat As %String = "") As %Date
{
}

/// Format a date value (in partial date ODBC format) according to the format in <var>pFormat</var>.<br/>
/// The format string can contain:<br/>
/// "y" - Year number (4 digits).<br/>
/// "q" - Quarter number.<br/>
/// "m" - Month number, with no leading zero.<br/>
/// "mm" - Month number, with leading zero.<br/>
/// "mmm" - Short name of month (using server locale).<br/>
/// "mmmm" - Long name of month (using server locale).<br/>
/// "d" - Day number, with no leading zero.<br/>
/// "dd" - Day number, with leading zero.<br/>
/// "ddd" - Short name of day (using server locale).<br/>
/// "dddd" - Long name of day (using server locale).<br/>
/// "\x" - display character "x"<br/>
/// " " - space<br/>
/// "/" - "/" <br/>
/// "-" - "-" <br/>
/// "." - "." <br/>
/// Missing pieces are replaced with the localized text "Unknown".
ClassMethod %FormatPartialDate(pDate As %String = "", pFormat As %String = "") As %String
{
}

/// Unformat a date value according to the given format and convert to $H (or "").<br/>
/// See <method>%FormatDate</method> for information on formats.
ClassMethod %UnformatPartialDate(pValue As %String, pFormat As %String = "") As %Date
{
}

/// Method to convert day of week name to a number from 1 to 7 <br>
///   pDayName: full day name (e.g. Monday) or day short name (e.g. Mon)<br>
///   pFullName: If true pDayName is the full day name: if false, pDayName is the short day name<br>
///   pLocale: if not specified, default to current locale.<br>
ClassMethod %DayOfWeekToNumber(pDayName, pFullName As %Boolean = 1, pLocale As %String = "")
{
}

/// Invoke the DeepSee command line shell.
ClassMethod %Shell()
{
}

/// Programmatic API for updating the value of a dimension property after a cube has been built.</br>
/// <example language="cache">
/// Set tSC = ##class(%DeepSee.Utils).%UpdateDimensionProperty(
/// 	"Holefoods","[Outlet].[H1].[Region].&[Asia]","Asia2")
/// </example>
/// It takes the following arguments:<br/>
/// <var>pCubeName</var>-name of the cube.<br/>
/// <var>pSpec</var>-specification of member to update as an MDX expression. This must completely specify a level and a single key value
/// within the level. For example: "[Product].[P1].[Product Category].&[Candy]"<br/>
/// You can set the value of a dimension property by adding Properties(propName) to the end of the spec:
/// "[Outlet].[H1].[City].&[23].Properties(""Population"")"
/// <var>pValue</var>-if defined, this is new NAME value for a dimension member or the value to use for a dimension property.<br/>
/// <var>pKey</var>-if defined, this is new KEY value for a dimension member. Ignored for a dimension property.<br/>
/// There a number of restrictions on this method:<br/>
/// You cannot update a time dimension.<br/>
/// You cannot update a member of relationship.<br/>
/// You cannot update a level property whose isReference is true.<br/>
ClassMethod %UpdateDimensionProperty(pCubeName As %String, pSpec As %String, pValue As %String, pKey As %String) As %Status
{
}

/// Write the cube dependency graph for the given cube.
ClassMethod %WriteDependencyGraph(pCubeName As %String)
{
}

/// Get the cube dependency graph for the given cube:
/// pGraph(cube, dependentCube) = ""
ClassMethod %GetDependencyGraph(ByRef pGraph, pCubeName As %String, pDirection As %String = "", pLevel As %Integer = 0) As %Status
{
}

/// Given a cube and a source property name, return the list of dimension tables
/// that make use of the source property.
ClassMethod %FindDimensionTableForProperty(pCubeName As %String, pSourceProp As %String, Output pList) As %Status [ Internal ]
{
}

/// Return list of standard paper sizes in the form:<br/>
/// pList(n) = $LB(name,size)<br/>
/// Where size is "WxH units", e.g., "8.5x11 in"
ClassMethod %GetPaperSizeList(Output pList) As %Status [ Internal ]
{
}

/// Export a DeepSee query or KPI to the file <var>pFile</var> in CSV format.<br/>
/// <var>pParms</var> controls the content and display of the export.<br/>
/// pParms("TITLE") = title<br/>
/// pParms("SUBTITLE") = subtitle<br/>
/// pParms("SHOWDATE") = "on" (includes current date and time in the export)</br><br>
/// Data export should rely on either a base MDX query or an available KPI.<br>
/// pParms("MDX") = MDX Statement to execute<br/>
/// pParms("KPI") = KPI class name<br/>
/// Exports operating in MDX mode expect filter clauses to be included in the query. When filters are being applied to the KPI class,
/// they may be provided in the array:<br/>
/// pParms("FILTER",<var>filterName</var>) = <var>filterValue</var><br/>
/// Filters can optionally be included as a printed table in the export, provided by the FILTERNAMES and FILTERVALUES parameters:<br/>
/// pParms("FILTERNAMES") = A $C(10)-delimited list of filter names to display<br/>
/// pParms("FILTERVALUES") = A $C(10)-delimited list of filter values to display<br/><br/>
/// Defined listings can be applied to a resultset using:<br/>
/// pParms("LISTINGNAME") = Name of a listing to execute.<br/> A KPI must support use of a named listing or else this will be ignored.
/// An MDX query must be in DRILLTHROUGH mode and the cube must have that listing defined for the listing to be applied.<br/><br/>
ClassMethod %ExportExcelToFile(pFile As %String, ByRef pParms As %String) As %Status
{
}

/// Export a DeepSee query or KPI to the file <var>pFile</var> in CSV format.<br/>
/// <var>pParms</var> controls the content and display of the export.<br/>
/// pParms("TITLE") = title<br/>
/// pParms("SUBTITLE") = subtitle<br/>
/// pParms("SHOWDATE") = "on" (includes current date and time in the export)</br><br>
/// Data export should rely on either a base MDX query or an available KPI.<br>
/// pParms("MDX") = MDX Statement to execute<br/>
/// pParms("KPI") = KPI class name<br/>
/// Exports operating in MDX mode expect filter clauses to be included in the query. When filters are being applied to the KPI class,
/// they may be provided in the array:<br/>
/// pParms("FILTER",<var>filterName</var>) = <var>filterValue</var><br/>
/// Filters can optionally be included as a printed table in the export, provided by the FILTERNAMES and FILTERVALUES parameters:<br/>
/// pParms("FILTERNAMES") = A $C(10)-delimited list of filter names to display<br/>
/// pParms("FILTERVALUES") = A $C(10)-delimited list of filter values to display<br/><br/>
/// Defined listings can be applied to a resultset using:<br/>
/// pParms("LISTINGNAME") = Name of a listing to execute.<br/> A KPI must support use of a named listing or else this will be ignored.
/// An MDX query must be in DRILLTHROUGH mode and the cube must have that listing defined for the listing to be applied.<br/><br/>
ClassMethod %ExportPDFToFile(pFile As %String, ByRef pParms As %String) As %Status
{
}

/// Export a DeepSee query or KPI to the file <var>pFile</var> in CSV format.<br/>
/// <var>pParms</var> controls the content and display of the export.<br/>
/// pParms("TITLE") = title<br/>
/// pParms("SUBTITLE") = subtitle<br/>
/// pParms("SHOWDATE") = "on" (includes current date and time in the export)</br>
/// pParms("SIMPLE") = 1 (exports only the data table without any filter or title information)<br/><br>
/// Data export should rely on either a base MDX query or an available KPI.<br>
/// pParms("MDX") = MDX Statement to execute<br/>
/// pParms("KPI") = KPI class name<br/>
/// Exports operating in MDX mode expect filter clauses to be included in the query. When filters are being applied to the KPI class,
/// they may be provided in the array:<br/>
/// pParms("FILTER",<var>filterName</var>) = <var>filterValue</var><br/>
/// Filters can optionally be included as a printed table in the export, provided by the FILTERNAMES and FILTERVALUES parameters:<br/>
/// pParms("FILTERNAMES") = A $C(10)-delimited list of filter names to display<br/>
/// pParms("FILTERVALUES") = A $C(10)-delimited list of filter values to display<br/><br/>
/// Defined listings can be applied to a resultset using:<br/>
/// pParms("LISTINGNAME") = Name of a listing to execute.<br/> A KPI must support use of a named listing or else this will be ignored.
/// An MDX query must be in DRILLTHROUGH mode and the cube must have that listing defined for the listing to be applied.<br/><br/>
ClassMethod %ExportCSVToFile(pFile As %String = "", ByRef pParms As %String, Output pOutFile) As %Status
{
}

/// Compute the "age" (time difference) between <var>pStart</var> and <var>pEnd</var> as a number
/// of units specified by <var>pUnits</var> ("years","months","days").
ClassMethod %ComputeAge(pStart As %Date, pEnd As %Date, pUnits As %String = "years") As %Integer
{
}

/// Sometimes we need to pass a query (or XML) to another process via a URL.
/// I.E. has trouble with large URL parameters, so the best approach is to store the query
/// text in a global and pass a one-time token (or nonce) as part of the URL.
/// Assumes that the query is encrypted.
/// Returns "ERROR:"_details if there is an error.
ClassMethod %CreateQueryNonce(pText As %String, pMode As %String = "MDX") As %String
{
}

/// Sometimes we need to pass parameters to another process via a URL.
/// I.E. has trouble with large URL parameters, so the best approach is to store the parameter
/// text in a global and pass a one-time token (or nonce) as part of the URL.
/// Assumes that the parm unencrypted.
/// Returns "ERROR:"_details if there is an error.
ClassMethod %CreateParameterNonce(pParm As %String) As %String
{
}

ClassMethod %GetParameterNonce(pNonce As %Integer)
{
}

/// <p>Utility method to retrieve <var>pMaxResults</var> cube members based on a simple search key. By default, this
/// method will return normal cube members only, but a range of flags serve to indicate which type
/// of results to return on top, as long as they match the search key (level names, measure
/// names or computed members).<br/>
/// Members are returned as <pre>pMembers(n) = $lb(<i>Caption</i>, <i>Spec</i>, ["measure"|"level"|"member"])</pre></p>
/// <p>Use <var>pDimList</var> to limit the search scope to those dimensions, hierarchies or levels
/// listed in this comma-separated list of specs.</p>
/// <p>This method does not return "all" levels, nor will it check cube relationships.</p>
ClassMethod %FindCubeMembers(pCube As %String, pSearchKey As %String, Output pMembers, pDimList As %String = "", pIncludeLevelNames As %Boolean = 0, pIncludeMeasures As %Boolean = 0, pIncludeComputed As %Boolean = 0, pMaxResults As %Integer = 10) As %Status
{
}

/// Return resource list containing type=Application only.
ClassMethod GetResourceList() As %String
{
}

/// Given a fact id, see if there are any or groups (1|2|3) that can be compressed
/// into ranges.
ClassMethod %CompressList(pFactId As %String) As %String [ Internal ]
{
}

/// Diagnostic.
ClassMethod %TestForZProcessing(pKill As %Boolean = 0) [ Internal ]
{
}

/// Indicates whether the default application for this namespace will process DeepSee Pages.
ClassMethod %IsDeepSeeEnabled(pNamespace = "") As %Boolean
{
}

/// Test whether pClassName is a DataConnector. This uses a direct global lookup so users do not need to rely
/// on access to %Dictionary tables
ClassMethod %IsDataConnector(pClassName As %String = "", pStatus As %Status) As %Boolean
{
}

/// Method for programmatically creating a pivot table <br>
/// The GetMDXforPivot method returns the MDX query for saved pivot. <br>
/// <br>
/// Arguments:<br>
/// <li>pPivotFullName</li>
/// The name of the pivot including folder name<br>
/// Format: folder/pivot name<br>
/// Example: My Folder/My Pivot<br>
/// <br>
/// <LI>pExecute</LI>
/// Boolean value (optional):<br>
/// 0 - Do not execute the MDX query (Default) <br>
/// 1 - Execute the MDX query<br>
/// <br>
/// <LI>pResultSet</LI>
/// Output argument (optional): <br>
/// Instance of %DeepSee.ResultSet for the MDX query:<br>
/// This can be used to access the query results, meta data, statistics, etc.
/// <br>
/// To get the text of the MDX query, use only the pPivotFullName argument <br>
/// To get the text of the MDX query and run the query, use pPivotFullName and pExecute<br>
/// To get the text of the MDX query, run the query, and get the ResultSet, use pPivotFullName, pExecute and pResultSet<br>
ClassMethod %GetMDXFromPivot(pPivotFullName = "", Output pStatus As %Status, pExecute As %Boolean = 0, ByRef pParms, Output pResultSet As %DeepSee.ResultSet) As %String
{
}

/// Programmatically execute a stored pivot table. The <var>pPivotTableName</var> is the full
/// Folder/SubFolder/Name of the pivot table. Execute parameters may optionally be passed in through
/// the <var>pParms</var> array. If desired, the resultset constructed in the execution procedure can
/// be returned using <var>pResultSet</var>.
ClassMethod %ExecutePivot(pPivotFullName = "", ByRef pParms, Output pResultSet) As %Status
{
}

/// Programmatically create an instance of a <class>%DeepSee.ResultSet</class> from
/// a stored pivot table. The <var>pPivotTableName</var> is the full
/// Folder/SubFolder/Name of the pivot table. By default, the query is only prepared
/// and returned ready for execution. The query can be asynchronously executed as part
/// of the retrieval process by setting <var>pExecute</var>=1. Execute parameters may optionally be passed in through
/// the <var>pParms</var> array.
ClassMethod %GetResultSetFromPivot(pPivotFullName = "", Output pStatus As %Status, pExecute As %Boolean = 0, ByRef pParms, Output pMDX) As %DeepSee.ResultSet
{
}

ClassMethod %GetChildSpec(pItemList As %String, pCubeName As %String, pAxisNo As %Integer = 0, Output pChildSpec As %String = "") As %Status
{
}

/// Convert a node of the graph returned by %GetCubeListArray into a comma-delimited
/// valueList. This may be called on the graph itself.
ClassMethod %ProcessCubeListArrayNode(ByRef pNode, pCurrentString = "", ByRef pValueList = "") As %Status [ Internal ]
{
}

/// Split a single fieldList string into the individual fields.</br>
/// The output <var>pFieldArray</var> returns each SELECT item in</br>
/// pFieldArray(termNumber) = $LB( $LB(fieldIdenitifier,"AS",logicalHeader), $LB(fieldIdenitifier,"AS",displayHeader))</br></br>
/// The <var>pLocalize</var> parameter can be used to request behavior of the $$$TEXT macro in the header portion:</br>
/// 0 - Return the original text value from $$$TEXT</br>
/// 1 - Return the header value localized to the language of the current client</br>
/// When <var>pLocalize</var> is used, a default domain can be provided in <var>pDomain</var>. This domain will be used for translation for each
/// instance of $$$TEXT that does not specify its own domain.
ClassMethod %ParseSQLFieldList(pFieldString = "", pDomain = "", Output pFieldArray, pLocalize As %Boolean = 0) As %Status
{
}

/// Convert a single-subscript array to an $LB format
ClassMethod %ArrayToList(ByRef pParms, Output pParmsList As %List) As %Status
{
}

/// Convert a parameters list in $LB format to an array
ClassMethod %ArrayFromList(pParmsList As %List = {$LB()}, ByRef pParms) As %Status
{
}

/// Test a <var>pFactList</var> to make sure it contains only SQL column identifiers that are actually defined in <var>pCube</var>.
ClassMethod %IsValidFactList(pCube As %String = "", pFactList As %String = "", Output pStatus As %Status, pReason As %String = "") As %Boolean
{
}

/// Take as input a <var>pFactList</var> in either comma-delimited string or $LB format and
/// return a fact list in $LB format with any empty entries removed.
/// If <var>pCubeName</var> is supplied, any supporting fields that are required to produce a successful
/// Selective Build given the cube definition are added to the original list.
ClassMethod %NormalizeFactList(pFactList = "", Output pStatus As %Status, pCubeName = "") As %List
{
}

/// This examines an array of facts for a given cube as provided in <var>pFacts</var>
/// - For levels in a hierarchy all parent levels in that hierarchy will also be included in the list.
/// - For time levels the common reference column in the fact table on which the time functions operate
/// will also be added to the list.
ClassMethod %ReinforceFactList(pCubeIndex = "", ByRef pFacts) As %Status [ Internal ]
{
}

/// Provided a <var>pCubeName</var> and a valid <var>pFactList</var> for that cube, return the list
/// of buildable indices contained in the original fact list. If no fact list is supplied, the method
/// returns a null string.<br>
/// This is best used following normalization of the fact list using <method>%NormalizeFactList</method>
/// method with the cubename suplied.
ClassMethod %FindCubeIndexList(pCubeName = "", Output pStatus As %Status, pFactList = "") As %List [ Internal ]
{
}

/// Take out locks for the specific column identifiers in a <var>pFactList</var> under the synchronze lock. This
/// will prevent a general build or a synchronize but will not prevent selected updates of other
/// columns in the fact table.
ClassMethod %LockFactList(pCubeName As %String, pFactList As %List, ByRef pLocked, pLockTimeout = 1) As %Status
{
}

/// Release the update locks for the selected fact list.
ClassMethod %UnlockFactList(pCubeName As %String, pFactList As %List) As %Status
{
}

/// Mark dimensions as enabled or disabled according to <var>pEnabled</var>. If the fact list is not supplied, mark all as enabled. Otherwise,
/// mark only the dimensions supplied in the fact list.<br>
/// This method can also optionally mark that a dimension is in the process of updating using the <var>pInProgress</var> paraeter.
ClassMethod %MarkFactsEnabled(pCubeName As %String = "", pFactList As %String = "", pEnabled = 1, pInProgress = 0) As %Status
{
}

/// Check to see if a given dimension is currently queryable for a given cube.
ClassMethod %IsFactEnabled(pCubeName As %String = "", pSpec As %String = "", Output pStatus As %Status, Output pFactName As %String, Output pInProgress) As %Boolean
{
}

/// Test the raw string to verify it is a valid cube name. A valid cube name must begin with an
/// alpha-numeric character or an underscore. Remaining characters in the cube name must be alpha-numeric,
/// space, underscore, period, slash, and colons.
ClassMethod %IsValidCubeName(pCubeName As %String = "", Output pReason) As %Boolean
{
}

/// Produce a serialized representation of the cube model suitable for import to an AtScale environment.
/// The JSON output will be saved in the file <var>pFileName</var>.<br>
/// If a calendar has been created to support time dimensions in the AtScale environment, that can be passed in
/// via <var>pCalendar</var> using either table or class reference syntax.
ClassMethod %AtScaleExportCube(pCubeName As %String = "", pFileName As %String = "", pCalendar As %String = "") As %Status
{
}

}
