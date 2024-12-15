/// Render a chart to PDF by using the Zen reports infrastructure.
Class %DeepSee.UI.ChartPDF Extends %ZEN.Report.reportPage [ System = 4 ]
{

Parameter DOMAIN = "%DeepSee";

Parameter DEFAULTMODE = "pdf";

Parameter EMBEDXSL As BOOLEAN = 0;

/// MDX to run.
Property mdx As %ZEN.Datatype.string;

/// KPI to run.
Property kpi As %ZEN.Datatype.string;

/// Holder for chart labels.
Property axisLabels As %ZEN.Datatype.string [ MultiDimensional ];

/// Holder for DeepSee result set.
Property RS As %DeepSee.ResultSet;

/// Holder for data.
Property dataValues As %ZEN.Datatype.string [ MultiDimensional ];

/// Holder for seriesSize.
Property seriesSize As %ZEN.Datatype.integer;

/// XML that defines the contents of this report.
XData ReportDefinition [ XMLNamespace = "http://www.intersystems.com/zen/report/definition" ]
{
}

XData ReportDisplay [ XMLNamespace = "http://www.intersystems.com/zen/report/display" ]
{
}

/// Get the data, as xml, for the current query.
ClassMethod GetTableData()
{
}

/// Return the axis labels for this chart.
Method getNames(val, yAxisNo, pChart)
{
}

/// Return the array of data to be displayed within the chart.
Method getchartdata(ByRef var, pChart)
{
}

/// Create a chart and add it to the page.
///
Method %OnAfterCreateDisplay(pDisplay As %ZEN.Report.Display.report)
{
}

/// Convert XML into a ZEN chart component.
ClassMethod %XMLtoZenChart(pXML As %String, Output pChart As %ZEN.SVGComponent.chart) As %Status
{
}

/// Convert a Zen chart into a COS chart.
ClassMethod %ZenChartToCOS(pChart As %ZEN.SVGComponent.chart, Output pCOSChart As %ZEN.Report.Display.COSChart.cchart) As %Status
{
}

/// Convert a Zen axis into a COS axis.
ClassMethod %ZenAxisToCOS(pWhich As %String, pAxis As %ZEN.Auxiliary.axis, Output pCOSAxis As %ZEN.Report.Display.COSChart.caxis) As %Status
{
}

/// Fill in the context array from the current URL parameters.
/// Also fill in the parameter array used to resolve expression references in %ParseExpr.
ClassMethod %GetContext(Output pContext, Output pParms)
{
}

/// Get data from the given KPI.
Method %GetKPIData(ByRef pContext, ByRef pParms, pKPI As %String, Output pData) As %Status
{
}

/// Test for additional resources.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

Method transformColor(color)
{
}

}
