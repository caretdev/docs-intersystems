/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
/// This class works in conjunction with the <i>CacheDWX.dll</i>
/// and provides server-side
/// DreamWeaver integration.
Class %CSP.DwxQuery Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

/// Return 1 to indicate presence of this class.
ClassMethod Exists() As %Boolean [ Internal ]
{
}

/// Get list of classes.
/// Execute method for ClassList
ClassMethod ClassListExecute(ByRef QHandle As %Binary) As %Status [ Internal ]
{
}

/// Close method for ClassList
ClassMethod ClassListClose(QHandle As %Binary) As %Status [ Internal ]
{
}

/// Fetch method for ClassList
ClassMethod ClassListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

/// Get list of classes.
/// Execute method for ClassQueryList
ClassMethod ClassQueryListExecute(ByRef QHandle As %Binary) As %Status [ Internal ]
{
}

/// Close method for ClassQueryList
ClassMethod ClassQueryListClose(QHandle As %Binary) As %Status [ Internal ]
{
}

/// Fetch method for ClassQueryList
ClassMethod ClassQueryListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

/// Get list of members that can be used by Wizard for a specific class.
/// Execute method for MemberList
ClassMethod MemberListExecute(ByRef QHandle As %Binary, class As %String) As %Status [ Internal ]
{
}

/// Close method for MemberList
ClassMethod MemberListClose(QHandle As %Binary) As %Status [ Internal ]
{
}

/// Fetch method for MemberList
ClassMethod MemberListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

/// Get list of columns that can be used by Wizard for a specific query.
/// Execute method for QueryColumnList
ClassMethod QueryColumnListExecute(ByRef QHandle As %Binary, query As %String) As %Status [ Internal ]
{
}

/// Close method for QueryColumnList
ClassMethod QueryColumnListClose(QHandle As %Binary) As %Status [ Internal ]
{
}

/// Fetch method for QueryColumnList
ClassMethod QueryColumnListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

/// Get list of CSP pages.
/// Execute method for CSPList
ClassMethod CSPListExecute(ByRef QHandle As %Binary) As %Status [ Internal ]
{
}

/// Get list of files for CSP path
ClassMethod CSPListDoDir(files As %ArrayOfDataTypes, url As %String, path As %String, recurse As %Boolean) [ Internal ]
{
}

/// Close method for CSPList
ClassMethod CSPListClose(QHandle As %Binary) As %Status [ Internal ]
{
}

/// Fetch method for CSPList
ClassMethod CSPListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

}
