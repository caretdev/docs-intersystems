/// This abstract class provides a standard interface for creating a
/// <class>%ResultSet</class> object that a component can then use to
/// supply itself with data.<br>
/// There are several ways to define the creation of a <class>%ResultSet</class> object:
/// <ul>
/// <li>Define an SQL statement using the <property>sql</property> property.</li>
/// <li>Provide the class and name of a class query using the <property>queryClass</property> and <property>queryName</property> properties.</li>
/// <li>Define a callback method using the <property>OnCreateResultSet</property> property.</li>
/// </ul>
Class %ZEN.Component.querySource [ Abstract, Deprecated, PropertyClass = %ZEN.componentParameters, System = 3 ]
{

/// (optional) Name of the class containing the class query that will
/// be used to create a <class>%ResultSet</class> object.<br/>
/// This is an encrypted value and cannot be modified on the client.
Property queryClass As %ZEN.Datatype.className(ZENENCRYPT = 1);

/// (optional) Name of the class query that will
/// be used to create a <class>%ResultSet</class> object.
Property queryName As %ZEN.Datatype.classMember(MEMBERTYPE = "QUERY");

/// (optional) SQL statement that, if present, will be used to
/// create a <class>%ResultSet</class> object.<br>
/// If defined, this takes precedence over
/// <property>queryClass</property> and <property>queryName</property>.
Property sql As %ZEN.Datatype.sql;

/// (optional) Name of an SQL table used to provide data.<br>
/// For sources that automatically create an SQL statement, this is the table
/// used in the FROM clause.<br/>
/// If no column information is supplied, then the %ID column of the table will
/// be used as the SELECT list.<br/>
/// This value is encrypted and cannot be modified on the client.
Property tableName As %ZEN.Datatype.string(ZENENCRYPT = 1, ZENEXPRESSION = 1);

/// (optional) Name of a column in the SQL table used to provide data.<br>
/// If both this and <property>tableName</property> is specified, and no other
/// columns are defined, then an automatically generated query will use
/// %ID for the value column and the column specified by <property>columnName</property>
/// for the display value.<br>
/// This must contain a valid column name.<br>
Property columnName As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// (optional) An SQL WHERE clause: e.g., "Name='Elvis'"<br>
/// For sources that automatically create an SQL statement, this is
/// used to create the WHERE clause.
Property whereClause As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// (optional) An SQL ORDER BY clause: e.g., "Name,State"<br>
/// For sources that automatically create an SQL statement, this is
/// used to create the ORDER BY clause.
Property orderByClause As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// (optional) An SQL GROUP BY clause: e.g., "Year,State"<br>
/// For sources that automatically create an SQL statement, this is
/// used to create a GROUP BY clause.
Property groupByClause As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// Maximum number of rows to fetch from the <class>%ResultSet</class> object.
/// This provides a way to limit the number of rows displayed by a data-aware component.<br/>
/// If this is set to 0, then no limit is enforced; all rows from the query are displayed.
Property maxRows As %ZEN.Datatype.integer [ InitialExpression = 100 ];

/// This property should not be used; it is provided for backward compatibility.
/// The original implementation of querySource caused the pInfo.rowCount
/// property to be computed automatically, however this was never used and in
/// cases where a table did not have an extent bitmap index would cause poor
/// performance. To get the original behavior set this to 1 (true).
///
Property countRows As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// (optional) Name of Server-side callback method to call to create
/// a <class>%ResultSet</class> object.<br>
/// This must be the name of a server-only method in the page
/// class that contains this component.
Property OnCreateResultSet As %ZEN.Datatype.delegator(FORMALSPEC = "*tSC:%Status,pInfo:%ZEN.Auxiliary.QueryInfo", RETURNTYPE = "%ResultSet");

/// (optional) Name of Server-side callback method to call to execute the
/// <class>%ResultSet</class> object.<br>
/// This must be the name of a server-only method in the page
/// class that contains this table pane.
Property OnExecuteResultSet As %ZEN.Datatype.delegator(FORMALSPEC = "pRS:%Library.ResultSet,*tSC:%Status,pInfo:%ZEN.Auxiliary.QueryInfo", RETURNTYPE = "%Boolean");

/// Internal method.<br>
/// Create and execute the <class>%ResultSet</class> object used
/// to supply data for this component.
/// If <var>pExecute</var> is false, then do not execute the query.
Method %CreateResultSet(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo, pExecute As %Boolean = 1) As %ResultSet [ Final ]
{
}

/// Internal method.<br>
/// Subclasses can override this to create the <class>%ResultSet</class> object used to
/// used by this component.<br>
/// The default implementation is to call the page method specified
/// by the <property>OnCreateResultSet</property> property, if defined.<br>
Method %OnCreateResultSet(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Internal method.<br>
/// Subclasses can override this to execute the <class>%ResultSet</class> object used to
/// by this component.<br>
/// Return true (1) if the result set has been executed.<br>
/// The default implementation is to call the page method specified
/// by the <property>onExecuteResultSet</property> property, if defined.
Method %OnExecuteResultSet(pRS As %ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

}
