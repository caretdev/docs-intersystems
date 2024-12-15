/// Having this class that maps onto the data structure for the system log entries allows us
/// to use the SQL projection to query the log. The log entries are inserted without using
/// this class in case objects are not available at that time.
Class %Library.SysLogTable Extends %Library.Persistent [ Not ProcedureBlock, System = 3 ]
{

Property Category As %String(MAXLEN = 24);

Property LogLevel As %Integer;

Property Message As %String(MAXLEN = 256);

Property Pid As %String(MAXLEN = 16);

Property Namespace As %String(MAXLEN = 32);

Property Routine As %String(MAXLEN = 32);

Property TimeAdded As %TimeStamp;

Property Tag As %String(MAXLEN = 16);

Property SessionId As %String(MAXLEN = 16);

}
