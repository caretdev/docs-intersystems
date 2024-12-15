/// Collection of ClassMethods used by Studio
Class %Studio.General [ System = 3 ]
{

/// return $c(1) delimetered string
/// p1 - %SYSTEM.Version.GetNumber()
/// p2 - Is MVB installed
/// p3 - Is Ensamble installed
/// p4 - Is Activate available
/// p5 - Is Other Enabled
/// p6 - Feetback URL
/// p7 - _$SYSTEM.Version.Format(4)
/// p8 - ^%SYS("Studio","NoXecute")
/// p9 - U2 Enabled.  Bit 30
ClassMethod GetStudioInfo() As %String
{
}

ClassMethod CheckDeveloperRole() As %Status
{
}

ClassMethod FeatureBits(bit As %Integer = "") As %Binary
{
}

/// Internal method to construct a CSP session with current security permissions and return the session id
ClassMethod ConstructCSPSession(page As %String = "") As %String [ CodeMode = expression ]
{
}

/// Deprecated internal method to return the CSP session id of the session constructed with <method>ConstructCSPSession</method>.
/// This is no longer needed as <method>ConstructCSPSession</method> returns the CSP sessionId directly now.
ClassMethod ReturnCSPSessionId(id As %String) As %String [ CodeMode = expression, Deprecated ]
{
}

/// Return the port the InterSystems IRIS web server is running on or 0 if the
/// web server is not active. Also returns the server name which is useful if the web server
/// is running on a different machine. It can also
/// return a <var>urlprefix</var> which is added to the url to goto at the start and is required
/// if one web server is serving multiple InterSystems IRIS instances to differential between these versions.
/// It also returns <var>url</var> which is the constructed
/// url as a string, you just need to append the page you are going to request to this.
ClassMethod GetWebServerPort(ByRef port As %Integer, ByRef server As %String, ByRef urlprefix As %String, ByRef url As %String) As %Status
{
}

/// Try to return the current servers IP address/name
ClassMethod ServerIP() As %String [ Private ]
{
}

ClassMethod KillProcess(pid As %String) As %Status [ Internal ]
{
}

ClassMethod Execute(%cmd As %String) [ ProcedureBlock = 0 ]
{
}

ClassMethod DumpObjectExecute(ByRef qHandle As %Binary, oref As %String) As %Status
{
}

ClassMethod DumpObjectSlot(ByRef qHandle As %String, oref As %String, ivar As %String, slot As %Integer)
{
}

ClassMethod DumpObjectClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = DumpObjectExecute ]
{
}

ClassMethod DumpObjectFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = DumpObjectExecute ]
{
}

/// For each property of <b>oref</b>, return its name, value, <code>$DATA(value)</code>,
/// <code>$ISOBJECT(value)</code>, <code>$CLASSNAME(value)</code> and if the property is calculated
ClassMethod AnalyzeObjectPropertiesExecute(ByRef qHandle As %Binary, oref As %String) As %Status
{
}

ClassMethod AnalyzeObjectProperty(ByRef qHandle As %Binary, oref As %String, ivar As %String, pd As %String, type As %Integer)
{
}

ClassMethod AnalyzeObjectPropertyValues(ByRef qHandle As %Binary, oref As %String, ivar As %String, slot As %Integer, refprop As %Boolean, type As %Integer)
{
}

ClassMethod AnalyzeObjectPropertiesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = AnalyzeObjectPropertiesExecute ]
{
}

ClassMethod AnalyzeObjectPropertiesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = AnalyzeObjectPropertiesExecute ]
{
}

/// Return the date last modified of file <var>filename</var> in %Timestamp format.
/// By default this is local time, if you pass <var>utc</var> as true it returns it in UTC time
ClassMethod GetFileDateModified(filename As %String, utc As %Boolean = 0) As %String
{
}

ClassMethod DecomposeStatus(status As %String) As %Status
{
}

}
