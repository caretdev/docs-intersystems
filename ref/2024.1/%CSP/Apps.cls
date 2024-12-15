/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
/// Provide two queries to enumerate the CSP applications in this namespace, and
/// then to enumerate the files and directories for each of these applications.
Class %CSP.Apps Extends %RegisteredObject [ System = 3 ]
{

/// Query to enumerate CSP applications.
/// Execute method for query to enumerate CSP applications.
ClassMethod CSPAppListExecute(ByRef QHandle As %Binary) As %Status [ Internal ]
{
}

/// Close method for query to enumerate CSP applications.
ClassMethod CSPAppListClose(QHandle As %Binary) As %Status [ Internal ]
{
}

/// Fetch method for query to enumerate CSP applications.
ClassMethod CSPAppListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

/// Query to enumerate CSP files and directories.
/// Execute method for query to enumerate CSP files and directories.
ClassMethod CSPFileSetExecute(ByRef QHandle As %Binary, url As %String) As %Status [ Internal ]
{
}

/// Close method for query to enumerate CSP files and directories.
ClassMethod CSPFileSetClose(QHandle As %Binary) As %Status [ Internal ]
{
}

/// Fetch method for query to enumerate CSP files and directories.
ClassMethod CSPFileSetFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

}
