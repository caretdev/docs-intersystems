Class %ZEN.Report.Display.COSChart.Date Extends %RegisteredObject [ Deprecated ]
{

/// milliseconds since 1970
Property time As %Double;

Method %OnNew(initvalue As %String) As %Status
{
}

Method diff(anotherTime As Date)
{
}

/// return time in milliseconds since the epoch, 1970-01-01
Method getTime()
{
}

Method getTimeMS() [ Internal ]
{
}

Method getFullYear()
{
}

Method getMonth()
{
}

/// set *day* of month of date, returns date in milliseconds since the epoch, 1970-01-01
Method setDate(dayOfMonth)
{
}

/// set time in milliseconds since the epoch, 1970-01-01
Method setTime(timeMS)
{
}

/// get day
Method getDate()
{
}

Method getHours()
{
}

Method getMinutes()
{
}

Method getSeconds()
{
}

Method setHours(time)
{
}

Method setMinutes(time)
{
}

Method setSeconds(time)
{
}

Method dateToString()
{
}

/// Takes a Date object, converts it to YYYY-MM-DD.
/// If hasTime, add a time portion to the string.
ClassMethod zenDateToString(d, hasTime = 0, format, sep)
{
}

Method convertToDateAndTime() [ Internal ]
{
}

Method convertToDate() [ Internal ]
{
}

ClassMethod createDate(year, month, day)
{
}

ClassMethod createDateFromMS(time)
{
}

ClassMethod createDate1(year, month, day, hours, minutes, seconds, milliseconds, ByRef pStatus)
{
}

/// Convert a string to a date value.
/// Handles the following formats:
/// 'T'|'t' => today, T+n t-n
/// '' => ''
/// 2005-12-20,2005/12/20,2005 12 20
/// Various date formats supported by COS
/// Returns either '', -1 (for invalid dates)
/// or a date string in the form YYYY-MM-DD
/// (or in the format specified by format and sep)
ClassMethod ParseDate(value, hasTime, format, sep)
{
}

ClassMethod stringToDate(dval As %String)
{
}

}
