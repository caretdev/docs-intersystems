///
Class %ZEN.Report.Display.timeline Extends %ZEN.Report.Display.childrenNode [ Deprecated, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// minimum-interval-width is the width of an interval in the timeline.  An interval can be a day, a month, a quarter or a year
/// This is in mm - milimeters
/// It is an xpath expression so specified as "'10mm'" for instance
Property MinimumIntervalWidth As %ZEN.Datatype.string(XMLNAME = "minimum-interval-width");

/// start-date-node-set is the xpath expression for start-dates.  It corresponds to end dates and episode types through predicate [position()=$pos]
Property StartDateNodeSet As %ZEN.Datatype.string(XMLNAME = "start-date-node-set");

/// end-date-node-set is the xpath expression for end-dates.  It corresponds to start dates and episode types through predicate [position()=$pos]
Property EndDateNodeSet As %ZEN.Datatype.string(XMLNAME = "end-date-node-set");

/// episode-type-node-set is the xpath expression for episode-types.  It corresponds to start dates and end dates through predicate [position()=$pos]
Property EpisodeTypeNodeSet As %ZEN.Datatype.string(XMLNAME = "episode-type-node-set");

/// plotting-color: when we graph episodes - the foreground color
Property PlottingColor As %ZEN.Datatype.string(XMLNAME = "plotting-color") [ InitialExpression = "'black'" ];

/// background-color: when we graph episodes - the background color
Property BackgroundColor As %ZEN.Datatype.string(XMLNAME = "background-color") [ InitialExpression = "'white'" ];

/// on-color: In the xaxis label, the color of intervals when they are "on"
Property OnColor As %ZEN.Datatype.string(XMLNAME = "on-color") [ InitialExpression = "'gray'" ];

/// off-color: In the xaxis label, the color of intervals when they are "off"
Property OffColor As %ZEN.Datatype.string(XMLNAME = "off-color") [ InitialExpression = "'white'" ];

/// interval-height is the height of episode ticks and xaxis ticks
Property IntervalHeight As %ZEN.Datatype.string(XMLNAME = "interval-height");

/// interval-type is the type of interval with which we are dealing, year, quarter, month or day
Property IntervalType As %ZEN.Datatype.string(VALUELIST = ",'year','quarter','month','day'", XMLNAME = "interval-type");

/// number-of-intervals can be used to override automatic calculation from data
Property NumberOfIntervals As %ZEN.Datatype.integer(XMLNAME = "number-of-intervals");

/// max-height specifies the maximum height of the episode graph.  Unseen episodes will be indicated with an up-arrow.
Property MaxHeight As %ZEN.Datatype.integer(XMLNAME = "max-height") [ InitialExpression = 5 ];

/// static-start-date can be used to override automatic calculation of start date from data
Property StartDate As %ZEN.Datatype.string(XMLNAME = "static-start-date");

/// static-end-date can be used to override automatic calculation of end date from data
Property EndDate As %ZEN.Datatype.string(XMLNAME = "static-end-date");

/// current-date is by default date of generation of report and indicated by a downward pointing arrow.
Property CurrentDate As %ZEN.Datatype.string(XMLNAME = "current-date");

/// generated-type-code is a string or integer that indicates when an episode is generated
Property GeneratedTypeCode As %ZEN.Datatype.string(XMLNAME = "generated-type-code");

/// generated-type-color is the color with which generated episodes will be drawn
Property GeneratedTypeColor As %ZEN.Datatype.string(XMLNAME = "generated-type-color") [ InitialExpression = "'gray'" ];

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

XData TimelineCommonXSL
{
}

XData TimelineHTMLXSL
{
}

XData TimelineFOXSL
{
}

}
