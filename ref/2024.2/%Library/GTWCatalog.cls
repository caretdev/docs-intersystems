/// Gateway Catalog Queries
Class %Library.GTWCatalog [ System = 3 ]
{

/// Calls SQLGriverConnect and SQLGetInfo for the corresponding datasource;
/// <p><var>dsn<var\> is the DSN, <var>infoType<var\> is the info type
ClassMethod GetInfo(dsn As %String, infoType As %Integer, ByRef info As %String) As %Status
{
}

/// Get a List of all Fields from a table for an ODBC based SQL Gateway connection;
/// <p><var>dsn<var\> is the SQLGateway connection name, <var>tname<var\> is the string search pattern for table names,
/// <var>schema<var/> is the string search pattern for schema names
ClassMethod SQLFieldsExecute(ByRef QHandle As %Binary, dsn As %String, tname As %String, schema As %String, catalog As %String = "") As %Status
{
}

ClassMethod SQLFieldsFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLFieldsClose(QHandle As %Binary) As %Status
{
}

/// Get a List of all tables for an ODBC based SQL Gateway connection;
/// <p><var>dsn<var\> is the SQLGateway connection name, <var>tname<var\> is the string search pattern for table names,
/// <var>schema<var/> is the string search pattern for schema names, <var>ttype<var\> - list of table types to match
ClassMethod SQLTablesExecute(ByRef QHandle As %Binary, dsn As %String, tname As %String = "", ttype As %String = "", schema As %String = "", catalog As %String = "") As %Status
{
}

ClassMethod SQLTablesFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLTablesClose(QHandle As %Binary) As %Status
{
}

/// Get a List of all procedures for an ODBC based SQL Gateway connection
/// <p><var>dsn<var/> is the SQLGateway connection name,
/// <var>pname<var/> is the string search pattern for procedure names, <var>schema<var/> is the string search pattern for schema names
ClassMethod SQLProceduresExecute(ByRef QHandle As %Binary, dsn As %String, pname As %String, schname As %String = "", catalog As %String = "") As %Status
{
}

ClassMethod SQLProceduresFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLProceduresClose(QHandle As %Binary) As %Status
{
}

/// return a list of the procedure columns for an ODBC based SQL Gateway connection
/// <p><var>dsn<var/> is the SQLGateway connection name,
/// <var>procname<var/> is the string search pattern for procedure names, <var>schema<var/> is the string search pattern for schema names
/// Get a List of all procedures
ClassMethod SQLProcedureColumnsExecute(ByRef QHandle As %Binary, dsn As %String, schname As %String, procname As %String, catalog As %String = "") As %Status
{
}

ClassMethod SQLProcedureColumnsFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLProcedureColumnsClose(QHandle As %Binary) As %Status
{
}

/// Get a List of primary keys for an ODBC based SQL Gateway connection
/// <p><var>dsn<var/> is the SQLGateway connection name, <var>tname<var/> is the table name in the format SCHEMA_NAME.TABLE_NAME
ClassMethod SQLPrimaryKeysExecute(ByRef QHandle As %Binary, dsn As %String, tname As %String, catalog As %String = "") As %Status
{
}

ClassMethod SQLPrimaryKeysFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLPrimaryKeysClose(QHandle As %Binary) As %Status
{
}

/// Get a List of foreign keys for an JDBC based SQL Gateway connection
/// <p><var>dsn<var/> is the SQLGateway connection name, <var>tname<var/> is the table name in the format SCHEMA_NAME.TABLE_NAME
ClassMethod SQLForeignKeysJExecute(ByRef QHandle As %Binary, dsn As %String, tname As %String, catalog As %String = "") As %Status
{
}

ClassMethod SQLForeignKeysJFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLForeignKeysJClose(QHandle As %Binary) As %Status
{
}

/// Get a List of foreign keys for an ODBC based SQL Gateway connection
/// <p><var>dsn<var/> is the SQLGateway connection name, <var>tname<var/> is the table name in the format SCHEMA_NAME.TABLE_NAME
ClassMethod SQLForeignKeysExecute(ByRef QHandle As %Binary, dsn As %String, tname As %String, catalog As %String = "") As %Status
{
}

ClassMethod SQLForeignKeysFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLForeignKeysClose(QHandle As %Binary) As %Status
{
}

/// Get a List of special columns for an ODBC based SQL Gateway connection
/// <p><var>dsn<var/> is the SQLGateway connection name, <var>tname<var/> is the table name in the format SCHEMA_NAME.TABLE_NAME
ClassMethod SQLSpecialColumnsExecute(ByRef QHandle As %Binary, dsn As %String, tname As %String, catalog As %String = "") As %Status
{
}

ClassMethod SQLSpecialColumnsFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLSpecialColumnsClose(QHandle As %Binary) As %Status
{
}

/// return list of ODBC datasources
/// <p>direction could be one of the following:
/// <br\>SQL_FETCH_NEXT      1
///  <br\>SQL_FETCH_FIRST     2
///  <br\>SQL_FETCH_FIRST_USER	31
///  <br\>SQL_FETCH_FIRST_SYSTEM 32
ClassMethod SQLDataSourcesExecute(ByRef QHandle As %Binary, direction As %Integer) As %Status
{
}

ClassMethod SQLDataSourcesFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLDataSourcesClose(QHandle As %Binary) As %Status
{
}

/// return list of ODBC datasources, lexicographically sorted
/// <p>direction could be one of the following:
/// <br\>SQL_FETCH_NEXT      1
///  <br\>SQL_FETCH_FIRST     2
///  <br\>SQL_FETCH_FIRST_USER	31
///  <br\>SQL_FETCH_FIRST_SYSTEM	32
ClassMethod SQLDataSourcesSortedExecute(ByRef QHandle As %Binary, direction As %Integer) As %Status
{
}

ClassMethod SQLDataSourcesSortedFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLDataSourcesSortedClose(QHandle As %Binary) As %Status
{
}

/// Get a List of all tables for a JDBC based SQL Gateway connection
/// <p><var>dsn<var\> is the SQLGateway connection name, <var>tname<var\> is the string search pattern for table names,
/// <var>schema<var/> is the string search pattern for schema names, <var>ttype<var\> - list of table types to match
ClassMethod SQLTablesJExecute(ByRef QHandle As %Binary, dsn As %String, tname As %String = "", ttype As %String = "", schema As %String = "", catalog As %String = "") As %Status
{
}

ClassMethod SQLTablesJFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLTablesJClose(QHandle As %Binary) As %Status
{
}

/// Get a List of all fields in a table for a JDBC based SQL Gateway connection
/// <p><var>dsn<var\> is the SQLGateway connection name, <var>tname<var\> is the string search pattern for table names,
/// <var>schema<var/> is the string search pattern for schema names
ClassMethod SQLFieldsJExecute(ByRef QHandle As %Binary, dsn As %String, tname As %String, schema As %String, catalog As %String = "") As %Status
{
}

ClassMethod SQLFieldsJFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status [ ProcedureBlock = 1 ]
{
}

ClassMethod SQLFieldsJClose(QHandle As %Binary) As %Status
{
}

/// Get a List of primary keys for a JDBC based SQL Gateway connection
/// <p><var>dsn<var/> is the SQLGateway connection name, <var>tname<var/> is the table name in the format SCHEMA_NAME.TABLE_NAME
ClassMethod SQLPrimaryKeysJExecute(ByRef QHandle As %Binary, dsn As %String, tname As %String, catalog As %String = "") As %Status
{
}

ClassMethod SQLPrimaryKeysJFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLPrimaryKeysJClose(QHandle As %Binary) As %Status
{
}

/// return a list of the procedure columns for a JDBC based SQL Gateway connection
/// <p><var>dsn<var/> is the SQLGateway connection name,
/// <var>procname<var/> is the string search pattern for procedure names, <var>schema<var/> is the string search pattern for schema names
ClassMethod SQLProcedureColumnsJExecute(ByRef QHandle As %Binary, dsn As %String, schname As %String, procname As %String, catalog As %String = "") As %Status
{
}

ClassMethod SQLProcedureColumnsJFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLProcedureColumnsJClose(QHandle As %Binary) As %Status
{
}

/// Get a List of all procedures for a JDBC based SQL Gateway connection
/// <p><var>dsn<var/> is the SQLGateway connection name,
/// <var>pname<var/> is the string search pattern for procedure names, <var>schema<var/> is the string search pattern for schema names
ClassMethod SQLProceduresJExecute(ByRef QHandle As %Binary, dsn As %String, pname As %String, schname As %String, catalog As %String = "") As %Status
{
}

ClassMethod SQLProceduresJFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod SQLProceduresJClose(QHandle As %Binary) As %Status
{
}

/// Get a List of all indices in a table for a JDBC based SQL Gateway connection
/// <p><var>dsn<var\> is the SQLGateway connection name, <var>tname<var\> is the string search pattern for table names,
/// <var>schema<var/> is the string search pattern for schema names
ClassMethod getIndexInfoExecute(ByRef QHandle As %Binary, dsn As %String, tname As %String, schema As %String, nonunique As %Boolean, approximate As %Boolean = "", catalog As %String = "") As %Status
{
}

ClassMethod getIndexInfoFetch(ByRef QHandle As %Binary, ByRef Row As %List, AtEnd As %Integer) As %Status
{
}

ClassMethod getIndexInfoClose(QHandle As %Binary) As %Status
{
}

}
