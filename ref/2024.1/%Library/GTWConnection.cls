Class %Library.GTWConnection Extends %RegisteredObject [ System = 4 ]
{

Property dllhandle As %String;

Property hdbc As %String;

Property Name As %String;

Property Timeout As %String;

Property Legacy As %Integer;

Property LastUsed As %Integer [ Internal ];

/// This callback method is invoked by the <METHOD>%Close</METHOD> method to
/// provide notification that the current object is being closed.
///
/// <P>The return value of this method is ignored.
Method %OnClose() As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method Connect(dll As %String, name As %String, timeout As %Integer, legacy As %Integer) As %Status
{
}

Method Reconnect() As %Status
{
}

}
