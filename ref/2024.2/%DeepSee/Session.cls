/// This class provides the API for DeepSee sessions.
/// An instance of this class represents the current session.
Class %DeepSee.Session Extends %RegisteredObject [ System = 3 ]
{

/// Id for this session.
Property sessionId As %String;

/// Create a new DeepSee session.
/// If <var>pSessionId</var> is provided, then it used,
/// otherwise $J is used.
ClassMethod %CreateSession(pSessionId As %String = "", Output pSC As %Status) As Session
{
}

/// Terminate this DeepSee session and remove all definitions
/// associated with it.
Method %EndSession() As %Status
{
}

/// Resume a previously running session.
ClassMethod %ResumeSession(pSessionId As %String = "", Output pSC As %Status) As Session
{
}

/// Suspend the currently running session.
Method %SuspendSession() As %Status
{
}

/// Get the session ID for this session.
Method %GetSessionId() As %Status
{
}

Method %OnNew() As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method %OnClose() As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// If this process does not already have a collection of shared memory keys stored in <var>%dsTrackingKeys</var>, create them.
ClassMethod %GetTrackingKeys() As %Status [ Internal ]
{
}

}
