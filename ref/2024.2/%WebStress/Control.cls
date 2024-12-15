Class %WebStress.Control Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

/// Incremental number associated with each test
Property RunNumber As %Integer;

/// The test identifier
Property Test As %String(TRUNCATE = 1);

/// The status code associated with the test
Property Status As %String(DISPLAYLIST = ",Unknown,Preparing,Waiting,Warmup,Recording,Cooldown,Stopping,Stopped,Error", TRUNCATE = 1, VALUELIST = ",0,1,2,3,4,5,6,7,8") [ InitialExpression = 0 ];

/// A description of the last error
Property ErrorText As %String(MAXLEN = 255, TRUNCATE = 1);

/// An array containing the progress of the test preparation
Property Progress As array Of %WebStress.Control.Progress;

/// An array constructed when the encryption flag is being changed on the application servers
Property AppServerStatus As array Of %WebStress.Control.AppServers;

/// An array showing the number of processes started on each generator
Property ProcessStatus As array Of %WebStress.Control.Processes;

/// Shows the control status on each generator
Property GeneratorStatus As array Of %WebStress.Control.GeneratorStatus;

/// The list of jobs running on a generator
Property Jobs As array Of %String(TRUNCATE = 1);

/// The job number of the monitor process
Property MonitorJob As %String(TRUNCATE = 1);

/// A string uniquely identifying this system (hostname_namespace_manager's directory)
Property SystemIdentifier As %String(TRUNCATE = 1);

/// The time difference (secs) between the starting machine and the other generators
Property TimeDiff As %Integer;

Property TimeStart As %TimeStamp;

Property TimeStop As %TimeStamp;

/// A description of this run
Property RunDescription As %String(TRUNCATE = 1);

ClassMethod StartPrepare(testID As %String, runDescription As %String) As %String
{
}

ClassMethod Prepare(testID As %String, runDescription As %String) As %Status
{
}

ClassMethod CheckGeneratorRunStatus(testID) As %Status
{
}

ClassMethod CheckGeneratorIsRunning(testID As %String) As %Status
{
}

ClassMethod GetGeneratorDetails(testID As %String, ByRef generators As %String) As %Status
{
}

ClassMethod GeneratorRunStatus(testID As %String, senderID As %String) As %WebStress.Control.GeneratorStatus
{
}

ClassMethod GeneratorIsRunning(testID As %String, senderID As %String) As %WebStress.Control.GeneratorStatus
{
}

ClassMethod SetAppEncrypt(testID As %String, value As %Integer) As %Status
{
}

ClassMethod GetAppServerStats(testID As %Integer, runID As %Integer, ByRef appServerStats As %String)
{
}

ClassMethod SetError(testID As %String, status As %String, message As %String)
{
}

ClassMethod SetProgress(testID As %String, message As %String)
{
}

ClassMethod GeneratorProcs(testID As %String, runNumber As %Integer, runDescription As %String) As %Status
{
}

/// This prepares all the background processes ready for the test
ClassMethod StartProcs(testID As %String, runNumber As %Integer, param As %Integer, senderID As %String, senderTime As %Integer) As %WebStress.Control
{
}

ClassMethod StartMonitor(runNumber As %Integer, testID As %String, senderID As %String, runDescription As %String) As %String
{
}

/// This is the background process that will monitor the progress of the run
ClassMethod Monitor(runNumber As %Integer, testID As %String, senderID As %String, runDescription As %String)
{
}

ClassMethod RunningCount(testID) As %Integer
{
}

ClassMethod GetMaxRunNumber(testID As %String) As %Integer
{
}

ClassMethod TestStart(testID As %String) As %Status
{
}

ClassMethod TestStop(testID As %String) As %Status
{
}

ClassMethod SystemID() As %String
{
}

ClassMethod AnyTestsRunning() As %Integer
{
}

ClassMethod GetErrors(testID As %String, runID As %Integer, scriptID As %String) As %GlobalCharacterStream
{
}

ClassMethod BuildResultIterations(TestID As %Integer, RunID As %Integer, desc As %String = "")
{
}

ClassMethod SavePage(saveDir As %String, scriptID As %Integer, iteration As %Integer, url As %String, response As %Stream.GlobalCharacter)
{
}

ClassMethod Clean() As %Status
{
}

}
