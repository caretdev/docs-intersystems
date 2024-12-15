Class %Library.SwizzleObject Extends %RegisteredObject [ Abstract, System = 2 ]
{

/// DEFAULTCONCURRENCY is the default value for the concurrency formal argument
/// defined for %Open, %OpenId, %Delete and %DeleteId methods. It is not the default
/// value of the %Concurrency property of persistent classes. If the value of the actual
/// concurrency argument passed to any of the above methods is -1 then the formal argument value will
/// be set to the value of the DEFAULTCONCURRENCY parameter value defined for the class.
Parameter DEFAULTCONCURRENCY = "$zu(115,10)";

/// If OBJJOURNAL is true then the value of the JOURNALSTREAM parameter defines whether or not
/// streams will be journaled. If JOURNALSTREAM is false (0) then no streams will be journaled.
/// If JOURNALSTREAM is true (1) then streams will be journaled and if Object Synchronization tools
/// are used to produce SyncSets (%SYNC.SyncSet) then journaled streams will be added to the sync set
/// when the referencing object is added.
Parameter JOURNALSTREAM As INTEGER [ Constraint = "0,1", Flags = ENUM ] = 0;

/// if OBJJOURNAL is TRUE then inserts, updates and deletes will be logged in ^OBJ.JournalT
/// if OBJJOURNAL = 2 then the entire object will also be journaled in ^OBJ.Journal
Parameter OBJJOURNAL As INTEGER [ Constraint = "0,1,2", Flags = ENUM ] = 0;

/// Deletes the stored version of the object with OID <var>oid</var> from the database.
/// It does not remove any in-memory versions of the object that may be present.
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the optional <var>concurrency</var> argument. If no value for the <var>concurrency</var>
/// argument is passed or the value passed is -1 then it will be assigned the value of the
/// DEFAULTCONCURRENCY parameter as defined for the class.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
///
/// <p>Internally, <METHOD>%Delete</METHOD> initiates a transaction and then invokes the storage
/// interface method <METHOD>%DeleteData</METHOD>. If <METHOD>%DeleteData</METHOD> succeeds, the
/// transaction is committed, otherwise it is rolled back.
ClassMethod %Delete(oid As %ObjectIdentity = "", concurrency As %Integer = -1) As %Status [ ServerOnly = 1 ]
{
}

/// Deletes the stored version of the object with ID <var>id</var> from the database.
///
/// <p><METHOD>%DeleteId</METHOD> is identical in operation to the <METHOD>%Delete</METHOD> method except
/// that it uses and Id value instead of an OID value to find an object.
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the optional <var>concurrency</var> argument. If no value for the <var>concurrency</var>
/// argument is passed or the value passed is -1 then it will be assigned the value of the
/// DEFAULTCONCURRENCY parameter as defined for the class.
ClassMethod %DeleteId(id As %String, concurrency As %Integer = -1) As %Status [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// %AddToSyncSet() adds an object to a sync set.
ClassMethod %AddToSyncSet(objSS As %SYNC.SyncSet, oref As %ObjectHandle = "", fileop As %Integer = 0, oid As %ObjectIdentity = "", changed As %List = "", guid As %String = "", originSystem As %String = "", originNS As %String = "") As %Integer [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// %IsNull() returns true if the current object is NULL. A NULL object is one whose serialized value is NULL. This instance method
/// predicts whether or not the serialization of the current object will be NULL and returns TRUE (1) if the serialization will be null.
/// Persistent objects can not ever be NULL since at least the %ID is not null. Streams can return a non-NULL serialization but the stream
/// is determined to be NULL if it has not ever been written to. This method is expected to be overridden by more specific subclasses.
Method %IsNull() As %Boolean [ CodeMode = expression ]
{
}

/// Return true if pOID is a null object and false if the object is not null
ClassMethod %ObjectIsNull(pOID As %ObjectIdentity) As %Boolean
{
}

/// %JournalObject constructs a list of properties whose values have changed and records that list in the object journal. No list
/// is constructed if the filing operation is 2 (DELETE). This method also journals the current property values to the object journal global
/// if OBJJOURNAL is 2. This setting is useful for SQL mapped classes or classes using %CustomStorage as it isn't easy to extract the data
/// from the system journal for such classes. This method will invoke %OnJournalObject if it is implemented.
///
/// Users should not call this method directly as it is expected to be called by the Object and SQL filers.
Method %JournalObject(tranid As %Integer = 0, jrnid As %Integer = 0, fileop As %Integer = 0, sqlcontext As %Integer = 0, sqlmod As %String = "") As %Integer [ CodeMode = generator, GenerateAfter = %OnJournalObject, Internal, ServerOnly = 1 ]
{
}

/// This method should be implemented by the user. This method is invoked by %SYNC.SyncSet.Import when the object being imported
/// has been modified on the local system since the last time it was synchronized with the system which produced the SyncSet.
/// Passed to this method are the oid of the conflicting object, and oref to the SyncSet containing the version to sync to, and the pointer
/// to this object in the SyncSet. It is the responsibility of this method to either resolve the conflict and process the resolved object or
/// to return a failure status to the caller. The resolved object can be processed by saving, invoking the %SyncObjectIn method or by whatever
/// means the class author deems appropriate. If a failure status is returned to %SYNC.SyncSet.Import then the object will be requeued in the SyncSet.
/// That might result in another call at a later time to this method.
///
ClassMethod %ResolveConcurrencyConflict(oid As %ObjectIdentity, objSS As %SYNC.SyncSet, iPtr As %Integer, ByRef bAcceptYours As %Boolean = 0) As %Status [ ServerOnly = 1 ]
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
ClassMethod %SyncObjectIn(objSS As %SYNC.SyncSet, iPtr As %Integer, ByRef oref As %ObjectHandle, fileop As %Integer = 0) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// %SyncTransport uses a JITGenerated routine to extract an object from the transporter into the current database.
Method %SyncTransport(pOID As %Library.ObjectIdentity, pTransporterRtn As %Library.RawString = "", pTransportGlobal As %Library.RawString = "", pTransportPtr As %Library.Integer = 0, pTransporter As %SYNC.Transporter = "", ByRef pUnresolved As %Library.RawString = "") As %Status [ ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%JournalObject</METHOD> method to
/// construct the %%FILTER value. %%FILTER is placed in the journal, exported with
/// a SyncSet and is made available when importing the SyncSet.
///
Method %OnJournalObject(tranid As %Integer, jrnid As %Integer, ByRef filter As %String) As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// Should be overridden in classes using filtering for synchronization
ClassMethod %OnBeforeAddToSync(guid As %String, filterObject As %ObjectHandle, filingType As %Integer, filter As %String(MAXLEN=32000)) As %Boolean [ ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Open</METHOD> method to
/// determine the classname of the object specified by <VAR>oid</VAR>.
ClassMethod %OnDetermineClass(oid As %ObjectIdentity, ByRef class As %String) As %Status [ Abstract, ServerOnly = 1 ]
{
}

}
