/// This class is responsible for exposing the functionality of %DeepSee.CubeManager.Utils via REST APIs
Class %DeepSee.REST.v2.CommandServer Extends %DeepSee.REST.REST
{

XData UrlMap
{
}

ClassMethod %ValidateRequest(pUrl As %String, pMethod As %String) As %Status
{
}

/// A wrapper for <method>%DeepSee.Utils.%BuildCube</method> which records
/// cube event information when building the cube.
/// Required Properties: cubeName
/// Optional Properties: async, indexOnly, maxFacts, tracking, mapCube, buildStats, factList
ClassMethod BuildCube(namespace As %String) As %Status
{
}

/// This method provides a means of doing an unscheduled repair build of a registered cube.
/// Required Properties: cubeName
/// Optional Properties: map, async, indexOnly, maxFacts, tracking, buildStats, factList
ClassMethod RepairBuild(namespace As %String) As %Status
{
}

/// This is a utility method which executes a complete build of all currently registered cubes in the current cube registry.
/// Required Properties: None
/// Optional Properties: map, buildStats
ClassMethod BuildAllRegisteredGroups(namespace As %String) As %Status
{
}

/// This is a utility method which executes a complete build of one registered cube group in the current cube registry.
/// Required Properties: None
/// Optional Properties: groupName, map, buildStats
ClassMethod BuildOneRegisteredGroup(namespace As %String) As %Status
{
}

/// A wrapper for <method>%DeepSee.Utils.%SynchronizeCube</method> which records
/// cube event information when building the cube.
/// Required Properties: None
/// Optional Properties: cubeName, readCommitted, checkReferences, async, mapCube, synchronizeStats
ClassMethod SynchronizeCube(namespace As %String) As %Status
{
}

/// Retrieves the timestamp of the the last registered data update for the cube. Updates
/// performed outside of the Cube Manager will not be recognized in this check.
/// Required Properties: cubeKey
/// Optional Properties: updateType
ClassMethod GetLastUpdate(namespace As %String) As %Status
{
}

/// Retrieve the name of the Cube Registry currently marked Active
/// Required Properties: None
/// Optional Properties: None
ClassMethod GetActiveRegistry(namespace As %String) As %Status
{
}

/// Change which Cube Registry is currently active. The Active Registry is the
/// only one that is visible to the updater tasks.
/// Required Properties: None
/// Optional Properties: className, mustExist
ClassMethod SetActiveRegistry(namespace As %String) As %Status
{
}

/// Retrieve the map that describes the current state of the Cube Registry and all other unregistered cubes on the system.
/// Required Properties: None
/// Optional Properties: className, registeredOnly
/// For the lookup variable in the output JSON, for each array in the "cubes" object, the first value corresponds to that
/// the GroupIdx value and the second the CubeIdx value for that cube. The Cube can then be retrieved as follows:
/// Set Cube = Map.Groups.GetAt(GroupIdx).Cubes.GetAt(CubeIdx)
ClassMethod BuildRegistryMap(namespace As %String) As %Status
{
}

/// Walk through a CubeManager.RegistryMap object and register the cubes.
/// Required Properties: cubeMap
/// Optional Properties: None
ClassMethod WriteToRegistry(namespace As %String)
{
}

/// Schedule the build and synch tasks according to the settings in a CubeManager.RegistryMap object.
/// Required properties: None
/// Optional properties: cubeMap
ClassMethod ScheduleUpdaterTasks(namespace As %String) As %Status
{
}

/// Convenience method -- takes the number of seconds between synchs
/// and sets the parameters for the call to %SYS.Task.DeepSeeSynchronize:Schedule()
/// Required Properties: None
/// Optional Properties: scheduleSynchInterval, dailyFrequency, dailyFrequencyTime, dailyIncrement, dailyStartTime
ClassMethod GetSynchScheduleParameters(namespace As %String) As %Status
{
}

/// Given the logical name, <var>pCubeName</var> of a DeepSee cube,
/// return the number of rows within its fact table.
/// Required Properties: None
/// Optional Properties: cubeKey
ClassMethod GetCubeSize(namespace As %String) As %Status
{
}

/// Boolean test which returns 1 if the group supplied as the argument is no
/// less than the union of the natural groups of each of its members.
/// Required Properties: group
/// Optional Properties: groups, cubes, buildOrders
ClassMethod IsValidGroup(namespace As %String) As %Status
{
}

/// Validation for the current cube settings.
/// Required Properties: cube
/// Optional Properties: None
ClassMethod IsValidCubeSchedule(namespace As %String) As %Status
{
}

/// This method is very specific to the APIs currently written in %DeepSee.REST.v2.CommandServer and is designed to be a utility function only for that class
/// <var>answer</var> is a dynamic abstract object, <var>errorExists</var> is a 0 or 1 indicating if an error has occured or not. If <var>errorExists</var> is 1,
/// <var>tSC</var> is the status variable to be returned from the methodthat is invoking this method
/// <var>listOfStatusVarWithError</var> is a list of integers used for methods like /Command/RepairBuild and /Command/BuildAllRegisteredGroups where the variable containing the
/// status (such as buildStats for these 2 APIs) has 2 indices and the <var>answer</var> needs to indicate which buildstat contains the error
ClassMethod %SetAnswerStatus(ByRef answer, errorExists As %Integer, tSC As %Status, statusVarName As %String, listOfStatusVarWithError = "") As %Status
{
}

/// A special case of %DeepSee.REST.REST.%Array2JSON used to modify the <var>lookup</var>
/// variable returned by %DeepSee.REST.v2.CommandServer.%BuildRegistryMap
ClassMethod %lookup2JSON(ByRef array)
{
}

}
