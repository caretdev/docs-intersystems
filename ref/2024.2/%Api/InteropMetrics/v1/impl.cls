/// Set of REST APIs for getting interop metrics<br/>
/// Business logic class defined by OpenAPI in %Api.InteropMetrics.v1.spec<br/>
/// Updated Nov 14, 2024 18:21:32
Class %Api.InteropMetrics.v1.impl Extends %REST.Impl [ ProcedureBlock ]
{

/// If ExposeServerExceptions is true, then details of internal errors will be exposed.
Parameter ExposeServerExceptions = 0;

/// Returns estimated size of data (in MB) created for each database for all currently active data.<br/>
/// The method arguments hold values for:<br/>
///     start, If specified, only data since start (inclusive) is included. The start parameter is a date or datetime in UTC that must specified in ODBC format YYYY-MM-DD[ HH:MM:SS]. If only YYYY-MM-DD is specified, HH:MM:SS is assumed to be 00:00:00.<br/>
///     end, If specified, only data until end (inclusive) is included. The end parameter is a date or datetime in UTC that must specified in ODBC format YYYY-MM-DD[ HH:MM:SS]. If only YYYY-MM-DD is specified, HH:MM:SS is assumed to be 23:59:59.<br/>
///     database, If specified, only data related to that database is included.<br/>
ClassMethod currentDatabaseImpact(start As %String, end As %String, database As %String) As %Stream.Object
{
}

/// Returns estimated size of data (in MB) created for each database for all historical data.<br/>
/// The method arguments hold values for:<br/>
///     startmonth, If specified, only data since startmonth (inclusive) is included. The startmonth parameter is string of format YYYY-MM. Note that all times and dates are in UTC.<br/>
///     endmonth, If specified, only data until endmonth (inclusive) is included. The endmonth parameter is string of format YYYY-MM. Note that all times and dates are in UTC.<br/>
///     database, If specified, only data related to that database is included.<br/>
ClassMethod historicalDatabaseImpact(startmonth As %String, endmonth As %String, database As %String) As %Stream.Object
{
}

/// Returns information about all inbound, outbound, and web API interfaces for all currently active data.<br/>
/// The method arguments hold values for:<br/>
///     start, If specified, only data since start (inclusive) is included. The start parameter is a date or datetime in UTC that must specified in ODBC format YYYY-MM-DD[ HH:MM:SS]. If only YYYY-MM-DD is specified, HH:MM:SS is assumed to be 00:00:00.<br/>
///     end, If specified, only data until end (inclusive) is included. The end parameter is a date or datetime in UTC that must specified in ODBC format YYYY-MM-DD[ HH:MM:SS]. If only YYYY-MM-DD is specified, HH:MM:SS is assumed to be 23:59:59.<br/>
///     namespace, If specified, only data related to that namespace is included.<br/>
ClassMethod currentInterfaces(start As %String, end As %String, namespace As %String) As %Stream.Object
{
}

/// Returns information about all inbound, outbound, and web API interfaces for all historical data<br/>
/// The method arguments hold values for:<br/>
///     startmonth, If specified, only data since startmonth (inclusive) is included. The startmonth parameter is string of format YYYY-MM. Note that all times and dates are in UTC.<br/>
///     endmonth, If specified, only data until endmonth (inclusive) is included. The endmonth parameter is string of format YYYY-MM. Note that all times and dates are in UTC.<br/>
///     namespace, If specified, only data related to that namespace is included.<br/>
ClassMethod historicalInterfaces(startmonth As %String, endmonth As %String, namespace As %String) As %Stream.Object
{
}

/// Returns the total inbound and outbound volume metrics per namespace for all currently active data.<br/>
/// The method arguments hold values for:<br/>
///     startDate, If specified, only data since startDate (inclusive) is included. The startDate parameter is a date in UTC that must specified in ODBC format YYYY-MM-DD.<br/>
///     endDate, If specified, only data until endDate (inclusive) is included. The endDate parameter is a date in UTC that must specified in ODBC format YYYY-MM-DD.<br/>
///     namespace, If specified, only data related to that namespace is included.<br/>
ClassMethod currentVolume(startDate As %String, endDate As %String, namespace As %String) As %Stream.Object
{
}

/// Returns the total inbound and outbound volume metrics per namespace for all historical data.<br/>
/// The method arguments hold values for:<br/>
///     startmonth, If specified, only data since startmonth (inclusive) is included. The startmonth parameter is string of format YYYY-MM. Note that all times and dates are in UTC.<br/>
///     endmonth, If specified, only data until endmonth (inclusive) is included. The endmonth parameter is string of format YYYY-MM. Note that all times and dates are in UTC.<br/>
///     namespace, If specified, only data related to that namespace is included.<br/>
ClassMethod historicalVolume(startmonth As %String, endmonth As %String, namespace As %String) As %Stream.Object
{
}

/// Returns the date of both the earliest and most recent currently active records. If no metrics data exist, an empty response is returned.
ClassMethod currentRange() As %Stream.Object
{
}

/// Returns the date of both the earliest and most recent historical data. If no metrics data exist, an empty response is returned.
ClassMethod historicalRange() As %Stream.Object
{
}

}
