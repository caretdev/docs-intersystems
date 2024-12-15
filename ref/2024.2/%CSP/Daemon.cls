/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
/// The %CSP.Daemon class runs to cleanup expired CSP sessions.
Class %CSP.Daemon [ System = 3 ]
{

/// Purge our performance counters
ClassMethod CleanPerfCounters()
{
}

/// The main body of the CSP Daemon
ClassMethod Run() [ Internal ]
{
}

/// Called when a session timeout is detected.
ClassMethod SessionTimeout(sessionId As %String, ts As %String, skiplock As %Boolean = 0) As %Boolean [ Internal ]
{
}

ClassMethod purgeHistoricConnections() [ Internal ]
{
}

/// cspServer now stores security-context/tokens in 'Security Limbo'. These security objects timeout and become zombies.
/// The Daemon uses purgeZombieSecurityTokens() to get rid of any timed out security tokens.
ClassMethod purgeZombieSecurityTokens() [ Internal ]
{
}

/// The CSP Gateway requests cleanup after themselves if they are called successfully.
/// However, if an error occurs some data may be left around. So every once in a while
/// we clean up anything left around
ClassMethod purgeCSPRequests(purgeToThisStream As %Integer) As %Integer [ Internal ]
{
}

ClassMethod purgeGroupEntries()
{
}

}
