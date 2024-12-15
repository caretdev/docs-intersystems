Class %WebStress.Comms.Server Extends %SOAP.WebService [ System = 4 ]
{

ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Name of the WebService.
Parameter SERVICENAME = "%WebStress";

/// TODO: change this to actual network address.
/// URL for invoking the WebService.
Parameter LOCATION = "http://localhost/csp/webdeploy";

/// TODO: change this to actual SOAP namespace.
/// SOAP Namespace for the WebService
Parameter NAMESPACE = "http://tempuri.org";

/// Prepares the processes ready for the test
ClassMethod StartProcs(testID As %String, runNumber As %Integer, param As %Integer, senderID As %String, senderTime As %Integer) As %WebStress.Control [ WebMethod ]
{
}

ClassMethod StartMonitor(runNumber As %Integer, testID As %String, senderID As %String, runDescription As %String) As %Status [ WebMethod ]
{
}

ClassMethod DownloadData(stream As %GlobalBinaryStream, senderID As %String) As %String [ WebMethod ]
{
}

ClassMethod BuildCode(stream As %GlobalBinaryStream, senderID As %String) As %String [ WebMethod ]
{
}

ClassMethod CheckDataValid(request As %WebStress.Control.ValidData.Request) As %WebStress.Control.ValidData.Response.Generators [ WebMethod ]
{
}

ClassMethod CheckGeneratorRunStatus(testID As %String, senderID As %String) As %WebStress.Control.GeneratorStatus [ WebMethod ]
{
}

ClassMethod CheckGeneratorIsRunning(testID As %String, senderID As %String) As %WebStress.Control.GeneratorStatus [ WebMethod ]
{
}

ClassMethod GetMaxRunNumber(testID As %String) As %Integer [ WebMethod ]
{
}

ClassMethod TestStart(testID As %String) As %Integer [ WebMethod ]
{
}

ClassMethod TestStop(testID As %String) As %Integer [ WebMethod ]
{
}

ClassMethod GetRunData(testID As %String) As %String [ WebMethod ]
{
}

ClassMethod GetIterationData(testID As %String, run As %Integer) As %String [ WebMethod ]
{
}

ClassMethod StartDataTransfer(runID As %Integer, testID As %String, serverPort As %Integer, senderID As %String, generator As %String) As %String [ WebMethod ]
{
}

ClassMethod ResetControlData(testID As %String, senderID As %String) As %String [ WebMethod ]
{
}

ClassMethod AnyTestsRunning() As %Integer [ WebMethod ]
{
}

ClassMethod GetErrors(testID As %String, runID As %Integer, scriptID As %String) As %GlobalCharacterStream [ WebMethod ]
{
}

ClassMethod GetGenID() As %String [ WebMethod ]
{
}

ClassMethod TestAuthenticate() As %Status [ WebMethod ]
{
}

}
