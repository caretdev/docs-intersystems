/// %Api.Atelier.v8 provides version 8 APIs for Atelier
Class %Api.Atelier.v8 Extends %Api.Atelier.v7
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
}

/// <br/> This call queues an item for work. On success it returns 202 and sets the 'Location' header
/// <br/> to indicate where the results can be retrieved from with an HTTP GET.
/// <br/>
/// <br/>HTTP Codes returned:-
/// <br/>
/// <br/>HTTP 202 if Accepted
/// <br/>HTTP 404 if the request type does not exist
/// <br/>HTTP 500 if an error occurs (details will be in status error array)
///
ClassMethod QueueAsync(pNameSpace As %String) As %Status [ Internal ]
{
}

/// <br/> This call polls a queued item for console output and results. On success it returns 200.
/// <br/> Console output and results are found in the standard locations for Atelier REST APIs.
/// <br/> If there is more output expected the server will set the 'Retry-After' header. The client
/// <br/> should read this header to determine if another call should be made.
/// <br/> When the result of processing is available (or the work is finished) a GET to this API
/// <br/> will return any results in the 'content' field and (crucially) will NOT set the 'Retry-After'
/// <br/> header. This is an indication that processing is finished.
/// <br/>
/// <br/>HTTP Codes returned:-
/// <br/>
/// <br/>HTTP 200 if Accepted
/// <br/>HTTP 404 if the request ID does not exist
/// <br/>HTTP 423 if the global node is locked
/// <br/>HTTP 500 if an error occurs (details will be in status error array)
///
ClassMethod PollAsync(pNameSpace As %String, pID As %Integer) As %Status [ Internal ]
{
}

/// <br/> This call cancels a work request that has been previously queued.
/// <br/>
/// <br/>HTTP Codes returned:-
/// <br/>
/// <br/>HTTP 200 if Cancelled
/// <br/>HTTP 404 if the request ID does not exist
/// <br/>HTTP 423 if the global node is locked
/// <br/>HTTP 500 if an error occurs (details will be in status error array)
///
ClassMethod CancelAsync(pNameSpace As %String, pID As %Integer) As %Status [ Internal ]
{
}

/// This method performs the long-running work that was queued by the POST /work (QueueAsync) endpoint
ClassMethod ExecuteAsyncRequest(pID As %Integer) [ Internal ]
{
}

/// Delete any files created for unit test request <b>pID</b> and restore the value of <b>^UnitTestRoot</b>.
ClassMethod CleanUpAfterUnitTestRequest(pID As %Integer) [ Internal, Private ]
{
}

/// Convert unit test result global data into a JSON array.
ClassMethod UnitTestResultToJSON(pID As %Integer, ByRef pResult As %DynamicArray) As %Status [ Internal, Private ]
{
}

}
