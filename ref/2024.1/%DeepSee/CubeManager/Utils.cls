/// Utility container for the cube manager
Class %DeepSee.CubeManager.Utils Extends %RegisteredObject [ System = 4 ]
{

Parameter DOMAIN = "%DeepSee";

/// A wrapper for <method>%DeepSee.Utils.%BuildCube</method> which records
/// cube event information when building the cube. All arguments listed after
/// <var>pCubeName</var> perfrom the identical function as they do in
/// <method>%BuildCube</method>, with the exception of <var>pRepair</var>. This argument
/// changes the event type in the logs to note that this cube was rebuilt as part of a
/// repair build.
ClassMethod BuildCube(pCubeName As %String = "", pAsync As %Boolean = 1, pVerbose As %Boolean = 1, pIndexOnly As %Boolean = 0, pMaxFacts As %Integer = 0, pTracking As %Boolean = 0, pRepair As %Boolean = 0, pMapCube As %DeepSee.CubeManager.RegistryMapCube = "", ByRef pBuildStats, pFactList As %String = "") As %Status
{
}

/// This method provides a means of doing an unscheduled repair build
/// of a registered cube. This method will build the target cube, and then
/// trigger a build of the entire list of cubes that depend on it through
/// cube relationships.<br>
/// Build statistics for each cube in the registry can be returned by reference in <var>pBuildStats(CUBENAME)</var>.
ClassMethod RepairBuild(pCubeName As %String, pMap As %DeepSee.CubeManager.RegistryMap = "", pAsync As %Boolean = 1, pVerbose As %Boolean = 1, pIndexOnly As %Boolean = 0, pMaxFacts As %Integer = 0, pTracking As %Boolean = 0, ByRef pBuildStats, pFactList As %String = "") As %Status
{
}

/// This is a utility method which executes a complete build of all currently registered cubes in the current cube registry.
/// The build initiated by this utility will walk through every cube and build it in the order it is listed in
/// the DeepSee Cube Registry page. This can be used to initialize the system, for example after
/// importing a new registry definition or restoring a backup of the source data.<br>
/// Build statistics for each cube in the registry can be returned by reference in <var>pBuildStats(CUBENAME)</var>.
ClassMethod BuildAllRegisteredGroups(pMap As %DeepSee.CubeManager.RegistryMap = "", ByRef pBuildStats, pVerbose As %Boolean = 1) As %Status
{
}

/// This is a utility method which executes a complete build of one registered cube group in the current cube registry.
/// The build initiated by this utility will walk through every cube and build it in the order it is listed in
/// the DeepSee Cube Registry page.<br><br>
/// The value of <var>pGroupName</var> must exactly match the case of the registered group name to inititate the
/// group build.<br>
/// Build statistics for each cube in the group can be returned by reference in <var>pBuildStats(CUBENAME)</var>.
ClassMethod BuildOneRegisteredGroup(pGroupName = "", pMap As %DeepSee.CubeManager.RegistryMap = "", ByRef pBuildStats, pVerbose As %Boolean = 1) As %Status
{
}

/// Method to execute and log custom user code stored with a cube.
ClassMethod ExecuteCustomCode(pCustomCode As %String = "", pCubeKey As %String = "", pEventType As %String = "", ByRef pAbortSynch) As %Status [ Internal ]
{
}

/// A wrapper for <method>%DeepSee.Utils.%SynchronizeCube</method> which records
/// cube event information when building the cube. This method will quit with an error if<br>
/// - <var>pCubeName</var> refers to an unregistered cube<br>
/// - <var>pCubeName</var> is marked as disabled in the registry
ClassMethod SynchronizeCube(pCubeName As %String = "", pVerbose As %Boolean = 1, Output pFactsUpdated As %Integer, pReadCommitted As %Boolean = 1, pCheckReferences As %Boolean = 1, pAsync As %Boolean = 0, pMapCube As %DeepSee.CubeManager.RegistryMapCube = "", ByRef pSynchronizeStats) As %Status
{
}

/// Used to enter cube information into the Cube Registry Table. This will return an error
/// if <var>pCubeName</var> refers to a subject area or is undefined. The method
/// automatically determines whether to update or create a new entry in the registry
/// based on the existence of <var>pCubeName</var>.
/// <br><br>This can be called from the command line or from UI server
/// processes.
ClassMethod RegisterCube(pCube As %DeepSee.CubeManager.RegistryMapCube = "", pGroup As %DeepSee.CubeManager.RegistryMapGroup = "") As %Status [ Internal ]
{
}

/// Retrieves the timestamp of the the last registered data update for the cube. Updates
/// performed outside of the Cube Manager will not be recognized in this check.
ClassMethod GetLastUpdate(pCubeKey, pUpdateType = "synch") As %String
{
}

/// Utility method used to determine whether this cube needs to be processed
/// when we write to the registry. Cubes that have not been updated don't
/// get processed because we don't want to generate a cube history event
/// unnecessarily.
ClassMethod IsUpdate(pCube As %DeepSee.CubeManager.RegistryMapCube, pGroupName As %String) As %Boolean
{
}

/// DEPRECATED - We do not need the group table within the XML storage scheme.
/// Records a group's default build information to the group table.
ClassMethod RegisterGroup(pGroup As %DeepSee.CubeManager.RegistryMapGroup) As %Status [ Internal ]
{
}

/// This does the actual work of removing a cube from the SQL registry table, and records the event.
ClassMethod UnregisterCube(pCubeName As %String = "", pMapCube As %DeepSee.CubeManager.RegistryMapCube = "") As %Status [ Internal ]
{
}

/// Deletes a whole group from the SQL registry table.
ClassMethod UnregisterGroup(pGroupName As %String = "", pMapGroup As %DeepSee.CubeManager.RegistryMapGroup = "") As %Status [ Internal ]
{
}

/// Retrieve the name of the Cube Registry currently marked Active
ClassMethod GetActiveRegistry() As %String
{
}

/// Change which Cube Registry is currently active. The Active Registry is the
/// only one that is visible to the updater tasks.
ClassMethod SetActiveRegistry(pClassName = "DeepSee.CubeManager.CubeRegistryDefinition", pMustExist = 1) As %Status
{
}

/// Retrieve the map that describes the current state of the Cube
/// Registry and all other unregistered cubes on the system. By default, the
/// currently active registry is loaded first and then this is augmented with
/// the remaining unregistered natural cube groups. The registry object can be loaded
/// from a non-active registry class by supplying the name of the alternate storage class
/// in the <var>pClassName</var> parameter. The unregistered groups may be ignored when
/// loading the class by setting<br>
/// <var>pRegisteredOnly</var> = 1<br><br>
/// Optionally <var>pLookup</var> may be constructed to provide an index of the ordered locations
/// of every cube loaded into the map object. This takes the form<br>
/// 	pLookup(<var>CubeKey</var>) = $LB(<var>GroupPosition</var>,<var>CubePosition</var>)<br>
/// <example>
/// Set CubeName = "HOLEFOODS"
/// Set Map = ##class(%DeepSee.CubeManager.Utils).BuildRegistryMap(,,,.Lookup)
/// Set GroupIdx = $LG(Lookup("cubes",CubeName),1)
/// Set CubeIdx = $LG(Lookup("cubes",CubeName),2)
/// Set Cube = Map.Groups.GetAt(GroupIdx).Cubes.GetAt(CubeIdx)
/// </example>
ClassMethod BuildRegistryMap(ByRef pStatus, pClassName = "", pRegisteredOnly = 0, ByRef pLookup) As %DeepSee.CubeManager.RegistryMap
{
}

/// Walk through a CubeManager.RegistryMap object and register the cubes. This saves the
/// complete registry to an XData block in a container class, and saves limited information
/// to the registry table for SQL reference.
ClassMethod WriteToRegistry(ByRef pCubeMap As %DeepSee.CubeManager.RegistryMap, ByRef pValidation) As %Status
{
}

/// Schedule the build and synch tasks according to the settings in a CubeManager.RegistryMap object.
/// A return status of $$$OK indicates that every attempt to create or modify a build/synch task was successful. If the
/// scheduling encounters an error, the error will be logged to the DeepSee logs and returned in the
/// <var>pTaskInfo</var> object in the properties <br>
/// - pTaskInfo.ScheduleBuildSC<br>
/// - pTaskInfo.ScheduleSynchSC
ClassMethod ScheduleUpdaterTasks(pCubeMap As %DeepSee.CubeManager.RegistryMap = "", Output pTaskInfo As %DynamicObject = "") As %Status [ Internal ]
{
}

/// Convenience method -- takes the number of seconds between synchs
/// and sets the parameters for the call to ##class(%DeepSee.CubeManager.Task.Synch).Schedule
ClassMethod GetSynchScheduleParameters(pScheduleSynchInterval As %String = 0, Output pDailyFrequency, Output pDailyFrequencyTime, Output pDailyIncrement, Output pDailyStartTime) [ Internal ]
{
}

/// - DEPRECATED -<br>
/// <method>%DeepSee.Utils.%GetCubeFactCount</method> should be used instead.
ClassMethod GetCubeSize(pCubeKey) As %Integer [ Internal ]
{
}

/// - DEPRECATED -<br>
/// Resets the entire cube registry table.
ClassMethod UnregisterAll() As %Status [ Internal ]
{
}

/// Retrieves a group by name from the Cube Registry.
ClassMethod GetCubeGroup(pGroupName As %String, pMap As %DeepSee.CubeManager.RegistryMap = "", Output pStatus) As %DeepSee.CubeManager.RegistryMapGroup [ Internal ]
{
}

/// Merge two array-based cube groups together into a single group. This will automatically determine
/// an acceptable build order for the resulting group and return this in the <var>pMergeGroup</var>
/// array.<br><br>
/// If <var>pMergedGroupName</var> is supplied, this will be the new group name. If this argument
/// is "", the group will inherit the name stored in the array <var>pGroup1</var>.
ClassMethod MergeCubeGroups(ByRef pGroup1, ByRef pGroup2, ByRef pMergeGroup, pMergedGroupName = "") As %Status [ Internal ]
{
}

/// Boolean test which returns 1 if the group supplied as the argument is no
/// less than the union of the natural groups of each of its members. If this
/// test returns 0, the specific reason for the failure will be recorded in
/// <var>pStatus</var>.
ClassMethod IsValidGroup(ByRef pGroup As %DeepSee.CubeManager.RegistryMapGroup, ByRef pStatus As %Status, ByRef pGroups, ByRef pCubes, ByRef pBuildOrders) As %Boolean
{
}

/// Validation for the current cube settings.
ClassMethod IsValidCubeSchedule(pCube As %DeepSee.CubeManager.RegistryMapCube, Output pStatus) As %Boolean
{
}

/// Calculates the natural groups for all cubes on the system. Group information is
/// returned in array form. These arrays are organized as follows: <br><br>
/// <var>pGroups</var>(groupName,cubeKey) = buildOrder<br>
/// <var>pCubes</var>(cubeKey) = groupName<br>
/// <var>pBuildOrders</var>(groupName,buildPosition) = cubeKey<br><br>
/// If the cube has dependencies, there will be an additional array<br><br>
/// <var>pCubes</var>(cubeKey,"dependents")<br><br>
/// which will list the cubes that must be updated if this one has been updated.
ClassMethod GetCubeGroups(ByRef pGroups, ByRef pCubes, ByRef pBuildOrders, pReg = 0) As %Status
{
}

/// Automatically assign groups based on cube relationships. All cubes which
/// are independent of each other will be assigned to their own group.
ClassMethod FindCubeGroups(ByRef pGroups, ByRef pCubes) As %Status [ Internal ]
{
}

/// Pass in an array of group members, as found by <method>GetCubeGroups</method>,
/// and determine an acceptable build order. The order is returned as an integer
/// stored in each node of the group:<br>
/// <var>pGroups</var>(<var>group #</var>,<var>Cube</var>) = <var>Build order</var>
/// <br><br>
ClassMethod FindGroupBuildOrders(ByRef pGroups, ByRef pBuildOrders) As %Status [ Internal ]
{
}

/// This method accumulates the complete list of cubes dependent on this target
/// cube, based on defined relationships. Every cube in <var>pDependentCubes</var> must be
/// built following a build of <var>pCubeName</var>. This is an alphabetical
/// list, it is not a build order.<br>
/// The registry map can optionally be passed in as <var>pMap</var> to take
/// advantage of the relationship information already stored in the cube
/// registry, avoiding the recalcualtion of natural groups on the system.
ClassMethod GetDependentCubes(pCubeName = "", pMap As %DeepSee.CubeManager.RegistryMap = "", Output pDependentCubes, ByRef pGroups, ByRef pCubes, ByRef pBuildOrders) As %Status
{
}

/// This is an internal method to keep the SQL references current with the
/// RegistryMap object representation. This does the actual work of marking
/// the cube referenced by <var>pCubeName</var> as disabled in the Registry table.
ClassMethod DisableCube(pCubeName) As %Status [ Internal ]
{
}

/// This is an internal method to keep the SQL references current with the
/// RegistryMap object representation. This does the actual work of marking
/// the cube referenced by <var>pCubeName</var> as enabled in the Registry table.
ClassMethod EnableCube(pCubeName As %String) As %Status [ Internal ]
{
}

/// Compile a reference index to look up DeepSee folder items that depend on
/// cubes and data sources. Each branch of the return array
/// <br> <var>pCubeIdx(cube)</var> <br> holds all folder items that <b>might</b>
/// be dependent upon this cube. Before cube removal, all items in this branch
/// of the tree should be checked for dependency beginning at the leaf nodes.
/// <br><br>
/// A similar strategy should be used when removiung a data source, ie a pivot or a KPI.
/// In this case, the <var>pSourceIdx</var> should be used, as it sorts information
/// according to the data source.
/// <br><br>
/// it is not trivial to tell if you are actually USING the relationships when
/// they are defined so the assumption is made that all folderitems pointing to
/// one are using dimensions from the others in a relationship network.
///
///
ClassMethod GetDSItemItinerary(ByRef byCube, ByRef bySource) As %Status [ Internal ]
{
}

/// Set the flag which unlocks the ability to choose independent synchronization in the Cube Registry page.
/// Independent synchronization allows for the group synchronization to skip the triggered update due to relationship
/// dependency and trigger the update only due to scheduling.
ClassMethod SetIndependentGroupSync(pIndependent = 0) As %Status [ Internal ]
{
}

/// Get the flag which unlocks the ability to choose independent synchronization in the Cube Registry page.
ClassMethod GetIndependentGroupSync() As %Boolean [ Internal ]
{
}

}
