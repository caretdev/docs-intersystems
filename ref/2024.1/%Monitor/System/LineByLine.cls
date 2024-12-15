/// Line-by-line Monitor.
/// <br> <br>
/// A facility to allow monitoring of ObjectScript
/// routines on a line-by-line basis. The user may select which
/// routines to monitor and any of the standard performance metrics
/// supported by the PERFMON utility, as well as "Time" (clock time
/// spent in line) and "TotalTime" (total clock time including in-line
/// calls to other subroutines). See the GetMetrics() method for a list
/// of metric names.
/// <br> <br>
/// WARNING ! Starting the line-by-line monitor will enable the
/// collection of statistics for *every* line of code executed by the
/// selected routines and processes. This can have a major impact on
/// the performance of a system, and it is recommended that you do this
/// only on a 'test' system.
/// <br> <br>
/// Before monitoring an SQL query, you must run that query at least once,
/// in order to generate the code that will be monitored.
Class %Monitor.System.LineByLine Extends %RegisteredObject [ System = 3 ]
{

/// Start a line-by-line monitor collection. Parameters are lists of
/// Routines, Metric names, and Process IDs to be monitored.
/// <br> <br>
/// Routines may be "wildcarded" by using an asterisk as the final
/// character of any routine name. A null list indicates AddRoutine has been used.
/// <br> <br>
/// A null list of Metrics will use the default of "RtnLine, Time, TotalTime".
/// <br> <br>
/// A null list of Process IDs will enable all processes.
///
ClassMethod Start(Routine As %List = "", Metric As %List = "", Process As %List = "") As %Status
{
}

/// Returns a list of metric names (delimited by ",").
/// <br> <br>
/// The "Select" parameter is used to select either a list of metrics
/// which are currently being monitored (default of Select=1) or a
/// list of all available metric names (Select=2).
/// <br> <br>
/// If Select=3, this method will print a list of all available metrics
/// and a short description to the current device.
ClassMethod GetMetrics(Select As %Integer(MINVAL=1,MAXVAL=3) = 1) As %String
{
}

/// Get a count of the routines being monitored.
ClassMethod GetRoutineCount() As %Integer
{
}

/// Used to fetch the names of routines being monitored. The internal
/// list of routines is numbered from 1 to 'n', with 'n' being the count
/// returned by the GetRoutineCount() method.
ClassMethod GetRoutineName(Number As %Integer) As %String
{
}

/// Stop the line-by-line monitor collection
ClassMethod Stop() As %Status
{
}

/// Add a list of routines to be monitored.
/// <br> <br>
/// Normally, a list of routines can be specified simply as a parameter
/// of the Start() method. But if the user requires a list of routines
/// which exceeds the maximum string length, then this method may be
/// called repeatedly with routine lists, prior to calling Start().
/// <br> <br>
/// The first time it is called, the user should make sure they specify
/// the "Clear" parameter to initialize the list and ensure that any
/// previous entries are cleared. Then when Start() is invoked, the
/// "Routine" parameter should be null (Routine = ""). Routines may use
/// the asterisk wildcard as in Start().
ClassMethod AddRoutine(Routine As %List, Clear As %Boolean = 0) As %Status
{
}

/// Tests whether a routine is currently being monitored and returns
/// TRUE or FALSE.
ClassMethod IsActive(Routine As %String) As %Boolean
{
}

/// Pause the collection. Current results will still be available.
ClassMethod Pause() As %Status
{
}

/// Resume collection. Results continue to accumulate.
ClassMethod Resume() As %Status
{
}

/// Clear collected results. Collection continues and results start to accumulate again.
ClassMethod Clear() As %Status
{
}

/// Results of line-by-line monitoring for each routine. Each row of
/// the ResultSet contains a list of metric counts for a line of the
/// routine. Use the GetMetrics() method to retrieve a list of
/// currently monitored metric names.
/// <br><br>
/// The following example shows how to retrieve the current results
/// for a routine named "Test":
/// <example>
///  s metrics=##class(%Monitor.System.LineByLine).GetMetrics(),cnt=$l(metrics,",")
///  s rset=##class(%ResultSet).%New("%Monitor.System.LineByLine:Result")
///  d rset.Execute("Test")
///  w "LineByLine" f i=1:1:cnt w ?(12*i),$p(metrics,",",i)
///  f l=1:1 s more=rset.Next() q:'more  d
///  . s x=rset.GetData(1)
///  . w !,l,"." f i=1:1:cnt w ?(12*i),$li(x,i)
///  k rset
///  q
/// </example>
///
ClassMethod ResultExecute(ByRef qHandle As %Binary, Routine As %String = "*") As %Status [ Internal ]
{
}

ClassMethod ResultFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ResultExecute ]
{
}

ClassMethod ResultClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ResultExecute ]
{
}

/// Print test results
ClassMethod Print(Routine As %String) As %Status [ Internal ]
{
}

}
