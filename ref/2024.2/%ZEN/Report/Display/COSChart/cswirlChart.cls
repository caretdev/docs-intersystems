Class %ZEN.Report.Display.COSChart.cswirlChart Extends %ZEN.Report.Display.COSChart.cchart [ Deprecated, System = 4 ]
{

/// Whether or not to 'invert' the swirl. In an inverted swirl, the labels are on the outside
/// and the slices are lines rather than real surfaces.
/// <br>Note, that the invert property is only active when labels are visible (labelsVisible=1)
Property invert As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property separateSeriesScale As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// space between first slice and last slice in degrees
Property gap As %ZEN.Datatype.integer(MAXVAL = 135, MINVAL = 0) [ InitialExpression = 30 ];

/// Overriding default value: now FALSE
Property legendVisible As %ZEN.Datatype.string(VALUELIST = ",auto,false,true") [ InitialExpression = "false" ];

/// plotBy - items - this is default, it results in slices that are colored by items and a legend that is organized by labels on the slices
/// <br>plotBy - series - it results in slices where slices of the same series are the same color, and legend shows labels for each series (not labels on the slices)
Property plotBy As %ZEN.Datatype.string(VALUELIST = ",items,series") [ InitialExpression = "items" ];

/// Indicates that this chart has no axes and associated grids
Method hasAxes()
{
}

/// Do not show 3-D plot area.
Method is3D()
{
}

/// Indicates that this chart supports "show multiples" mode.
Method hasMultiples()
{
}

Method renderSeries(group)
{
}

Method getChartElementStyle(series, item) As %String
{
}

Method getYLabelText(val, yAxisNo, base)
{
}

Method getLegendsCount(legends)
{
}

Method getSeriesNamesSize()
{
}

/// Return an array of labels to display within the Legend box.<br/>
/// Default implementation is to return a list of series names.
Method getLegendLabels()
{
}

}
