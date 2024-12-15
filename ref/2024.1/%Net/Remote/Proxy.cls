Class %Net.Remote.Proxy Extends %RegisteredObject [ System = 3 ]
{

Property Gateway As %Net.Remote.Gateway;

Property Eager As %Boolean;

Property SyncGet As %ArrayOfDataTypes;

Property SyncSet As %ArrayOfDataTypes;

Property %gateway As %Net.Remote.Gateway;

Method %SetEager(eager As %Boolean)
{
}

Method %FetchObject()
{
}

Method %SendObject()
{
}

Method %OnClose() As %Status
{
}

Method %RegisterOnDestructCallback(callbackName As %String) As %Status [ Final ]
{
}

ClassMethod %GuessType(par As %ObjectHandle) [ Final ]
{
}

ClassMethod %OverloadWrite(gateway As %Net.Remote.Gateway, par As %ObjectHandle) [ Final ]
{
}

ClassMethod %GetObject(gateway As %Net.Remote.Gateway, ByRef orefCache) As %ObjectHandle [ Final ]
{
}

ClassMethod %WriteArray(gateway As %Net.Remote.Gateway, type As %String, array As %ObjectHandle) [ Final ]
{
}

ClassMethod %WriteGlobalArray(gateway As %Net.Remote.Gateway, type As %String, array As %ObjectHandle) [ Final ]
{
}

ClassMethod %ReadArrayArgument(gateway As %Net.Remote.Gateway) As %ObjectHandle [ Final ]
{
}

ClassMethod %ReadGlobalArray(kind As %String, size As %Integer)
{
}

ClassMethod %IsDataType(type As %String) As %Boolean [ Final ]
{
}

Method %Get(propertyName As %String) As %ObjectHandle [ Final ]
{
}

ClassMethod %GetStatic(gateway As %Net.Remote.Gateway, propertyName As %String, className As %ObjectHandle) As %ObjectHandle [ Final ]
{
}

Method %Set(propertyName As %String, value As %ObjectHandle, arrayType As %String) [ Final ]
{
}

ClassMethod %SetStatic(gateway As %Net.Remote.Gateway, propertyName As %String, value As %ObjectHandle, className As %ObjectHandle, arrayType As %String) [ Final ]
{
}

Method %I(methodName As %String, ByRef p1 As %ObjectHandle, ByRef p2 As %ObjectHandle, ByRef p3 As %ObjectHandle, ByRef p4 As %ObjectHandle, ByRef p5 As %ObjectHandle) [ Final ]
{
}

Method %IR(methodName As %String, ByRef p1 As %ObjectHandle, ByRef p2 As %ObjectHandle, ByRef p3 As %ObjectHandle, ByRef p4 As %ObjectHandle, ByRef p5 As %ObjectHandle) As %ObjectHandle [ Final ]
{
}

Method %IOL(methodName As %String, ByRef p1 As %ObjectHandle, ByRef p2 As %ObjectHandle, ByRef p3 As %ObjectHandle, ByRef p4 As %ObjectHandle, ByRef p5 As %ObjectHandle) [ Final ]
{
}

Method %IOLR(methodName As %String, ByRef p1 As %ObjectHandle, ByRef p2 As %ObjectHandle, ByRef p3 As %ObjectHandle, ByRef p4 As %ObjectHandle, ByRef p5 As %ObjectHandle) As %ObjectHandle [ Final ]
{
}

/// static methods
ClassMethod %S(gateway As %Net.Remote.Gateway, methodName As %String, className As %ObjectHandle, ByRef p1 As %ObjectHandle, ByRef p2 As %ObjectHandle, ByRef p3 As %ObjectHandle, ByRef p4 As %ObjectHandle, ByRef p5 As %ObjectHandle) [ Final ]
{
}

ClassMethod %SR(gateway As %Net.Remote.Gateway, methodName As %String, className As %ObjectHandle, ByRef p1 As %ObjectHandle, ByRef p2 As %ObjectHandle, ByRef p3 As %ObjectHandle, ByRef p4 As %ObjectHandle, ByRef p5 As %ObjectHandle) As %ObjectHandle [ Final ]
{
}

ClassMethod %SOL(gateway As %Net.Remote.Gateway, methodName As %String, className As %ObjectHandle, ByRef p1 As %ObjectHandle, ByRef p2 As %ObjectHandle, ByRef p3 As %ObjectHandle, ByRef p4 As %ObjectHandle, ByRef p5 As %ObjectHandle) [ Final ]
{
}

ClassMethod %SOLR(gateway As %Net.Remote.Gateway, methodName As %String, className As %ObjectHandle, ByRef p1 As %ObjectHandle, ByRef p2 As %ObjectHandle, ByRef p3 As %ObjectHandle, ByRef p4 As %ObjectHandle, ByRef p5 As %ObjectHandle) As %ObjectHandle [ Final ]
{
}

Method %Constructor(gateway As %ObjectHandle, className As %String, count As %Integer, p1 As %ObjectHandle, p2 As %ObjectHandle, p3 As %ObjectHandle, p4 As %ObjectHandle, p5 As %ObjectHandle, p6 As %ObjectHandle, p7 As %ObjectHandle, p8 As %ObjectHandle, p9 As %ObjectHandle, p10 As %ObjectHandle, p11 As %ObjectHandle, p12 As %ObjectHandle, p13 As %ObjectHandle, p14 As %ObjectHandle, p15 As %ObjectHandle, p16 As %ObjectHandle, p17 As %ObjectHandle, p18 As %ObjectHandle, p19 As %ObjectHandle, p20 As %ObjectHandle, p21 As %ObjectHandle, p22 As %ObjectHandle, p23 As %ObjectHandle, p24 As %ObjectHandle, p25 As %ObjectHandle) As %Status
{
}

/// backwards compatible version to be called by generated user classs
Method %PreInvoke() [ Final ]
{
}

/// backwards compatible version to be called by generated user classs
ClassMethod %PreInvokeStatic(gateway As %Net.Remote.Gateway, classname As %String) [ Final ]
{
}

ClassMethod %PreInvokeNew(gateway As %Net.Remote.Gateway) [ Final ]
{
}

/// backwards compatible version to be called by generated user classs
Method %PostInvoke() [ Final ]
{
}

/// backwards compatible version to be called by generated user classs
ClassMethod %PostInvokeStatic(gateway As %Net.Remote.Gateway) [ Final ]
{
}

ClassMethod %PostInvokeNew(gateway As %Net.Remote.Gateway) [ Final ]
{
}

ClassMethod %GetResponse(gateway As %Net.Remote.Gateway, functionCode As %String, ByRef orefCache)
{
}

/// backwards compatible version to be called by generated user classs
Method %ProcessError(fun, id) [ Final ]
{
}

/// backwards compatible version to be called by generated user classs
ClassMethod %ProcessErrorStatic(gateway As %Net.Remote.Gateway, fun, id) [ Final ]
{
}

ClassMethod %ProcessErrorNew(gateway As %Net.Remote.Gateway, error As %String) [ Final ]
{
}

Method GatewayGet() As %Net.Remote.Gateway
{
}

Method GatewaySet(value As %Net.Remote.Gateway) As %Status
{
}

}
