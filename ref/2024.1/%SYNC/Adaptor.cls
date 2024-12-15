/// Subclasses of %SYNC.Adaptor are enabled for Object Synchronization and
/// may be used when creating sync sets for the purpose of synchronizing object
/// data with other systems.<br>
///
/// Classes that extend %Library.SwizzleObject can also be enabled for synchronization
/// simply by defining OBJJOURNAL as 1. There is no need to use %SYNC.Adaptor unless<br>
/// additional features are needed such as the ability to suppress some properties from
/// being synchronized. One reason to suppress a property (SYNCIGNORE=1) would be if the
/// property values are not relevant or perhaps not even valid on other systems.
Class %SYNC.Adaptor [ Abstract, PropertyClass = %SYNC.PropertyParameters, System = 2 ]
{

/// If OBJJOURNAL is true then the value of the JOURNALSTREAM parameter defines whether or not
/// streams will be journaled. If JOURNALSTREAM is false (0) then no streams will be journaled.
/// If JOURNALSTREAM is true (1) then streams will be journaled and if Object Synchronization tools
/// are used to produce SyncSets (%SYNC.SyncSet) then journaled streams will be added to the sync set
/// when the referencing object is added.
Parameter JOURNALSTREAM As INTEGER [ Constraint = "0,1", Flags = ENUM ] = 0;

/// %AddToSyncSet() adds an object to a sync set.
ClassMethod %AddToSyncSet(objSS As %SYNC.SyncSet, oref As %ObjectHandle = "", fileop As %Integer = 0, oid As %ObjectIdentity = "", changed As %List = "", guid As %String = "", originSystem As %String = "", originNS As %String = "") As %Integer [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// <p>This method synchronizes an entry from a %SYNC.SyncSet with the local database. The method is generated and should not be overridden by
/// the user and there are no callbacks from this method. The return value of this method is a %Status value that indicates success or failure. Inputs to this
/// method include an oref to a %SYNC.SyncSet object, a pointer to the entry in the SyncSet and the type of modification represented by the SyncSet entry.
/// Modifications are of three types - insert a new object, update to an existing object, and delete an existing object. A parameter
/// passed by reference allows the caller to receive an oref to the affected object in the local database.
/// </p>
/// <br>
/// <p>
/// An entry in a SyncSet corresponds to one object in the local database. It contains values for properties of the object and represents some modification to an object
/// made in another database called the 'source' database. To synchronize the modifications made to the object in the source database it is necessary to repeat those
/// modifications in the local database. The first task is to resolve the GUID that identifies the modified object with the local database. If the object exists in the
/// local database and the type of modification, <var>fileop</var>, is a delete then the object is deleted from the local database and the status is returned to the caller.
/// If the object does not exists in the local database and the modification is a delete then nothing is done and a success status is returned to the caller. For other modification
/// types, inserts and updates, the object is opened if it exists or a new object created if it does not exist. It is to this object that modifications contained in the
/// SyncSet are applied by copying each value from the SyncSet entry to the corresponding property. Property values are either literals or objects. If the value is a literal
/// it is simply copied into the object. If the property is an object then the value is either a GUID or a link to an object that exists in the SyncSet. Object links are
/// used to resolve references to other object values that have not yet been synchronized to the local database. If the value is a GUID then the value is resolved by
/// resolving the GUID to an OID using the local database's GUID tables. If the GUID cannot be resolved then a new SyncSet entry is added to the end of the SyncSet and
/// the pointer to that SyncSet entry is used to link the current SyncSet entry to the newly created SyncSet entry. If the property whose value cannot be resolved is a
/// required property then the new SyncSet entry is a complete copy of the current entry, otherwise it is simply a partial entry containing the unresolvable values.
/// For serial objects, there is no 'partial' sync so any failure to resolve a GUID or linked object must be treated the same as a required property.
/// </p>
/// <p>
/// Once all values from the SyncSet entry have been processed by either synchronizing them with the local object or deferring resolution through link creation an oref
/// to the local object is returned to the caller. If the local object is an instance of a %Persistent class then it is also saved. Any failure reported by %Save is
/// reported to the caller.
/// </p>
ClassMethod %SyncObjectIn(objSS As %SYNC.SyncSet, iPtr As %Integer, ByRef oref As %ObjectHandle, fileop As %Integer = 0) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

}
