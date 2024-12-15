Class %WebStress.Playback.Session Extends (%SerialObject, %XML.Adaptor) [ System = 4 ]
{

/// The HttpRequest object that this session will use to communicate with the web server
Property HttpRequest As %Net.HttpRequest;

/// A boolean flag that shows whether or not this session is in 'record' mode
Property Record As %Integer [ InitialExpression = 0 ];

/// The number of iterations of a script that this session has made
Property Iterations As %Integer [ InitialExpression = 0 ];

/// The web server to be used by this session
Property WebServer As %String;

/// The cookie that will be used by this session.
/// The session makes a call to the server before any playback starts to get the initial session data.
Property CSPSessionCookie As %String(MAXLEN = "");

/// The token that will be used by this session (if cookies are not being sent by the server). This is the CSPCHD token
/// The session makes a call to the server before any playback starts to get the initial session data.
Property CSPSessionToken As %String(MAXLEN = "");

/// The type of session ID that will be used (see above)
Property CSPSessionType As %String(DISPLAYLIST = ",Cookie,Token", VALUELIST = ",C,T");

}
