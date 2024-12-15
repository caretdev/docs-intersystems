/// The override of %CSP.SessionEvents to allow us to clean up access tokens that are linked to the session
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class OAuth2.SessionEvents Extends %CSP.SessionEvents [ System = 4 ]
{

/// Called when the session is about to be deleted, either because of a timeout (in which case
/// <method>OnTimeout</method> is called first) or because the application
/// has explicitly closed this session. Use the %session object to examine this session. If you wish to
/// abort this deletion then:
/// <example>
/// Set %session.EndSession=0
/// </example>
ClassMethod OnEndSession()
{
}

}
