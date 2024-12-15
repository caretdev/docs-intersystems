/// This class provides APIs to coordinate backups and journal
/// checkpoints, to enable restoring a sharded cluster to a logical
/// moment in time.
/// <p>All methods of this class operate in a coordinated manner on all
/// data-storing members of a sharded cluster, which include the master
/// data server and all shard data servers.  In the current discussion,
/// the term "data servers" refers to these data-storing members.
/// <p>This class facilitates three overall approaches to ensuring that
/// all data servers of a sharded cluster can be restored to a logical
/// moment in time.  This means restoring them so that ordering is
/// preserved such that if update A on data server S1 was committed before
/// update B on S2, then after a restore that leaves B visible, A will be
/// visible as well.
/// <p>All three approaches require having backups available for all data
/// servers of the sharded cluster, but differ in whether the backups or
/// the journals are coordinated, and in how they are coordinated.  The
/// three approaches are:
/// <p>1) Take uncoordinated backups of all data servers in the sharded
/// cluster, and create a known, coordinated journal checkpoint.  In event
/// of failure, restore from those backups, then recover up to the known
/// journal checkpoint.
/// <p>This approach uses <method>JournalCheckpoint</method> to create a
/// known, coordinated journal checkpoint.  With this approach, the
/// backups do not need to be taken at the same time or coordinated to a
/// logical moment in time.  It is only required that the journal
/// checkpoint is created after all of the backups have been taken, and
/// that, when recovering after a failure, every data server in the
/// sharded cluster has a complete set of journals from the time of its
/// backup up to the time of the coordinated journal checkpoint.
/// <p>2) Take coordinated backups of all data servers in the sharded
/// cluster.  In the event of failure, restore from those backups, without
/// recovering from any journal files other than those present in the
/// restored backup images.
/// <p>This approach uses <method>Quiesce</method> to block all activity
/// on all data servers of the sharded cluster, waiting until all pending
/// writes have been flushed to disk, so that a set of backups can be
/// taken representing a logical moment in time.  <method>Resume</method>
/// is used to un-block activity on all data servers, once the backups
/// have been taken.  Alternatively, all data servers can be shut down,
/// and a set of cold backups can be taken.  Either way, this approach
/// does require a window of time, long enough to take backups of all
/// sharded cluster data servers, when it is acceptable to block all
/// activity.
/// <p>With this approach, it is critical to ensure that before starting
/// up a restored server, the only journal files present are those in the
/// restored image from the time of the backup.  At startup, journals will
/// be automatically recovered and any transactions that were open at the
/// time of backup will be rolled back. If journal data later than the
/// time of the backup exists at startup, it could get replayed and cause
/// the data server not to be consistent with the others.
/// <p>3) Take a set of backups that includes within the backup images
/// journals that are coordinated to a known checkpoint.  In the event of
/// failure, restore from those backups, then recover up to the known
/// journal checkpoint.
/// <p>This approach uses <method>ExternalFreeze</method> to freeze all
/// data servers of the sharded cluster, and create a known coordinated
/// journal checkpoint.  Unlike <method>Quiesce</method>,
/// <method>ExternalFreeze</method> continues to allow processes to write
/// updates to the journal files and the global buffer pools, but suspends
/// the write daemon from writing to the databases, allowing backups to be
/// taken without requiring a window of down time.
/// <method>ExternalThaw</method> is used to resume writing to the
/// databases, once the backups have been taken.
/// <p>This approach is similar to the first approach above, but has the
/// advantage of ensuring that all journal files needed to recover up to
/// the coordinated journal checkpoint are included in the backup images.
/// It does require that backups of all data servers of the sharded
/// cluster be taken in the window of time after
/// <method>ExternalFreeze</method> returns, and before
/// <method>ExternalThaw</method> is called.
/// <p><b>API Usage</b>
/// <p>
/// All methods of this class have a ShardMasterNamespace argument,
/// which identifies the sharded cluster on whose data servers the method
/// operates.  This argument must identify a namespace on the InterSystems
/// IRIS instance on which the method is invoked, which may be the master
/// namespace on the shard master data server, or a namespace on a shard
/// master application server whose default database is mapped to
/// the default database of the master namespace on
/// the shard master data server.  See <class>%SYSTEM.Sharding</class> for
/// the definitions of <i>master namespace</i> and <i>shard master
/// application server</i>.
/// <p>
/// Methods of this class may be invoked on any InterSystems IRIS
/// instance which is a member of the sharded cluster, but they only
/// affect data-storing members.
Class Backup.ShardedCluster Extends %SYSTEM.Help [ Abstract, System = 4 ]
{

/// Quiesce blocks all activity on all data servers of the sharded
/// cluster, and waits until all pending writes have been flushed to disk.
/// Upon successful return, the on-disk image of all data servers
/// represents a logical moment in time across the sharded cluster.  This
/// method sets up each shard server to be backed up such that the backup
/// alone is consistent across all of the data servers.
/// <p>By default, Quiesce blocks all activity including reading of
/// databases on data servers of the sharded cluster.  A sharded cluster
/// can be configured to allow reads during Quiesce by setting the option
/// <b>QuiesceAllowReads</b> (see documentation of the SetOption method in
/// <class>%SYSTEM.Sharding</class> for details).
/// <p>
/// Upon return, partial transactions may exist in the database files,
/// which would need to be either completed or rolled back at restore time
/// using journal files.  Care must be taken to allow this to happen on
/// each data server without disturbing this cross-server consistency.  It
/// is critical to ensure that before starting up a restored server, the
/// only journal files present are those in the restored image from the
/// time of the backup. At startup, journals will be automatically
/// recovered and any transactions that were open at the time of backup
/// will be rolled back. If journal data later than the time of the backup
/// exists at startup, it could get replayed and cause the data server not
/// to be consistent with the others.
/// <p>
/// Upon successful return, all data servers of the sharded cluster remain
/// quiesced until <method>Resume</method> is called.
/// <p>
/// <b>Important note:</b> <method>Resume</method> must be called within the
/// same job that called Quiesce.
/// <BR><BR>
/// <i>Arguments:</i>
/// <br>
/// <b>ShardMasterNamespace</b> Master namespace of the sharded cluster on
/// which this method operates.
/// <p><b>Timeout</b> Time, in seconds, to wait for a data server to quiesce
/// before failing.  Defaults to 60 seconds.
/// <p>
/// <i>Returns:</i> On error a descriptive message is included as part of the
/// return code, which may include one or more specific types of activity
/// which had not quiesced when the timeout was reached.  This information
/// is also logged to messages.log on data servers where timeout occurs.
/// If an error occurs, none of the data servers are quiesced when this
/// method returns.
ClassMethod Quiesce(ShardMasterNamespace As %String = "", TimeOut As %Integer = 60) As %Status
{
}

/// Resumes all data servers of the sharded cluster, after they have been
/// quiesced by calling <method>Quiesce</method>.
/// <p>
/// <b>Important note:</b> Resume must be called within the
/// same job that called <method>Quiesce</method>.
/// <BR><BR>
/// <i>Arguments:</i>
/// <br>
/// <b>ShardMasterNamespace</b> Master namespace of the sharded cluster on
/// which this method operates.
/// <p>
/// <i>Returns:</i> On error a descriptive message is included as part of the
/// return code.   If an error is returned, the backups may not be valid,
/// since this may indicate that one or more data servers were not
/// quiesced.
ClassMethod Resume(ShardMasterNamespace As %String = "") As %Status
{
}

/// JournalCheckpoint creates a coordinated journal checkpoint, switching
/// each data server to a new journal file and returning the checkpoint
/// number and the names of the previous journal files in the <b>CheckpointInfo</b>
/// argument. The name of the journal file ending at this checkpoint for a
/// given data server is also logged, along with the checkpoint number, in
/// each data server's messages.log.
/// <p>
/// Internally, this method quiesces all data servers of the sharded cluster
/// before switching journal files, ensuring that the files prior to the
/// switch all end at the same logical moment in time.  Only sets and kills
/// are blocked, which should happen quickly, but the sharded cluster may
/// experience a very brief pause during execution of this method.
/// <p>
/// Note: Because this method calls <method>Quiesce</method> and <method>Resume</method>
/// internally, the following messages from those methods appear in messages.log on each
/// data server of this sharded cluster:
/// <ul>
/// <li>Backup.ShardedCluster.Quiesce: Quiescing system
/// <li>Backup.ShardedCluster.Quiesce: System quiesced
/// <li>Backup.ShardedCluster.Resume: Resuming system
/// <li>Backup.ShardedCluster.Resume: System resumed
/// </ul>
/// <i>Arguments:</i>
/// <br>
/// <b>ShardMasterNamespace</b> Master namespace of the sharded cluster on
/// which this method operates.
/// <p>
/// <b>CheckpointInfo</b> (Output) This argument is set to the checkpoint
/// number which is generated for the coordinated journal checkpoint
/// created by this method call.  Nodes of this argument are set to the
/// name of the journal file that ends at this checkpoint, for each data
/// server of this sharded cluster, subscripted by the hostname and
/// Super Server port number of the data server.
/// <BR><BR>
/// <i>Returns:</i> On error a descriptive message is included as part of
/// the return code.
ClassMethod JournalCheckpoint(ShardMasterNamespace As %String = "", ByRef CheckpointInfo) As %Status
{
}

/// ExternalFreeze is used to freeze all data servers of a sharded
/// cluster, before starting an operation which will produce a valid full
/// backup of a set of databases using technology external to InterSystems
/// IRIS such as disk mirroring or snapshots.
/// <p>
/// <b>WARNING:</b> This entry point should only be used if you are journaling
/// all of your database updates. If databases are not being journalled,
/// and the system should happen to crash while the write daemon is
/// suspended, then all updates to non-journalled databases will be lost
/// from the point in time the write daemon was suspended.
/// <p>
/// On each data server, the write daemon is suspended from writing to the
/// database. Processes will continue to run with updates only being
/// written to the journal file and to the global buffer pool. Updates
/// will not be written to the databases. When the
/// <method>ExternalThaw</method> method is called, the write daemon will
/// resume and write the updated buffers to the databases. During the
/// period of time that the write daemon is suspended, processes may
/// themselves be suspended when trying to update the database if one of
/// the following occurs:
/// <p>
/// 1) The system runs out of global buffers for processes to write to.
/// <p>
/// 2) The length of the suspension is longer than the system default
/// (currently 600 seconds/10 minutes).
/// <p>
/// Note that the behavior of #2 can be modified by specifying the
/// <b>ExternalFreezeTimeout</b> argument to extend the amount of time
/// user processes can continue to update the database on the system
/// before they are suspended.
/// <p>
/// Before returning, this method creates a coordinated journal
/// checkpoint, switching each data server to a new journal file and
/// returning the checkpoint number and the names of the previous journal
/// files in the <b>CheckpointInfo</b> argument.  The name of the journal
/// file ending at this checkpoint for a given data server is also logged,
/// along with the checkpoint number, in each data server's messages.log.
/// Because the journal files are switched before this method returns, the
/// journal files which end at the journal checkpoint can be included in
/// backups taken after calling this method, ensuring that the backups
/// include a coordinated set of journals for the entire sharded cluster,
/// representing a logical moment in time.
/// <p>
/// <i>Restoring the backup:</i>
/// <p>
/// Restore the database files on each data server using your external
/// restore mechanism. Once the databases are restored and mounted on a
/// data server, you will need to restore the journal file on that server
/// which ended at the journal checkpoint.
/// <p>
/// Note: Because this method calls <method>JournalCheckpoint</method> internally, which in turn calls <method>Quiesce</method> and <method>Resume</method>,
/// the following messages from those methods appear in messages.log on each data server of this sharded cluster:
/// <ul>
/// <li>Backup.ShardedCluster.Quiesce: Quiescing system
/// <li>Backup.ShardedCluster.Quiesce: System quiesced
/// <li>Backup.ShardedCluster.Resume: Resuming system
/// <li>Backup.ShardedCluster.Resume: System resumed
/// </ul>
/// This is normal, and does not mean that the system is no longer frozen, only that it is no longer quiesced.
/// The system remains frozen until <method>ExternalThaw</method> is called, which logs the messages:
/// <ul>
/// <li>Backup.General.ExternalThaw: Resuming system
/// <li>Backup.General.ExternalThaw: System resumed
/// </ul>
/// When ExternalThaw logs the message "System resumed", this confirms that the system was frozen up to that point,
/// because otherwise it logs the message "Backup.General.ExternalThaw: Already resumed".
/// <br><br>
/// <i>Arguments:</i>
/// <br>
/// <b>ShardMasterNamespace</b> Master namespace of the sharded cluster on
/// which this method operates.
/// <p>
/// <b>ExternalFreezeTimeout</b> Optional argument which specifies the
/// number of seconds which the write daemon can be suspended on each data
/// server before the system blocks processes which are updating the
/// database. The default of 0 should be sufficient for most environments
/// and means that each data server will wait for 600 seconds (10 minutes)
/// before suspending processes which are updating the database. Some
/// environments may find that their disk snapshots take more than 10
/// minutes and that processes are getting suspended. In those situations,
/// an explicit value can be passed. For example, to increase this time to
/// 15 minutes, pass 900 for this parameter. This assumes that there is
/// sufficient buffer space to support the activity for the period. If the
/// buffers become full processes may start to be blocked. NOTE: If a data
/// server should crash while the write daemon is suspended, a subsequent
/// startup of that server may take an extended period of time while the
/// databases are updated with information from the journal.
/// <p>
/// <b>CheckpointInfo</b> (Output) This argument is set to the checkpoint
/// number which is generated for the coordinated journal checkpoint
/// created by this method call.  Nodes of this argument are set to the
/// name of the journal file that ends at this checkpoint, for each data
/// server of this sharded cluster, subscripted by the hostname and
/// Super Server port number of the data server.
/// <BR><BR>
/// <i>Returns:</i> On error a descriptive message is included as part of
/// the return code. If an error occurs on any data server, none of the
/// data servers are frozen when this method returns.
ClassMethod ExternalFreeze(ShardMasterNamespace As %String = "", ExternalFreezeTimeout As %Integer = 0, ByRef CheckpointInfo) As %Status
{
}

/// ExternalThaw is used to resume all data servers of a sharded
/// cluster after <method>ExternalFreeze</method>.
/// <p>Note: This method writes the following log messages to messages.log on each data server of this sharded cluster:
/// <ul>
/// <li>Backup.General.ExternalThaw: Resuming system
/// <li>Backup.General.ExternalThaw: System resumed
/// </ul>
/// The second message confirms that the system was frozen up to that point,
/// because if it was not, the second message would instead be:
/// <ul><li>Backup.General.ExternalThaw: Already resumed
/// </ul>
/// <i>Arguments:</i>
/// <br>
/// <b>ShardMasterNamespace</b> Master namespace of the sharded cluster on
/// which this method operates.
/// <BR><BR>
/// <i>Returns:</i> On error a descriptive message is included as part of the
/// return code. If an error occurs, one or more data servers
///  may still be suspended.
ClassMethod ExternalThaw(ShardMasterNamespace As %String = "") As %Status
{
}

}
