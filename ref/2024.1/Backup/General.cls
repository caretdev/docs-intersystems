Class Backup.General Extends %SYSTEM.Help [ Abstract, System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// <p>This method is intended to be called when you perform an external backup as described in
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+Backup.General">External Backup</a>.</p>
/// ExternalFreeze is used to freeze InterSystems IRIS before starting an operation which
/// will produce a valid full backup of a set of databases using technology external
/// to InterSystems IRIS such as disk mirroring or snapshots. The mechanisms used to freeze InterSystems IRIS
/// are different on clustered and non-clustered systems.
/// <BR><BR>
/// <b>Non-Clustered systems:</b>
/// <BR><BR>
/// <b>WARNING:</b> On non-clustered systems, this entry point should only be used if you
/// are journaling all of your database updates. If databases are not being journalled, and
/// the system should happen to crash while the write daemon is suspended, then all updates
/// to non-journalled databases will be lost from the point in time the write daemon
/// was suspended.
/// <BR><BR>
/// When this entry point is called on non-clustered systems, the write daemon is suspended
/// from writing to the database. Processes will continue to run with updates only being
/// written to the journal file and to the global buffer pool. Updates will not be written to the
/// databases. When the <Method>ExternalThaw</method> method is called, the write
/// daemon will resume and write the updated buffers to the databases.
/// During the period of time that the write daemon is suspended, processes may themselves
/// be suspended when trying to update the database if one of the following occurs:
/// <BR><BR>
///  1) The system runs out of global buffers for processes to write to.
///  <br>
///  2) The length of the suspension is longer than the system default
///  (currently 600 seconds/10 minutes).
/// <BR><BR>
/// Note that the behavior of #2 can be modified by specifying the <b>ExternalFreezeTimeOut</b>
/// parameter to extend the amount of time user processes can continue to update the database
/// on the system before they are suspended.
/// <BR><BR>
/// <i>Restoring the backup:</i>
/// <BR><BR>
/// Restore the database files using your external restore mechanism. Once the databases
/// are restored and mounted on the system, you will need to restore the journals starting
/// which the one which was switched to during the <method>ExternalFreeze.</method>
/// You can see what journal file to start with by examining the messages.log.
/// <BR><BR>
/// <b>Clustered systems:</b>
/// <BR><BR>
/// When this entry point is called on a clustered system, switch 13 is set on all the
/// cluster members which will suspend all processes trying to update the database. When
/// this method returns successfully, all the clustered systems have been quiesced, and
/// it is now safe to take a snapshot of the database. When the
/// <Method>ExternalThaw</method> method is called,
/// switch 13 is cleared on all the cluster members, and the suspended processes
/// will resume writing to the database.
/// <BR><BR>
/// <i>Restoring the backup:</i>
/// <BR><BR>
/// Restore the database files using your external restore mechanism. Once the databases
/// are restored and mounted on the system, you will need to use option 4 in CLUMENU^JRNRESTO.
/// <BR><BR>
/// <i>Arguments:</i>
/// <br>
/// <B>Text</b> Optional text string to store in the journal marker.
/// <BR><BR>
/// <b>LogFile</b> If this is not NULL then this is a filename which is opened for
/// output where messages from the execution of this method are logged. The file is
/// created if it does not exist. If the file exists, new messages are appended to
/// the end of the file. By default, all messages are also logged to the messages.log file.
/// Default="" (no logging).
/// <BR><BR>
/// <b>SwitchJournalFile</b> 0/1 to indicate whether the system should
/// switch to a new journal file and add a journal marker before freezing the system.
/// Default=1 (switch journal).
/// <BR><BR>
/// <b>TimeOut</b> Ignored
/// on non-cluster systems. For clustered systems, how long to wait (in seconds) for the system to
/// quiesce before giving up. Default=10.
/// <BR><BR>
/// <b>Hibernate</b> Ignored
/// on non-cluster systems. For clustered systems, number of times to hibernate (with database updates resuming)
/// and retry the whole process of blocking and waiting, before returning failure.
/// Default=0.
/// <BR><BR>
/// <b>Verbose</b> Ignored
/// on non-cluster systems. 0/1 For clustered systems, whether to print out messages on the screen about what is going on.
/// Default=0.
/// <BR><BR>
/// <b>ExternalFreezeTimeOut</b> Ignored for Clustered systems.
/// Optional parameter which specifies the number of seconds which the write daemon
/// can be suspended before the system blocks processes which are updating the database.
/// The default of 0 should be sufficient
/// for most environments and means that the system will wait for 600 seconds (10 minutes)
/// before suspending processes which are updating the database. Some environments may find
/// that their disk snapshots take more than 10 minutes and that processes are getting
/// suspended. In those situations, an explicit value can be passed. For example, to increase
/// this time to 15 minutes, pass 900 for this parameter. This assumes that there are sufficient
/// buffer space to support the activity for the period. If the buffers become full processes
/// may start to be blocked.
/// NOTE: If the system
/// should crash while the write daemon is suspended, a subsequent startup of the system
/// may take an extended period of time while the databases are updated with information from
/// the journal.
/// <BR><BR>
/// <b>Username</b> Username to pass to the <method>ExternalThaw</method> method. Default="".
/// <BR><BR>
/// <b>Password</b> Password to pass to the <method>ExternalThaw</method> method. Default="".
/// <BR><BR>
/// <b>WDSuspendLimit</b> Ignored for Clustered systems.
/// An optional parameter for user to specify the maximum duration, in seconds,
/// for which the write daemon (WD) should remain suspended. Once the limit
/// is reached or exceeded, WD resumes activity (as when <method>ExternalThaw</method> is called)
/// and any backup that hasn't finished by then should be considered a failure. By default,
/// WD doesn't resume activity until notified so (when backup is finished).
/// <BR><BR>
/// <b>RequiredFile</b> (Return by reference) the oldest journal file required for transaction rollback after the backup is restored.
/// <BR><BR>
/// <i>Returns:</i> On error a descriptive message is included as part of the
/// return code. If an error occurs, the system is not frozen when this method
/// returns.<br>
/// If this command is used as an argument as part of an O/S script, a Status value of 5 is returned
/// if the system is successfully frozen. If the Freeze fails, then a Status value of 3 is returned.<br>
/// Here is an example of how to use this on each of the platforms. Make sure your default
/// directory is the "mgr" directory before you invoke the API. Also keep in mind that in Windows batch
/// scripts all method arguments to <method>ExternalFreeze</method> and <method>ExternalThaw</method>
/// of type string need to be entered with three double quotation marks on either side.<br><br>
/// <b>Windows</b>
/// <pre>
/// ..\bin\irisdb -s. -U%%SYS ##Class(Backup.General).ExternalFreeze()
/// rem note that we need to check errorlevel from highest to lowest here....
/// if errorlevel 5 goto OK
/// if errorlevel 3 goto FAIL
/// echo errorlevel returned wrong value
/// goto END
/// :OK
/// echo SYSTEM IS FROZEN
/// goto END
/// :FAIL
/// echo SYSTEM FREEZE FAILED
/// :END
/// rem Now unfreeze the system
/// ..\bin\irisdb -s. -U%%SYS ##Class(Backup.General).ExternalThaw()
/// </pre>
/// <b>Unix</b>
/// <p>The following example assumes that the instance name is syu72.
/// <pre>
/// iris terminal syu72 -U%SYS "##Class(Backup.General).ExternalFreeze()"
/// status=$?
/// 	if [ $status -eq 5 ]; then
/// 		echo "SYSTEM IS FROZEN"
/// 	elif [ $status -eq 3 ]; then
/// 		echo "SYSTEM FREEZE FAILED"
/// 	fi
/// # Now unfreeze the system
/// iris terminal syu72 -U%SYS "##Class(Backup.General).ExternalThaw()"
/// </pre>
/// Note that if you pass parameters into the call, you may need to escape them depending on the O/S
/// you are running on. For example the quotes "" are escaped below:<pre>
/// ..\bin\irisdb -s. -U%SYS ##Class(Backup.General).ExternalFreeze(\"c:\data\freeze.log\")</pre>
ClassMethod ExternalFreeze(LogFile As %String = "", Text As %String = "", SwitchJournalFile As %Boolean = 1, TimeOut As %Integer = 10, Hibernate As %Integer = 0, Verbose As %Boolean = 0, ExternalFreezeTimeOut As %Integer = 0, Username As %String = "", Password As %String = "", WDSuspendLimit As %Integer = 0, RequiredFile As %String) As %Status [ PublicList = (ALRDY10, ALRDY13, FORCE, NOINPUT, NOFORCE, LOGONLY, CLUBACKUP, QUIET, QUIETLY, INTERNAL, gui, logfile, OK, CLUMEM, markinfo, DATE, TIME, TYPE, Y, lastfile, success, status, ans) ]
{
}

/// <p>This method is intended to be called when you perform an external backup as described in
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+Backup.General">External Backup</a>.</p>
/// ExternalThaw is used to resume InterSystems IRIS after Backup.General.ExternalFreeze().
/// Note that when ##Class(Backup.General).ExternalThaw is passed in on the `iris terminal`
/// command line, the process does not go through the normal authentication method. Instead
/// the username and password passed in as parameters is checked against the username and password
/// passed into the ExternalFreeze method.
/// <BR><BR>
/// <i>Arguments:</i>
/// <br>
/// <b>LogFile</b> If this is not NULL then this is a filename which is opened for
/// output where messages from the execution of this method are logged. The file is
/// created if it does not exist. If the file exists, new messages are appended to
/// the end of the file. By default, all messages are also logged to the messages.log file.
/// <BR><BR>
/// <b>Username</b> Username which was passed to the <method>ExternalFreeze</method> method. Default="".
/// <BR><BR>
/// <b>Password</b> Password which was passed to the <method>ExternalFreeze</method> method. Default="".
/// <BR><BR>
/// <i>Returns:</i> On error a descriptive message is included as part of the
/// return code. If an error occurs, the system may still be suspended. <br>
/// If the method is invoked via an OS script, exit status 5 indicates success and 3, failure.
/// See <method>ExternalFreeze</method> for sample code to check exit status.
ClassMethod ExternalThaw(LogFile As %String = "", Username As %String = "", Password As %String = "") As %Status
{
}

/// <p>This method is intended to be called when you perform an external backup as described in
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+Backup.General">External Backup</a>.
/// Use this method to record the fact that you have successfully performed an external backup
/// and to note the name of the log file for that backup.
/// ExternalSetHistory adds an entry to the backup history and counts that backup in the journal purge criteria.
/// Call this method after a successful backup and after calling <method>ExternalThaw</method>.</p>
/// <BR><BR>
/// <i>Arguments:</i>
/// <br>
/// <b>LogFile</b>This is the name of the log file to be recorded in the backup history.
/// <BR><BR>
/// <b>Description</b> A description of this backup to be recorded in backup history.
/// <BR><BR>
/// <i>Returns:</i>Always returns OK.
ClassMethod ExternalSetHistory(LogFile As %String = "", Description As %String = "") As %Status
{
}

/// Starts a backup using the specified task.
/// <br><br>
/// <b>jobbackup</b>
/// FALSE means the backup should be run in the current process and the
/// returned value reflects the success or failure of the backup. TRUE
/// means the backup is jobbed off and the returned value reflects whether
/// we successfully jobbed the backup off or not. <br><br>
/// <br><br>
/// <b>quietflag</b>When <i>jobbackup</i> is false, this is FALSE if output should
/// be displayed on the principle output device or TRUE if output should
/// only be written to the log file.
/// <br>When <i>jobbackup</i> is TRUE this is a signal whether the backup is
/// being started via the ControlPanel. When quietflag is TRUE (the default)
/// no output is generated on the principle output device. The log file still
/// contains all of generated messages.
/// <br><br>
/// The combination of jobbackup=TRUE and quietflag=FALSE is not supported for
/// customer written applications.
/// <br><br>
/// Returns: %Status to indicate whether the backup succeeded or failed or was
/// jobbed off successfully.
ClassMethod StartTask(taskname As %String, jobbackup As %Boolean = 0, quietflag As %Boolean = 1, Device As %String = "", IsTape As %String = "") As %Status [ Internal, PublicList = (gui, logfile, FORCE, NOFORCE, LOGONLY, P10, return) ]
{
}

/// Given a task, a Last or Next flag and the file type flag (log file or backup file), add in
/// the path information and return the fully expanded form of the file so
/// it can be opened.
/// <BR><BR>
/// <b>taskname</b> - name of the task to get a filename for.
/// <br>
/// <b>NextBackup</b> - FALSE = Filename for last run, TRUE = Filename for next run
/// <br>
/// <b>LogFile</b> - FALSE = Get name of backup output file, TRUE = Get name of log file
/// <br><br>
/// Returns:
/// <br>
/// &nbsp&nbsp&nbsp&nbsp$LB(0,&lterror message&gt) = Failed for specified reason, either the
/// task does not exist or the last file was requested and a backup has
/// not been run yet.
/// <br>
/// &nbsp&nbsp&nbsp&nbsp$LB(1,&ltfilename&gt) = Requested file name
///
ClassMethod GetFilename(taskname As %String = "", NextBackup As %Boolean = 1, LogFile As %Boolean = 1, Device As %String = "") As %String [ Internal ]
{
}

ClassMethod FreezeLog(File As %String = "", Msg As %String = "", Level As %Integer = 0) [ Internal ]
{
}

/// This method suspends the wd and returns when it is suspended. This can
/// be called for either clustered or non clustered systems. For non clustered
/// systems if the system code supports a value of SFNMAX in the gfbackreq
/// array, it works by setting SFNMAX into the gfbackreq array and setting the
/// # of databases to 1. This suspends the wd w/out adjusting the incremental backup info
/// for any of the databases. If the system code doesn't support this feature
/// then it uses the traditional method of setting switch 13.
///
/// Note that the TimeOut, hibernate and verbose settings are ignored if
/// we use $ZU(182) to suspend the wd as this should never fail.
ClassMethod SuspendWD(TimeOut As %Integer, Hibernate As %Integer = 0, Verbose As %Boolean = 0, FreezeTimeout As %Integer = 0, WDSuspendLimit As %Integer = 0) As %Status [ Internal ]
{
}

/// This method resumes the system after SuspendWD() has suspended it.
ClassMethod ResumeWD() As %Status [ Internal ]
{
}

/// Block new database update activity and wait for existing update activity to finish within a certain period of time<ul><li>
/// TimeOut: How long to wait (in seconds) before giving up. Default=10.</li><li>
/// Hibernate: Number of times to hibernate (with database updates resuming) and retry the whole process of blocking and waiting, before returning failure. Default=0.</li><li>
/// Verbose: Whether to print out messages on the screen about what is going on. Default=0. </li></ul>
/// <b>WARNING: It is assumed that updates are <em>not</em> blocked <em>before</em> this call</b>
ClassMethod QuiesceUpdates(TimeOut As %Integer, Hibernate As %Integer = 0, Verbose As %Boolean = 0) As %Status [ PublicList = (ALRDY13, NOFORCE, CLUBACKUP, QUIET, QUIETLY, INTERNAL) ]
{
}

ClassMethod BlockUpdates() As %Status [ Internal ]
{
}

/// Allow database updates to resume
ClassMethod ResumeUpdates() As %Status
{
}

/// Quiesce database update activity cluster wide<ul><li>
/// TimeOut: How long to wait (in seconds) before giving up. If not specified, the default is determined based on system configuration.</li><li>
/// Hibernate: Number of times to hibernate (with database updates resuming) and retry the whole process of blocking and waiting, before returning failure. Default=0.</li><li>
/// Verbose: Whether to print out messages on the screen about what is going on. Default=0. </li></ul>
/// <b>WARNING: It is assumed that updates are <em>not</em> blocked on the <em>local</em> system <em>before</em> this call</b>
ClassMethod QuiesceUpdatesClusterWide(TimeOut As %Integer, Hibernate As %Integer = 0, Verbose As %Boolean = 0) As %Status [ PublicList = (ALRDY13, NOFORCE, CLUBACKUP, QUIET, QUIETLY, INTERNAL) ]
{
}

ClassMethod BlockUpdatesClusterWide(AlreadyBlockedLocally As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod BlockUpdatesSlaves() As %Status [ Internal ]
{
}

/// Allow database updates to resume cluster wide (including local system)
ClassMethod ResumeUpdatesClusterWide() As %Status [ Internal ]
{
}

ClassMethod ResumeUpdatesSlaves() As %Status [ Internal ]
{
}

/// Whether database updates are blocked on local system
ClassMethod AreUpdatesBlocked() As %Boolean [ Internal ]
{
}

/// Add a database to the list of databases to be included in a backup.
/// <BR>
/// An error is returned if the specified database is the system TEMP database.
ClassMethod AddDatabaseToList(newdb As %String) As %Status
{
}

/// Remove a database from the list of databases to be included in a backup
ClassMethod RemoveDatabaseFromList(remdb As %String) As %Status
{
}

/// Remove all databases from the list of databases to be included in a backup
ClassMethod ClearDatabaseList() As %Status
{
}

/// Get information about last full backup
/// <br>Returns:
/// <br>&nbsp&nbsp $LB(0,"No information recorded about a full backup")
/// <br>&nbsp&nbsp $LB(1,&ltdate&gt,&ltdescription&gt,&ltdevice&gt)
ClassMethod GetLastFullBackupInfo() As %String
{
}

/// Return Information about a backup volume.<br>
/// Returns the following information in the Info array:<br><br>
/// Info("BackupVersion") - Internal version of the BACKUP utility (currently 1)<br>
/// Info("CacheVersion") - Product version which created the backup<br>
/// Info("BackupVolume") - Backup volume #<br>
/// Info("BackupDate") - Date of the backup (AUG 2 2012)<br>
/// Info("BackupTime") - Time of the backup (11:35AM)<br>
/// Info("BackupType") - Type of backup (Full, Incremental, Cumulative Incremental)<br>
/// Info("BackupTimeDH") - $h of backup. Can be used to reference ^SYS("BUHISTORY",Time) where
/// time is calculated with +Info("BackupTimeDH")*1000000+$p(Info("BackupTimeDH"),",",2)<br>
/// Info("PrevBackupDate") - Date of last backup (AUG 2 2012)<br>
/// Info("PrevBackupTime") - Time of last backup (11:35AM)<br>
/// Info("PrevBackupType") - Type of backup (Full, Incremental, Cumulative Incremental) <br>
/// Info("LastFullBackupDate") - Date of last FULL backup (AUG 2 2012)<br>
/// Info("LastFullBackupTime") - Time of last FULL backup (11:35AM)<br>
/// Info("Description") - Description of the backup<br>
/// Info("BufferCount") - Used for Magtapes backup<br>
/// Info("Size") - Size in MB of the backup volume. "UNKNOWN for magtapes<br><br>
/// The following fields are retrieved from the backup history global. If the backup history
/// does not exist, they are returned as "UNKNOWN"<br><br>
/// s Info("JournalFile") - Journal file in use at time of backup<br>
/// s Info("LogFile") - Log results of the backup<br>
/// s Info("Status") - Result of the backup. "Aborted","Warning","Completed", or "Failed"<br>
/// s Info("WIJInfo") - Information from the WIJ file at the end of backup<br><br>
/// If the backup was done on a Mirror or Async mirror, the following is also returned:<br><br>
/// Info("MirrorName") - Name of the mirror<br>
/// Info("FailoverMember") - Name of the failover member<br>
/// Info("AsyncMember") - Name of the Async Member<br><br>
/// Now for each database in the backup volume, we return the following (note that the index
/// is in the order the database was backed up in the file):<br><br>
/// Info("Database",index,"Directory") - Directory of the database<br>
/// Info("Database",index,"ClusterFlag") - "P" (private mount) "C" (Cluster mount)<br>
/// Info("Database",index,"ZU49") - $zu(49) flags at time backup started<br><br>
/// If the database is mirrored, additional mirror information is returned in
/// Info("Database",index,"Mirror")<br>
ClassMethod GetBackupVolumeInfo(Volume As %String, ByRef Info As %String) As %String
{
}

/// Provides the list of databases the user has specified to be included in a backup. Note that if the user has not
/// defined a list of databases to be backed up then all databases except the IRISTEMP database will be backed up.
ClassMethod DatabaseListExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod DatabaseListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod DatabaseListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = DatabaseListExecute ]
{
}

/// This method returned a value to tell whether the Write Daemon is suspended or not.
/// Return value 1 indicates the WD is suspended, 0 indicates WD is NOT suspended.
ClassMethod IsWDSuspended() As %Boolean
{
}

/// An external version of IsWDSuspended().
/// When called in an external script, exit status is set to 5 if WD is suspended
/// or 3 otherwise.
ClassMethod IsWDSuspendedExt() As %Boolean
{
}

/// This method will abort the currently running InterSystems IRIS On-Line Backup operation.<BR>
/// Returns 0 - success, 1 - No Backup is currently running, 2 - Backup is aborted already.
ClassMethod AbortBackup() As %Integer
{
}

/// Return the status of backup abort flag.<BR>
/// Returns 0 - Abort is NOT in progress. 1 - Abort is in progress.
ClassMethod GetAbortStatus() As %Integer
{
}

/// Clear backup abort flag.<BR>
/// Returns the original backup abort status.
ClassMethod ClearAbortStatus() As %Integer
{
}

/// Get the GFNOBACKUP flag in the database.<br>
/// The flag is returned in 'Result'. When it is one means
/// don't mark incremental bitmaps, and if we attempt to backup the file
/// we must do a full backup. This flag is set by file creation and
/// by detecting a label error on an incremental backup bitmap.
ClassMethod GetDBNoBackupFlag(Directory As %String = "", ByRef Result As %Integer) As %Status
{
}

/// <p>This method supports the command line "iris freeze <instance>" option.
/// On non-sharded systems, it calls Backup.General:ExternalFreeze. On sharded systems,
/// it runs a coordinated freeze of the entire cluster via Backup.ShardedCluster:ExternalFreeze
/// By default, this method terminates the process with either a success (0) or failure (1)
/// status returned to the OS caller. If the doHalt flag is turned off, it
/// returns a status code instead of halting.</p>
/// <BR><BR>
/// <i>Arguments:</i>
/// <BR><BR>
/// <b>doHalt</b> = flag to halt process after freezing. Default is 1.
/// <BR><BR>
/// <b>ExternalFreezeTimeOut</b> = time, in seconds, to let processes run
/// 	during a freeze before they are suspended.
/// 	Uses the system default when 0. Default is 0.
/// 	Note, if global buffers fill up, suspension may occur before this timeout.
/// <BR><BR>
/// <b>ShardMasterNamespace</b> = master namespace for a sharded cluster.
/// 	Ignored on non-sharded systems. If left empty, defaults to
/// 	the cluster metadata's MasterNamespace value (the shard master namespace
/// 	from the data master's perspective).
///
ClassMethod CommandLineFreeze(doHalt As %Boolean = 1, ExternalFreezeTimeOut As %Integer = 0, ShardMasterNamespace As %String = "") As %Status [ Internal ]
{
}

/// <p>This method supports the command line "iris thaw iris" option.
/// It calls either Backup.General:ExternalThaw() or Backup.ShardedCluster:ExternalThaw()
/// as appropriate. By default, this method terminates the process with
/// either a success (0) or failure (1) status returned to the OS caller.
/// If the doHalt flag is turned off, it returns a status code instead of halting.</p>
/// <BR><BR>
/// <i>Arguments:</i>
/// <BR><BR>
/// <b>doHalt</b> = flag to halt process after thawing. Default is 1.
/// <BR><BR>
/// <b>ShardMasterNamespace</b> = shard master namespace for a sharded cluster.
/// 	Ignored on non-sharded systems. If left empty, this method defaults to
/// 	the cluster metadata's MasterNamespace value (the shard master namespace
/// 	from the data master's perspective).
///
ClassMethod CommandLineThaw(doHalt As %Boolean = 1, ShardMasterNamespace As %String = "") As %Status [ Internal ]
{
}

}
