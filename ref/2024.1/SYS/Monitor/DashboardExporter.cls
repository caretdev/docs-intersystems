Class SYS.Monitor.DashboardExporter Extends %RegisteredObject
{

ClassMethod GenerateRelease(exportLocation As %String, exportName As %String = "unversioned-release", dashboardLocation As %String = "../CSP/sys/app", dashboardName As %String = "dashboard", ByRef errors As %String) As %Status
{
}

ClassMethod ExportSrc(exportLocation As %String, exportName As %String = "uversioned-source-code", dashboardLocation As %String = "../CSP/sys", dashboardName As %String = "dashboard", ByRef errors As %String) As %Status
{
}

ClassMethod ExportKit(exportLocation As %String, exportName As %String = "uversioned-quick-start-kit", dashboardLocation As %String = "../CSP/sys", dashboardName As %String = "dashboard", ByRef errors As %String) As %Status
{
}

/// Export all necessary support classes, routine and CSP pages for Dashboard add-on installation
ClassMethod ExportSupport(exportLocation As %String = "", exportName As %String = "DashboardSupport.xml", ByRef errors As %String) As %Status
{
}

/// Export the Dashboard Installer class
ClassMethod ExportInstaller(exportLocation As %String = "", exportName As %String = "DashboardInstaller.xml", ByRef errors As %String) As %Status
{
}

/// Checks the SourceRoot for newer versions of files
ClassMethod GetLatest(ByRef list) As %Status
{
}

}
