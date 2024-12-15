Class %WebStress.Tests Extends (%Persistent, %XML.Adaptor, %ZEN.DataModel.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

/// A unique name that identifies this test
Property Name As %String(TRUNCATE = 1);

Property DelayType As %String(DISPLAYLIST = ",No Delay,Random,User Recorded");

/// A list of the scripts that will be used in this test along with the associated generators, webservers etc
Relationship Parameters As %WebStress.Tests.Parameters [ Cardinality = children, Inverse = Test ];

/// The lower limit in seconds for a random delay period
Property RandomDelayMin As %Integer;

/// The upper limit in seconds for a random delay period
Property RandomDelayMax As %Integer;

/// The date when the test should start. Used for non-interactive starts. (YYYY-MM-DD)
Property StartDate As %Date(FORMAT = 3);

/// The date when the test should stop. Used for non-interactive starts (YYYY-MM-DD)
Property StopDate As %Date(FORMAT = 3);

/// The time when the test should start. Used for non-interactive starts (HH:MM)
Property StartTime As %Time(FORMAT = 2);

/// The time when the test should stop. Used for non-interactive starts (HH:MM)
Property StopTime As %Time(FORMAT = 2);

/// The number of minutes that the test should run for (in record mode, not warm up or cool down).
Property RunMinutes As %Integer;

/// The number of minutes that the test should run for before result recording starts
Property WarmUpMinutes As %Integer;

/// The number of minutes that the test should run for after result recording stops
Property CoolDownMinutes As %Integer;

/// The address of the proxy server that should be used
Property ProxyAddress As %String(TRUNCATE = 1);

/// The port on the proxy server that should be used
Property ProxyPort As %Integer;

/// Indicates whether the encryption flag should be changed on the application servers
Property SetAppEncrypt As %Boolean [ InitialExpression = 1 ];

/// Indicates whether the data and code should be sent to the remote generators
Property SendData As %Boolean;

/// Indicates whether the results should be transferred back from the other generators at the end of the run
Property TransferResults As %Boolean;

/// Indicates whether the application server statistics should be collected during the playback
/// The stats include license usage as well as global/routine references/seizes etc
Property CollectAppServerStats As %Boolean;

/// The period in seconds at which to collect the statistics from the application servers
Property CollectAppServerPeriod As %Integer [ InitialExpression = 5 ];

Property SavePageSource As %Boolean [ InitialExpression = 0 ];

Property SavePageSourceDir As %String(MAXLEN = 255);

Property SSLConfig As %String(MAXLEN = 255);

Property Timeout As %String [ InitialExpression = 30 ];

Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

}
