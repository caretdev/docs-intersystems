/// This class exposes the NLS properties related
/// to Date, Time and Number formats. Their initial
/// values come from the current locale defaults.
/// Changing a property of an instantiated object
/// affects only the current process. For more details
/// see the documentation for $ZDATE, $ZDATEH, $FNUMBER.<br><br>
///
/// For generic locale properties see <class>%SYS.NLS.Locale</class>.<br>
/// For system and process NLS table settings see <class>%SYS.NLS.Table</class>.<br>
/// For current device NLS properties see <class>%SYS.NLS.Device</class>.<br>
Class %SYS.NLS.Format Extends (%RegisteredObject, %SYSTEM.Help) [ Inheritance = right, System = 4 ]
{

/// Sufix which may optionally be appended to time values
/// prior to 12 noon.<br><br>
/// Example: "AM"
Property AM As %String;

/// The DateFormat code used whenever a $ZDATE, $ZDATEH,
/// $ZDATETIME or $ZDATETIMEH function call omits its second
/// parameter, or specifies	a second parameter value of -1.<br><br>
/// Example: 1
Property DateFormat As %Integer;

/// The maximum value for a date allowed in $ZDATE, $ZDATEH,
/// $ZDATETIME or $ZDATETIMEH functions.<br><br>
/// Example: 94232  (12/30/2098)
Property DateMaximum As %Integer;

/// The minimum value for a date allowed in $ZDATE, $ZDATEH,
/// $ZDATETIME or $ZDATETIMEH functions.<br><br>
/// Example: 1
Property DateMinimum As %Integer;

/// The character used to delimit the months, days, and years
/// of those dates which are otherwise entirely numeric.<br><br>
/// Example: "/"
Property DateSeparator As %String;

/// The character used by the $FNUMBER function to separate
/// the whole part of a number from the fractional part of
/// the number. Also used by $ZDATETIME, $ZDATETIMEH, $ZTIME
/// and $ZTIMEH to separate the whole part of the seconds from
/// the optional fractional part of the seconds, if any.<br><br>
/// Example: "."
Property DecimalSeparator As %String;

/// This property controls the source of the formats.<br><br>
///
/// Locale="" means that the system default formats
/// (usually US English) are in effect for the current
/// process.<br><br>
///
/// Locale="&lt;locale name&gt;" (eg: "rusw" or "csy8") means that
/// the formats come from that locale.<br><br>
///
/// This property may be changed after the object is instantiated
/// or by passing the desired locale to %New. For example:<br><br>
///
/// Set fmt=##class(%SYS.NLS.Format).%New("jpnw")<br><br>
///
/// As a convenience, the word "Current" can be used instead of
/// a locale name in order to mean the current locale.
Property Locale As %String;

/// This is where the Locale is actually stored.
Property PrivateLocale As %String [ Internal ];

/// The suffix which may optionally be appended to time
/// values corresponding to exactly 12 midnight.<br><br>
/// Example: "MIDNIGHT"
Property Midnight As %String;

/// The character which may precede or follow a negative
/// numeric quantity formatted by the $FNUMBER function.<br><br>
/// Example: "-"
Property MinusSign As %String;

/// The abbreviations of the names of the twelve months,
/// used whenever a $ZDATE, $ZDATEH, $ZDATETIME or $ZDATETIMEH
/// function call omits its MonthNameList parameter, or specifies
/// a MonthNameList parameter value of -1, and the selected date
/// format uses month name abbreviations (i.e., the effective
/// DateFormat code is 0, 2, 5, 6 or 7)<br><br>
/// Example: " Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"
Property MonthAbbr As %String;

/// The full names of the twelve months, used whenever a
/// $ZDATE, $ZDATEH, $ZDATETIME or $ZDATETIMEH function call
/// omits its MonthNameList parameter, or specifies a MonthNameList
/// parameter value of -1, and the selected date format uses full
/// month names (i.e., the effective DateFormat code is 9).<br><br>
/// Example: " January February March April... November December"
Property MonthName As %String;

/// The suffix which may optionally be appended to time values
/// corresponding to exactly 12 noon.<br><br>
/// Example: "NOON"
Property Noon As %String;

/// The character used to separate groups of numeric digits
/// within the whole number portion of a number formatted by
/// the $FNUMBER function.<br><br>
/// Example: ","
Property NumericGroupSeparator As %String;

/// The number of digits in a numeric group formatted by the
/// $FNUMBER function.<br><br>
/// Example: 3
Property NumericGroupSize As %Integer;

/// The suffix which may optionally be appended to time values
/// at or after 12 noon.<br><br>
/// Example: "PM"
Property PM As %String;

/// The character which may optionally precede or follow a
/// non-negative numeric quantity formatted by the $FNUMBER
/// function.<br><br>
/// Example: "+"
Property PlusSign As %String;

/// The TimeFormat code used whenever a $ZDATETIME, $ZDATETIMEH,
/// $ZTIME or $ZTIMEH function call omits its TimeFormat parameter,
/// or specifies a TimeFormat parameter value of -1.<br><br>
/// Example: 1
Property TimeFormat As %Integer;

/// The number of fractional digits displayed in a time value
/// whenever a $ZDATETIME or $ZTIME function call omits its
/// Precision parameter, or specifies a Precision parameter
/// value of -1.<br><br>
/// Example: 0
Property TimePrecision As %Integer;

/// The character used to delimit the hours, minutes and seconds
/// in a time value.<br><br>
/// Example: ":"
Property TimeSeparator As %String;

/// The abbreviations of the names of the seven days of the
/// week, starting with Sunday and ending with Saturday, used
/// whenever a $ZDATE or $ZDATEIME function call selects a date
/// format which uses weekday name abbreviations (i.e., the
/// effective DateFormat code is 11).<br><br>
/// Example: " Sun Mon Tue Wed Thu Fri Sat"
Property WeekdayAbbr As %String;

/// The full names of the seven days of the week, starting
/// with Sunday and ending with Saturday, used whenever a
/// $ZDATE or $ZDATEIME function call selects a date format
/// which uses full weekday names (i.e., the effective
/// DateFormat code is 12).<br><br>
/// Example: " Sunday Monday Tuesday... Friday Saturday"
Property WeekdayName As %String;

/// The YearOption code used whenever a $ZDATE, $ZDATEH,
/// $ZDATETIME or $ZDATETIMEH function call omits its
/// YearOption parameter, or specifies a YearOption parameter
/// value of -1.<br><br>
/// Example: 0
Property YearOption As %Integer;

Method LocaleGet() As %String [ Internal ]
{
}

Method LocaleSet(new As %String) As %Status [ Internal ]
{
}

Method AMGet() As %String [ Internal ]
{
}

Method AMSet(value As %String) As %Status [ Internal ]
{
}

Method PMGet() As %String [ Internal ]
{
}

Method PMSet(value As %String) As %Status [ Internal ]
{
}

Method NoonGet() As %String [ Internal ]
{
}

Method NoonSet(value As %String) As %Status [ Internal ]
{
}

Method MidnightGet() As %String [ Internal ]
{
}

Method MidnightSet(value As %String) As %Status [ Internal ]
{
}

Method MonthNameGet() As %String [ Internal ]
{
}

Method MonthNameSet(value As %String) As %Status [ Internal ]
{
}

Method MonthAbbrGet() As %String [ Internal ]
{
}

Method MonthAbbrSet(value As %String) As %Status [ Internal ]
{
}

Method WeekdayNameGet() As %String [ Internal ]
{
}

Method WeekdayNameSet(value As %String) As %Status [ Internal ]
{
}

Method WeekdayAbbrGet() As %String [ Internal ]
{
}

Method WeekdayAbbrSet(value As %String) As %Status [ Internal ]
{
}

Method DateFormatGet() As %String [ Internal ]
{
}

Method DateFormatSet(value As %String) As %Status [ Internal ]
{
}

Method DateMinimumGet() As %String [ Internal ]
{
}

Method DateMinimumSet(value As %String) As %Status [ Internal ]
{
}

Method DateMaximumGet() As %String [ Internal ]
{
}

Method DateMaximumSet(value As %String) As %Status [ Internal ]
{
}

Method DateSeparatorGet() As %String [ Internal ]
{
}

Method DateSeparatorSet(value As %String) As %Status [ Internal ]
{
}

Method YearOptionGet() As %String [ Internal ]
{
}

Method YearOptionSet(value As %String) As %Status [ Internal ]
{
}

Method TimeFormatGet() As %String [ Internal ]
{
}

Method TimeFormatSet(value As %String) As %Status [ Internal ]
{
}

Method TimePrecisionGet() As %String [ Internal ]
{
}

Method TimePrecisionSet(value As %String) As %Status [ Internal ]
{
}

Method TimeSeparatorGet() As %String [ Internal ]
{
}

Method TimeSeparatorSet(value As %String) As %Status [ Internal ]
{
}

Method DecimalSeparatorGet() As %String [ Internal ]
{
}

Method DecimalSeparatorSet(value As %String) As %Status [ Internal ]
{
}

Method NumericGroupSeparatorGet() As %String [ Internal ]
{
}

Method NumericGroupSeparatorSet(value As %String) As %Status [ Internal ]
{
}

Method NumericGroupSizeGet() As %String [ Internal ]
{
}

Method NumericGroupSizeSet(value As %String) As %Status [ Internal ]
{
}

Method MinusSignGet() As %String [ Internal ]
{
}

Method MinusSignSet(value As %String) As %Status [ Internal ]
{
}

Method PlusSignGet() As %String [ Internal ]
{
}

Method PlusSignSet(value As %String) As %Status [ Internal ]
{
}

/// Helper function to the PropSet methods.
/// Parameters:<ul>
///   <li>index - item index
///   <li>val   - new value for item</li></ul>
/// Returns: previous item value or "" in case of error
ClassMethod setitem(index As %Integer, val As %String) As %Status [ Internal ]
{
}

/// Gets a format item from the current process context<br><br>
/// Parameter:<ul>
///   <li>item - item name (eg: "YEAROPTION", "DATEFORMAT")</li></ul>
/// Returns: selected item or "" in case of error
ClassMethod GetFormatItem(item As %String) As %String
{
}

/// Sets a format item in the current process context<br><br>
/// Parameters:<ul>
///   <li>item - item name (eg: "YEAROPTION", "DATEFORMAT")</li>
///   <li>val - new value for item</li></ul>
/// Returns: previous item value or "" in case of error
ClassMethod SetFormatItem(item As %String, val As %String) As %String
{
}

/// Gets the index associated with a Format item name<br><br>
/// Parameter:<ul>
///   <li>item - item name (eg: "YEAROPTION", "DATEFORMAT")</li></ul>
/// Returns: item index or -1 in case of error
ClassMethod getformatindex(item As %String) As %Integer [ Internal ]
{
}

/// Gets the system flag that indicates whether date/time/number
/// functions should use the locale format by default. Besides, if
/// a new boolean flag is passed as an argument, the system flag
/// is set to this new value. A system reboot or locale reload is
/// necessary to activate the change.<br><br>
/// Parameter: (optional)<ul>
///   <li>new - sets locale format flag to this value (0 or 1)</li></ul>
/// Returns: previous value of the system locale format flag
ClassMethod UseLocale(new As %Boolean) As %Boolean
{
}

Method %OnNew(loc As %String = "") As %Status [ Internal ]
{
}

}
