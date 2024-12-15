Class %WebStress.Results.Iterations Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Property RunID As %Integer;

Property TestID As %WebStress.Tests;

Property Script As %String(TRUNCATE = 1);

Property Generator As %String(TRUNCATE = 1);

Property Seconds As %Integer;

Property Processes As %Integer;

Property Sessions As %Integer;

Property Target As %Numeric(SCALE = 1);

Property TimeStart As %TimeStamp;

Property TimeStop As %TimeStamp;

Property RunDescription As %String(MAXLEN = 255, TRUNCATE = 1);

Property Minutes As %Numeric(SCALE = 1) [ Calculated, SqlComputeCode = {	new iID

Property Iterations As %Integer;

Property RatePerMinute As %Numeric(SCALE = 1) [ Calculated, SqlComputeCode = {	new iID

Property RatePerSecond As %Numeric(SCALE = 1) [ Calculated, SqlComputeCode = {	new iID

Method MinutesGet() As %Numeric
{
}

Method RatePerMinuteGet() As %Numeric
{
}

Method RatePerSecondGet() As %Numeric
{
}

}
