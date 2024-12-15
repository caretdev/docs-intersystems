/// Zen application intended for System Management Portal use only.
/// This class contains generic styles used by the SMP system wide. Change with caution.
Class %CSP.UI.Portal.Application Extends %CSP.Portal.Application [ System = 4 ]
{

/// This is the name of this application.
Parameter APPLICATIONNAME = "System Management Portal";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// This Style block contains application-wide CSS style definitions.
XData Style
{
}

/// Provide finder contents for the System Config pages.
ClassMethod GetSystemConfigArray(Output pData) As %Status
{
}

ClassMethod GetSystemProviderArray(Output pData) As %Status
{
}

/// This method is called only when user has %Admin_Manage priviledge <br>
/// with a few exceptions that require %Admin_Secure
ClassMethod GetConfigurationArray(n1, n2, Output pData) As %Status
{
}

/// This method is called only when user has %Admin_Secure priviledge
ClassMethod GetSecurityArray(n1, n2, Output pData) As %Status
{
}

/// Provide finder contents for the System Explorer pages.
ClassMethod GetSystemExplorerArray(Output pData) As %Status
{
}

ClassMethod GetNLPArray(ByRef n, ByRef pData) As %Status
{
}

/// Provide finder contents for the System Operator pages.
ClassMethod GetSystemOperationArray(Output pData) As %Status
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
