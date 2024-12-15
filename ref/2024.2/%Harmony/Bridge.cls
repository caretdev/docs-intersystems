Class %Harmony.Bridge
{

Parameter OUTBOUNDSEMAPHORE = "harmonyoutbound";

Parameter TCPTIMEOUT = 12;

ClassMethod connect(config As %Library.DynamicObject = {

ClassMethod disconnect()
{
}

ClassMethod outbound(configArg As %Library.String(MAXLEN=""))
{
}

ClassMethod inbound(configArg As %Library.String(MAXLEN=""))
{
}

ClassMethod queueInboundMessage(message As %Library.String(MAXLEN=""))
{
}

ClassMethod encodeMessage(message As %Library.DynamicAbstractObject) As %Library.String(MAXLEN="")
{
}

ClassMethod getOutboundSemaphore() As %SYSTEM.Semaphore
{
}

ClassMethod logException(location As %String(MAXLEN=""), exception As %Exception.AbstractException)
{
}

ClassMethod logMessage(location As %String(MAXLEN=""), message As %String(MAXLEN=3000))
{
}

}
