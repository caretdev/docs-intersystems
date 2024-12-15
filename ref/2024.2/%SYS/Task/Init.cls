/// Used to initialize system values on new installs
/// and to convert the task manager from previous versions.
///
Class %SYS.Task.Init Extends %RegisteredObject [ System = 4 ]
{

Parameter DOMAIN = "%Utility";

/// ToV31 add PurgeInteropUsage task
ClassMethod ToV31() As %Status
{
}

/// ToV30 remove redundent tasks
ClassMethod ToV30() As %Status
{
}

/// ToV29 decode Diagnostic Report email password
ClassMethod ToV29() As %Status
{
}

/// ToV28 fix PurgeBackupLog
ClassMethod ToV28() As %Status
{
}

/// ToV27 modify default MirrorStatus
ClassMethod ToV27() As %Status
{
}

/// ToV26 Add PurgeErrorsAndLogs
ClassMethod ToV26() As %Status
{
}

/// ToV25 fix filing of PurgeAudit, PurgeJournal
ClassMethod ToV25() As %Status
{
}

/// ToV24 added the Purge Audit task
ClassMethod ToV24() As %Status
{
}

/// ToV23 added the SendButtons task
ClassMethod ToV23() As %Status
{
}

/// ToV22 added the SecurityScan task
ClassMethod ToV22() As %Status
{
}

/// converts tasks from V2.0 to V2.1
ClassMethod ToV21() As %Status
{
}

/// converts tasks from V1.4 to V2.0
ClassMethod ToV20() As %Status
{
}

ClassMethod CreateSwitchJournal() As %Status
{
}

ClassMethod CreateSecurityScan() As %Status
{
}

ClassMethod CreateCleanSourceJournal() As %Status
{
}

ClassMethod CreatePurgeJournal() As %Status
{
}

ClassMethod CreatePurgeBackupLog() As %Status
{
}

ClassMethod CreatePurgeZENReports() As %Status
{
}

ClassMethod CreatePurgeAudit() As %Status
{
}

ClassMethod CreatePurgeTaskHistory() As %Status
{
}

ClassMethod CreateFreeSpaceTask() As %Status
{
}

ClassMethod CreateIntegrityCheck() As %Status
{
}

ClassMethod CreateDiagnosticReport() As %Status
{
}

ClassMethod CreateInventoryScan() As %Status
{
}

ClassMethod CreatePurgeErrorsAndLogs() As %Status
{
}

ClassMethod CreateCheckLogging() As %Status
{
}

ClassMethod CreateFeatureTracker() As %Status
{
}

ClassMethod CreatePurgeInteropUsageMetrics() As %Status
{
}

ClassMethod ScheduleInventoryScan() As %Status
{
}

ClassMethod InitializeSystemTasks() As %Status
{
}

ClassMethod SetHighValue() As %Status
{
}

}
