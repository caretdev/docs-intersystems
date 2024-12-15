/// Zen based Management Portal Application
Class %CSP.Portal.Application Extends %ZEN.Portal.Application [ System = 4 ]
{

/// This is the name of this application.
Parameter APPLICATIONNAME = "System Management Portal";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// This Style block contains application-wide CSS style definitions.
XData Style
{
}

/// Given a security resource, this method returns 1 if user has privilege, and 0 if the user does not security privilege for using a particular function.
ClassMethod CheckSecurity(pResource As %String) As %Boolean
{
}

/// Evaluate a menu item condition; the condition must refer to values or functions that
/// are in scope (i.e., % variables).
ClassMethod EvaluateCondition(pCondition As %String, tError As %String) As %Boolean
{
}

}
