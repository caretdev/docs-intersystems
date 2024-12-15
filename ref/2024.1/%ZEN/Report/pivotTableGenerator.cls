/// Generate Pivot Table from information about the table
Class %ZEN.Report.pivotTableGenerator Extends %RegisteredObject [ Deprecated, System = 4 ]
{

/// class name of generated ZEN Report
Property className As %String;

/// class name of generated ZEN Report for totals (use get to add this report to XML)
Property classNameForTotals As %String;

/// report name of generated ZEN Report
Property reportName As %String [ InitialExpression = "MyReport" ];

/// report name of generated ZEN Report for totals
/// Property reportNameForTotals As %String [ InitialExpression = "MyReport" ];
/// table of data that will be object of pivot
Property table As %String;

/// group used in XML of generated ZEN Report
Property group As %String [ InitialExpression = "group1" ];

/// column that appears in columns 2-n of pivot table
Property cols As %String;

/// column that appears in column 1 of pivot table
Property rows As %String;

/// field that will be accumulated
Property value As %String;

/// aggregate that does the accumulating (SUM, COUNT, CUSTOM, etc.,)
Property aggs As list Of %ZEN.Report.aggregate;

Method genZenReport() As %Status
{
}

Method genZenReportForTotals()
{
}

Method genReportDefinition() As %CharacterStream
{
}

Method generateTotals(ByRef stream As %CharacterStream)
{
}

Method generateItems(ByRef stream As %CharacterStream)
{
}

Method generateHeaders(ByRef stream As %CharacterStream, row As %Integer, pCol As %Integer)
{
}

Method genReportDefinitionForTotals() As %CharacterStream
{
}

Method genReportDisplay() As %CharacterStream
{
}

ClassMethod CreateXDataSection(className As %String, xdataname As %String, stream As %Stream.TmpCharacter, namespace As %String) As %Status
{
}

ClassMethod CreateProperty(className As %String, Name As %String, Type As %String, isZENURL As %Boolean)
{
}

ClassMethod CreateParameter(className As %String, Name As %String, Default As %String)
{
}

ClassMethod q(s As %String) As %String
{
}

ClassMethod cond(col, name)
{
}

}
