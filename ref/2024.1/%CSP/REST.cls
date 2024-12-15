/// Applications wishing to support REST should subclass this class, implement the methods to be called,
/// and define a UrlMap XDATA block which maps Urls and request Method (DELETE/GET/POST/PUT) to those methods.
/// Users define a csp web application which will be serviced by their custom subclass. To achieve this, in the
/// management portal set the 'Dispatch Class' to the name of the custom subclass of <class>%CSP.REST</class>.
/// <p>
/// Note: %CSP.REST extends %CSP.Login instead of just %CSP.Page because %CSP.Login contains the
/// default CORS support as well as being a subclass of %CSP.Page.
Class %CSP.REST Extends %CSP.Login [ System = 3 ]
{

Parameter CONTENTTYPEJSON As STRING = "application/json";

Parameter CONTENTTYPETEXT As STRING = "text/plain";

Parameter HTTP200OK As STRING = "200 OK";

Parameter HTTP201CREATED As STRING = "201 Created";

Parameter HTTP202ACCEPTED As STRING = "202 Accepted";

Parameter HTTP204NOCONTENT As STRING = "204 No Content";

Parameter HTTP400BADREQUEST As STRING = "400 Bad Request";

Parameter HTTP304NOTMODIFIED As STRING = "304 Not Modified";

Parameter HTTP401UNAUTHORIZED As STRING = "401 Unauthorized";

Parameter HTTP403FORBIDDEN As STRING = "403 Forbidden";

Parameter HTTP404NOTFOUND As STRING = "404 Not Found";

Parameter HTTP405METHODNOTALLOWED As STRING = "405 Method Not Allowed";

Parameter HTTP406NOTACCEPTABLE As STRING = "406 Not Acceptable";

Parameter HTTP409CONFLICT As STRING = "409 Conflict";

Parameter HTTP415UNSUPPORTEDMEDIATYPE = "415 Unsupported Media Type";

Parameter HTTP422UNPROCESSABLEENTITY = "422 Unprocessable Entity";

Parameter HTTP423LOCKED = "423 Locked";

Parameter HTTP500INTERNALSERVERERROR As STRING = "500 Internal Server Error";

/// If the REST application is using token authentication, then this parameter gives the path to use for the "login" endpoint. The default is "/login".
Parameter TokenLoginEndpoint As STRING = "login";

/// If the REST application is using token authentication, then this parameter gives the path to use for the "logout" endpoint. The default is "/logout".
Parameter TokenLogoutEndpoint As STRING = "logout";

/// If the REST application is using token authentication, then this parameter gives the path to use for the token revocation endpoint. The default is "/revoke".
Parameter TokenRevokeEndpoint As STRING = "revoke";

/// If the REST application is using token authentication, then this parameter gives the path to use for the "refresh" endpoint. The default is "/refresh".
Parameter TokenRefreshEndpoint As STRING = "refresh";

///
/// The UrlMap determines how a Url should map to a HTTP Method and a Target ClassMethod
/// indicated by the 'Call' attribute. The call attribute is either the name of a method
/// or the name of a class and method seperated by a ':'. Parameters within the URL preceded
/// by a ':' will be extracted from the supplied URL and passed as arguments to the named method.
///
/// In this Route Entry GET requests to /class/namespace/classname will call the GetClass method
///
/// <Route Url="/class/:namespace/:classname" Method="GET" Call="GetClass"/>
///
/// In this Route Entry both POST and PUT requests are dispatched to the same method.
/// Called methods can determine which verb was used by checking the value of %request.Method
///
/// <Route Url="/class/:namespace/:classname" Method="POST,PUT" Call="PutClass"/>
///
/// To influence CORS processing you can set the "Cors" attribute to "true", default is "false".
/// The "Cors" attribute is only considered if the PARAMETER 'HandleCorsRequest' is left unspecified.
///
/// <Route Url="/class/:namespace/:classname" Method="GET" Call="GetClass" Cors="true"/>
///
/// Use a Map Entry to forward ALL requests made to a particular URL prefix. For example. If your
/// web application has a base url route of /api/v1 and you want to map all requests to
/// /api/v1/docserver (including all sub-urls) enter a Map entry like this:
///
/// <Map Prefix="/docserver" Forward="%Api.v1.DocServer"/>
///
/// This will result in calls such as /api/v1/docserver/class/Samples/Sample.Person being redirected
/// to the class %API.v1.DocServer ( another subclass of %CSP.REST )for futher processing.
XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
}

/// This parameter controls the CSP session support. By default the CSP session will be
/// ended after each request in accordance with the spirit of REST. However this CAN be
/// overridden by the user. To use a session, it's necessary to manage the CSPSESSION cookie.
/// Browsers do this automatically but command line tools such as CURL require the setting of
/// options.<p>
/// Note that if you choose to use a session then this will use a CSP license until the session
/// is ended or expires and the grace period has been satisfied. If you use the default of no
/// session then this will be the same behavior as SOAP requests of holding a license for ten
/// seconds.
Parameter UseSession As BOOLEAN = 0;

/// This parameter influences the CORS support. The default is an empty string meaning 'not specified'.
/// If set to true (1) then CORS processing is ON. If set to false (0) then CORS processing is OFF.
/// If left unset ("") then the decision to process CORS is delegated to the setting on the URL map route.
Parameter HandleCorsRequest;

/// This parameter is used by the REST facilities to
/// allow overrides of the the default naming convention when
/// associating a %REST.Spec specification class
/// with this implementation.
Parameter SpecificationClass As STRING [ Internal ];

/// If IgnoreWrites is true, then write commands from REST methods will be ignored.
/// IgnoreWrites is set to true to allow only output from API Management generated methods by returning the result.
Parameter IgnoreWrites As BOOLEAN [ Internal ] = 0;

/// This method matches the request and method and calls the dispatcher
ClassMethod Page(skipheader As %Boolean = 1) As %Status [ ProcedureBlock = 1 ]
{
}

/// Called for a REST page in the event of an error being trapped by CSP server
ClassMethod Error(skipheader As %Boolean = 1) As %Status
{
}

/// Called for a REST page in the event of a login being required
ClassMethod Login(skipheader As %Boolean = 1) As %Status [ ProcedureBlock = 0 ]
{
}

/// This method determines what challenge will be sent with a 401 (Unauthorized) response.
/// The default is the type of the Authorization header used in the request.
/// For unauthenticated requests, the default is 'Basic'.
/// Note most browsers will display a native login prompt in response to a 'Basic' challenge.
ClassMethod GetAuthChallenge() As %String
{
}

/// This method gets called prior to dispatch of the request. Put any common code here
/// that you want to be executed for EVERY request. If pContinue is set to 0, the
/// request will NOT be dispatched according to the UrlMap. In this case it's the
/// responsibility of the user to return a response.
ClassMethod OnPreDispatch(pUrl As %String, pMethod As %String, ByRef pContinue As %Boolean) As %Status
{
}

/// This method performs a basic access check. You can override this to add additional checks.
ClassMethod AccessCheck(Output pAuthorized As %Boolean = 0) As %Status
{
}

/// Dispatch a REST request according to URL and Method.
/// The <b>pArgs</b> argument is a local array of parameters from the caller.
/// The <b>forwarded</b> argument is no longer used.
ClassMethod DispatchRequest(url As %String, method As %String, forwarded As %Boolean = 0, args...) As %Status
{
}

ClassMethod HandleTokenResponse(skipheader As %Boolean = 1) As %Status [ Final, Internal ]
{
}

/// Issue an 'Http' error
ClassMethod ReportHttpStatusCode(pHttpStatus, pSC As %Status = {$$$OK}) As %Status
{
}

/// Issue a '403' error (Deprecated, use ..ReportHttpStatusCode)
ClassMethod Http403(pSC As %Status = {$$$OK}) As %Status [ Deprecated, Final ]
{
}

/// Issue a '404' error (Deprecated, use ..ReportHttpStatusCode)
ClassMethod Http404(pSC As %Status = {$$$OK}) As %Status [ Deprecated, Final ]
{
}

/// Issue a '405' error ( user can override)
ClassMethod Http405(pSupportedVerbs As %String = "") As %Status
{
}

/// Issue a '500' error and give some indication as to what occurred
ClassMethod Http500(pE As %Exception.AbstractException) As %Status
{
}

/// This method takes a status, renders it as JSON (if requested) and outputs the result
ClassMethod outputStatus(pSC As %Status) As %Status [ Internal ]
{
}

/// This method parses the URLMap XData block, combines it with the superclass UrlMap (if relevant) and returns the optimized set of routes in the routes array.
/// This is used by the <Method>SupportedVerbs</Method>, <Method>DispatchMap</Method> and Method generators.
ClassMethod ParseUrlMap(classname As %String, ByRef routes As %DynamicArray) As %Status [ Final, Internal ]
{
}

ClassMethod GetRegexForUrl(url As %String) As %String [ Internal, Private ]
{
}

/// This generator creates the SupportedVerbs Method used to determine supported verbs to return for the OPTIONS request.
ClassMethod SupportedVerbs(pUrl, Output pVerbs As %String) As %Status [ CodeMode = objectgenerator, GenerateAfter = ParseUrlMap ]
{
}

/// This generator creates the DispatchMap Method used to dispatch the Url and Method to the associated target method
ClassMethod DispatchMap(url As %String, method As %String, Output verbsMatched As %String = "", Output args) As %String [ CodeMode = objectgenerator, GenerateAfter = ParseUrlMap, Internal ]
{
}

/// Render a %Status as JSON (in the form of an array of objects representing each status value).
ClassMethod StatusToProxyObject(pSC As %Status, ByRef pJSON As %ZEN.proxyObject) As %Status [ Final ]
{
}

/// Render a %Status as JSON.
ClassMethod StatusToJSON(pSC As %Status, ByRef pJSON As %DynamicObject) As %Status [ Final ]
{
}

/// Convert a status code value into its mnemonic (if available)
ClassMethod mnemonicForStatusCode(pCode As %String) As %String [ Internal ]
{
}

/// This utility method sets a response header only if it currently does not have a value
ClassMethod SetResponseHeaderIfEmpty(pHeader As %String, pValue As %String)
{
}

/// This method tests the HTTP_ACCEPT header and returns true if
/// the passed content type is acceptable
ClassMethod AcceptsContentType(pType As %String) As %Boolean
{
}

/// This is the Schema which defines the form of the dispatch map
XData Schema [ Internal ]
{
}

}
