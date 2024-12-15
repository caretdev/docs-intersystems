/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Navigator Pane for System Managment Portal.
Class %CSP.Util.SMNavigatorPane Extends %CSP.Util.Pane [ ServerOnly = 1, System = 4 ]
{

/// If true, then the max rows textbox is display.
Property ShowMaxRows As %Boolean [ InitialExpression = 0 ];

/// If 1, then namespace listbox displays.
/// If 0, then namespace name displays.
Property ShowNamespaces As %Boolean;

/// If 1, then namespace listbox allows choice of databases as well.
Property ShowDatabases As %Boolean [ InitialExpression = 0 ];

/// If true, then schema listbox is display.
Property ShowSchemas As %Boolean [ InitialExpression = 0 ];

/// Border of table (default is 0)
Property border As %Integer;

/// Cellspacing (default is 0)
Property cellspacing As %Integer;

/// Cellpadding (default is 0)
Property cellpadding As %Integer;

/// Table background color
Property bgcolor As %String(TRUNCATE = 1);

Method DrawBODY(pInstance As PageInstance) As %Status
{
}

Method OnGenerateCode() As %String
{
}

/// Overwritten by subclasses to draw anything this pane needs for the HEAD section.
Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

/// Generic method to get Schemas for the current namespace.
/// Namespace array is returned by reference.
ClassMethod GetSchemas(ByRef Schemas As %String) As %Integer
{
}

/// Generic method to get namespaces from the ACTIVE Configuration file.<br>
/// Namespace array is returned by reference.<br>
ClassMethod GetAllNamespaces(ByRef Namespaces As %String, ByRef ShardInfo As %String = 0) As %Integer
{
}

/// Generic method to get databases
/// Databases array is returned by reference.<br>
/// Remote databases are included
ClassMethod GetAllDatabases(ByRef Databases As %String) As %Integer
{
}

/// Generic method to get namespaces from the ACTIVE Configuration file.
/// Namespace array is returned by reference.
/// Returns array of namespaces the user has Read or Write privileges in.
ClassMethod GetNamespaces(ByRef Namespaces As %String) As %Integer
{
}

}
