Class %WebStress.Comms.Client Extends %SOAP.WebClient [ Not ProcedureBlock, System = 4 ]
{

/// This is the URL used to access the web service.
Parameter LOCATION = "http://localhost/csp/webdeploy/%WebStress.Comms.Server.cls";

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://tempuri.org";

/// This is the name of the Service
Parameter SERVICENAME = "%WebStress";

Method DownloadData(stream As %GlobalBinaryStream, senderID As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method DownloadCode(stream As %GlobalBinaryStream, senderID As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method StartProcs(testID As %String, runNumber As %Integer, param As %Integer, senderID As %String, senderTime As %Integer) As %WebStress.Control [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method StartMonitor(runNumber As %Integer, testID As %String, senderID As %String, runDescription As %String) As %Status [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method CheckDataValid(request As %WebStress.Control.ValidData.Request) As %WebStress.Control.ValidData.Response.Generators [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method CheckGeneratorRunStatus(testID As %String, senderID As %String) As %WebStress.Control.GeneratorStatus [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method CheckGeneratorIsRunning(testID As %String, senderID As %String) As %WebStress.Control.GeneratorStatus [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method GetMaxRunNumber(testID As %String) As %Integer [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method TestStart(testID As %String) As %Integer [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method TestStop(testID As %String) As %Integer [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method GetRunData(testID As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method GetIterationData(testID As %String, run As %Integer) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method StartDataTransfer(runID As %Integer, testID As %String, serverPort As %Integer, senderID As %String, generator As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method ResetControlData(testID As %String, senderID As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method AnyTestsRunning() As %Integer [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method GetErrors(testID As %String, runID As %Integer, scriptID As %String) As %GlobalCharacterStream [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method GetGenID() As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

Method TestAuthenticate() As %Status [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
/// If instead of returning a %Status code this returns an oref and this oref is a subclass of the current
/// class then this oref will be the one returned to the caller of %New method.
Method %OnNew(generator As %String, location As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

}
