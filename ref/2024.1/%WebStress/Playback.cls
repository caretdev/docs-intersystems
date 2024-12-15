Class %WebStress.Playback Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

/// This process ID
Property ProcessID As %String [ InitialExpression = {$job} ];

/// A unique number representing this run
Property RunID As %Integer;

/// Container for the Run object
Property Run As %WebStress.Run;

/// Pointer to %WebStress.Tests
Property TestID As %Integer;

/// Container for the %WebStress.Tests object
Property Test As %WebStress.Tests;

/// Pointer to %WebStress.Scripts
Property ScriptID As %Integer;

/// Container for the %WebStress.Script object
Property Script As %WebStress.Scripts;

/// The name of the generator that will be used to generate the traffic
Property Generator As %String;

/// The address of the web server that will be used
Property WebServer As %String;

/// The port number on the web server
Property WebServerPort As %Integer;

/// The number of sessions per process
Property Sessions As %Integer;

/// The date that the test run will start. Can be blank.
Property StartDate As %Date;

/// The date that the test run will stop. Can be blank.
Property StopDate As %Date;

/// The time that the test run will start. Can be blank.
Property StartTime As %Time;

/// The time that the test run will stop. Can be blank.
Property StopTime As %Time;

/// The number of minutes that the test will run. Used instead of start/stop date/time or can be blank if start/stop date/time are used.
Property RunMins As %Integer;

/// The number of minutes that the test will run for before recording the statistics starts.
/// <br>
/// This is to ensure that all the processes are running and that a consistent load is being applied to the server before the recording starts.
/// <br>
/// The value should be long enough to ensure that each script is able to run through to completion at least once
Property WarmUpMins As %Integer;

/// The number of minutes that the test will run for at the end of recording the statistics.
/// <br>
/// This ensures that we do not get any abnormally 'quick' timings at the end of statistics recording due to a lower load on the server.
Property CoolDownMins As %Integer;

/// The number of seconds to pause at the end of each script.
/// <br>
/// This gives a more realistic playback as 'human' input would normally pause before running the same workflow again.
Property ScriptPause As %Integer;

/// This is a pointer to the URL in the script that we will loop back to rather than just back to the first URL.
/// <br>
/// This may because the first URL is thestart of the user login process and we don't want to have the 'virtual user' logging in every time.
Property LoopBackURL As %Integer;

/// This is the percentage of the time that the LoopBackURL will be used rather than the first URL
Property LoopBackPcnt As %Integer;

/// The difference between the time on this machine and the time on the 'controller' (The system that initiated the run)
Property TimeDiff As %Float;

/// This property used internally for debugging and logging purposes.
Property debug As %Boolean;

/// A flag that indicates whether or not to save the returned page information into disk files.
Property SavePage As %Boolean;

/// The root directory of where to sabe the returned page details if indicated to do so by the SavePage property
Property SavePageDir As %String;

/// Used to hold an array of all the page types where we specify no delay before making the call
Property NoDelay As array Of %String;

/// Used to hold an array of all the page types where we don't want to record statistics
Property NoResults As array Of %String;

/// A collection of sessions for this process
Property HttpSessions As list Of %WebStress.Playback.Session;

Property RecordStart As %Integer;

Property RecordStop As %Integer;

Property TestStop As %Integer;

Property ProxyAddress As %String;

Property ProxyPort As %Integer;

Property SSLConfiguration As %String;

Property NextInvoke As %String [ MultiDimensional ];

Property Status As %WebStress.Playback.Status;

/// The array showing which session is to be run next
/// Enter here to start the run processing
ClassMethod Run(RunID As %Integer, TestID As %Integer, ScriptID As %Integer, Generator As %String, WebServer As %String, WebServerPort As %Integer = 80, Sessions As %Integer = 1, StartDate As %Date = "", StopDate As %Date = "", StartTime As %Time = "", StopTime As %Time = "", RunMins As %Integer, WarmUpMins As %Integer, CoolDownMins As %Integer, ScriptPause As %Integer, LoopBackUrl As %Integer = "", LoopBackPcnt As %Integer = "", TimeDiff As %Integer, debug As %Boolean = 0, Visual As %Boolean = 0, SavePage As %Boolean = 0, SavePageDir As %String, ProxyAddress As %String, ProxyPort As %Integer, SSLConfiguration As %String)
{
}

/// This runs the playback
Method Playback()
{
}

Method RunStop(controller As %Boolean = 0) As %Boolean
{
}

ClassMethod RunWait(TestID As %Integer, StartDate As %Integer, StopDate As %Integer, StartTime As %Integer, StopTime As %Integer, debug As %Boolean) As %Integer
{
}

Method CheckRecordStatus()
{
}

Method GetTimes()
{
}

/// This is called before a URL call is made to the server. Normally to reset any parameters
Method PreExecute(ByRef objUrl As %WebStress.Scripts.URLS, ByRef params As %String) [ ProcedureBlock = 0 ]
{
}

/// Called after a URL call has been made to the server
Method PostExecute(ByRef objUrl As %WebStress.Scripts.URLS) [ ProcedureBlock = 0 ]
{
}

/// Called after each call to check the page error status
Method ErrorCheck(ByRef errorStatus As %Integer = 0, errorText As %String = "", ByRef objUrl As %WebStress.Scripts.URLS, session As %Integer, urlId As %Integer) [ ProcedureBlock = 0 ]
{
}

/// This is called at the start of the full script
Method PreRunCode(ByRef objUrl As %WebStress.Scripts.URLS, session As %Integer, urlId As %Integer) [ ProcedureBlock = 0 ]
{
}

/// This is called at the end of the full script
Method PostRunCode() [ ProcedureBlock = 0 ]
{
}

Method SetError(session As %Integer, urlId As %Integer, objUrl As %WebStress.Scripts.URLS, errorStatus As %Integer, errorText As %String)
{
}

}
