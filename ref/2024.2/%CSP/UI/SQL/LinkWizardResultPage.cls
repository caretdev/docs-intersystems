/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This page process Link Table/Procedure Wizard Result.
Class %CSP.UI.SQL.LinkWizardResultPage Extends %CSP.Page [ System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Ensure user has %Development:USE
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

ClassMethod OnPage() As %Status
{
}

/// Create Link Table Process Start
ClassMethod CreateLinkTable(DataSource As %String, SchemaName As %String, ByRef pParms As %String, ByRef tItems As %String)
{
}

/// Create One Link Table at a time
ClassMethod CreateOneLinkTable(dsnname As %String, schemaname As %String, tname As %String, primarykeys As %String, newclassname As %String, newtablename As %String, ByRef pParms As %String, ByRef tItems As %String, tIsMulti As %Boolean, ByRef HasError As %Boolean)
{
}

/// Create Link Procedure Process Start
ClassMethod CreateLinkProcedure(DataSource As %String, SchemaName As %String, ByRef pParms As %String, ByRef tItems As %String)
{
}

/// Create One Link Process at a time
ClassMethod CreateOneLinkProc(dsnname As %String, schemaname As %String, tname As %String, newschemaname As %String, ByRef pParms As %String, tIsMulti As %Boolean, ByRef HasError As %Boolean)
{
}

/// Start Data Migration process
ClassMethod CreateDataMigration(DataSource As %String, SchemaName As %String, ByRef pParms As %String, ByRef tItems As %String)
{
}

/// Return primary keys as a string delimited by commas
ClassMethod GetPrimaryKeys(dsnname As %String, schema As %String, tname As %String) As %String
{
}

/// Get Link Table Properties
ClassMethod GetProperties(dsnname As %String, schema As %String, table As %String, ByRef colnames As %String, ByRef Fields As %String) As %Integer
{
}

/// Return null or empty for no schema or empty schema names
ClassMethod ReverseSchema(schema As %String) As %String
{
}

/// Log msg into ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"ErrorCount") and ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"Details")
ClassMethod LogMsg(Msg As %String, ERROR As %String = "")
{
}

/// Validate column name and return unique and valid name.
ClassMethod ValidateColName(class, fldname) As %String
{
}

}
