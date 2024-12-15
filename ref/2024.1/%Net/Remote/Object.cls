Class %Net.Remote.Object Extends %RegisteredObject [ System = 3 ]
{

Property %gateway As %Net.Remote.Gateway;

Method %OnNew(gateway As %Net.Remote.Gateway, args...) As %Status
{
}

Method %Constructor(gateway As %Net.Remote.Gateway, className As %String, args...) As %Status
{
}

Method %CastAs(classname As %String) As %Net.Remote.Object
{
}

Method %DispatchMethod(method As %String, args...) As %ObjectHandle
{
}

ClassMethod %ClassMethod(gateway As %Net.Remote.Gateway, className As %String, methodName As %String, args...) As %ObjectHandle
{
}

Method %DispatchGetProperty(property As %String) As %ObjectHandle
{
}

Method %DispatchSetProperty(property As %String, value)
{
}

ClassMethod %GetStaticProperty(gateway As %Net.Remote.Gateway, className As %String, propertyName As %String) As %ObjectHandle
{
}

ClassMethod %SetStaticProperty(gateway As %Net.Remote.Gateway, className As %String, propertyName As %String, value As %ObjectHandle)
{
}

ClassMethod %ProcessReturnValues(gateway, currentDevice, returnValue, args...)
{
}

ClassMethod %GetResponse(gateway As %Net.Remote.Gateway, sequenceNumber As %Integer, functionCode As %String, currentDevice As %String, ByRef orefCache)
{
}

ClassMethod %ProcessY9(gateway, msgid, orefCache) As %String
{
}

ClassMethod %ProcessYG(gateway, msgid) As %String
{
}

ClassMethod %ProcessYH(gateway, msgid) As %String
{
}

ClassMethod %DispatchNativeCall(device, msgid, context, fun) As %String
{
}

Method %OnClose() As %Status
{
}

ClassMethod %PreInvoke(gateway As %Net.Remote.Gateway, parameters) [ Final ]
{
}

ClassMethod %PostInvoke(gateway As %Net.Remote.Gateway, device) [ Final ]
{
}

ClassMethod %ProcessError(gateway As %Net.Remote.Gateway, currentDevice As %String, error As %String) [ Final ]
{
}

ClassMethod %mergeStack(precedingStack, remoteStack, localStack, remoteLanguage) As %String
{
}

ClassMethod %cullStack(inStack) As %String
{
}

ClassMethod %cullStackOne(line) As %String
{
}

}
