Class %Library.JGWResultSet Extends (%Library.IResultSet, %IProcedureContext) [ Inheritance = right, System = 4 ]
{

Property gwc As %SQLGatewayConnection;

Property hstmt As %String;

Property firsttime As %Integer;

Property sentODBC As %Integer;

Property Data [ MultiDimensional ];

Property colindex [ MultiDimensional ];

Property columns [ MultiDimensional ];

Method NextResult() As %Library.RegisteredObject
{
}

Method %Get(colname As %String = "") As %Library.String
{
}

Method %CloseCursor() As %Status
{
}

Method %Print() As %Status
{
}

Method CreateStaticRS(ByRef sqcon As %Library.ObjectHandle) As %Library.Status
{
}

Method %Next(ByRef sc As %Library.Status = {$$$OK}) As %Library.Integer
{
}

Method %GetData(colnbr As %Integer) As %Library.String
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// it expects $lb(dllHandle,ConnectionHandle,StatementHandle)
Method InitMetadata() As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// it expects $lb(dllHandle,ConnectionHandle,StatementHandle)
Method %OnNew(conninfo As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method %SendODBC() As %Integer
{
}

/// This callback method is invoked by the <METHOD>%Close</METHOD> method to
/// provide notification that the current object is being closed.
///
/// <P>The return value of this method is ignored.
Method %OnClose() As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

}
