Class %WebStress.Run Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Property Job As %String(TRUNCATE = 1);

Property RunName As %String(TRUNCATE = 1);

Property Test As %WebStress.Tests;

Property Script As %WebStress.Scripts;

Property WebServer As %String(TRUNCATE = 1);

Property Sessions As %Integer;

Property DelayType As %String(DISPLAYLIST = ",No Delay,Random,User Recorded", TRUNCATE = 1, VALUELIST = ",N,R,U");

Property RandomDelayMin As %Integer;

Property RandomDelayMax As %Integer;

Property StartDate As %Date(FORMAT = 3);

Property StopDate As %Date(FORMAT = 3);

Property StartTime As %Time(FORMAT = 2);

Property StopTime As %Time(FORMAT = 2);

Property RunMinutes As %Integer;

Property WarmUpMinutes As %Integer;

Property CoolDownMinutes As %Integer;

Property RunStartDate As %Date(FORMAT = 3);

Property RunStopDate As %Date(FORMAT = 3);

Property RecordStartDate As %Date(FORMAT = 3);

Property RecordStopDate As %Date(FORMAT = 3);

Property RunStartTime As %Time(FORMAT = 2);

Property RunStopTime As %Time(FORMAT = 2);

Property RecordStartTime As %Time(FORMAT = 2);

Property RecordStopTime As %Time(FORMAT = 2);

Property SystemIdentifier As %String(MAXLEN = 200);

Property Status As %String(DISPLAYLIST = ",Unknown,Preparing,Waiting,Warmup,Recording,Cooldown,Stopping,Stopped,Error", TRUNCATE = 1, VALUELIST = ",0,1,2,3,4,5,6,7,8") [ InitialExpression = 0 ];

Property Error As %String(TRUNCATE = 1);

}
