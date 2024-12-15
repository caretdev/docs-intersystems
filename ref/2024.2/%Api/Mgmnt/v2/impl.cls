/// The API Management API manages the APIs which are defined using a RESTSpec.
/// In addition limited supported for legacy REST applications based on direct subclassing of %CSP.REST is included.<br/>
/// Business logic class defined by OpenAPI in %Api.Mgmnt.v2.spec<br/>
/// Updated Nov 14, 2024 18:15:31
Class %Api.Mgmnt.v2.impl Extends %REST.Impl [ System = 4 ]
{

/// If ExposeServerExceptions is true, then details of internal errors will be exposed.
Parameter ExposeServerExceptions = 1;

/// This request returns a list of all REST applications in all namespaces as a JSON array.
ClassMethod GetAllRESTApps() As %DynamicObject
{
}

/// This request returns a list of all REST applications in the specified namespace as a JSON array.<br/>
/// The method arguments hold values for:<br/>
///     namespace, The IRIS namespace in which to perform the requested operation.<br/>
ClassMethod GetRESTApps(namespace As %String) As %DynamicObject
{
}

/// This request returns the OpenAPI 2.0 swagger description of this application as a JSON object.<br/>
/// The method arguments hold values for:<br/>
///     namespace, The IRIS namespace in which to perform the requested operation.<br/>
///     applicationName, The name of the REST application which is the package name for the classes defining and implementing the application.<br/>
ClassMethod GetApplication(namespace As %String, applicationName As %String) As %DynamicObject
{
}

/// This request replaces an existing REST application or creates a new REST application.
/// The request body may specify an OpenAPI 2.0 swagger description which is used to replace/create the application.
/// If the request body is empty, then the RESTSpec and dispatch classes are replaced with any empty application.<br/>
/// The method arguments hold values for:<br/>
///     namespace, The IRIS namespace in which to perform the requested operation.<br/>
///     applicationName, The name of the REST application which is the package name for the classes defining and implementing the application.<br/>
///     swagger, The body is a JSON object containing the swagger definition for this application.<br/>
///     strict, If strict is false, then only the swagger properties which are needed for code generation are checked.  If strict is true, then all swagger properties are checked.  The value of the strict parameter defaults to true.<br/>
ClassMethod CreateApplication(namespace As %String, applicationName As %String, swagger As %DynamicObject, strict As %Boolean) As %DynamicObject
{
}

/// This request deletes an application by deleting the specification class and the dispatch class that represent the application.  The implementation class is not deleted.<br/>
/// The method arguments hold values for:<br/>
///     namespace, The IRIS namespace in which to perform the requested operation.<br/>
///     applicationName, The name of the REST application which is the package name for the classes defining and implementing the application.<br/>
ClassMethod DeleteApplication(namespace As %String, applicationName As %String) As %DynamicObject
{
}

/// This request returns a list of all %CSP.REST based REST applications in all namespaces as a JSON array.
ClassMethod GetAllWebRESTApps() As %DynamicObject
{
}

/// This request returns a list of all %CSP.REST based REST applications in the specified namespace as a JSON array.<br/>
/// The method arguments hold values for:<br/>
///     namespace, The IRIS namespace in which to perform the requested operation.<br/>
ClassMethod GetWebRESTApps(namespace As %String) As %DynamicObject
{
}

/// This request returns the OpenAPI 2.0 swagger description based on the UrlMap of %CSP.REST subclass for this REST application.  The namespace parameter defaults to the web application's namespace.<br/>
/// The method arguments hold values for:<br/>
///     namespace, The IRIS namespace in which to perform the requested operation.<br/>
///     webApplication, The name of the web application which to which this %CSP.REST based application is deployed.<br/>
ClassMethod GetWebRESTApplication(namespace As %String, webApplication As %String) As %DynamicObject
{
}

/// Override %ReportRESTError in order to format error responses as we require.
ClassMethod %ReportRESTError(statusCode As %String, sc As %Status, exposeServerExceptions As %Boolean = 0) [ Internal ]
{
}

/// Change to run in specified namespace.
ClassMethod %AdjustNamespace(namespace As %String, updateRequired As %Boolean) As %Boolean [ Internal ]
{
}

}
