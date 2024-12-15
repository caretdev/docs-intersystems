/// Utility methods used by SMP - mostly by background jobs called from %CSP.UI.System.BackgroundTask.
Class %CSP.UI.System.Utils Extends %RegisteredObject [ System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Method to Compile in the background (copied from %CSP.UI.System.CompilePane)
ClassMethod Compile(ByRef pParms As %String, ByRef tItems As %String) As %Status
{
}

/// Method to Export in the background
ClassMethod Export(FileName As %String, ExportFormat As %String, ByRef pParms As %String, ByRef tItems As %String) As %Status
{
}

/// Method to Import in the background
ClassMethod Import(FileName As %String, ByRef pParms As %String, ByRef tItems As %String) As %Status
{
}

/// Log error into ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"Status") and ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"Details")
ClassMethod LogMsg(ErrMsg As %String = "", Status As %String = "ERROR")
{
}

/// This method will delete the temporary file used when importing data from a file on the user's
/// local machine. It will only delete files from the system Temp directory.
ClassMethod DeleteLocalUpload(FileName As %String)
{
}

}
