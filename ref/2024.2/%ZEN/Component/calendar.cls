/// A calendar control.<br>
/// This is a custom control built out of HTML primitives.<br>
/// The value associated with this control is in %Timestamp format:
/// YYYY-MM-DD
Class %ZEN.Component.calendar Extends control [ Deprecated, System = 3 ]
{

/// Do not include in "form" module.
Parameter SYSMODULE;

/// Localization domain
Parameter DOMAIN = "%ZEN";

/// Starting year displayed by year selector in calendar.
/// If not defined, default is 10 years previous to now
/// or the year portion of <property>minDate</property> if defined.
Property startYear As %ZEN.Datatype.integer(MINVAL = 1600);

/// Ending year displayed by year selector in calendar.
/// If not defined, default is 30 years after now
/// or the year portion of <property>maxDate</property> if defined.
Property endYear As %ZEN.Datatype.integer(MAXVAL = 9999);

/// Optional.
/// If specified, this is the earliest date allowed by the calendar.
/// This is a date in the form "YYYY-MM-DD".<br>
/// Note that setting this does not effect what years are displayed
/// by the calendar; that is controlled by the <property>startYear</property>
/// and </property>endYear</property> properties.
Property minDate As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// Optional.
/// If specified, this is the latest date allowed by the calendar.
/// This is a date in the form "YYYY-MM-DD".<br>
/// Note that setting this does not effect what years are displayed
/// by the calendar; that is controlled by the <property>startYear</property>
/// and </property>endYear</property> properties.
Property maxDate As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// List of localized day abbreviations shown at top of calendar.
Property dayList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// List of localized month names shown at top of calendar.
Property monthList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// Specified which day of the week (Sunday=0, Saturday = 6) is displayed as
/// the starting day of the week.<br>
/// This allows for customizing the calendar for locales where weeks start with
/// other days of the week.
Property firstDayOfWeek As %ZEN.Datatype.integer(MAXVAL = 6, MINVAL = 0) [ InitialExpression = 0 ];

/// Year displayed by control.
Property year As %ZEN.Datatype.integer;

/// Month (1 to 12) displayed by control.
Property month As %ZEN.Datatype.integer(MAXVAL = 12, MINVAL = 1);

/// Size of the gap between the month and year indicators.<br>
/// Setting this provides a way to adjust the overall size of the
/// calendar.
Property gapWidth As %ZEN.Datatype.length [ InitialExpression = "40px" ];

/// If true, then this calendar will display a single month
/// and provide no way for the user to change month and year.
Property fixedMonth As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, then this calendar will also display and allow the user
/// to edit the time of day portion of a date. In this case, the value
/// used by this control will be in xDBC timestamp format:
/// YYYY-MM-DD HH:MM:SS
Property showTime As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If specified and <property>showTime</property> is true, and the value
/// supplied does not include a time portion, this will be
/// used as the initial time displayed in the popup calendar.
Property defaultTime As %ZEN.Datatype.string;

/// Localized caption for time input box (see <property>showTime</property>).
Property timeCaption As %ZEN.Datatype.caption;

/// If true, then allow the user to select multiple days by pressing the CTRL key
/// when clicking on a date. The most recent selection is used as the value of the
/// control. The list of multiple values is placed into the <property>listOfValues</property>
/// array.
Property multiSelect As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, then allow the user to select ranges of days by pressing the SHIFT key
/// when clicking on a date. The most recent selection is used as the value of the
/// control. The start and end values are placed into the <property>listOfValues</property>
/// array and <property>isRange</property> will be set true.
Property rangeSelect As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Indicates that the current list of values contains a date range.
Property isRange As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// List of current selected values (when in multi-select mode).
/// If a range is selected, then this list will contain the starting and ending values for the range.
Property listOfValues As list Of %ZEN.Datatype.string(XMLPROJECTION = "none");

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Client-side method to render control.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Called when user changes month or year.
/// Does not change current value of calandar.
ClientMethod changeMonth() [ Language = javascript ]
{
}

/// Move back one month; do not change current value;
ClientMethod prevMonth() [ Language = javascript ]
{
}

/// Move forward one month; do not change current value;
ClientMethod nextMonth() [ Language = javascript ]
{
}

/// Called when user clicks on a day.
ClientMethod selectDay(day, evt) [ Language = javascript ]
{
}

/// Fill in contents of entire calendar (month and year drop downs).
ClientMethod renderCalendarAll() [ Language = javascript ]
{
}

/// Fill in contents of calendar
ClientMethod renderCalendar() [ Language = javascript ]
{
}

/// Take a date value in xDBC format (YYYY-MM-DD) and, if valid
/// set the value of this control to the date.
ClientMethod parseDate(value) [ Language = javascript ]
{
}

/// Compute the starting year displayed by this calendar.
ClientMethod findStartYear() [ Language = javascript ]
{
}

/// Compute the ending year displayed by this calendar.
ClientMethod findEndYear() [ Language = javascript ]
{
}

/// Handler for keypress event in time control.
ClientMethod timeKeyHandler(evt) [ Language = javascript ]
{
}

/// Handler for change event in time control.
ClientMethod timeChangeHandler(evt) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
