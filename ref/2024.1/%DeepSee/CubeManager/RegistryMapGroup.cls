/// A node representing the named cube groupings within the registry
Class %DeepSee.CubeManager.RegistryMapGroup Extends (%RegisteredObject, %XML.Adaptor, %JSON.Adaptor)
{

/// Reference to the parent map
Relationship Map As %DeepSee.CubeManager.RegistryMap [ Cardinality = one, Inverse = Groups ];

/// The collection of cubes that are a part of this group
Relationship Cubes As %DeepSee.CubeManager.RegistryMapCube [ Cardinality = many, Inverse = Group ];

/// Display Name for the group.
Property GroupName As %ZEN.Datatype.string;

Property IsRegistered As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// This group is checked for validity and the result is stored in this property.
Property IsValid As %ZEN.Datatype.boolean;

/// GROUP DEFAULT - Plan for how the cube is to be managed by the build/synch tasks.
Property UpdatePlan As %String(DISPLAYLIST = ",Manual,Build Only,Build and Synch,Synch Only", VALUELIST = ",Manual,Build,BuildSynch,Synch") [ InitialExpression = "BuildSynch" ];

/// GROUP DEFAULT - <var>Disabled</var> = 1 will block all automatic updates while leaving the
/// cube visible in the registry.
Property Disabled As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// GROUP DEFAULT - Indicates how often the cube is to be built, in units of
/// <var>BuidTimeUnit</var>
Property BuildFrequency As %Integer [ InitialExpression = 1 ];

/// GROUP DEFAULT - Base unit of time for cube builds.
Property BuildTimeUnit As %String(DISPLAYLIST = ",Day,Week,Month", VALUELIST = ",Day,Week,Month") [ InitialExpression = "Week" ];

/// If week is selected for the BuildTimeUnit, this will allow the user to pick which day
/// of the week the build should take place.
Property BuildDayOfWeek As %String(DISPLAYLIST = ",Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday", VALUELIST = ",1,2,3,4,5,6,7") [ InitialExpression = "1" ];

/// If Month is selected as the BuildTimeUnit, this will allow the user to pick which day
/// of the month this build should take place.
Property BuildDayOfMonth As %Integer(MAXVAL = 31, MINVAL = 1) [ InitialExpression = 1 ];

/// GROUP DEFAULT - Indicates how often the cube is to be synched, in units of
/// <var>SynchTimeUnit</var>
Property SynchFrequency As %Integer [ InitialExpression = 1 ];

/// GROUP DEFAULT - Base unit of time for cube synchs.
Property SynchTimeUnit As %String(DISPLAYLIST = ",Minute,Hour,Day", VALUELIST = ",Minute,Hour,Day") [ InitialExpression = "Day" ];

/// GROUP DEFAULT - Flag which allows the user to select whether the build executes
/// synchronously or asynchronously. Asynchronous build is the default.
Property BuildAsynch As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// This is a flag that can be set in the stored registry to prevent users from being able to adjust the
/// Disabled setting and prevents builds from this item in the registry.
Property UserUpdatesLocked As %ZEN.Datatype.boolean [ Internal ];

/// This callback automatically performs some of the property
/// settings as it is created for the RegistryMap
Method %OnNew(pRegGroupName = "") As %Status
{
}

/// This method walks through all cubes contained in the group and
/// checks to see if it should be updated.
/// Prior to running the synchronize, this method will run the cube's
/// Pre-Synch Code if present.<br>
/// The cube will be built if any of these conditions are met:<br>
/// - The cube has not been built within the scheduled time period<br>
/// - It is the day of the week/month scheduled for the cube build<br>
/// - A cube is dependent on another cube that has been built in this cycle<br><br>
/// - The <var>pUpdateAll</var> flag is set to 1
ClassMethod BuildGroup(pGroupIndex = "", pAsync As %Boolean = 1, pVerbose As %Boolean = 1, pIndexOnly As %Boolean = 0, pMaxFacts As %Integer = 0, pTracking As %Boolean = 0, pUpdateAll = 0, ByRef pBuildStats) As %Status
{
}

/// This method walks through all cubes contained in the group and
/// checks to see if it should be updated.<br>
/// The cube will be synchronized if either of these conditions are met:<br>
/// - the cube has not been synchronized within the scheduled time period<br>
/// - a cube is dependent on another cube that has been synchronized in this cycle<br>
/// - The <var>pUpdateAll</var> flag is set to 1<br>
/// and the Pre-Synchronization Code has not set the $$$AbortSynch token to 1
ClassMethod SynchronizeGroup(pGroupIndex = "", pVerbose As %Boolean = 1, Output pFactsUpdated As %Integer, pUpdateAll = 0, ByRef pSynchronizeStats, pReadCommitted As %Boolean = 1, pCheckReferences As %Boolean = 1, pAsync As %Boolean = 0) As %Status
{
}

ClassMethod CheckGroupLocks(pGroup As %DeepSee.CubeManager.RegistryMapGroup, pLocked As %String = "") As %Status [ Internal ]
{
}

/// Convert this group object to array form. This will match the index arrays returned using the call<br>
/// <method>%DeepSee.CubeManager.Utils.GetCubeGroups</method>(.pGroups,.pCubes,.pBuildOrders)<br>
/// trimmed to the subset of only the cubes in this group
Method ToArray(ByRef pGroup, ByRef pCubes, ByRef pBuildOrders) As %Status
{
}

}
