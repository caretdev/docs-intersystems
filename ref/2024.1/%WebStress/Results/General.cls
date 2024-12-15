Class %WebStress.Results.General Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Property RunID As %Integer;

Property TestID As %String(TRUNCATE = 1);

Property Generator As %String(TRUNCATE = 1);

Property PrepareTime As %String(TRUNCATE = 1);

Property WarmUpTime As %String(TRUNCATE = 1);

Property RecordTime As %String(TRUNCATE = 1);

Property CoolDownTime As %String(TRUNCATE = 1);

Property StoppingTime As %String(TRUNCATE = 1);

Property StoppedTime As %String(TRUNCATE = 1);

Property RunDescription As %String(TRUNCATE = 1);

}
