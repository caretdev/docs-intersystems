/// Provide Interface for users to read lock table information in the system.
/// <class>SYS.Lock</class> is used to perform management operations.
/// <br>
/// <br>
/// <b>Filter  Specification</b><br><br>
/// The argument to the Rset.Execute() method selects which subset of the current
/// locks to return. The first character of the 'id' argument determines the category of the locks to be collected.
/// This has various forms as described below.
/// <br>
/// 1) Null String or "*" - All locks. When the 'id' is a null string (default value when no id specified) or "*", it collects all locks in the lock table.
/// Example:
/// <example>
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks in lock table.
/// Do Rset.Execute("")
///
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks in lock table.
/// Do Rset.Execute()
/// </example>
/// 2) 'P' or numeric - Process ID. Collect all locks owned by the job with the specified process ID. If the 'id' is a numeric value without a leading 'P', it is treated as a process ID.<br>
/// For all systems the process ID is in decimal form.<br>
/// Example:
/// <example>
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks owned by a process whose process ID is 2004.
/// Do Rset.Execute("P2004")
///
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks owned by a process whose process ID is 2004.
/// Do Rset.Execute("2004")
/// </example>
/// 3) 'J' - Internal job number. Collect all locks owned by the job with the specified internal job number.<br>
/// Example:
/// <example>
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks owned by a process whose internal job number is 20.
/// Do Rset.Execute("J20")
/// </example>
/// 4) 'C' - Remote client system Name. Collect all locks owned by the remote client system with the specified name.<br>
/// The Name can be one of the names displayed in the 'Process ID' column of the ^LOCKTAB utility.<br>
/// When the string following the leading 'C' is empty, it collects all locks owned by jobs of the local system.<br>
/// Example:
/// <example>
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks owned by jobs of local system.
/// Do Rset.Execute("C")
///
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks owned by remote client named 'SystemA'.
/// Do Rset.Execute("CSystemA")
/// </example>
/// 5) 'S' - Remote server system Name. Collect all locks sent to the specified remote system.<br>
/// When the string following the leading 'S' is empty then it collects all locks kept on the local system.<br>
/// Example:
/// <example>
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks on the local system.
/// Do Rset.Execute("S")
///
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks sent to remote server named 'SystemA'.
/// Do Rset.Execute("SSystemA")
/// </example>
/// 6) 'N' - Network Protocol. Collect all locks owned by the remote client system through the network protocol. The protocol can be:
/// <ul><li>"ECP" - The owner is an ECP remote client system.</li>
/// <li>"" - The owner is a remote client system of any protocol.</li></ul>
/// Example:
/// <example>
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks owned by remote ECP clients.
/// Do Rset.Execute("NECP")
///
/// Set Rset=##class(%ResultSet).%New("%SYS.LockQuery:List")
/// //Collect all locks owned by remote clients.
/// Do Rset.Execute("N")
/// </example>
Class %SYS.LockQuery Extends %SYSTEM.Help [ Abstract, Final, SqlTableName = "", StorageStrategy = "", System = 4 ]
{

/// Check if any remote system owns any lock in the system.<br>
/// Return TRUE(1) if there is any lock owned by the specified network type, otherwise return FALSE(0).<br>
/// <br>
/// The NetType argument specifies the network type of the remote system.<br>
/// It has following value:
/// <ul><li>"NECP" - The remote system owned the lock through ECP network.</li>
/// <li>"N" or "" - The null string (Default) means any network type.</li></ul>
/// For un-recognized network type this method will return FALSE.<br>
/// Example:
/// <example>
/// // Return 1 if any lock is owned by remote ECP client.
/// Set rc=##Class(%SYS.LockQuery).AnyRemoteOwnedLocks("NECP")
///
/// // Return 1 if any lock is owned by any remote client.
/// Set rc=##Class(%SYS.LockQuery).AnyRemoteOwnedLocks("N")
/// </example>
ClassMethod AnyRemoteOwnedLocks(NetType As %String = "") As %Boolean
{
}

/// Convert a remote client system name to internal system number.
ClassMethod ClientSysNameToSysNum(SysName As %String = "") As %Integer [ Internal, Private ]
{
}

/// Convert a remote client system number to client system name.
ClassMethod ClientSysNumToSysName(SysNum As %Integer = 0) As %String [ Internal, Private ]
{
}

/// Common Execute codes for List and Detail query.
ClassMethod CommonExecute(ByRef qHandle As %Binary, id As %String, Flag As %Integer) As %Status [ Internal, Private ]
{
}

/// Get lock system number and name translation table.
ClassMethod GetLockSysNameTable(ByRef SYSTEMS As %String, ByRef BYTES2 As %String, ByRef SYSN2 As %String) As %Status [ Internal, Private ]
{
}

/// Translate the input ID string and return four values separated by commas.<br>
/// 1) pid : The process ID, 0 - all processes.<br>
/// 2) clin: The remote client system number, -1 - all remote systems.<br>
/// 3) ntype: The network protocol from remote client, 100 - all network protocols.<br>
/// 4) svrn: The remote server system number, -1 - all remote systems.
///
ClassMethod TranslateID(id As %String) As %String [ Internal, Private ]
{
}

/// Get detail columns for lock table entries.<br>
/// <br>
/// <b>DelKey</b>: A key to be used for <class>SYS.Lock</class>.<method>DeleteOneLock</method> to remove the lock (row).<br><br>
/// <b>Owner</b>: Owner of the lock item. For local system owner it is Process ID (in decimal form). For remote client owner, it is the client system name. For share lock there can be more than one owner, and they are separated by ','.<br><br>
/// <b>Mode</b>: Lock mode of the lock item. It can be:<ul><li>
/// 'X' - exclusive lock.</li><li>
/// 'S' - share lock.</li><li>
/// 'ZAX' - ZALLOCATE type lock.</li></ul>
/// <b>Flags</b>: Attribute of the lock item. It can be:<ul><li>
/// '*' - to remote server.</li><li>
/// 'D' - Lock is in Delock Pending state, waiting for server to release the lock.</li><li>
/// 'P' - Lock is in Lock Pending state, waiting for server to grant the lock.</li><li>
/// 'L' - Lock is lost due to network reset.</li><li>
/// 'Z' - Lock granted by ZA command. The ZA and ZD commands are obsolete, though the network daemons still grant the locks for remote client with the ZA lock mode internally.</li></ul>
/// <b>Counts</b>: Lock count of the lock item. The format depends on the lock mode:<ul><li>
/// For 'X' mode - it is the lock count for the exclusive lock. If the owner also locked it with share mode, the share lock count will be separated with '|' from exclusive lock count, for example, "2|1" means 2 'X' count and 1 'S' count.</li><li>
/// For 'S' mode - it is the lock count for the share lock. There can be more than one owner for share lock, so the lock count is separated with ',' between each owner. For example, "1,3,4" means first owner has lock count 1, second owner has lock count 3 and third owner has lock count 4.</li><li>
/// For 'ZAX' mode - the Counts will be null string if the owner does not own it with share mode. Otherwise the share lock count will be separated by '|'. For example, "|3" the owner locked it with 'ZAX' mode and 'S' mode with lock count 3.</li></ul>
/// <b>Sfn</b>: System File Number of the lock item. It tells in which database this lock is located, in internal system file number form.<br><br>
/// <b>LockString</b>: Lock reference string of the lock item. This does not include the database name.<br><br>
/// <b>FullReference</b>: Full lock reference string of the lock item. This includes the database and system name (if remote lock).<br><br>
/// <b>WaiterPID</b>: Waiter of the lock item. This has the same format as <b>Owner</b>. There can be more than one waiter of the lock and they are separated by ','.<br><br>
/// <b>WaiterMode</b>: Lock mode the waiter is waiting for. It can be:<ul><li>
/// 'X' - Waiting for exclusive lock mode.</li><li>
/// 'S' - Waiting for share lock mode.</li><li>
/// 'Z' - Waiting for ZALLOCATE lock mode.</li></ul>
/// <b>WaiterType</b>: Which node the waiter is waiting for. It can be:<ul><li>
/// 'E' - Exact node. It is waiting for the same lock node.</li><li>
/// 'P' - Parent node. It is waiting for a parent node.</li><li>
/// 'C' - Child node. It is waiting for a child node.</li></ul>
/// <b>RemoteOwner</b>: A boolean value, TRUE means one of the lock owner(s) is remote.<br><br>
/// <b>EscalateInfo</b>: A series of counters if the lock node involved lock escalation. A null string if no lock escalation is involved. Each owner has its own set of counters separated by ','.
/// The counters are for internal use.<br><br>
ClassMethod DetailExecute(ByRef qHandle As %Binary, id As %String = "") As %Status [ Internal ]
{
}

ClassMethod DetailFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

ClassMethod DetailClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

/// Get short information of each lock entry.<br>
/// See the <query>Detail</query> query description for each column.
ClassMethod ListExecute(ByRef qHandle As %Binary, id As %String = "") As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

/// Query for Web Lock display utility to use.<br><br>
/// This query returns a row for each lock owner and lock waiter. So if one lock is owned by more than one process, it will return one row for each owner. It also returns one row for each waiter for one lock item.<br><br>
/// <b>ProcessClient</b>: Owner's or waiter's Process ID. It can be a client system name if it is owned by a remote client. There is only one owner or waiter for each row.<br><br>
/// <b>ModeCount</b>: Lock mode and count of the lock item. If the lock count is 1 the count will not be displayed, otherwise a '/<i>count</i>' will follow. A '->Delock' will be appended if the lock is in 'Deferred Delock' state (delocked within a transaction). The column can be:<ul><li>
/// 'Exclusive' - Exclusive lock mode.</li><li>
/// 'Shared' - Share lock mode.</li><li>
/// 'LockZA' - ZALLOCATE lock mode.</li><li>
/// 'WaitExclusive' - Waiting for exclusive lock mode.</li><li>
/// 'WaitShared' - Waiting for share lock mode.</li><li>
/// 'WaitLockZA' - Waiting for ZALLOCATE lock mode.<br>
/// The Wait modes are followed by 'Exact', 'Parent', or 'Child'</li><li>
/// 'LockPending' - Exclusive lock Pending, waiting for server to grant the exclusive lock.</li><li>
/// 'SharePending' - Share lock Pending, waiting for server to grant the share lock.</li><li>
/// 'DelockPending' - Delock Pending, waiting for server to release the lock.</li><li>
/// 'Lost' - Lock lost due to network reset.</li></ul>
/// <b>Reference</b>: Lock reference string of the lock item. This does not include the database name.<br><br>
/// <b>Directory</b>: The database where the lock item is located.<br><br>
/// <b>System</b>: The system name where the lock is located. If it is the local system the column will be a null string.<br><br>
/// <b>Removable</b>: Flag indicates whether this lock (row) can be removed or not. Value 1 -> Removable, 0 -> Not removable, 2 -> Removable, but needs special warning because it is in 'DelockPending' state.<br><br>
/// <b>DeleteID</b>: Delete key that can be used to call <class>SYS.Lock</class>.<method>DeleteOneLock</method> to delete the lock of the specific owner (that is the row).<br><br>
/// <b>CanBeExamined</b>: Flag to tell whether the owner job can be examined or not.
ClassMethod WebListExecute(ByRef qHandle As %Binary, id As %String = "", NoLineRoutine As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod WebListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = WebListExecute ]
{
}

ClassMethod WebListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = WebListExecute ]
{
}

ClassMethod WebListFilterExecute(ByRef qHandle As %Binary, Filter As %String = "", NoLineRoutine As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod WebListFilterFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = WebListExecute ]
{
}

ClassMethod WebListFilterClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = WebListExecute ]
{
}

/// Gets all lock entries that may conflict with the lock reference specified in <parameter>LockRef</parameter> if an exclusive lock on that reference were to be attempted.<p>
/// <parameter>LockRef</parameter> is a string that contains the quoted lock reference (quoted by the $NAME function if desired), and is taken as a reference in the current namespace.  Extended reference may also be used to specify a different namespace or system^directory.<p>
/// The output columns are similar to the output column in <query>Detail</query> query except 'EscalateInfo' is not included. See the <query>Detail</query> query description for each column.<p>
/// Notes:
/// <li>If the lock reference is subject to subscript level mapping, then the result set may include results from multiple databases due to the implicit duplication of locks to multiple subscript level mapping targets.</li>
/// <li>The result set will include locks owned by the calling process itself.</li>
/// <li>The result set can include locks that are both lower or higher than <parameter>LockRef</parameter> in the lock tree (ancestors and descendants), as well as an exact match.</li
/// <li>The result set can also include locks that are not direct descendants of <parameter>LockRef</parameter> if there are waiters waiting for a parent.  For example, if <parameter>LockRef</parameter> = $NAME(^X("abc",1)) and there is a waiter waiting for ^X("abc") due to a lock held on ^X("abc",2), then ^X("abc",2) will be included in the result set with a waiter of type "P".  As with the other queries, ^X("abc") itself is not returned in the results because it has not yet been acquired.</li>
ClassMethod ConflictsExecute(ByRef qHandle As %Binary, LockRef As %String = "") As %Status [ Internal ]
{
}

ClassMethod ConflictsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ConflictsExecute ]
{
}

ClassMethod ConflictsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ConflictsExecute ]
{
}

}
