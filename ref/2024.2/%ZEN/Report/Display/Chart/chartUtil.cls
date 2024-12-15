/// Utility class that renders the various utility templates needed by a chart.
/// Note: utility templates of the form 'zenReport...' have a number added to
/// the template name to identify which chart they are a part of.
Class %ZEN.Report.Display.Chart.chartUtil Extends %RegisteredObject [ Deprecated, System = 4 ]
{

/// Entry method that renders all of the utility tempaltes provided by the other
/// methods in this clas.
ClassMethod renderUtils(context As %String, XSL As %GlobalCharacterStream, chart As chart, plot As plot)
{
}

/// Renders the zenReportFindScaleUnits template which
/// finds the best scale units to use for given range.
ClassMethod renderFindScaleUnits(XSL As %GlobalCharacterStream, chart As chart)
{
}

/// Renders the 'util-power' template which raises 'base' to
/// the power 'power.'  Warning: very slow implementation.
ClassMethod renderPower(XSL As %GlobalCharacterStream, chart As chart)
{
}

/// Renders the 'zenReportGetPlotX' template.  This template takes 'val'
/// as a parameter, and returns the x coordinate within the chart.
ClassMethod renderGetPlotX(context As %String, XSL As %GlobalCharacterStream, chart As chart, plot As plot)
{
}

/// Renders the 'zenReportGetPlotY' template.  This template takes 'val'
/// as a parameter, and returns the y coordinate within the chart.
ClassMethod renderGetPlotY(context As %String, XSL As %GlobalCharacterStream, chart As chart, plot As plot)
{
}

/// Renders the 'util-min' and 'util-max' templates, which both take
/// a 'nodes' parameter and return the maximum value across the nodes.
ClassMethod renderMaxMin(XSL As %GlobalCharacterStream, chart As chart)
{
}

/// Renders the 'util-log10' (log base 10) and 'util-log' (natural log) templates,
/// both of which take a 'number' parameter.
ClassMethod renderLog(ByRef XSL As %GlobalCharacterStream, chart As chart)
{
}

/// Renders the 'zenReportGetSeriesColor' template which takes a 'series'
/// parameter.  Color is determined by choosing the corresponding item
/// in the list seriesColors.  Color selection wraps around when the
/// seriesColors list is exhausted.
ClassMethod renderGetSeriesColor(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, cc As %String = "")
{
}

/// Renders the 'zenReportGetXLabelText' template, which takes an 'item'
/// parameter and returns the appropriate label text.
ClassMethod renderGetXLabelText(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart)
{
}

/// Renders the 'zenReportGetYLabelText' template, which takes an 'item'
/// parameter and returns the appropriate label text.
ClassMethod renderGetYLabelText(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart)
{
}

/// Renders the 'zenReportDrawMarker' template, which creates a plot marker.
/// This template takes 'shape', 'color', 'x', and 'y' parameters.
/// Shape can be 'up','down','circle','square'.
ClassMethod renderDrawMarker(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart)
{
}

ClassMethod renderDrawLowMarker(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, pivot)
{
}

/// Renders the 'zenReportGetSeriesCount' template which returns the number of series.
/// Within a template, it is more efficient to use the $seriescount global variable
/// than re-invoke this template.
ClassMethod renderGetSeriesCount(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart)
{
}

/// Renders the 'zenReportGetSeriesSize' template which returns the number of series.
/// Within a template, it is more efficient to use the $seriessize global variable
/// than re-invoke this template.
ClassMethod renderGetSeriesSize(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart)
{
}

/// Renders the 'zenReportXValueLabels' and 'zenReportXCategoryLabels' templates.
/// These loop over the data and display the appropriate labels.
ClassMethod renderDrawXLabels(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, plot As plot)
{
}

/// Renders the 'zenReportYValueLabels' and 'zenReportYCategoryLabels' templates.
/// These loop over the data and display the appropriate labels.
ClassMethod renderDrawYLabels(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, plot As plot)
{
}

/// Renders the 'zenReportYValueLines', 'zenReportYCategoryLines',
/// 'zenReportXValueLines', and 'zenReportXCategoryLines' templates
/// which are invoked as necessary to draw the gridlines.
ClassMethod renderGridLinesTemplates(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, plot As plot)
{
}

/// Renders the 'zenReportGetMinValue' and 'zenReportGetMaxValue' templates
/// which return the minimum and maximum data values across all series.
ClassMethod renderGetMaxMinValue(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, plot As plot)
{
}

ClassMethod qualify(xpath As %String, ByRef context As %String)
{
}

/// following need for IE support
ClassMethod outputAttributesFromStyle(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, style As %String)
{
}

ClassMethod SvgPrefix()
{
}

}
