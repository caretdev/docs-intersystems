/// This dialog displays various regression analysis of the values behind a cell within a pivot.
Class %DeepSee.UI.Analysis.Clustering Extends (%DeepSee.UI.Analysis.AbstractAnalysis, %DeepSee.extensions.clusters.DataController, %DeepSee.extensions.clusters.ChartModel) [ CompileAfter = (%ZEN.Generator, %ZEN.SVGComponent.xyClusterChart), System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Measure to use for analysis.
Property measureNameX As %ZEN.Datatype.string(ZENURL = "MEASURE");

/// Measure to use for analysis.
Property measureNameY As %ZEN.Datatype.string(ZENURL = "MEASURE");

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData tableControlPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClassMethod %GetAnalysisInfo(Output pInfo) As %Status
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

ClientMethod getChartData(series) [ Language = javascript ]
{
}

ClientMethod datasetChanged() [ Language = javascript ]
{
}

ClientMethod run() [ Language = javascript ]
{
}

ClientMethod axisChanged() [ Language = javascript ]
{
}

ClientMethod methodChanged() [ Language = javascript ]
{
}

ClientMethod sampleSizeChanged() [ Language = javascript ]
{
}

ClientMethod nclChanged() [ Language = javascript ]
{
}

ClientMethod setParameters() [ Language = javascript ]
{
}

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Update state of the measureX select control
ClientMethod updateMeasureSelect() [ Language = javascript ]
{
}

Method RunAndUpdate() As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Update value of controls.
Method %UpdateControls() As %Status
{
}

Method %UpdateStatusInfo() As %Status
{
}

/// Execute query and get raw list of valuesX in temp global.
Method %ComputeValues() As %Status
{
}

Method %SetModelData() As %Status
{
}

Method %SetClusteringParameters() As %Status
{
}

Method %GetXYFactNames(Output tMeasureFactX As %String, Output tMeasureFactY As %String) As %Status
{
}

Method %EstimateCount(Output pSC As %Status) As %Integer
{
}

Method %GetFilters(Output tListingFilters As %String, tSlicerMeasure As %String) As %Status
{
}

Method %GetQueryMDX(Output pSC As %Status) As %String
{
}

}
