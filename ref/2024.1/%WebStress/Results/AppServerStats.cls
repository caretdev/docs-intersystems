Class %WebStress.Results.AppServerStats Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Property RunID As %Integer;

Property TestID As %String(TRUNCATE = 1);

Property AppServer As %String(TRUNCATE = 1);

Property Line As %Integer;

Property StatsDate As %Date;

Property StatsTime As %Time;

Property LUConsumed As %Integer;

Property LUAvailable As %Integer;

Property CSPSessions As %Integer;

Property GlobRefs As %Integer;

Property PhysicalReads As %Integer;

Property PhysicalWrites As %Integer;

Property Ratio As %Numeric(SCALE = 2);

Property GlobalSetsKills As %Integer;

Property Seizes As %Integer;

Property SeizesRatio As %Numeric(SCALE = 2);

Property RSeizes As %Integer;

Property RSeizesRatio As %Numeric(SCALE = 2);

Property WDQSize As %String(TRUNCATE = 1);

Property WDWake As %String(TRUNCATE = 1);

}
