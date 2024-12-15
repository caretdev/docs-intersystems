/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
Class %CSP.Util.HTMLDashboardPane Extends (%CSP.Util.Pane, %ZEN.Portal.abstractRefreshable) [ ServerOnly = 1, System = 4 ]
{

/// Default domain for the Portal's localization.
Parameter DOMAIN = "%Utility";

/// Refresh rate for dashboard in milliseconds.
Property RefreshRate As %Integer [ InitialExpression = 5000 ];

/// Name of class that defines the callback method to provide data for dashboard.
Property MetricClass As %String(MAXLEN = 255) [ InitialExpression = "SYS.Metrics" ];

/// Name of callback method that provides data for dashboard.
Property MetricMethod As %String(MAXLEN = 64);

/// List of meters displayed by this dashboard.
Property Meters As list Of HTMLMeter(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

/// Direction in which to layout meters within this dashboard.
Property Orientation As %String(MAXLEN = 10, VALUELIST = ",horizontal,vertical", XMLPROJECTION = "element") [ InitialExpression = "horizontal" ];

/// Show dashboard legend
Property ShowLegend As %Boolean(XMLPROJECTION = "element") [ InitialExpression = 1 ];

/// Show dashboard icons
Property ShowIcons As %Boolean(XMLPROJECTION = "element") [ InitialExpression = 1 ];

/// Transient list of Meter objects
Property MeterObjects As %String(XMLPROJECTION = "NONE") [ MultiDimensional ];

/// Transient list of Meter classes
Property MeterClasses As %String(XMLPROJECTION = "NONE") [ MultiDimensional ];

Method DrawHEAD(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// update status indicator for meter
/// select a given meter
/// Draw the BODY of the detail pane
Method DrawBODY(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// Build list of meter objects and classes
Method BuildMeterLists() [ Private ]
{
}

/// Subclasses override this to generate code during CSP processing
Method OnGenerateCode() As %String
{
}

/// Called from client to refresh the dashboard
ClassMethod RefreshDashboard(pMetricClass As %String, pMetricMethod As %String, pID As %String, pLastCount As %String, metricList As %String)
{
}

/// This callback is responsible for returning the set of property values
/// for the dashboard.<br>
/// On exit, <var>pValues</var> contains list of values indexed by property name.<br>
/// <var>pStatus</var> contains list of status values indexed by property name.<br>
/// <var>pMsg</var> contains a status message indexed by property name.<br>
/// This invokes the callback specified by the MetricClass and MetricProperty properties.
ClassMethod CalculatePropertyValues(pID As %String, pLastCount As %Integer, pMetricClass As %String, pMetricMethod As %String, Output pValues As %String, Output pStatus As %String, Output pMsg As %String) As %Status
{
}

}
