///
Class %ZEN.Report.Models.Group.Utils Extends %RegisteredObject [ Deprecated, System = 4 ]
{

ClassMethod %GenerateReportFromXMLFile(filename As %String)
{
}

/// Given a report model (typically supplied
/// by the report designer) create a class that implements the report.
ClassMethod %GenerateReport(pModel As %ZEN.Report.Models.Group.Report) As %Status [ Internal ]
{
}

/// Convert a report model to a report definition (as a stream in XML format).
ClassMethod %ModelToReportDefinition(pModel As %ZEN.Report.Models.Group.Report, pOutput As %Stream.GlobalCharacter) As %Status [ Internal ]
{
}

/// Convert a report model to a report definition (as a stream in XML format).
ClassMethod %ModelToReportDisplay(pModel As %ZEN.Report.Models.Group.Report, pOutput As %Stream.GlobalCharacter) As %Status [ Internal ]
{
}

/// Process Groups for Report Definition
ClassMethod ProcessGroupsDef(parent As %ZEN.Report.Models.Group.Report, list, pOutput As %Stream.GlobalCharacter)
{
}

/// Process Groups for Report Definition
ClassMethod ProcessGroupsDisplay(parent As %ZEN.Report.Models.Group.Report, list, pOutput As %Stream.GlobalCharacter)
{
}

ClassMethod GetColumnNamesSQL(sql As %String, ByRef cols As %String)
{
}

ClassMethod GetColumnNamesQuery(queryClass As %String, queryName As %String, ByRef cols As %String)
{
}

}
