Class %ZEN.Report.Display.COSChart.scoreCard Extends %ZEN.Report.Display.COSChart.cchart [ Deprecated, System = 4 ]
{

/// DeepSee score card component.
/// This is a subclass of chart as it shares the same data acquisition logic
/// (and uses many of the same style properties).
Parameter INCLUDEFILES = "dsparser.js";

/// Default viewBoxWidth of this component.
/// Turn off for score card.
Parameter DEFAULTVIEWBOXWIDTH;

/// Default viewBoxHeight of this component.
Parameter DEFAULTVIEWBOXHEIGHT;

/// Localization domain
Parameter DOMAIN = "%DeepSee";

/// Specification for columns within the scoreCard.
Property columns As list Of scoreCardColumn(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE");

/// How big to show items within this score card.
/// This can be "big" or "" (regular).
Property cardSize As %ZEN.Datatype.string;

/// Height (pixels) of rows within the scorecard.
Property rowHeight As %ZEN.Datatype.integer;

/// Computed height (pixels) of the scorecard.
Property cardHeight As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// Index of selected row (0-based).
Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// Optional. Style to apply to outer rectangle in plotBox.
Property plotBoxStyle As %ZEN.Datatype.svgStyle;

/// Optional. Style to apply to cell captions.
Property cellCaptionStyle As %ZEN.Datatype.svgStyle;

/// Optional. Style to apply to labels within lamps.
Property lampLabelStyle As %ZEN.Datatype.svgStyle;

/// Optional. Radius (as a percentage between 0 and 1) of a lamp.
Property lampSize As %ZEN.Datatype.float [ InitialExpression = 0.6 ];

/// Optional. Size (as a percentage between 0 and 1) of an arrow.
Property arrowSize As %ZEN.Datatype.float [ InitialExpression = 0.8 ];

/// Optional. Height (as a percentage between 0 and 1) of a plot box.
Property plotBoxHeight As %ZEN.Datatype.float [ InitialExpression = 0.8 ];

/// Optional. Height (as a percentage between 0 and 1) of the value bar within a plot box.
Property plotBoxValueHeight As %ZEN.Datatype.float [ InitialExpression = 0.5 ];

/// Optional. Style to apply to value bar in plotBox.
Property plotBoxValueStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "fill:rgb(47,98,128);" ];

/// Optional. Style to apply to negative value bar in plotBox.
Property plotBoxValueStyleNeg As %ZEN.Datatype.svgStyle [ InitialExpression = "fill:rgb(128,47,47);" ];

/// Optional. Style to apply to lower range rectangle in plotBox.
Property plotBoxLowerStyle As %ZEN.Datatype.svgStyle;

/// Optional. Style to apply to mid range rectangle in plotBox.
Property plotBoxMidStyle As %ZEN.Datatype.svgStyle;

/// Optional. Style to indicator arrows in plotBox.
Property arrowStyle As %ZEN.Datatype.svgStyle;

/// Optional. Color of indicator lamp.
Property lampColor As %ZEN.Datatype.string [ InitialExpression = "#80F080" ];

/// Optional. Color of negative indicator lamp.
Property lampColorNeg As %ZEN.Datatype.string [ InitialExpression = "#F08080" ];

/// Optional. Style for trendLine in plotBox.
Property trendLineStyle As %ZEN.Datatype.svgStyle;

/// Optional. Height (as a percentage between 0 and 1) of a trend line.
Property trendLineHeight As %ZEN.Datatype.float [ InitialExpression = 0.8 ];

/// Optional. Style for trendBars in plotBox.
Property trendBarsStyle As %ZEN.Datatype.svgStyle;

/// Optional. Height (as a percentage between 0 and 1) of a trend bar chart.
Property trendBarsHeight As %ZEN.Datatype.float [ InitialExpression = 0.8 ];

/// Optional. Style for column headers in plotBox.
Property columnHeaderStyle As %ZEN.Datatype.svgStyle;

/// Optional. Style for targetLine in plotBox.
Property targetLineStyle As %ZEN.Datatype.svgStyle;

/// If true, swap rows and columns within the data source for this scoreCard.
Property pivotData As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional: alignment for title and subtitle.
/// (Default is left for scorecard).
Property titleAlign As %ZEN.Datatype.string(VALUELIST = ",center,left,right") [ InitialExpression = "left" ];

/// Optional: if true, display the title area.
Property titleVisible As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Optional: if true, display column headers.
Property headersVisible As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Optional: if true, display column footers.
Property footersVisible As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Optional: URL of image to display within the title area.
Property titleImage As %ZEN.Datatype.uri;

/// Optional. Style for titleImage: left,top,width, and height.
Property titleImageStyle As %ZEN.Datatype.svgStyle;

/// internal properties of a scoreCard
Property %rowValues As %Integer(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

Property %dataMinValue As %Double(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

Property %dataMaxValue As %Double(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

Property %dataCount As %Double(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

Property %dataSum As %Double(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

Property %columnDefs As list Of scoreCardColumn(XMLPROJECTION = "none") [ Internal ];

XData SVGStyle
{
}

/// No axes for a score card.
Method hasAxes()
{
}

/// Render the inner SVG contents of this component.
Method renderContents()
{
}

Method setupTopLevel(scaleX, scaleY)
{
}

/// Render the contents of this component.
Method renderScoreCard()
{
}

/// Given a column property, see if it is a property name and return it.
/// Otherwise return '';
Method getPropName(prop) [ Internal ]
{
}

/// Implementation of max() function within formulae.
/// Return max value of given property within current data set.
/// or max of values within a list of items.
Method getMaxValue(ByRef args)
{
}

/// Implementation of min() function within formulae.
/// Return min value of given property within current data set.
Method getMinValue(ByRef args)
{
}

/// Implementation of count() function within formulae.
/// Return count of items within current data set.
Method getCountValue(ByRef args) [ Internal ]
{
}

/// Implementation of avg() function within formulae.
/// Return average of items within current data set.
Method getAvgValue(ByRef args)
{
}

/// Implementation of sum() function within formulae.
/// Return sum of items within current data set.
Method getSumValue(ByRef args)
{
}

/// Evaluate a value expression.
/// expr is the expression;
/// data is an array of data values subscripted by name and row;
/// r is the row.
Method evaluate(expr, ByRef data, r)
{
}

/// Lookup function for formula engine.
ClassMethod lookup(key)
{
}

Method getController()
{
}

Method FormatNumber(value, format)
{
}

ClassMethod length(ByRef array)
{
}

ClassMethod Test()
{
}

}
