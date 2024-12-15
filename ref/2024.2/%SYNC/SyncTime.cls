Class %SYNC.SyncTime Extends %Persistent [ System = 3 ]
{

Property SysId As %String;

Property Namespace As %String;

Property lTRN As %Integer;

Property rTRN As %Integer;

/// Set the last transaction in the SyncTime table for a given system and namespace.
ClassMethod SetlTrn(syncSYSID As %String, syncNSID As %String, ltrn As %Integer) As %Status
{
}

ClassMethod GetlTrn(syncSYSID As %String, syncNSID As %String, ByRef ltrn As %Integer) As %Status
{
}

ClassMethod SetrTrn(syncSYSID As %String, syncNSID As %String, rtrn As %Integer) As %Status
{
}

ClassMethod GetrTrn(syncSYSID As %String, syncNSID As %String, ByRef rtrn As %Integer) As %Status
{
}

}
