/// The %SYS.REST class contains the REST API Management utility code which must be run in the %SYS namespace.
Class %SYS.REST Extends %RegisteredObject [ System = 4 ]
{

/// Return a dynamic Array of dynamic objects that define the top
/// level entry points into legacy REST applications in the specified namespace.<br />
/// The fields of the each returned object are:<br />
/// Name: web application name (url prefix)<br />
/// Dispatch Class : Subclass of %CSP.REST that services (the top level of) this app<br />
/// Namespace : Default namespace for this app (and its dispatch class)<br />
/// Enabled : Indicates that this item is enabled.<br />
/// Resource : Resource used to control access for this app.<br /><br />
ClassMethod GetCurrentRESTApplications(requestNamespace As %String) As %DynamicArray
{
}

/// Return a dynamic Array of dynamic objects that define the top
/// level entry points into all legacy REST applications which are accessible to the current user.<br />
/// The fields of the each returned object are:<br />
/// Name: web application name (url prefix)<br />
/// Dispatch Class : Subclass of %CSP.REST that services (the top level of) this app<br />
/// Namespace : Default namespace for this app (and its dispatch class)<br />
/// Enabled : Indicates that this item is enabled.<br />
/// Resource : Resource used to control access for this app.<br /><br />
ClassMethod GetRESTApplications() As %DynamicArray
{
}

/// Return a dynamic object that defines the specified legacy REST application.<br />
/// The fields of the returned object are:<br />
/// Name: web application name (url prefix)<br />
/// Dispatch Class : Subclass of %CSP.REST that services (the top level of) this app<br />
/// Namespace : Default namespace for this app (and its dispatch class)<br />
/// Enabled : Indicates that this item is enabled.<br />
/// Resource : Resource used to control access for this app.<br /><br />
ClassMethod GetRESTApplication(webApplication As %String) As %DynamicObject
{
}

/// Replace any web application deployments of the specified REST application with a deployment
/// to the specified web application.<br/>
/// If the web application already exists, then modify the web application to deploy this RESP application.<br/>
/// If the web application does not exist, then create a new web application to deploy the REST application.
ClassMethod DeployApplication(restApplication As %String, webApplication As %String, authenticationType As %String) As %Status
{
}

/// Get a list of REST applications.
/// The list is returned as a local array: RESTList(namespace,applicationName)=""
ClassMethod ListRESTApplications(namespace As %String = "", Output RESTList) As %Status [ Internal ]
{
}

/// Get the name of the CSP application associated with the specified REST application.
ClassMethod GetCSPApplication(namespace As %String, applicationName As %String) As %String
{
}

/// Delete the CSP application associated with the specified REST application
ClassMethod DeleteCSPApplication(namespace As %String, applicationName As %String, ByRef exist As %Integer = 0) As %Status [ Internal ]
{
}

}
