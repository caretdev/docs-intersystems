/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>An AutoPage pane that displays a table based on a class query.
/// This class is used for SQL Manager utilities
Class %CSP.UI.SQL.SQLPane Extends %CSP.Util.Pane [ System = 4 ]
{

/// Return CQ infor
ClassMethod listCQ(ByRef listRec As %String, ByRef listTH As %String, ByRef tQuery As %String) As %Integer
{
}

/// Name of the class query that provides info for the Table.<BR>
/// This is a full name: e.g., "Package.Class:QueryName"
/// In this SYSTEM class the Query is used to store the function name
Property Query As %String(MAXLEN = 128);

/// Name of the class method that provides info for the Cached Query.<BR>
/// This is a full name: e.g., "Package.Class:MethodName"
/// In this SYSTEM class the Method is used to store the function name
Property Method As %String(MAXLEN = 128);

/// An array of actions, indexed by column name in the query.
/// These are associated with columns in a table.<BR>
/// If the subscript name starts with a $, then the
/// action is displayed as an additional column in the table.
Property Actions As array Of %CSP.Util.Action(XMLKEYNAME = "name");

/// If true, then rows are displayed using zebra styling.
Property ShowZebra As %Boolean [ InitialExpression = 0 ];

/// If true, then rows numbers are displayed.
Property ShowRowNumbers As %Boolean [ InitialExpression = 0 ];

/// If true, then rows in the table can be sorted.
Property Sortable As %Boolean [ InitialExpression = 0 ];

/// Max number of columns to show.
Property MaxColumns As %Integer;

/// Draw the BODY of the detail pane
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

/// Sort the data within a ResultSet and place the results in a tempfile.
/// <var>pCol</var> contains the names of the columns ordered by column #.
ClassMethod BuildSortFile(pRS As %ResultSet, pSortCol As %String, pMaxCols As %Integer, ByRef pCols As %String, ByRef pSortFile) As %Boolean
{
}

Method OnGenerateCode() As %String
{
}

/// Method to tune all tables in a schema, or an individual table in the background
ClassMethod TuneTables(ByRef pParms As %String) As %Status
{
}

}
