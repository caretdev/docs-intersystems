/// %REST.API is public interface to REST API Management
Class %REST.API Extends %RegisteredObject [ System = 3 ]
{

/// GetAllRESTApps returns a list of all REST applications in all namespaces.
/// The return values are in these method arguments:
///     appList, A list of %REST.Application objects.
///       The name argument is the REST application name.</br>
ClassMethod GetAllRESTApps(Output appList As %ListOfObjects(ELEMENTTYPE="%REST.Application")) As %Status
{
}

/// GetRESTApps returns a list of all REST applications in the current namespace.
/// These method arguments hold values:<br/>
///     namespace, The optional IRIS namespace as an additional filter.  If not specified, then current namespace used.<br/>
/// The return values are in these method arguments:
///     appList, A list of %REST.Application objects.
///       The name argument is the REST application name.</br>
/// <p>This method returns only REST applications built spec-first. In contrast,
/// <method>GetWebRESTApps</method> works for all REST applications, regardless of how they were built.</p>
ClassMethod GetRESTApps(namespace As %String = "", Output appList As %ListOfObjects(ELEMENTTYPE="%REST.Application")) As %Status
{
}

/// GetAllWebRESTApps returns a list of all %CSP.REST based REST applications in all namespaces.
/// The return values are in these method arguments:
///     appList, A list of %REST.Application objects.
///       The name argument is web application name.</br>
ClassMethod GetAllWebRESTApps(Output appList As %ListOfObjects(ELEMENTTYPE="%REST.Application")) As %Status
{
}

/// GetWebRESTApps returns a list of all %CSP.REST based REST applications in the specified namespace.<br/>
/// These method arguments hold values:<br/>
///     namespace, The optional IRIS namespace as an additional filter.  If not specified, then current namespace used.<br/>
/// The return values are in these method arguments:
///     appList, A list of %REST.Application objects.
///       The name argument is web application name.</br>
ClassMethod GetWebRESTApps(namespace As %String = "", Output appList As %ListOfObjects(ELEMENTTYPE="%REST.Application")) As %Status
{
}

/// GetApplication returns the OpenAPI 2.0 swagger description of this application as a %DynamicObject.
/// The application must be defined in the current namespace.<br/>
/// These method arguments hold values:<br/>
///     applicationName, The name of the REST application which is the package name for the classes defining and implementing the application.<br/>
/// The return values are in these method arguments:
///     swagger, The %DynamicObject containing the OpenAPI 2.0 swagger document.</br>
/// <p>This method works only for REST applications built spec-first. The applicationName argument must refer
/// to the "spec" class name.
/// In contrast, <method>GetWebRESTApplication</method> works for all REST applications, regardless of how they were built.</p>
ClassMethod GetApplication(applicationName As %String, Output swagger As %DynamicObject) As %Status
{
}

/// CreateApplication creates a REST application from the OpenAPI 2.0 swagger description of the application.
/// CreateApplication replaces an existing REST application or creates a new REST application based from
/// the specified OpenAPI 2.0 swagger definition.
/// If the application does not exist, then a new default empty application is created.
/// If the swagger argument = "", then the RESTSpec and dispatch classes are replaced with any empty application.<br/>
/// The method arguments hold values for:<br/>
///     applicationName, The name of the REST application which is the package name for the classes defining and implementing the application.<br/>
///     swagger, swagger is a JSON object, a URL or a filename specifying the swagger definition for this application or "" to create a new application.<br/>
///     features, features is a local of array of features which control application creation:</br>
///     features("addPing"), If the request body is empty, addPing determines if a ping method should be added to the empty swagger spec.<br/>
///     features("strict"), If false, then only the swagger properties which are needed for code generation are checked.  If true, then all swagger properties are checked.  The default value is true.<br/>
///     features("keep"), If true, then the generated classes will be kept even in the case of error.  This feature is meant primarily for testing.<br/>
/// The return values are in these method arguments:
///     newApplication, newApplication is set to true if a new application case been created.<br>
///     internalError, internalError is set to true in the case of an internal server error.<br/>
ClassMethod CreateApplication(applicationName As %String, swagger As %DynamicObject = "", ByRef features, Output newApplication As %Boolean, Output internalError As %Boolean) As %Status
{
}

/// Load Dynamic object from file or URL.
ClassMethod LoadDynamicObject(url As %String, object As %DynamicObject) As %Status [ Internal ]
{
}

/// This request deletes an application by deleting the specification class and the dispatch class that represent the application.
/// The implementation class is not deleted.<br/>
/// The method arguments hold values for:<br/>
///     applicationName, The name of the REST application which is the package name for the classes defining and implementing the application.<br/>
ClassMethod DeleteApplication(applicationName As %String) As %Status
{
}

/// This request returns the web application name to which this application is deployed.
/// If the application is deployed to multiple web applications, then the name of the first web application is returned.
/// If the application is not deployed, then "" is returned.
/// <p>This method returns only REST applications built spec-first.</p>
ClassMethod GetWebURLForApplication(applicationName As %String) As %String
{
}

/// GetWebRESTApplication returns the OpenAPI 2.0 swagger description based on the UrlMap of %CSP.REST subclass for this REST application.<br/>
/// The method arguments hold values for:<br/>
///     webApplication, The name of the web application which to which this %CSP.REST based application is deployed.<br/>
/// The return values are in these method arguments:
///     namespace, The IRIS namespace in which to perform the requested operation.  The namespace defaults to web application's namespace.<br/>
///     swagger, The %DynamicObject containing the OpenAPI 2.0 swagger document.</br>
ClassMethod GetWebRESTApplication(namespace As %String = "", webApplication As %String, Output swagger As %DynamicObject) As %Status
{
}

/// Filter REST applications by namespace.
/// Add web application deployment information to the REST application description.
/// Return the application description as an instance of %REST.Application.
ClassMethod FilterApplication(namespace As %String, webApps As %DynamicArray, Output restApplications As %ListOfObjects) As %Status [ Internal ]
{
}

/// Convert a list to a %DynamicArray
ClassMethod ListToArray(list As %ListOfObjects, Output array As %DynamicArray) As %Status [ Internal ]
{
}

/// Log an API Management %Status error
ClassMethod LogStatusError(methodName As %String, sc As %Status, data As %String) [ Internal ]
{
}

}
