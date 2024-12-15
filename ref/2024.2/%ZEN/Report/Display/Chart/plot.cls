/// Internal use only.  Each chart creates a plot object to keep track of
/// information about its plot area.
Class %ZEN.Report.Display.Chart.plot Extends %RegisteredObject [ Deprecated, System = 4 ]
{

Property plotWidth As %ZEN.Datatype.float;

Property plotHeight As %ZEN.Datatype.float;

Property plotTop As %ZEN.Datatype.float;

Property plotBottom As %ZEN.Datatype.float;

Property plotLeft As %ZEN.Datatype.float;

Property plotRight As %ZEN.Datatype.float;

Property yGridType As %ZEN.Datatype.string;

Property xGridType As %ZEN.Datatype.string;

Method calculateRangeValues(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, chart As %ZEN.Report.Display.Chart.chart)
{
}

Method needsXDataMax(chart As chart) As %Boolean
{
}

Method needsXDataMin(chart As chart) As %Boolean
{
}

Method needsYDataMax(chart As chart) As %Boolean
{
}

Method needsYDataMin(chart As chart) As %Boolean
{
}

}
