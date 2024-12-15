Class %Net.Remote.Base Extends %Net.Remote.Object [ System = 3 ]
{

Parameter REMOTECLASSNAME As STRING;

Property Gateway As %Net.Remote.Gateway;

Method %OnNew(gateway As %Net.Remote.Gateway, args...) As %Status
{
}

Method %DispatchMethod(methodName As %String, args...) As %ObjectHandle
{
}

ClassMethod %DispatchClassMethod(className As %String, methodName As %String, args...) As %ObjectHandle
{
}

ClassMethod %dispatch(code = "YE", invokee, method, gateway, args...) As %ObjectHandle
{
}

ClassMethod %ProcessReturnValues(gateway, currentDevice, returnValue, args...)
{
}

Method %DispatchGetProperty(property As %String) As %ObjectHandle
{
}

Method %DispatchSetProperty(property As %String, value)
{
}

Method GatewayGet() As %Net.Remote.Gateway
{
}

Method GatewaySet(value As %Net.Remote.Gateway) As %Status
{
}

}
