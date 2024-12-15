/// This class is used internally by InterSystems IRIS.
/// You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.<p>
///
/// Manage output of lines for CSP page class that is being created using Basic.
Class %CSP.BasicPageSection Extends %CSP.PageSection [ System = 3 ]
{

/// Create and save print text line for class that is being created.
Method WriteText(text As %String, crlf As %Boolean = 0) As %Status [ Internal ]
{
}

}
