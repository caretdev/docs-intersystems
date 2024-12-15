/// This is a server-class used to pass information specifying
/// how to build a result set object.<br>
/// This is used by classes that inherit from the <class>querySource</class>
/// class. Some of these properties are only relevant for tables.
Class %ZEN.Auxiliary.QueryInfo Extends %RegisteredObject [ Deprecated, System = 3 ]
{

/// Set of query parameter values subscripted by parameter number:<br>
/// ..parms(n) = value
Property parms As %ZEN.Datatype.string [ MultiDimensional ];

/// Set of column filter values subscripted by column name:<br>
/// ..filters(colName) = filterValue
Property filters As %ZEN.Datatype.string [ MultiDimensional ];

/// Set of column filter operations subscripted by column name:<br>
/// ..filterOps(colName) = op<br>
/// Where op is an SQL operation: %STARTSWITH, =, etc.
Property filterOps As %ZEN.Datatype.string [ MultiDimensional ];

/// Set of column filter types subscripted by column name:<br>
/// ..filterTypes(colName) = type<br>
Property filterTypes As %ZEN.Datatype.string [ MultiDimensional ];

/// Names of columns within the query, subcripted by column number:<br>
/// ..columns(n) = colName<br>
/// This will be provided for tables that use *auto sql* mode.
Property columns As %ZEN.Datatype.string [ MultiDimensional ];

/// Optional SQL expression to use for a column, subcripted by column name:<br>
/// ..columnExpression(colname) = expr<br>
/// This will be provided for tables that use *auto sql* mode.
Property columnExpression As %ZEN.Datatype.string [ MultiDimensional ];

/// The number of rows that the component will display.
/// For a "snapshot" query this will be the size of the snapshot.
Property rows As %ZEN.Datatype.integer;

/// Name of table used to provide data.
/// This will be provided for tables that use *auto sql* mode.
Property tableName As %ZEN.Datatype.string;

/// Name of column used to provide data.
/// This is used for tables that are auto-generated when no other column
/// information is available.
Property columnName As %ZEN.Datatype.string;

/// Optional WHERE clause for tables in *auto sql* mode.
Property whereClause As %ZEN.Datatype.string;

/// Optional ORDER BY clause for tables in *auto sql* mode.
Property orderByClause As %ZEN.Datatype.string;

/// Optional GROUP BY clause for tables in *auto sql* mode.
Property groupByClause As %ZEN.Datatype.string;

/// Optional name of column to sort results by.
/// If the table is in *auto sql* mode, then this is used as
/// the first part of the generated ORDER BY clause.
Property sortColumn As %ZEN.Datatype.string;

/// Specifies direction of sorting, if any.
/// This applies to the column specified by <property>sortColumn</property>.
Property sortOrder As %ZEN.Datatype.string(VALUELIST = ",asc,desc");

/// Output property.<br>
/// This is also used for the output of the <method>%CreateQuery</method> method.<br>
/// When a query is executed, the text of the query (either
/// sql or query name) is placed here (for diagnostic purposes).
Property queryText As %ZEN.Datatype.string;

/// Output property.<br>
/// Set this property to true in OnCreateResultSet method to indicate
/// that the newly created ResultSet has already been executed.
Property queryExecuted As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Output property.<br>
/// Query will place number of rows in query here if it wants
/// to report this value to the client.
Property rowCount As %ZEN.Datatype.string;

/// Test if pName is a valid SQL name.
ClassMethod %IsValidSQLName(pName As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Utility method: construct a (very simple) SQL statement based on the
/// specifications contains within this object's properties.
/// The resulting query is placed within the <property>queryText</property> property.
Method %CreateSQL(pComputeRowCount As %Boolean = 1, pInfo As %ZEN.Auxiliary.QueryInfo) As %Status
{
}

/// Take a value and return an SQL literal (with quotes and
/// escaped quotes as needed).<br>
/// <var>pType</var> is the "filter" type: if "date" quote as ODBC literal.
ClassMethod QuoteSQL(pVal As %String, pType As %String = "")
{
}

}
