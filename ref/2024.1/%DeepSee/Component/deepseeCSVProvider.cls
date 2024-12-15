/// This class is responsible for creating a CSV file from the contents of a DeepSee ResultSet
Class %DeepSee.Component.deepseeCSVProvider Extends %ZEN.Component.component [ System = 3 ]
{

Parameter INCLUDEFILES = "zenCSLM.js";

///  This is the XML namespace used for library components.
Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

Parameter DOMAIN = "%DeepSee";

/// This class does not project HTML into its containing document
Method %DrawHTML()
{
}

/// Return the temp directory for this system.
ClassMethod GetSystemTempDir() As %String
{
}

/// Given a user specified file name clip it to ensure that it only refers to
/// files in the mgr/temp space
ClassMethod ScopeFileName(rawName As %String) As %String [ ZenMethod ]
{
}

/// Remove a temporary file used for this provider within this session from the mgr/Temp directory
ClassMethod RemoveFile(pFileName) As %Status
{
}

/// Export the results of an MDX query to <var>pFileName<var>. Parameters can be passed from the client
/// in a serialized JSON string that will be deserialized into a DynamicObject
ClassMethod ExportCSV(pMDX = "", pFileName As %String = "", pParmsJSON As %String = "", Output pStatus As %Status) As %String [ ZenMethod ]
{
}

/// Create a resultset from MDX query text. Failure results in a null resultset being returned.
ClassMethod %CreateResultSet(pMDX = "", Output pStatus As %Status, ByRef pParmsObj = {{}}, ByRef pVars = "") As %DeepSee.ResultSet [ Internal ]
{
}

/// Write a set of name-value pairs as stored in two arrays to a <var>pFileStream</var> in CSV format.
ClassMethod %EmitNameValueTable(pFileStream, pNames As %DynamicArray = {[]}, pValues As %DynamicArray = {[]}, pTableTitle = "", pParamsObj = {{}}) As %Status
{
}

/// Write the contents of the active resultset into the open file stream.
ClassMethod %EmitResultSet(pRS As %DeepSee.ResultSet = {$$$NULLOREF}, pFileStream) As %Status [ Internal ]
{
}

/// Emit the CSV for the content of a DRILLTROUGH query
ClassMethod %EmitListingResultSet(pRS = {$$$NULLOREF}, pFileStream) As %Status [ Internal ]
{
}

/// Emit the CSV for the content of a KPI
ClassMethod %EmitKpiResult(pParamsObj = {{}}, pFileStream) As %Status
{
}

/// Lookup a filter caption for a KPI
ClassMethod GetKpiFilterCaption(pKPIName, pSpec) As %String [ ZenMethod ]
{
}

/// Client-facing utility method to send an MDX query to the server to be exported as a CSV.
ClientMethod exportMDXToCSV(mdx, params, fileName) [ Language = javascript ]
{
}

/// Receive a pivotTable component and use its settings to produce a set of expected export
/// parameters consistent with usage in this provider.
ClientMethod prepareTableParms(table) [ Language = javascript ]
{
}

/// Package the entire generation of the download stream into a single convenient call
/// for client consumption.
ClientMethod downloadCSV(mdx, exportParams) [ Language = javascript ]
{
}

}
