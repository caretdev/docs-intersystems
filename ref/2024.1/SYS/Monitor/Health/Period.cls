/// Defines time Periods for evaluation of Health Monitor Sensors. Default is 63 weekly periods,
/// nine Periods for each day of the week.
Class SYS.Monitor.Health.Period Extends (%Persistent, %XML.Adaptor) [ ClassType = persistent, ProcedureBlock, System = 3 ]
{

/// Recurrance:
/// 	every day at (start/end),
/// 		every week on day (default)
/// 		every month on day of month or "last day of month"
/// 	every 3 months (quarterly) on day of month or "last day of month"
/// 	every year on month and day of month or "last day of month"
/// Description of the interval
Property Description As %String(MAXLEN = 250);

/// Start time
Property StartTime As %Integer [ InitialExpression = -1, Required ];

/// End time
Property EndTime As %Integer [ InitialExpression = -1, Required ];

/// Recurrence - weekly-1, monthly-2, quarterly-3, yearly-4
Property Recurrence As %Integer [ InitialExpression = 1, Required ];

/// Day. 1-7 for weekly, 1-31 or 99 for others
Property Day As %Integer [ InitialExpression = 0, Required ];

/// Month - Quarterly or yearly
Property Month As %String [ InitialExpression = 0, Required ];

/// Set the interval properties
Method %OnNew(rec As %Integer, day As %Integer, month As %Integer, start As %Integer, end As %Integer, desc As %String) As %Status [ Private ]
{
}

/// Create a Period. Start and End time is 24-hour time format.
/// Recurrence - weekly-1, monthly-2, quarterly-3, yearly-4
/// Day = day of week (1-7) for weekly recurrence, day of month (1-31 or 99 for "end of month") for all other recurrence.
ClassMethod Create(Rec As %Integer, Start As %String, End As %String, Day As %Integer, Desc As %String = "", Month As %Integer = 0) As %Status
{
}

/// Modify a Period.
ClassMethod Modify(Period As %Integer, Start As %String = "", End As %String = "", Day As %Integer = 0, Rec As %Integer = 0, Desc As %String = "", Month As %Integer = 0) As %Status
{
}

ClassMethod Validate(Start As %String, End As %String, Rec As %Integer, Day As %Integer, Month As %Integer, ByRef startsecs As %Integer, ByRef endsecs As %Integer) As %Status
{
}

/// Delete a Period
ClassMethod Delete(PeriodId As %String) As %Status
{
}

ClassMethod TodayPeriodsExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod TodayPeriodsClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = TodayPeriodsExecute ]
{
}

ClassMethod TodayPeriodsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = TodayPeriodsExecute ]
{
}

/// Get all periods for day - weekly recurrence
/// Get all periods for day - Monthly recurrence
/// Get all periods for day - quarterly recurrence
/// Get all periods for day - yearly recurrence
/// Get period descriptions, order by Recurrence
/// Get period descriptions by Day
/// Get period descriptions, order by ID
}
