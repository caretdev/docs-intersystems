/// Provide a default login and security-token pages for CSP applications.
/// User can override the look of this page by creating a subclass and
/// overriding the DrawTitle method and the LOGINTITLE parameters.<br><br>
/// CORS processing for CSP pages that do not inherit from %CSP.REST is also provided here.
/// To turn on CORS assign the application's login page to be a subclass %CSP.Login
/// that has the HandleCorsRequest parameter = 1.
/// In addition, OnHandleCorsRequest and/or OnHandleOptionsRequest methods may be overridden
/// in order to override the default behavior for the application.
Class %CSP.Login Extends %CSP.Page [ System = 3 ]
{

/// This parameter influences the CORS support for the CSP application that has this login page assigned.
/// If set to true (1) then CORS processing is ON. Otherwise CORS processing is OFF.
Parameter HandleCorsRequest;

/// Name of stylesheet used for login page.<br/>
/// Not used by default page: styles come from the DrawSTYLE method.
Parameter STYLESHEET;

/// Title displayed for login page.<br>
/// Users can override this value to customize the login page.
Parameter LOGINTITLE = "Login Page";

/// Home favorite icon.
Parameter FAVORITEICON As COSEXPRESSION = "$$$ISCFAVORITEICON";

/// Login page localization domain
Parameter DOMAIN = "%UtilityLogin";

/// Output the default login page as HTML
ClassMethod OnPage() As %Status
{
}

ClassMethod OnLoginPage() As %Status
{
}

/// Draw the HEAD section of the login page.<br>
/// Users can override this method to customize the login page.
ClassMethod DrawHEAD(pTitle = "")
{
}

/// Draw the title section of the login page.<br>
/// <var>pTitle</var> is the title for the page.<br>
/// Users can override this method to customize the login page.
ClassMethod DrawTitle(pTitle As %String)
{
}

/// Draw the title section of the security token page.<br>
/// <var>pTitle</var> is the title for the page.<br>
/// Users can override this method to customize the security token page.
ClassMethod DrawSTTitle(pTitle As %String)
{
}

/// Draw the title section of the page.<br>
/// <var>pTitle</var> is the title for the page.<br>
/// Users can override this method to customize the page title section.
ClassMethod DrawTitleSection(ByRef msgs As %String)
{
}

ClassMethod OnErrorSetup(ByRef skipheader As %Boolean) As %Boolean [ ProcedureBlock = 1 ]
{
}

ClassMethod OnSecurityTokenPage() As %Status
{
}

/// Draw the HEAD section of the security token page.<br>
/// Users can override this method to customize the security token page.
ClassMethod DrawSTHEAD()
{
}

/// Draw the style definitions for the login page.<br>
/// Users can override this method to customize the login page.
ClassMethod DrawCSS3STYLE()
{
}

/// Draw the style definitions for the login page.<br>
/// Users can override this method to customize the login page.
ClassMethod DrawSTYLE()
{
}

/// Determine if this request requires CORS processing and if so, dispatch to OnHandleCorsRequest
ClassMethod ProcessCorsRequest(url As %String, requireCors As %String = "") As %Status [ Internal, Private ]
{
}

/// This methods provides handling of the options request for this CSP application.
/// Note carefully: If authentication is required then this method will be
/// called before login and as such will have only limited privileges.
ClassMethod OnHandleOptionsRequest(url As %String) As %Status
{
}

/// Handle an OPTIONS request for this CSP application
ClassMethod HandleDefaultOptionsRequest(url As %String) As %Status [ Internal, Private ]
{
}

/// This is the CORS request handler. User should override this method in their login page
/// if they don't want the default behavior.
ClassMethod OnHandleCorsRequest(url As %String) As %Status
{
}

/// Provide reasonable default handling for a CORS-enabled request for those who
/// 'JUST WANT IT TO WORK'.
/// The allowlist must be populated and the origin must be found in the allowlist
/// for CORS headers to be added to the response.
ClassMethod HandleDefaultCorsRequest(url As %String) As %Status [ Internal, Private ]
{
}

/// By default all methods are supported.
ClassMethod SupportedVerbs(url, Output verbs As %String) As %Status
{
}

/// Determine if we need login CSRF tokens and if so add them.
/// If a login page subclass overrides this method it should call this implementation
/// to ensure we set the login CSRF tokens if needed.
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
