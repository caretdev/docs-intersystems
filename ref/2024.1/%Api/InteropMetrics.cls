/// Provide Interoperability Interface metrics in Prometheus format
Class %Api.InteropMetrics Extends %CSP.REST [ Deprecated ]
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
}

/// Collect the Interoperability Interface metrics and send them to the client in Prometheus Exposition Format.
/// Optionally filter results to only include those in <param>pNamespace</param>
ClassMethod interfaces(pNamespace As %String = "") As %Status
{
}

/// Collect the Interoperability Interface metrics in the specified time range - using UTC - and send them to the client in Prometheus Exposition Format.
/// <param>pStart</param> is required and must be a valid date and optionally time in ODBC format [YY]YY-MM-DD.
/// Time, if specified uses the 24-hour clock and is separated from the date with either single space or a capital "T".
/// If no time is specified, the beginning of the day is used.
/// <param>pStart</param> is to be specified in UTC, and must not be after the current time.
/// <param>pEnd</param> is optional. If specified, it must be a valid date and optionally time in ODBC format [YY]YY-MM-DD.
/// Time, if specified uses the 24-hour clock and is separated from the date with either single space or a capital "T".
/// If no date or time is specified, the present time is used. If a date is specified, but time is not specified, the end of the day is used.
/// <param>pEnd</param> is to be specified in UTC. If a time after the current time is specified, the current time will be used.
ClassMethod interfacesByTime(pStart As %String = "", pEnd As %String = "") As %Status
{
}

/// Collect the Interoperability Interface metrics for the specified interval and send them to the client in Prometheus Exposition Format.
/// <param>pInterval</param> may be 'year', 'month', or 'day'.
/// <param>pNumber</param> must be a non-negative integer.
/// A value of 0 means the returned results will represent any interfaces run within the current time period.
/// For example, if <param>pInterval</param> is 'year', this will return results for the current calendar year.
/// If <param>pNumber</param> is a positive value, then the results will represent any interfaces run in the interval <param>pNumber</param> prior to the current one.
/// For example, if <param>pInterval</param> is 'year' and <param>pNumber</param> is 1, this will return results for the previous calendar year,
/// if <param>pNumber<param> is 2, this will return results for the calendar year before the previous one.
/// UTC is used in determining the boundary between intervals.
ClassMethod interfacesByInterval(pInterval As %String = "", pNumber As %Integer = 0) As %Status
{
}

/// Collect the Interoperability Interface metrics for the specified month and send them to the client in Prometheus Exposition Format.
/// <param>pNumber</param> must be a non-negative integer.
/// A value of 0 means the returned results will represent any interfaces run within the current calendar month.
/// If <param>pNumber</param> is a positive value, then the results will represent any interfaces run in the month <param>pNumber</param> prior to the current one.
/// For example, if is 1, this will return results for the previous calendar month and
/// if <param>pNumber<param> is 2, this will return results for the calendar month before the previous one.
/// /// UTC is used in determining the boundary between months.
ClassMethod interfacesByMonth(pMonth As %Integer = 0) As %Status
{
}

/// Collect the Interoperability Interface metrics for the specified year and send them to the client in Prometheus Exposition Format.
/// <param>pNumber</param> must be a non-negative integer.
/// A value of 0 means the returned results will represent any interfaces run within the current calendar year.
/// If <param>pNumber</param> is a positive value, then the results will represent any interfaces run in the year <param>pNumber</param> prior to the current one.
/// For example, if is 1, this will return results for the previous calendar year and
/// if <param>pNumber<param> is 2, this will return results for the calendar year before the previous one.
/// /// UTC is used in determining the boundary between years.
ClassMethod interfacesByYear(pYear As %Integer = 0) As %Status
{
}

/// Collect the Interoperability Interface metrics for the specified day and send them to the client in Prometheus Exposition Format.
/// <param>pNumber</param> must be a non-negative integer.
/// A value of 0 means the returned results will represent any interfaces run within the current calendar day.
/// If <param>pNumber</param> is a positive value, then the results will represent any interfaces run in the day <param>pNumber</param> prior to the current one.
/// For example, if is 1, this will return results for the previous calendar day and
/// if <param>pNumber<param> is 2, this will return results for the calendar day before the previous one.
/// /// UTC is used in determining the boundary between days.
ClassMethod interfacesByDay(pDay As %Integer = 0) As %Status
{
}

}
