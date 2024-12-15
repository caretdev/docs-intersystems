Class %XDBC.Gateway.ODBC.DatabaseMetaData Extends %XDBC.Gateway.DatabaseMetaData [ System = 4 ]
{

Property connection As %XDBC.Gateway.ODBC.Connection;

Method %OnNew(conn As %XDBC.Gateway.ODBC.Connection) As %Status
{
}

/// Retrieves the name and version number of this database
Method GetDatabaseProductNameAndVersion() As %String
{
}

Method GetDriverName() As %String
{
}

/// Retrieves the version number of this driver as a String
Method GetDriverVersion() As %String
{
}

/// Retrieves the catalog names available in this database.
Method GetCatalogs() As ResultSet
{
}

/// Retrieves a description of the access rights for a table's columns.
Method GetColumnPrivileges(catalog As %String, schema As %String, table As %String, columnNamePattern As %String) As ResultSet
{
}

/// Retrieves a description of table columns available in the specified catalog
Method GetColumns(catalog As %String, schemaPattern As %String, tableNamePattern As %String, columnNamePattern As %String) As ResultSet
{
}

/// Retrieves a description of all the data types supported by this database.
Method GetTypeInfo() As ResultSet
{
}

/// Retrieves a description of the foreign key columns in the given foreign key table that reference the primary key or the columns representing a unique constraint of the parent table (could be the same or a different table)
Method GetCrossReference(parentCatalog As %String, parentSchema As %String, parentTable As %String, foreignCatalog As %String, foreignSchema As %String, foreignTable As %String) As ResultSet
{
}

/// Retrieves a description of the foreign key columns that reference the given table's primary key columns (the foreign keys exported by a table).
Method GetExportedKeys(catalog As %String, schema As %String, table As %String) As ResultSet
{
}

/// Retrieves the string used to quote SQL identifiers.
Method GetImportedKeys(catalog As %String, schema As %String, table As %String) As ResultSet
{
}

/// Retrieves a description of the given table's primary key columns.
Method GetPrimaryKeys(catalog As %String, schema As %String, table As %String) As ResultSet
{
}

/// Retrieves a description of the given catalog's stored procedure parameter and result columns.
Method GetProcedureColumns(catalog As %String, schemaPattern As %String, procedureNamePattern As %String, columnNamePattern As %String) As ResultSet
{
}

/// Retrieves a description of the stored procedures available in the given catalog.
Method GetProcedures(catalog As %String, schemaPattern As %String, procedureNamePattern As %String) As ResultSet
{
}

/// Retrieves a comma-separated list of math functions available with this database.
Method GetNumericFunctions() As %String
{
}

/// Retrieves a comma-separated list of string functions available with this database.
Method GetStringFunctions() As %String
{
}

/// Retrieves a description of the user-defined type (UDT) hierarchies defined in a particular schema in this database.
Method GetSystemFunctions() As %String
{
}

/// Retrieves the table types available in this database.
/// Retrieves a comma-separated list of the time and date functions available with this database.
Method GetTimeDateFunctions() As %String
{
}

/// Retrieves a comma-separated list of all of this database's SQL keywords that are NOT also SQL:2003 keywords.
Method GetSQLKeywords() As %String
{
}

/// Retrieves a description of the given table's indices and statistics
Method GetIndexInfo(catalog As %String, schema As %String, table As %String, unique As %Boolean, approximate As %Boolean) As ResultSet
{
}

/// Method Not Supported
Method GetPseudoColumns(catalog As %String, schemaPattern As %String, tableNamePattern As %String, columnNamePattern As %String) As ResultSet
{
}

/// Method Not Supported
Method GetFunctionColumns(catalog As %String, schemaPattern As %String, functionNamePattern As %String, columnNamePattern As %String) As ResultSet
{
}

/// Method Not Supported
Method GetFunctions(catalog As %String, schemaPattern As %String, functionNamePattern As %String) As ResultSet
{
}

/// Method Not Supported
Method GetSchemas(catalog As %String = "", schemaPattern As %String = "") As ResultSet
{
}

/// Method Not Supported
Method GetSchemaTerm() As %String
{
}

/// Method Not Supported
Method GetSuperTables(catalog As %String, schemaPattern As %String, tableNamePattern As %String) As ResultSet
{
}

/// Method Not Supported
Method GetSuperTypes(catalog As %String, schemaPattern As %String, typeNamePattern As %String) As ResultSet
{
}

/// Retrieves tables priviligies.
Method GetTablePrivileges(catalog As %String, schemaPattern As %String, tableNamePattern As %String) As ResultSet
{
}

/// Retrieves a description of the access rights for each table available in a catalog.
Method GetTables(catalog As %String, schemaPattern As %String, tableNamePattern As %String, types As %List) As ResultSet
{
}

/// Retrieves a description of the tables available in the given catalog.
Method GetTableTypes() As ResultSet
{
}

}
