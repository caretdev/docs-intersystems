/// This class handles installation of the System Monitor Dashboard.
Class SYS.Monitor.DashboardInstaller Extends %RegisteredObject
{

/// This method is invoked to install the Dashboard kit in a InterSystems IRIS instance.
/// 'kitpath' is the directory of the unzipped Dashboard kit.
/// 'dev' indicates whether the CSP app should cache files.
/// 'update' will force the update of back end with DashboardSupport.xml even if DashboardSensors exists
ClassMethod Install(kitPath As %String, dev As %Integer = 0, update As %Boolean = 0) As %Status
{
}

ClassMethod MoveKitFiles(kitPath As %String, DBSensors As %Boolean) As %Status
{
}

ClassMethod CreateWebApplications(dev As %Boolean) As %Status
{
}

ClassMethod SetLibDBReadOnly(readOnly As %Integer, ByRef prevState = 1) As %Boolean
{
}

ClassMethod AddDashboardSensors() As %Status
{
}

/// Remove CSP Application and REST API
ClassMethod RemoveWebApplication() As %Status
{
}

}
