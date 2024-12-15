/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25SYNC.SyncSet">Using Object Synchronization</a>.</p>
/// ObjectScript provides a toolkit for synchronizing objects of selected types between namespaces
/// containing compatible type classes. The core of the synchronization toolkit is the SyncSet. A
/// SyncSet contains all the objects of selected types that have been filed in the local database
/// from a defined starting time up to an ending time. "Time" in the context of synchronization means
/// a sequencing value and is not an "hours-minutes-seconds" value.
/// Object Synchronization consists of three primary tasks. The first task is to build the SyncSet.
/// That task involves determining which objects are to included in the SyncSet. %SYNC uses a transaction
/// journal for that purpose. The transaction journal is implemented as %Library.ObjectJournalTransaction.
/// Any persistent or serial class that declares the class parameter OBJJOURNAL as true will record all
/// filing events in %Library.ObjectJournalTransaction.
/// The second task is to add changed objects to the SyncSet. The most common mechanism for performing this
/// task is to retrieve the object state from the system journal using information recorded in %Library.ObjectJournalTransaction.
/// This mechanism allows historical object data to be included in the SyncSet. If the system journal is
/// not available, there is a provision to include the current object state.
/// The third task is to import the SyncSet into the namespace being synchronized. This involves loading the
/// SyncSet global into the target namespace and then importing each object contained in the SyncSet. If an object
/// being imported already exists in the target namespace then the timestamp for the imported object
/// is compared to the timestamp of the existing object. If a conflict is detected then user implemented code
/// is called to resolve the conflict. This is essentially an optimistic concurrency mechanism. If the conflict
/// is not resolved successfully then a concurrency error is reported and the object is not synchronized.
Class %SYNC.SyncSet Extends %RegisteredObject [ System = 3 ]
{

Property LastTransaction As %Integer [ Private ];

Property FirstTransaction As %Integer [ Private ];

Method GetLastTransaction() As %Integer
{
}

Method GetFirstTransaction() As %Integer
{
}

Property Exclude As %String [ Private ];

/// Unresolved is set to point to the first unresolved object in the sync set once
/// Import() has completed. If there are no unresolved objects then this value will be
/// empty (not > 0).
Property Unresolved As %Integer;

/// <b>Sync Set ID</b><br>
/// <p>
/// This is a string value used to identify the Sync Set object. This value is used as the suffix
/// to the global name root of <var>^OBJ.SYNC.</var>. For example, if the <property>sId</property> is
/// set to the integer 1 then the global name will be <var>^OBJ.SYNC.1</var>.
/// </p>
Property sId As %String;

Property FilterObject As %RegisteredObject;

Property ResolveConflictEnv As %RegisteredObject;

/// This is the sysID of the system that produced the SyncSet
Property SyncSystem As %String;

/// Return the pointer to the first unresolved object in the sync set.
/// This is only valid if Import() has been run to completion before calling
/// this method.
Method UnresolvedFirst() As %SYNC.SyncSetObject
{
}

/// Return the pointer to the last unresolved object in the sync set.
/// This is only valid if Import() has been run to completion before calling
/// this method.
Method GetLatestUnresolved() As %ArrayOfObjects
{
}

/// Return the pointer to the next unresolved object.
/// This is only valid if Import() has been run to completion before calling
/// this method and ..UnresolvedFirst() has been called to initialize the unresolved object
/// iterator.
Method UnresolvedNext() As %SYNC.SyncSetObject
{
}

/// <p>
/// This method synchronizes each object contained in the sync set with the current database. Each object is first checked for concurrency.
/// Concurrency conflicts occur when the object is modified on the local system after the object was last synchronized with the remote system
/// where the sync set originated. If a concurrency conflict is detected, the object is passed to the <var>%ResolveConcurrencyConflict</var>
/// method in <class>%Library.SwizzleObject</class>. If the conflict cannot be resolved, the object is requeued for later
/// processing and the concurrency error is reported in the %%SERR error log. Otherwise, the object is synchronized by passing it to the
/// <var>%SyncObjectIn</var> method in <class>%Library.SwizzleObject.</class>. If the synchronization fails, then the object is requeued for
/// later processing.</p>
/// <br>
/// <p>There are two types of common synchronization errors. The first is an unresolved dependency. This type of error occurs when an object
/// references another object and the referencing property is part of a REQUIRED constraint. That means the object cannot be saved
/// until the reference can be resolved. This problem is often caused by a reference to an object that is in the sync set but has not yet been processed. The second
/// type of problem is an unresolved reference. This type of problem occurs in the same was as an unresolved dependency but the reference is not required in order
/// for the object to be saved. An object with an unresolved reference is partially synchronized and only the reference is requeued for later processing.</p>
/// <br>
/// <p>Once all of the objects in the sync set have been processed, the Import method attempts to synchronize all objects that were requeued. During this phase,
/// all of the unresolved dependencies and references are expected to be resolved. Any objects that fail to synchronize during this phase are left in an
/// unresolved state. Unresolved objects and errors reported during synchronization can be accessed by using the <query>Unresolved</query> query
/// or the <query>Errors</query> query.</p>
/// <br>
/// <p>
/// When all of the objects contained in the Sync Set have been processed the time stamps in the <class>%SYNC.SyncTime</class> class are updated using
/// the <var>maxTS</var> value.
/// </p>
/// <p>Formal parameters:</p>
/// <table border="1">
/// 	<tr><td><var>file</var></td>
/// 			<td>The name of a file containing a sync set. If a file name is specified, then that file will be loaded into the global.
/// 			If no file is specified, then the global is expected to already exist in the current namespace.</p>
/// 			</td>
/// 		</tr>
/// 	<tr><td><var>lastSync</var></td>
/// 			<td><p>An integer value indicating the <var>SyncTime</var> value when this System.Namespace was last
/// 				synchronized with the System.Namespace that generated the sync set being imported. If this value is not
/// 				specified, then it will be retrieved from <class>%SYNC.SyncTime</class></p>
/// 			</td>
/// 		</tr>
/// 	<tr><td><var>maxTS</var></td>
/// 			<td><p>The highest transaction ID contained in the sync set. It is used to set the rTrn property
/// 				in the <class>%SYNC.SyncTime</class> class. This value is not used for any purpose during import and is
/// 				maintained for informational purposes only. This value is specified by the user and is expected to be
/// 				the ID of the last <class>%Library.ObjectJournal</class> object included in the sync set.
/// 					See the <class>%SYNC.SyncTime</class> for more information on the rTrn and lTrn properties.</p>
/// 			</td>
/// 		</tr>
/// 	<tr><td><var>qspec</var></td>
/// 			<td><p>Option flags. This formal argument is maintained for backward compatibility only.</p>
/// 			</td>
/// 		</tr>
/// 	<tr><td><var>errorlog</var></td>
/// 			<td><p>Array of errors encountered during import. These are not errors encountered during synchronization but are
/// 				errors reported doing tasks like opening the file.</p>
/// 			</td>
/// 		</tr>
/// 	<tr><td><var>diag</var></td>
/// 			<td><p>If true, then Import will display status information on the current device.</p>
/// 			</td>
/// 		</tr>
/// 	<tr><td><var>trace</var></td>
/// 			<td><p>If true, then Import will record all import activity in the sync set global under the "Trace" subscript.</p>
/// 			</td>
/// 		</tr>
/// </table>
Method Import(file As %String = "", lastSync As %Integer = 0, maxTS As %Integer, qspec As %String = "", ByRef errorlog As %String, diag As %Integer = 0, trace As %Integer = 0) As %Status
{
}

Method Requeue(iPtr As %Integer) As %Status
{
}

Method GetLastTransactionTime() As %Integer
{
}

/// <p>For information on <var>qSpec</var>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=ObjectScript+qspec">System Flags and Qualifiers</a>.</p>
Method ExportFile(file As %String = "", qspec As %String = "", bUpdate As %Boolean = 1) As %Status
{
}

/// Open a file containing a sync set global and load it into the current sync set global.
/// Files containing sync set globals are typically in GOF format and are produced by exporting
/// a sync set on another system.
Method OpenFile(file As %String = "", qspec As %String = "", ByRef errorlog) As %Status
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// This method should be used for data removal when the syncset is no longer needed.  It deletes all the persistent data
/// and makes impossible further usage of the object.
Method Clear() As %Status
{
}

/// This method returns the name of the global used for the sync set.
Method GlobalName() As %String [ CodeMode = expression ]
{
}

ClassMethod GetNextTRN(ByRef num As %String) As %RawString
{
}

ClassMethod GetLastTRN(ByRef num As %String) As %RawString
{
}

/// Add %Library.ObjectJournalTransactions to the current SyncSet. Each transaction in the %ObjectJournalTransaction extent is identified
/// by an integer that is incremented for each new transaction. This ID assignment mechanism places transactions in chronological order, that is,
/// the order in which the transactions are created. Transactions are expected to be in that order when later imported and sync'ed into another
/// namespace. This method adds a range of transactions, beginning with <var>iTranLast</var> and ending with <var>iTranEnd</var>. The <var>TNumber</var>
/// argument, if specified and is not zero, limits the number of transactions added. When that number of transactions has been added the method will
/// return to the caller, even if the <var>iTranEnd</var> value has not yet been reached.
/// The LastTransaction property is set to the ID of the last transaction added to the SyncSet.
Method AddTransactions(iTranLast As %Integer = 0, iTranEnd As %Integer = 0, lExclude As %List = "", TNumber As %Integer = 0) As %Integer
{
}

Method AddJournaledTransaction(iTranPtr As %Integer = 0, lExclude As %List = "") As %Integer
{
}

Method AddJournaledObject(iTranPtr As %Integer = 0, iObjPtr As %Integer = 0, srcSystem As %String, srcNS As %String) As %Integer
{
}

/// Add an object to the current SyncSet. This method can be used to force an object to be included in the
/// SyncSet when it isn't recorded in the ObjectJournal. It should not be used for normal situations since
/// the ObjectJournal is expected to be complete. Normally, an object that is added to the SyncSet is a
/// <i>versioned object</i> meaning that the object state is recovered from history (normally, from the system
/// journal). AddObject causes the object as it currently exists in the extent to be added to the SyncSet, breaking
/// the natural chronology of the SyncSet.
/// Parameters:
/// 		class - the object's type class;
/// 		id		- the object's ID value;
/// 		fileop	- the filing operation that caused this object to be added to the sync set
/// 					0 - update
/// 					1 - insert
/// 					2 - delete
/// 		guid	- the object's GUID
Method AddObject(class As %String = "", id As %String = "", fileop As %Integer = 0, guid As %String = "") As %Integer
{
}

/// This callback method is invoked by the <METHOD>%Close</METHOD> method to
/// provide notification that the current object is being closed.
///
/// <P>The return value of this method is ignored.
Method %OnClose() As %Status [ Private, ProcedureBlock = 1 ]
{
}

ClassMethod PropertyValuesExecute(ByRef qHandle As %Binary, sid As %String = "0", iObjPtr As %Integer = 0) As %Status
{
}

ClassMethod PropertyValuesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = PropertyValuesExecute ]
{
}

ClassMethod PropertyValuesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = PropertyValuesExecute ]
{
}

ClassMethod CollectionValuesExecute(ByRef qHandle As %Binary, sid As %String = "0", iObjPtr As %Integer = 0, CollName = "") As %Status
{
}

ClassMethod CollectionValuesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = PropertyValuesExecute ]
{
}

ClassMethod CollectionValuesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = PropertyValuesExecute ]
{
}

/// Find the last synchronization record for a particular GUID
Method FindLastGUID(guid As %String) As %Integer
{
}

Method IsEmpty() As %Boolean
{
}

Method nextPointer(ByRef iTranPtr, ByRef iTranLast)
{
}

Method ErrCount() As %Integer
{
}

ClassMethod ErrorsExecute(ByRef qHandle As %Binary, sid As %String = "0") As %Status
{
}

ClassMethod ErrorsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = ErrorsExecute ]
{
}

ClassMethod ErrorsClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = ErrorsExecute ]
{
}

/// Queue an error to the current sync set
Method QueueError(pTranPtr As %Integer, pStatus As %Status = "") As %Status [ ProcedureBlock = 1 ]
{
}

ClassMethod GetLastInfo(guid As %String, ByRef lastver As %Integer, ByRef sid As %String, ByRef nmsid As %String) As %Status
{
}

}
