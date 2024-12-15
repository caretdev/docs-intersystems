/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This page process Link Table/Procedure Wizard Result.
Class %CSP.UI.SQL.ExImWizardResultPage Extends %CSP.Page [ System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

ClassMethod OnPage() As %Status
{
}

ClassMethod ExportPreview(Schema As %String, Table As %String) As %String
{
}

/// Method to Export or Import in the background
ClassMethod Export(Wizard As %String, SchemaName As %String, TableName As %String, ByRef pParms As %String)
{
}

/// Method to Export dynamic query result in the background
ClassMethod QueryExport(ByRef pParms) As %String
{
}

ClassMethod ImportPreview(FileName As %String, IsLocal As %Boolean, tMaxRows As %Integer = 10) As %String
{
}

ClassMethod ConvertDelimiter(ByRef pParms As %String) As %String
{
}

ClassMethod DelimiterMeaning(ByRef pParms As %String) As %String
{
}

/// Convert cache data type properties to SQL Manager Export/Import class method data type
ClassMethod ConvertDataType(datatype As %String) As %String
{
}

/// Given internal value of date format, return displable date format
ClassMethod DateFormatMeaning(dateformat As %String) As %String
{
}

/// Given internal value of timestamp format, return displable timestamp format
ClassMethod TimeStampFormatMeaning(timestampformat As %String) As %String
{
}

/// Given internal value of time format, return displable time format
ClassMethod TimeFormatMeaning(timeformat As %String) As %String
{
}

/// Return file name for Import (if it's Local then move the file to the remote instance)
ClassMethod GetFileName(ByRef TempFileName As %String) As %String
{
}

/// Log error into ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"Status") and ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"Details")
ClassMethod LogMsg(ErrMsg As %String = "", Status As %String = "ERROR")
{
}

/// Ensure user has %Development:USE.
/// Set cookie to remember file for mode.
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
