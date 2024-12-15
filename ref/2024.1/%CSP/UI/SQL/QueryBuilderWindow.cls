/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Popup window that display an SQL Query builder form.
Class %CSP.UI.SQL.QueryBuilderWindow Extends %CSP.Util.AutoPagePopup [ System = 4 ]
{

Parameter PAGENAME = "SQL Query Builder";

Parameter USENAMESPACE = 1;

/// Ensure user has %Development:USE
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Get the details pane info object
ClassMethod GetDetailPane(pInstance As PageInstance) As Pane
{
}

/// Define buttons displayed in footer bar
ClassMethod OnDefineButtons(ByRef pButtons As %CSP.Util.FormButton)
{
}

}
