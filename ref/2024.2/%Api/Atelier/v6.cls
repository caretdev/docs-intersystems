/// %Api.Atelier.v6 provides version 6 APIs for Atelier
Class %Api.Atelier.v6 Extends %Api.Atelier.v5
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
}

/// This method returns the results of running the specified query in the specified namespace.
/// <br/>The request body is simply a JSON object which specifies the query:
/// <pre>
/// {
///   "query": "SELECT TOP 1 Name FROM %Dictionary.ClassDefinition",
///   "parameters" : []
/// }
/// </pre>
/// <br/>The URL parameter ?max= can be passed to specify the maximum number of rows to return.
/// The value must be a positive integer or the default behavior (return all rows) will be used.
/// <br/>
/// <br/>HTTP Codes returned:-
/// <br/>
/// <br/>HTTP 200 if OK
/// <br/>HTTP 415 if the we are not passed application/json as the content type
/// <br/>HTTP 500 if an error occurs (details will be in status error array)
/// <br/>
/// <br/>If the URL parameter ?positional=1 is passed, the return object key will contain an array of objects,
/// one for each result set, that contains the column metadata and the values for each row in separate arrays:
/// <pre>
/// {
///   "status": {
///     "errors": [],
///     "summary": ""
///   },
///   "console": [],
///   "result": [
///      {
///        "columns": [
///          {
///            "name": "Name",
///            "type": "VARCHAR(4096)"
///          }
///        ],
///        "content": [
///          [
///            "%Api.Atelier"
///          ]
///        ]
///      }
///   ]
/// }
/// </pre>
/// <br/>If the positional URL parameter is not passed or the value is not 1, the return content will be an array of objects.
/// <br/>The objects contain information relating to each row returned by the query:
/// <pre>
/// {
///   "status": {
///     "errors": [],
///     "summary": ""
///   },
///   "console": [],
///   "result": {
///     "content": [
///       {
///         "Name": "%Api.Atelier"
///       }
///     ]
///   }
/// }
/// </pre>
ClassMethod Query(pNamespace As %String) As %Status
{
}

/// Helper method for Query
/// Appends result set (%SQL.StatementResult) to an array.
/// Largely copied from %DataModel.Document.Server.SQL.Query
/// If <var>pMax</var> is -1 (the default), return all rows. Else, returns <var>pMax</var> rows.
/// If <var>pPositional</var> is 1, create an object with column metadata and the values for each row returned as an array.
/// Else (the default), use the same return format as versions 1-5.
ClassMethod AppendResultSet(pArray As %DynamicArray, pResult As %SQL.StatementResult, pMax As %Integer = -1, pPositional As %Boolean = 0) As %Status [ Internal, Private ]
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

/// Convert find in files console output into a JSON array.
/// Extracted from the end of <CLASS>%Api.Atelier.v2</CLASS>::Search().
ClassMethod SearchOutputToJSON(pMsgArray As %DynamicArray, ByRef pResult As %DynamicArray) As %Status [ Internal, Private ]
{
}

/// This is a background job that monitors the queue for work to do
ClassMethod ExecuteAsyncRequest(pID As %Integer) [ Internal ]
{
}

ClassMethod AsyncRequestBeginCapture(pID As %Integer, Output pCookie As %String) As %Status [ Internal, ProcedureBlock = 0 ]
{
}

ClassMethod AsyncRequestEndCapture(pCookie As %String) As %Status [ Internal ]
{
}

/// Purge the ^IRIS.TempAtelierAsyncQueue global of any request data that is over a day old.
/// Theoretically there should be nothing to clean up but this is needed in case
/// some error occurs and request data is left behind.
ClassMethod PurgeAsyncQueue() As %Status [ Internal ]
{
}

}
