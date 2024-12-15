/// %Api.Atelier.v7 provides version 7 APIs for Atelier
Class %Api.Atelier.v7 Extends %Api.Atelier.v6
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
}

ClassMethod RunTerminal() As %Status
{
}

/// This method gets the text of one or more documents in a single legacy XML file.
/// <br/>
/// <br/>The method expects a content body to be encoded in JSON and contain an
/// <br/>array of items (document names) to be exported. Note that items may also
/// <br/>use ? or * wild cards and if you wish to exclude items pass ' before the item name:
/// <pre>
/// [ "User.Test.cls", "abc*.mac" ]
/// </pre>
/// <br/>HTTP Codes returned:-
/// <br/>
/// <br/>HTTP 200 if OK
/// <br/>HTTP 400 if the posted content is empty or not valid json
/// <br/>HTTP 415 if content type is not application/json
/// <br/>HTTP 500 if an error occurs (details will be in status error array)
/// <br/>
/// <br/>Returned content is an array of lines of the legacy XML file:
/// <br/>
/// <pre>
/// {
///   "status": {
///     "errors": [],
///     "summary": ""
///   },
///   "console": [],
///   "result": {
///     "content": [
///       "&lt;?xml version="1.0" encoding="UTF-8"?&gt;",
///       ...
///     ]
///   }
/// }
/// </pre>
ClassMethod ExportToXMLFile(pNamespace As %String) As %Status
{
}

/// This method loads and optionally compiles the selected documents within legacy XML files.
/// <br/>
/// <br/>The method expects a content body to be encoded in JSON and contain an
/// array of objects, one for each XML file. Each object must contain a string to identify the file
/// (for example, its filesystem path) and a content array containing the lines of the file.
/// An array of specific documents to import may be provided. If omitted, all documents in the XML file are imported:
/// <pre>
/// [
///   {
///     "file": "/path/to/file.xml",
///     "content": [
///       "&lt;?xml version="1.0" encoding="UTF-8"?&gt;",
///       ...
///     ],
///     "selected": [
///       "User.Test.cls"
///     ]
///   }
/// [
/// </pre>
/// <br/>HTTP Codes returned:-
/// <br/>
/// <br/>HTTP 200 if OK
/// <br/>HTTP 400 if the posted content is empty or not valid json
/// <br/>HTTP 415 if content type is not application/json
/// <br/>HTTP 500 if an error occurs (details will be in status error array)
/// <br/>
/// <br/>The URL parameter ?flags=&lt;string&gt; can be passed to modify the load
/// <br/>behavior. The list of supported flags or qualifiers can be displayed with
/// <br/>'Do $system.OBJ.ShowQualifiers()' and 'Do $system.OBJ.ShowFlags()'.
/// <br/>
/// <br/>Return content is an array of objects, one per XML file. Each object contains
/// the identifier of the XML file, an array containing the names of all documents
/// from that file that were successfully imported, and a status string if an error occurred while importing it:
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
///         "file": "/path/to/file.xml",
///         "status": "",
///         "imported": [
///           "User.Test.cls"
///         ]
///       }
///     ]
///   }
/// }
/// </pre>
/// NOTE: If you are experiencing timeouts using this method, consider calling
/// method Load() in class <CLASS>%SYSTEM.OBJ</CLASS> from a terminal instead.
ClassMethod LoadXMLFiles(pNamespace As %String) As %Status
{
}

/// This method gets the names and timestamps of documents contained in legacy XML files.
/// <br/>
/// <br/>The method expects a content body to be encoded in JSON and contain an
/// array of objects, one for each XML file. Each object must contain a string to identify the file
/// (for example, its filesystem path) and a content array containing the lines of the file:
/// <pre>
/// [
///   {
///     "file": "/path/to/file.xml",
///     "content": [
///       "&lt;?xml version="1.0" encoding="UTF-8"?&gt;",
///       ...
///     ]
///   }
/// [
/// </pre>
/// <br/>HTTP Codes returned:-
/// <br/>
/// <br/>HTTP 200 if OK
/// <br/>HTTP 400 if the posted content is empty or not valid json
/// <br/>HTTP 415 if content type is not application/json
/// <br/>HTTP 500 if an error occurs (details will be in status error array)
/// <br/>
/// <br/>Return content is an array of objects, one per XML file. Each object contains
/// the identifier of the XML file, an array containing the names and timestamps of the
/// documents, and a status string if an error occurred while processing it:
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
///         "file": "/path/to/file.xml",
///         "status": "",
///         "documents": [
///           {
///             "name": "User.Test.cls",
///             "ts": "2016-01-04 14:00:04.000"
///           }
///         ]
///       }
///     ]
///   }
/// }
/// </pre>
/// NOTE: If you are experiencing timeouts using this method, consider calling
/// method Load() in class <CLASS>%SYSTEM.OBJ</CLASS> from a terminal instead.
ClassMethod ListDocumentsInXMLFiles(pNamespace As %String) As %Status
{
}

}
