Class %ZEN.Report.Display.COSChart.test Extends (%ZEN.Report.Display.childrenNode, %ZEN.Report.Display.tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

/// Width of the chart within the report.
Property width As %ZEN.Datatype.length [ InitialExpression = "10in" ];

/// Height of the chart within the report.
Property height As %ZEN.Datatype.length [ InitialExpression = "8in" ];

Method %DrawToXSLFO(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean, ByRef xmlfile As %String) As %Status
{
}

}
