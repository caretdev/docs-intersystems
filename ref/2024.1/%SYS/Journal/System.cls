/// Journaling related API
Class %SYS.Journal.System Extends %RegisteredObject [ Abstract, System = 4 ]
{

/// Purpose: Start journaling <p>
/// Optional parameters for journaling: <ul><li>
/// curdir: primary journal directory </li><li>
/// altdir: alternate journal directory </li><li>
/// maxsiz: max size of journal file in bytes </li><li>
/// expsiz: [Windows & VMS only] unit increment of journal file size in bytes </li><li>
/// prefix: a string preceding the standard journal file name YYYYMMDD.NNN </li></ul>
/// shdwok: OK to share directory with shadow journal files despite potential file conflicts (DEFAULT = 0)
/// Returns OK on success
ClassMethod Start(curdir As %String, altdir As %String, maxsiz As %Integer, expsiz As %Integer, prefix As %String, okshdw As %Boolean = 0) As %Status
{
}

/// Purpose: Stop journaling system wide
ClassMethod Stop() As %Status
{
}

/// Purpose: Roll journaling to next file, without any journal property change (to activate) <p>
/// Input: <ul><li>
/// Reason: reason for the switch (0 = unspecified, 1 = user-initiated, etc.); </li></ul>
/// Output: <ul><li>
/// NewFile: the path of the file to which journaling has switched (if successfully) </li></ul>
/// Return success or error status. <p>
/// Caveat: Journal history global is NOT updated, a la journal daemon
ClassMethod RollToNextFile(Reason As %Integer, ByRef NewFile As %String) As %Status
{
}

/// Get the path of the journal directory other than the current one. <br>
/// Directory: The journal directory different from the current one or "" if none <br>
/// Type: 1 if Directory is Primary or 2 if Directory is Secondary or 0 if Directory is "" (meaning no other directory)
ClassMethod GetTheOtherDirectory(ByRef Directory As %String = "", ByRef Type As %Integer = 0) As %Integer
{
}

/// Switch journaling to the other journal directory if specified <br>
/// Return (by reference) the path of current journal file after a successful switch.
ClassMethod SwitchDirectory(ByRef NewFile As %String = "") As %Status
{
}

/// Purpose: Switch journal file (and optionally change one or more journaling parameters) <p>
/// Optional parameters for journaling: <ul><li>
/// curdir: primary journal directory </li><li>
/// altdir: alternate journal directory </li><li>
/// maxsiz: max size of journal file in bytes </li><li>
/// expsiz: [Windows & VMS only] unit increment of journal file size in bytes </li><li>
/// shdwok: OK to share directory with shadow journal files despite potential file conflicts (DEFAULT = 0) </li><li>
/// reason: reason for journal switch (DEFAULT: by user) </li></ul>
/// Returns OK on success
ClassMethod SwitchFile(curdir As %String, altdir As %String, maxsiz As %Integer, expsiz As %Integer, okshdw As %Boolean = 0, reason As %Integer) As %Status
{
}

ClassMethod GetDefaults(ByRef curdir As %String, ByRef altdir As %String, ByRef maxsize As %Integer, ByRef expqty As %Integer, ByRef prefix As %String, ByRef shortnam As %String, curfile As %String, jrnall As %Integer) As %Status [ Internal, PublicList = (curdir, altdir, maxsize, expqty, prefix, shortnam, curfile, jrnall) ]
{
}

/// Return current journal encryption status.<br>
/// Type - 1: Run time journal encryption status (default).<br>
///        2: Startup journal encryption status.<br>
///        3: Run time or Startup encryption status.<br>
/// Retrun 1 if journal encryption status is enabled, otherwise return 0.
ClassMethod IsJournalEncryptionEnabled(Type As %Integer = 1) As %Integer
{
}

/// Activate journal encryption such that new updates go to encrypted
/// journal files.
ClassMethod ActivateEncryption(EnableStartup As %Boolean = 1) As %Status
{
}

/// Deactivate journal encryption such that new updates go to unencrypted
/// journal files.
ClassMethod DeactivateEncryption(DisableStartup As %Boolean = 1) As %Status
{
}

/// Return OK if DBEncKey is not required for individual jobs to roll back
/// their own open transactions (i.e., OK to deactivate DBEncKey); otherwise,
/// return an error indicating why DBEncKey must stay activated.
ClassMethod OKNoDBEncKeyNow() As %Status
{
}

/// Return OK if DBEncKey is not required at startup (i.e., OK to disable
/// DBEncKey activation at startup); otherwise, return an error indicating
/// why DBEncKey must be activated at startup.
ClassMethod OKNoDBEncKeyAtStartup(LocalOnly As %Boolean = 0) As %Status
{
}

/// TRUE if the given DBEncKeyID is used on journal files required for recovery
ClassMethod IsEncKeyInUse(DBEncKeyID As %String) As %Boolean
{
}

/// TRUE if journaling is disabled system wide
ClassMethod IsDisabled(Status As %String = "", ByRef Cause As %String) As %Boolean
{
}

/// TRUE if journaling is paused system wide (when there is an ongoing journal switch)
ClassMethod IsPaused(Status As %String = "", ByRef Cause As %String) As %Boolean
{
}

/// TRUE if journaling is frozen system wide (i.e., journal updates are blocked), typically
/// when there is a journaling error and the system is set up to freeze on such errors.
ClassMethod IsFrozen(Status As %String = "", ByRef Cause As %String) As %Boolean
{
}

/// TRUE if there is a journaling error, from which the system may be trying to recover
ClassMethod IsGettingIOError(Status As %String = "", ByRef Cause As %String) As %Boolean
{
}

/// Get the path of the last journal file on the system -- meaningful only if
/// current journal file name = "" (i.e., journaling hasn't started)
ClassMethod GetLastFileName() As %String
{
}

/// Return the path of current journal file
ClassMethod GetCurrentFileName() As %String
{
}

/// Return the object reference to current journal file
ClassMethod GetCurrentFile() As %SYS.Journal.File
{
}

/// Returns the ending offset of the last journal record in current journal file;
/// 0 if journaling is off
ClassMethod GetCurrentFileOffset() As %Integer
{
}

/// Return the file count of current journal file
ClassMethod GetCurrentFileCount() As %Integer
{
}

/// Returns the state of the journaling system as a string.  Values are:<br><br>
/// 	"Normal" (Enabled and running normally)<br>
/// 	"Disabled" (stopped)<br>
/// 	"Suspended" (due to I/O error)<br>
/// 	"Frozen" (due to I/O error)<br>
/// 	"Paused" (during journal file switch)<br><br>
/// 		Frozen and Suspended are the same state (I/O error occurred), but
/// 		they differ in the action processes take (freeze or discard journal data respectively)
/// 		when they encounter this state.
ClassMethod GetStateString() As %String
{
}

/// Returns the state of the journaling system as an Integer<br>
/// 	0 -	Enabled<br>
/// 	1 -	Disabled (stopped)<br>
/// 	2 - Suspended (due to I/O error)<br>
/// 	3 - Frozen (due to I/O error)<br>
/// 	4 -	Paused (during journal file switch)<br>
ClassMethod GetState() As %Integer
{
}

/// Purpose: Sync (commit) journal data to disk <p>
/// Returns a journal offset. It is guaranteed that journal data at or prior to the offset
/// are on disk by the time Sync() returns. <p>
/// Caveat: It is possible that journal file has been switched by the time Sync() returns.
/// In that case, it is unpredictable which journal file the returned offset refers to and
/// one might have to repeat Sync() until journal file remains the same before and after.
ClassMethod Sync() As %Integer [ CodeMode = expression ]
{
}

/// Purpose: Report what portion of the journal has been committed to disk <p>
/// Returns a journal offset. It is guaranteed that journal data at or prior to the offset
/// are on disk. <p>
/// Caveat: see <method>Sync</method>
ClassMethod WhereCommitted() As %Integer [ CodeMode = expression ]
{
}

/// Return the journal checkpoint information stored in the WIJ (aka Write Image Journal)
ClassMethod GetImageJournalInfo(ByRef JournalFileName As %String, ByRef JournalFileOffset As %Integer, ByRef JournalFileCount As %Integer, ByRef OpenTransFileOffset As %Integer, ByRef OpenTransFileCount As %Integer) As %Status
{
}

/// Return the path of the cluster journal log
ClassMethod GetClusterJournalLog() As %String
{
}

/// Return the path of the primary journal directory, which is not necessarily the current journal directory
ClassMethod GetPrimaryDirectory(ByRef Status As %Status = {$$$OK}) As %String
{
}

/// Return the path of the secondary journal directory
ClassMethod GetAlternateDirectory(ByRef Status As %Status = {$$$OK}) As %String
{
}

/// Return the journal file name prefix
ClassMethod GetJournalFilePrefix() As %String
{
}

ClassMethod SetPrimaryDirectory(dir As %String, create As %Boolean) As %Status
{
}

ClassMethod SetAlternateDirectory(dir As %String, create As %Boolean) As %String
{
}

/// Return the free space available for journal files
ClassMethod GetFreeSpace() As %Integer
{
}

ClassMethod VerifyJournalDirectory(dir As %String, create As %Boolean) As %Status [ Internal, Private ]
{
}

ClassMethod VerifyJournalFilePrefix(prefix As %String) As %Status [ Internal ]
{
}

ClassMethod GetHistoryHeader(jrnlogfd As %String, ByRef header As %String, Mirror As %Boolean = 0) As %Status [ Deprecated, Internal ]
{
}

ClassMethod PurgeHistory(DaysOld As %Integer = 100) As %Status [ Deprecated, Internal ]
{
}

ClassMethod DisableJournalWithAllRole() As %Status [ Internal ]
{
}

ClassMethod GetDejournalReaderSettings(ByRef CacheSize As %Integer, ByRef ReadAheadSize As %Integer, ByRef disableaio As %Integer) As %Status [ Internal ]
{
}

/// Supported 'type' values are:
///   "jrnrest" for journal restore,
///   "jrnrest1" for journal restore at InterSystems IRIS startup or set to abort on DB errors,
///   "shadow" for shadowing,
///   "mirror" for regular mirroring and
///   "mircatchup" for mirror catchup.
/// All but journal restore ("jrnrest" or "sturest") also requires a
/// name (shadow or mirror name).
/// For "shadow", quesiz is also an input for default limit on gmheap, in pages.[HYY2181]
/// Returned parameters:
///   numpref - initial/minimal # of (active) prefetchers (0 = no prefetching)
///   quesiz - size of the dejournal queue, in pages
///   stksiz - size of the dejournal stack, in pages
/// NB: A -1 value for stksiz tells the caller to use its own default.
///   sizmod - a flag indicating whether quesiz or stksiz is also a maximum,
///            used as an argument of $zu(78,50).
///     2 = quesiz and stksiz are in pages (same as 0)
///    +4 = quesiz is also the maximum size
///    +8 = stksiz is also the maximum size
/// NB: A user-specified quesiz or stksiz is in bytes, whereas we return in pages.
///   numupd - # of updaters
///   rangemax - max # of updates between the foremost and the hindmost updaters
///   maxpref - max # of prefetchers
///   inorder - updates should be applied in order, except for db's listed in
/// 	    ^MIRROR(mirrorname,"APD",db) if any.
/// Note:
/// A user-specified "" value (NOT undefined) is equivalent to -1 here.
/// A user-specified 0 value means NO (for prefetching only) or default algorithm.
///
ClassMethod GetDejournalSettings(type As %String, name As %String, ByRef numpref As %Integer, ByRef quesiz As %Integer, ByRef stksiz As %Integer, ByRef sizmod As %Integer, ByRef numupd As %Integer, ByRef rangemax As %Integer, ByRef maxpref As %Integer, ByRef inorder As %Integer) As %Status [ Internal ]
{
}

/// Returns status of the journaling system. <p>
/// Example:<example>
///   s rs=##class(%ResultSet).%New("%SYS.Journal.System:Status")
///   s rc=rs.Execute() w rc
///   while rs.Next() { w rs.Data("Main Status"),! h 10 }
/// </example>
/// Here the journaling status of a remote system is retrieved and displayed every 10 seconds.
/// See <class>%RemoteResultSet</class> for details on how to use it.
ClassMethod StatusExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod StatusFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod StatusClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Returns info on journaling progress
/// Example:<example>
///   s rs=##class(%ResultSet).%New("%SYS.Journal.System:Progress")
///   s rc=rs.Execute() w rc
///   while rs.Next() { w $zdt(rs.Data("TimeStamp"),8),": ",$j(rs.Data("Offset"),10)," ",rs.Data("File Name"),! h 10 }
/// </example>
/// Here the current journal file name and offset are retrieved and displayed every 10 seconds.
ClassMethod ProgressExecute(ByRef qHandle As %Binary, GetCommitted As %Integer) As %Status [ Internal ]
{
}

ClassMethod ProgressFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ProgressClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Query returns a summary of the journaling system status.<br><br>
/// Example:<example>
///   s rs=##class(%ResultSet).%New("%SYS.Journal.System:Summary")
///   s rc=rs.Execute() w !,rs.GetColumnHeader(1),?40," ",rs.GetColumnHeader(2),!
///   while rs.Next() { w !,rs.Data("Parameter"),?40," ",rs.Data("Value") }
/// </example>
ClassMethod SummaryExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod SummaryFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = SummaryExecute ]
{
}

ClassMethod SummaryClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = SummaryFetch ]
{
}

}
