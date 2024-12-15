/// The %SYS.WhitelistUtils code contains the core global access methods
/// that require privilege escalation to support the the more general
/// %CSP.WhitelistUtils library
Class %SYS.WhitelistUtils Extends %RegisteredObject
{

/// Test to see if whitelist checking is enabled for the current namespace
ClassMethod IsWhitelistEnabled() As %Boolean
{
}

/// Test to see if the given method call should be allowed under the
/// current whitelist policy
ClassMethod IsMethodEnabled(pClass As %String, pMethod As %String) As %Boolean
{
}

}
