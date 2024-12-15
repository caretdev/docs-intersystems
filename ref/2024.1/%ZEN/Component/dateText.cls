/// Input control specialized for handling date values.<br>
/// This displays a text box as well as a button that
/// displays a popup calendar.<br>
/// When the user enters a value into this control, it will
/// be converted into the closest matching date value or
/// and invalid date message.<br>
/// Setting the <property>value</property> property of this control, will bypass
/// date matching.<br/>
/// The value of this control is always in the canonical form: YYYY-MM-DD,
/// you can, however, <em>display</em> a different format by setting the <property>format</property>
/// property.
Class %ZEN.Component.dateText Extends control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "dateTextInput";

/// Localization domain
Parameter DOMAIN = "%ZEN";

/// Localized "invalid date" message displayed by control.
Property invalidDateMessage As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Invalid Date","%ZEN")} ];

/// Size of the input area for this control.
Property size As %ZEN.Datatype.integer(MINVAL = 0) [ InitialExpression = 15 ];

/// Optional.
/// If specified, this is the earliest date allowed by the calendar.
/// This is a date in the form "YYYY-MM-DD".<br>
Property minDate As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// Optional.
/// If specified, this is the latest date allowed by the calendar.
/// This is a date in the form "YYYY-MM-DD".<br>
Property maxDate As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// If true, then this calendar will also display and allow the user
/// to edit the time of day portion of a date. In this case, the value
/// used by this control will be in xDBC timestamp format:
/// YYYY-MM-DD HH:MM:SS
Property showTime As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If specified and <property>showTime</property> is true, and the value
/// supplied does not include a time portion, this will be
/// used as the initial time displayed in the popup calendar.
Property defaultTime As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// List of localized day abbreviations shown at top of calendar.
/// If specified, this is passed on the popup calendar.
Property dayList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// List of localized month names shown at top of calendar.
/// If specified, this is passed on the popup calendar.
Property monthList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// Localized caption for time input box (see <property>showTime</property>).
/// If specified, this is passed on the popup calendar.
Property timeCaption As %ZEN.Datatype.caption;

/// Specified which day of the week (Sunday=0, Saturday = 6) is displayed as
/// the starting day of the week.<br>
/// This allows for customizing the calendar for locales where weeks start with
/// other days of the week.
/// This is passed on the popup calendar.
Property firstDayOfWeek As %ZEN.Datatype.integer(MAXVAL = 6, MINVAL = 0) [ InitialExpression = 0 ];

/// onshowPopup event handler:
/// This event is fired just before the popup calendar is displayed.
/// It provides an opportunity to pass additional settings to the
/// popup calendar.<br>
/// The argument, <var>settings</var>, passed to this callback, is
/// an object (associative array). Property values within this
/// object are passed on as setting to the calendar control.<br>
/// For example:<br>
/// settings['gapWidth'] = '100px';
Property onshowPopup As %ZEN.Datatype.eventHandler;

/// Optional. Specifies the display format used for this component.
/// (Note that the internal value of this control is always YYYY-MM-DD).
/// Possible values are:<br/>
/// <ul>
/// <li>"YMD" - Year,Month,Day</li>
/// <li>"MDY" - Month,Day,Year</li>
/// <li>"DMY" - Day,Month,Year</li>
/// </ul>
Property format As %ZEN.Datatype.string(MAXLEN = 3, VALUELIST = ",MDY,DMY,YMD", ZENEXPRESSION = 1) [ InitialExpression = "YMD" ];

/// Optional. Specifies the separator character used between date segments.
/// Note, if time is also displayed, the time separator is <em>always</em> ":".
Property separator As %ZEN.Datatype.string(MAXLEN = 1, VALUELIST = ",-,/,., ", ZENEXPRESSION = 1) [ InitialExpression = "-" ];

/// Optional. URL of the "show calendar" icon displayed within this control.
Property image As %ZEN.Datatype.uri [ InitialExpression = "portal/calendar_48.gif" ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// onchange handler for this component.
ClientMethod ondatechangeHandler() [ Language = javascript ]
{
}

/// Apply formatting to get displayed date value.
ClientMethod formatValue(val) [ Language = javascript ]
{
}

/// Remove formatting to get logical date value.
ClientMethod unformatValue(val) [ Language = javascript ]
{
}

/// Display date selector for this control.
ClientMethod showDateSelector(defaultTime) [ Language = javascript ]
{
}

/// Apply the value from the popup to the input control.
ClientMethod applyDate(group) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// This method is called by the form validation mechanism to test
/// if the current contents of this control are valid.<br>
ClientMethod isValid() [ Language = javascript ]
{
}

/// Make sure that value is formatted correctly.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client callback is called just from refreshContents
/// just after the new HTML is delivered from the server.
ClientMethod onRefreshContents() [ Language = javascript ]
{
}

ClientMethod keydownHandler(evt) [ Language = javascript ]
{
}

/// Key down handler; trap ESC to avoid IE issues.
/// This client event, if present, is fired when the containing group is made visible.
ClientMethod onDisplayHandler() [ Language = javascript ]
{
}

/// Adjust size of control.
ClientMethod adjustSize() [ Language = javascript ]
{
}

}
