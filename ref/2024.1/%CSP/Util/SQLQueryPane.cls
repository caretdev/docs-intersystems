/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This pane displays the results of an SQL query within an HTML table.
Class %CSP.Util.SQLQueryPane Extends %CSP.Util.TablePane [ System = 4 ]
{

/// Default localization domain used for column headers
Parameter COLUMNDOMAIN = "%UtilityColumns";

/// Default localization domain used for column headers help messages
Parameter COLUMNHELPDOMAIN = "%UtilityColumnHelp";

/// If true (default) run column name through localization
Property LocalizeColumns As %Boolean [ InitialExpression = 1 ];

Method OnDrawHEADTablePane(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// Draw the BODY of the detail pane
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

/// Subclass can override this to specify the name of column used
/// to distinctly color rows
Method GetColorByColumn() As %String
{
}

/// Lookup a column name in the localization global and return localized
/// version if present
ClassMethod LocalizeColumnName(pName As %String, Output pHelpMsg) As %String
{
}

}
