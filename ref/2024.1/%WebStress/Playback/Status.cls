Class %WebStress.Playback.Status Extends (%Persistent, %XML.Adaptor) [ Owner = {%Developer}, System = 4 ]
{

/// Status of this process
Property Status As %Integer;

/// Description of the current status
Property StatusText As %String;

/// The process ID
Property ProcessID As %String;

Property TestID As %Integer;

Property RunID As %Integer;

Property Script As %String;

Property SystemID As %String(MAXLEN = "");

}
