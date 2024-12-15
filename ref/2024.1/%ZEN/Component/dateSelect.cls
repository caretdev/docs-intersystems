/// A specialized input control for handling date values.<br>
/// This control allows the user to view and edit a date value
/// via a set of comboboxes, one for year, month, and day of month.
/// This is useful for cases like birth dates or expiration dates
/// where a popup calendar (as in the <class>dateText</class> component)
/// is cumbersome.<br/>
/// The logical value of this control takes the standard form
/// YYYY-MM-DD. You can change the order of the year, month, and day
/// dropdows using the <property>format</property> property.<br/>
/// Note that the standard HTML events (onfocus, onclick, etc.) are fired
/// for <em>each</em> of the select controls that make up this component.<br/>
/// Setting <property>readOnly</property> to true has the same effect
/// as disabling this component; this is the standard HTML behavior
/// for select controls.
Class %ZEN.Component.dateSelect Extends control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "dateSelect";

/// Localization domain
Parameter DOMAIN = "%ZEN";

/// This is a string that specifies the order in which the date
/// components are to be displayed.<br/>
/// Possible values are:<br/>
/// <ul>
/// <li>"MDY" - Month,Day,Year</li>
/// <li>"DMY" - Day,Month,Year</li>
/// <li>"YMD" - Year,Month,Day</li>
/// <li>"YDM" - Year,Day,Month</li>
/// <li>"DM" - Day,Month</li>
/// <li>"MD" - Month,Day</li>
/// <li>"YM" - Year,Month</li>
/// <li>"MY" - Month,Year</li>
/// <li>"Y" - Year</li>
/// <li>"M" - Month</li>
/// </ul>
Property format As %ZEN.Datatype.string(MAXLEN = 3, VALUELIST = ",MDY,DMY,YMD,DM,MD,YM,MY,Y,M", ZENEXPRESSION = 1) [ InitialExpression = "MDY" ];

/// Optional.
/// If specified, this is the earliest year allowed by the calendar.
/// If not specified, 1900 is used.
Property minYear As %ZEN.Datatype.integer(ZENEXPRESSION = 1);

/// Optional.
/// If specified, this is the latest year allowed by the calendar.
/// If not specified, the current year plus 20 is used.
Property maxYear As %ZEN.Datatype.integer(ZENEXPRESSION = 1);

/// List of localized month names shown in the month combo box.
Property monthList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// If true (default is false) show the first 3 characters of month
/// names in the month dropdown.
/// Note, you can also control this by setting the value of the
/// <property>monthList</property> property.
Property shortMonth As %ZEN.Datatype.boolean(ZENLOCALIZE = 1) [ InitialExpression = 0 ];

/// If true (default id false) show the ordinal month number along
/// with month names in the month dropdown.
Property showMonthNumber As %ZEN.Datatype.boolean(ZENLOCALIZE = 1) [ InitialExpression = 0 ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// onchange handler for this component.
ClientMethod ondatechangeHandler(which) [ Internal, Language = javascript ]
{
}

/// Return displayed year value.
ClientMethod getYear() [ Language = javascript ]
{
}

/// Return displayed month value.
ClientMethod getMonth() [ Language = javascript ]
{
}

/// Return displayed day value.
ClientMethod getDay() [ Language = javascript ]
{
}

/// Internal method to update the elements in the year drop down.
ClientMethod updateYearList() [ Internal, Language = javascript ]
{
}

/// Internal method to update the elements in the day drop down.
ClientMethod updateDayList() [ Internal, Language = javascript ]
{
}

/// Test if this is an complete date;
/// either all values are provided or no values are
/// provided.
ClientMethod isCompleteDate() [ Language = javascript ]
{
}

ClientMethod isValid() [ Language = javascript ]
{
}

/// Client-side method to give input focus to this control.
ClientMethod focus() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
