/// Displays a daily schedule for a given time period
/// as an HTML component. The schedule displays time slots
/// for one or more days. User-defined scheduled items are
/// placed on top of the appropriate time slots.<br/>
/// <h3>Controlling the Display of the Schedule</h3>
/// The <property>view</property> property controls what timespan
/// is displayed: day, week, or month.<br/>
/// The <property>date</property> controls what time period
/// is displayed. If a weekly <property>view</property> is used, then
/// the week containing <property>date</property> is displayed.<br/>
/// The <property>interval</property> property specifies the size of each time slot
/// in minutes.<br/> while the <property>cellHeight</property> property
/// specifies how tall each slot will be (in pixels).<br/>
/// The number of intervals displayed for each day is determined by the
/// <property>startTime</property> and <property>endTime</property> properties;
/// these provide the default starting and ending times for each day (in minutes from
/// midnight). If there are scheduled items outside this range, additional
/// slots are added to make the items visible.<br/>
/// When the user clicks on a cell, the <property>onselectitem</property>
/// event handler is invoked. This handler is passed 2 variables:
/// <var>id</var>-the user defined id value for a scheduled
/// item as provided by the <property>OnGetScheduleInfo</property> callback (or null for an empty cell);
/// and <var>time</var>-the time value
/// associated with the cell (in yyyy-mm-dd hh:mm:ss format).
/// <h3>Providing Data for the Schedule</h3>
/// The scheduled items are provided by the user-defined
/// server-side callback method <property>OnGetScheduleInfo</property>.
/// This callback is passed an array of parameter values (from the
/// <property>parameters</property> collection; the starting day value (as
/// $H format) and the ending day value (also as $H format). It returns
/// an array containing a list of items to display.<br/>
/// The array of scheduled items takes the form:
/// <pre>
/// pInfo(day,time,n) = $LB(duration,id,text,type,style)
/// </pre>
/// Where <var>day</var> is the day ($H) for the item;
/// <var>time</var> is the start time (in minutes from midnight)
/// for the item; <var>n</var> is a arbitrary number (typically 1)
/// used just in case there are two or more items with the same day and time
/// value. The data for each element contains
/// <var>duration</var>, length of the item in minutes;
/// <var>id</var>, a logical id value associated with this item
/// (and passed on to the <property>onselectitem</property> event handler;
/// <var>text</var>, text to display within the item;
/// <var>type</var>, indicates the type of item: 0 is "unavailable"
/// time slot and 1 is a scheduled time slot;
/// <var>style</var> is option css style to apply to the time slot.<br/>
/// You can also provide day-wide styles by using the top-nodes of the
/// array:
/// <pre>
/// pInfo(day) = "css style for this day"
/// </pre>
/// <br/>
/// <br/>
/// For example:
/// <example language="CLS!MEMBER">
/// ClassMethod GetScheduleInfo(ByRef pParms As %String,pStartDate As %Date,pEndDate As %Date,ByRef pInfo As %List) As %Boolean
/// {
/// 	// Display a 1 hour staff meeting for the first
/// 	// day of this period.
/// 	Set pInfo(pStartDate,9*60,1) = $LB(60,1,"Staff Meeting",1,"background: green;")
/// 	Quit 1
/// }
/// </example>
Class %ZEN.ComponentEx.schedulePane Extends %ZEN.Component.component [ Deprecated, LegacyInstanceContext, System = 3 ]
{

/// Localization domain
Parameter DOMAIN = "%ZEN";

/// If provided, this text is displayed as a caption
/// along the top of the schedule. The text is *not*
/// HTML escaped, so that it can contain markup.
Property caption As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

/// Specifies what type of schedule to display.
Property view As %ZEN.Datatype.string(MAXLEN = 20, VALUELIST = ",day,week,month", ZENEXPRESSION = 1) [ InitialExpression = "day" ];

/// Specifies the size (duration) of the calendar slots (in minutes).
Property interval As %ZEN.Datatype.integer(MINVAL = 5, ZENEXPRESSION = 1) [ InitialExpression = 30 ];

/// Start time of the current selected cell(s).
Property selectedTime As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0);

/// Length (in minutes) of the current selected cell(s).
Property selectedInterval As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0);

/// List of localized day names.
Property dayList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// List of localized short day names.
Property shortDayList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// List of localized month names.
Property monthList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// List of localized short month names.
Property shortMonthList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// Specified which day of the week (Sunday=0, Saturday = 6) is displayed as
/// the starting day of the week.<br/>
/// This allows for customizing for locales in which weeks start with
/// other days of the week.
Property firstDayOfWeek As %ZEN.Datatype.integer(MAXVAL = 6, MINVAL = 0) [ InitialExpression = 0 ];

/// Date format used for sub-caption. Refer to the
/// $ZDT function for details.
Property dateFormat As %ZEN.Datatype.integer(MAXVAL = 17, MINVAL = -1) [ InitialExpression = -1 ];

/// Date to display (in YYYY-MM-DD format).<br/>
/// If not specified, the current day is used.<br/>
/// The schedule will display a range of days that contain
/// this date value. The range of values depends on the current
/// value of the <property>view</property> property.
Property date As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// Starting time (in minutes from midnight) to show for the daily
/// calendar.
Property startTime As %ZEN.Datatype.integer(MAXVAL = 1440, MINVAL = 0, ZENEXPRESSION = 1) [ InitialExpression = 480 ];

/// Ending time (in minutes from midnight) to show for the daily
/// calendar.
Property endTime As %ZEN.Datatype.integer(MAXVAL = 1440, MINVAL = 0, ZENEXPRESSION = 1) [ InitialExpression = 1080 ];

/// Height of header cells.
Property headerHeight As %ZEN.Datatype.length(ZENEXPRESSION = 1) [ InitialExpression = 40 ];

/// Height of time slot cell.
Property cellHeight As %ZEN.Datatype.length(ZENEXPRESSION = 1) [ InitialExpression = 30 ];

/// User-defined set of parameters. These are passed
/// along to the <property>OnGetScheduleInfo</property>
/// callback method.
Property parameters As array Of %ZEN.Auxiliary.parameter(XMLKEYNAME = "paramName", XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// onselectitem event handler:
/// If defined, this event is fired when the user clicks on an item within the schedule.
Property onselectitem As %ZEN.Datatype.eventHandler;

/// onchangeview event handler:
/// If defined, this event is fired when the user changes the view mode of the schedule (such as from month to day view).
Property onchangeview As %ZEN.Datatype.eventHandler;

/// Name of Server-side callback method to call to get information
/// used to display the schedule.<br/>
/// This must be the name of a server-only method in the page
/// class that contains this component.
Property OnGetScheduleInfo As %ZEN.Datatype.delegator(FORMALSPEC = "&pParms:%String,pStartDate:%Date,pEndDate:%Date,&pInfo:%List", RETURNTYPE = "%Boolean");

/// defines style sheet used by this component
XData Style
{
}

/// Draw the contents of this component.
Method %DrawHTML()
{
}

/// Draw the header for the schedule.
Method %DrawHeader()
{
}

/// Draw the month view for the schedule.
Method %DrawMonthView(ByRef pInfo, pStartDate As %Date, pEndDate As %Date)
{
}

/// Given a date (as a $H value), return the
/// date (as a $H value) of the start of the week the date is in.<br/>
/// <var>pStartOfWeek</var> indicates which is the starting day of the week (Sunday=0, Saturday = 6).
ClassMethod %GetStartOfWeek(pDate As %Date, pStartOfWeek As %Integer = 0) As %Date
{
}

/// Given a date (as a $H value), return the
/// date (as a $H value) of the first and last dates to display for the month the date is in.<br/>
ClassMethod %GetMonthRange(pDate As %Date, Output pEndDate, pStartOfWeek As %Integer = 0) As %Date
{
}

/// Return number of days in the given year and month.
ClassMethod %DaysInMonth(y, m) As %Integer
{
}

/// Return whether the given year is a leap year.
ClassMethod %IsLeapYear(y) As %Boolean
{
}

/// Take a time value (number of minutes from midnight) and return
/// a formatted display value.
ClassMethod %FormatTime(pTime As %Integer) As %String
{
}

/// Get an array (<var>pInfo</var>) containing info used to show the schedule.<br/>
/// This array is subscripted by item number.
Method %GetScheduleInfo(pStartDate As %Date, pEndDate As %Date, ByRef pInfo As %String) As %Status
{
}

/// Grab mouse down to prevent text selection.
ClientMethod mouseDownHandler(evt) [ Language = javascript ]
{
}

/// Mouse click handler<br/>
/// <var>type</var> can be: -1 for unassigned slot, 0 for unavailable, 1 for booked item.<br/>
/// <var>cellId</var> is HTML id of the item<br/>
/// <var>itemId</var> is the user provided id of the item.<br/>
ClientMethod mouseClickHandler(evt, type, time, cellId, userId, duration) [ Language = javascript ]
{
}

ClientMethod selectItem(id, multi, time) [ Internal, Language = javascript ]
{
}

/// Display the next time period.
ClientMethod nextPeriod() [ Language = javascript ]
{
}

/// Display the previous time period.
ClientMethod previousPeriod() [ Language = javascript ]
{
}

/// Move ahead or back the given number of days.
ClientMethod moveToNewDay(delta) [ Language = javascript ]
{
}

/// Set the <property>view</property> mode of this control.
ClientMethod setView(view) [ Language = javascript ]
{
}

/// Set the <property>date</property> mode of this control.
ClientMethod setDate(date) [ Language = javascript ]
{
}

/// Set the <property>interval</property> property of this control.
ClientMethod setInterval(interval) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// This client callback is called just from refreshContents
/// just after the new HTML is delivered from the server.
ClientMethod onRefreshContents() [ Language = javascript ]
{
}

/// Return information about the most recent
/// data drop. This is intended to be called from
/// a ondrop handler.<br/>
/// It returns the time slot where the data was dropped in
/// yyyy-mm-dd hh:mm:ss format or '' if data was not dropped
/// on a valid slot.
ClientMethod getDropTimeSlot() [ Language = javascript ]
{
}

}
