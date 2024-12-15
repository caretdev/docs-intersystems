/// The <b>%Storage.SQL</b> class contains a set of storage interface methods
/// that use embedded SQL statements, as well as an advanced set of data
/// mapping definition, to provide a way to layer objects on top of pre-existing
/// InterSystems IRIS data structures.
///
/// <p>The storage interface methods, which are implemented as
/// method generators, work in conjunction
/// with the persistent interface methods of the <class>%Persistent</class> class to
/// provide persistent behavior for objects.
///
/// <p>The methods of <b>%Storage.SQL</b> are not meant to be called directly.
/// Use the methods of the <class>%Persistent</class> class which, in turn, call the
/// appropriate <class>%Storage.Persistent</class> method.
Class %Storage.SQL Extends %Storage [ Abstract, Not ProcedureBlock, System = 2 ]
{

Parameter OBJECTSPULLTRIGGERS = 1;

Parameter STORAGECOMPILERCLASS = "%Compiler.Storage.SQL";

/// Acquire (s)hared or (e)xclusive locks based on locktype parameter
ClassMethod %LockExtent(shared As %Boolean = 0) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Release (s)hared or (e)xclusive locks based on locktype parameter
ClassMethod %UnlockExtent(shared As %Boolean = 0, immediate As %Boolean = 0) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Acquire (s)hared or (e)xclusive locks based on locktype parameter
ClassMethod %LockId(id As %String, shared As %Boolean = 0, timeout As %Integer) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Release locks held on an object (identified by the id parameter).
/// If shared is true then the lock released is a shared lock. If immediate is
/// true then release the lock immediately (lock not held until completion of the
/// current transaction)
ClassMethod %UnlockId(id As %String, shared As %Boolean = 0, immediate As %Boolean = 0) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// %BuildIndices
/// 	Build all the indices contained in idxlist. If idxlist is empty then all
/// 	indices will be built. If autoPurge is true then %PurgeIndices(idxlist) will
/// 	be called before starting to build.
ClassMethod %BuildIndices(pIndexList As %RawString = "", pAutoPurge As %Integer = 1, pLockFlag As %Integer = 0, pJournalFlag As %Integer = "", pStartID As %RawString = "", pEndID As %RawString = "", pIgnoreIndexList As %RawString = "", pKeepSelectability As %Integer = 0) As %Status [ CodeMode = generator, Internal, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// %DeleteData()
/// 	Delete object from persistent storage
/// 	The caller is responsible for calling %IdSet()
/// 	Don't include class name with id in input parameter
ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Final, Private, ServerOnly = 1 ]
{
}

/// Load object from persistent storage into memory
/// The caller is responsible for calling %IdSet()
/// Don't include class name with id in input parameter
Method %LoadData(id As %String) As %Status [ Final, Private, ServerOnly = 1 ]
{
}

ClassMethod %PurgeIndices(idxlist As %List = "", lockExtent As %Boolean = 0, pIgnoreIndexList As %RawString = "") As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// %SaveData()
/// Save the object to a persistent state (e.g. store it on disk)
/// return: oid or "" if save fails
Method %SaveData(id As %String) As %Status [ Final, Private, ServerOnly = 1 ]
{
}

/// %Exists()
/// 	Check to see if an OID exists in the extent of this class...
ClassMethod %Exists(oid As %ObjectIdentity = "") As %Boolean [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// %KillExtentData() - kills extent data in storage. This method is
/// implemented by the storage class. If <var>killstreams</var> is true (default is false) it will also kill the default stream storage global.
ClassMethod %KillExtentData(killstreams As %Boolean = 0) As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

}
