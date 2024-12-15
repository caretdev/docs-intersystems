/// SQL Manager CSP Wizard Utility Methods
Class %SQL.Manager.Wizard.Util Extends %RegisteredObject [ System = 3 ]
{

/// Change namespace if the current namespace is not the desired namespace
ClassMethod ChangeNamespace(Namespace As %String) As %String
{
}

/// This is the normal (not SQL Gateway) properties for a table
/// <br>Input:  Namespace by value
/// <br>Input:  SchemaName by value
/// <br>Input:  TableName by value
/// <br>Output: array properties by reference
/// <br>Return: longest property name
ClassMethod listProperties(Namespace As %String, SchemaName As %String, TableName As %String, ByRef properties As %String) As %String
{
}

/// This is the normal tables given by Namespace and Schema
/// <br>Input:  Namespace by value
/// <br>Input:  SchemaName by value
/// <br>Output: array schems by reference
ClassMethod listTables(Namespace As %String, SchemaName As %String, ByRef tables As %String) As %Status
{
}

/// This is the normal schemas for a given Namespace, not SQL Gateway.
/// <br>Input:  Namespace by value
/// <br>Output: array schems by reference
ClassMethod listSchemas(Namespace As %String, ByRef schemas As %String)
{
}

/// List SQL Gateway tables given by Namespace and DSN (configuration name)
/// <br>Input:  pagename by value (this is used for building links)
/// <br>Input:  Wizard by value ("LinkTable", "LinkProcedure", or "DataMigration")
/// <br>Input:  Namespace by value (current connected Namespace)
/// <br>Input:  dsnname by value (DSN connected)
/// <br>Input:  schemaname by value (schema selected from DSN)
/// <br>Input:  Page by value (page number)
/// list external tables based on cache gateway connection - you must have a DSN (configuration name) passed in.
ClassMethod listExtTables(pagename As %String, Wizard As %String, Namespace As %String, dsnname As %String, schemaname As %String, Page As %Integer)
{
}

/// list schemas based on cache gateway connection - you must have a DSN (configuration name) passed in.
ClassMethod listExtSchemas(pagename As %String, Wizard As %String, Namespace As %String, dsnname As %String, Page As %Integer)
{
}

/// Set up DSN names for Link Table, Link Procedure and Data Migration Wizards
ClassMethod listDSN(pagename As %String, Wizard As %String, Namespace As %String, Page As %Integer = 2)
{
}

/// Display A TEXT file
ClassMethod DisplayTextFile(FileName As %String)
{
}

/// Go back to the previous page
ClassMethod PreviousButton()
{
}

/// Write out generic Cancel button
ClassMethod CancelButton()
{
}

/// Write out generic Cancel button
ClassMethod NextButton()
{
}

/// Write out generic Cancel button
ClassMethod ExitButton()
{
}

}
