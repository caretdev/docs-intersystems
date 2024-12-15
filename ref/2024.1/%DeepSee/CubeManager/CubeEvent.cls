/// Records a single history event for a given cube for analysis of cube management.
Class %DeepSee.CubeManager.CubeEvent Extends %Persistent [ System = 4 ]
{

/// The cube that is the subject of this event.
Property CubeKey As %DeepSee.Datatype.entityName [ Required ];

/// The event being recorded.
Property CubeEvent As %DeepSee.Datatype.entityName(DISPLAYLIST = ",PreSynchCode,PostSynchCode,PostBuildCode,Build,Synch,Register,Unregister,Update,Repair", VALUELIST = ",presynch,postsynch,postbuild,build,synch,register,unregister,update,repair");

/// Plan for how the cube is to be managed by the build/synch tasks.
Property UpdatePlan As %DeepSee.Datatype.entityName;

/// Management group the cube belongs to.
Property MgmtGroup As %DeepSee.Datatype.entityName;

/// Name of the user that initiated the event.
Property UserName As %Library.Username;

/// Timestamp recorded prior to event execution
Property StartTime As %TimeStamp;

/// Timestamp recorded at the completion of the cube event.
Property FinishTime As %TimeStamp;

/// Total amount of time this event took;
Property TotalTime As %Numeric;

/// Stores the current cube size of the cube. If the event is constructive
/// (eg Build, Synch), this will be recorded after the event completes. If
/// the event is destructive (eg Unregister) this is recorded prior to execution.
Property CubeSize As %Integer;

/// The number of facts updated in this event. This will only be set in Build or
/// Synch operations. For builds, it is equal to the final cube size.
Property FactsUpdated As %Integer;

/// Records the status message, if it exists, of the event after completion.
Property EventStatus As %Status;

/// Record of whether or not the build was called in asynchronous mode
Property AsynchUpdate As %Boolean;

/// Number of agents active on the system. This is the value returned by
/// <method>##class(%DeepSee.Utils).%GetAgentCount()</method>
Property AgentCount As %Integer;

/// Indicates how often the cube is scheduled to be built, in units of
/// <var>BuidTimeUnit</var>
Property BuildFrequency As %Integer;

/// Base unit of time for cube builds.
Property BuildTimeUnit As %DeepSee.Datatype.entityName;

/// Indicates how often the cube is scheduled to be synched, in units of
/// <var>SynchTimeUnit</var>
Property SynchFrequency As %Integer;

/// Base unit of time for cube synchs.
Property SynchTimeUnit As %DeepSee.Datatype.entityName;

/// Number of CPU cores
Property NCores As %Integer;

/// For builds, the build time spent processing expressions
Property ExprTime As %Numeric;

/// For builds, the build time spent processing iKnow indices
Property iKnowTime As %Numeric;

/// For build and synchronize, the count of errors while processing facts during this update.
Property ErrorCount As %Integer;

/// For build and synchronize, the count of missing relationship references encountered while
/// processing facts.
Property MissingRefs As %Integer;

/// Log if the synchronize was exempt from the dependency and only updated due to schedule.
Property DependencyExempt As %Boolean [ InitialExpression = 0 ];

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(pInsert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

/// Retrieves the current cube management settings from the cube registry
/// and writes them to the event.
Method TransferRegistryInfo(pCube As %String = "", pAction = "", pMapCube As %DeepSee.CubeManager.RegistryMapCube = "", pMapGroup As %DeepSee.CubeManager.RegistryMapGroup = "") As %Status
{
}

}
