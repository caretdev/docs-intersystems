/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This class supplies the ManagementPortal with a way to
/// execute certain tasks as background jobs.<br>
/// For example, you can rebuild indices for a class:
/// <example>
/// Set tParms("ClassName") = "Sample.Person"
/// Set tSC = ..RunTask("RebuildIndices","SAMPLES",.tParms,.tJob)
/// </example>
Class %CSP.UI.System.BackgroundTask Extends %RegisteredObject [ System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// This defines the allowed tasks that this class can run
Parameter TASKS = ",AuditCopy,AuditExport,AuditPurge,Backup,CompactDBSpace,CopyNamespaceMappings,CreateDatabase,Compile,DatabaseIntegrityCheck,DataMigration,DefragmentDB,Delete,EnableEnsNamespace,Export,ExternalLangServers,FileMan,Import,SQLExport,SQLImport,SQLExportStatement,SQLImportStatement,QueryExport,JournalIntegrityCheck,LinkTable,LinkProcedure,MirrorActivateCatchupDB,MirrorRemoveDB,MirrorMountDB,MirrorAddDatabases,ModifyDatabaseSize,RebuildIndices,TuneTable,TuneTables,PurgeAllCachedQueries,JobShowPlan,JobSaveQuery,JobPossiblePlans,JobComparePlans,ShardActivate,ShardAssign,ShardVerify,ShardRebalance,Task1";

/// Use this method to request a background task
/// <var>pTask</var> is name of task to run; it must one of the entries
/// in the TASKS parameter.<br>
/// <var>pNS</var> is namespace to run task in.<br>
/// <var>pParms</var> is a array containing parameters for the task
/// in the form pParms(parm)=value.<br>
/// It returns a PID# if the task is started, or 0 if it fails to start.
ClassMethod RunTask(pTask As %String, pNS As %String, ByRef pParms As %String, ByRef tItems As %String = "", ByRef pJob As %Integer) As %Status
{
}

/// This wrapper method is run in the background job.
/// <var>pParms</var> is a list of parameters.
ClassMethod RunBackgroundTask(pTask As %String, pNS As %String, pParmList As %List, pIdx As %Integer)
{
}

ClassMethod ActivateShard(ByRef pParms) As %Status
{
}

/// Assign new shard in the background
ClassMethod AssignShard(ByRef pParms) As %Status
{
}

/// Verify shards in the background
ClassMethod VerifyShard(ByRef pParms) As %Status
{
}

/// Rebalance shards in the background
ClassMethod RebalanceShard(ByRef pParms) As %Status
{
}

/// Create a database
ClassMethod CreateDatabase(ByRef pParms) As %Status
{
}

ClassMethod DefragmentDB(ByRef pParms) As %Status
{
}

/// Return unused db space
ClassMethod CompactDBSpace(ByRef pParms) As %Status
{
}

/// Modify database size
ClassMethod ModifyDatabaseSize(ByRef pParms) As %Status
{
}

/// Start SQL Export
ClassMethod SQLExport(ByRef pParms) As %Status
{
}

/// Start SQL Import
ClassMethod SQLImport(ByRef pParms) As %Status
{
}

ClassMethod SQLExportStatement(ByRef pParms) As %Status
{
}

ClassMethod SQLImportStatement(ByRef pParms) As %Status
{
}

/// Start SQL Export Dynamic Query
ClassMethod QueryExport(ByRef pParms) As %Status
{
}

/// Start Compile routines/classes
ClassMethod Compile(ByRef pParms, ByRef tItems) As %Status
{
}

/// Start Delete routines/classes
ClassMethod Delete(ByRef pParms, ByRef tItems) As %Status
{
}

/// Enable productions for a namespace
ClassMethod EnableEnsNamespace(ByRef pParms) As %Status
{
}

/// Copy Mappings from one Namespace to another
ClassMethod CopyNamespaceMappings(ByRef pParms) As %Status
{
}

/// Start database file integrity check. After finish, transform results to file.
ClassMethod DatabaseIntegrityCheck(ByRef pParms) As %Status
{
}

/// Start journal file integrity check
ClassMethod JournalIntegrityCheck(ByRef pParms) As %Status
{
}

/// Start Export globals/routines/classes
ClassMethod Export(ByRef pParms, ByRef tItems) As %Status
{
}

/// Start Import globals/routines/classes
ClassMethod Import(ByRef pParms, ByRef tItems) As %Status
{
}

/// Start SQL Link Table
ClassMethod LinkTable(ByRef pParms, ByRef tItems) As %Status
{
}

/// Start SQL Link Procedure
ClassMethod LinkProcedure(ByRef pParms, ByRef tItems) As %Status
{
}

/// Sart SQL Data Migration
ClassMethod DataMigration(ByRef pParms, ByRef tItems) As %Status
{
}

/// Rebuild indices for a class
ClassMethod RebuildIndices(ByRef pParms) As %Status
{
}

/// Start Copy audit log to another namespace
ClassMethod AuditCopy(ByRef pParms) As %Status
{
}

/// Start Export audit log
ClassMethod AuditExport(ByRef pParms) As %Status
{
}

/// Start Purge audit log
ClassMethod AuditPurge(ByRef pParms) As %Status
{
}

/// Tune all tables in a schema
ClassMethod TuneTables(ByRef pParms) As %Status
{
}

/// Purge all cached queries from all namespaces
ClassMethod PurgeAllCachedQueries() As %Status
{
}

/// Map FileMan files to InterSystems classes
ClassMethod FileMan(ByRef pParms, ByRef pItems) As %Status
{
}

/// Activate and/or catchup Mirror DBs
ClassMethod MirrorActivateCatchupDB(ByRef pParms, ByRef pItems) As %Status
{
}

/// Mount Mirror DBs
ClassMethod MirrorMountDB(ByRef pParms, ByRef pItems) As %Status
{
}

/// Remove DBs from mirror
ClassMethod MirrorRemoveDB(ByRef pParms, ByRef pItems) As %Status
{
}

/// Add databases to mirror
ClassMethod MirrorAddDatabases(ByRef pParms, ByRef pItems) As %Status
{
}

/// Run Show Plan process in the background
ClassMethod JobShowPlan(ByRef pParms) As %Status
{
}

/// Run Possible Plans process in the background
ClassMethod JobPossiblePlans(ByRef pParms) As %Status
{
}

/// Run Compare Show Plans process in the background
ClassMethod JobComparePlans(ByRef pParms) As %Status
{
}

/// Run Save Query (for pTools) process in the background
ClassMethod JobSaveQuery(ByRef pParms) As %Status
{
}

/// Check status of external language servers
ClassMethod ExternalLangServers(ByRef pParms) As %Status
{
}

/// Test task
ClassMethod Task1(ByRef pParms) As %Status
{
}

/// Return a list of currently excuting (or failed) background Management Portal tasks.
ClassMethod EnumerateTasksExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod EnumerateTasksFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateTasksExecute ]
{
}

ClassMethod EnumerateTasksClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateTasksExecute ]
{
}

ClassMethod ErrorLogExecute(ByRef QHandle As %Binary, %pid As %Library.String) As %Status
{
}

ClassMethod ErrorLogClose(QHandle As %Binary) As %Status
{
}

ClassMethod ErrorLogFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// This method writes generic Status of "ERROR" and error message to Details.
ClassMethod WriteError(ErrorMessage)
{
}

/// This method writes generic Status of "Done".
ClassMethod WriteDone()
{
}

}
