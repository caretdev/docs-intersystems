Class %TSQL.sys.procedure Extends %Persistent [ StorageStrategy = oddproc, System = 4 ]
{

Property idSCHEMA As %String(MAXLEN = 256);

Property idPROC As %String(MAXLEN = 256);

Property schema As %String(MAXLEN = 256);

Property name As %String(MAXLEN = 256);

Property class As %String(MAXLEN = 256);

Property description As %String(MAXLEN = "");

Property execute As %String(MAXLEN = 4096);

/// Sybase execution modes associated with stored procedures.
/// Values are "chained", "unchained", and "anymode", for transaction modes, and '[No] Dynamic Ownership Chain'
/// At this time, ownership chains are not supported
/// This is only used for TSQL stored procedures with Dialect = Sybase
Property procxmode As %String [ Calculated, SqlComputeCode = { set {*}=$case($g(^rINDEXSQL("tsql","procxmode",{class},{procedure})),1:"chained",2:"anymode",:"unchanged")}, SqlComputed ];

/// 	interface
/// 		-2	function procedure with a return value that may return result sets
/// 		-1	function procedure without a return value that may return result sets
/// 		0	function procedure without a return value, no result sets
/// 		1	query (single result set)
/// 		2	function with a return value, no result sets
Property interface As %Integer;

Property procedure As %String;

ClassMethod inc()
{
}

}
