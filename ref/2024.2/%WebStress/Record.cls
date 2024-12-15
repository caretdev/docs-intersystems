Class %WebStress.Record [ Abstract, System = 4 ]
{

///
/// Entry here to start a recording.<br>
///
/// Scriptname is a unique text<br>
///
/// browserPort is the port that this recording 'proxy' will listen on<br>
///
/// readTimeOut is the number of seconds to wait for responses from the web servers<br>
///
/// rtnName is the prefix that will be used for the ObjectScript routines when the randomisation routines are created for the script.
/// debug will cause the main controlling program to output to the principal device<br>
ClassMethod Run(scriptName As %String, browserPort As %Integer = 8080, rtnName As %String = "", readTimeout As %Integer = 10, TokenMode As %Boolean = 0, debug As %Boolean = 0) As %String
{
}

///
/// This is where we sit on the specified port number and wait for the connections to come through from the browser<br>
ClassMethod ConnectRead(browserPort As %Integer, readTimeout As %Integer, debug As %Boolean = 0)
{
}

///
/// Get the actual request content from the browser for one specific request
ClassMethod BrowserRead(browserPort As %Integer, pNumber As %Integer, readTimeout As %Integer)
{
}

///
/// This is where we send a specific request to the web server and get the responses<br>
ClassMethod Server(pNumber As %Integer, readTimeout As %Integer)
{
}

}
