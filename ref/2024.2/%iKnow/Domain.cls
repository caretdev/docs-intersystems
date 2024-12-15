/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25iKnow.Domain">NLP Domains</a>.</p>
///  This class represents a domain registered in this namespace.
/// <p>When creating a domain, you should pass a value for <property>Name</property>
/// to its <method>%New</method> method.</p>
Class %iKnow.Domain Extends %Persistent [ Deprecated, Final, StorageStrategy = iKnowStorage, System = 4 ]
{

///  The automatically generated ID for this domain, which is unique across namespaces
Property Id As %Integer [ ReadOnly ];

///  The name of this domain, which should be unique within the namespace (case-insensitive)
Property Name As %String [ ReadOnly ];

/// Stores the iKnow data structure version number for this domain.
Property Version As %String [ InitialExpression = {$$$IKCURRENTVERSION}, ReadOnly ];

/// Describes which data structures are built and maintained when adding data to the domain.
/// This propery is for internal use only.
Property BuildFlags As %String [ Internal, ReadOnly ];

/// The name of the Domain Definition class managing this domain, if any.
/// See also <class>%iKnow.DomainDefinition</class>.
Property DefinitionClass As %String [ Calculated, ReadOnly, SqlComputeCode = { set {*} = ##class(%iKnow.Domain).%OpenId({Id}).GetParameter($$$IKPDEFINITIONCLASS)}, SqlComputed ];

/// <p>Shorthand method to get the domain ID for a specific domain name, creating it if it does not
///  yet exist in this namespace.</p>
/// <p>Deprecated: use regular <method>%New</method> and <method>%Save</method> methods instead.
ClassMethod GetOrCreateId(name As %String, sortField As %Integer = {$$$SORTBYFREQUENCY}, Output sc As %Status = {$$$OK}) As %Integer [ Deprecated ]
{
}

///  Creates a domain with the specified domain name in the given namespace. If no value is
///  supplied for <var>sortField</var>, it will assume the system-wide defaults. <var>buildFlags</var>
///  is either of "ALL" or "MINIMAL". An empty value will assume the system default.
///  <p><b>Deprecated</b>: use <method>%New</method> instead (supplying only the <var>name</var> parameter)</p>
ClassMethod Create(name As %String, sortField As %Integer = -1, Output sc As %Status = {$$$OK}, buildFlags As %String = "") As %iKnow.Domain [ Deprecated ]
{
}

///  Opens a domain object with the specified name
///  <p><b>Deprecated</b>: use <method>NameIndexOpen</method> instead</p>
ClassMethod Open(name As %String, Output sc As %Status = {$$$OK}) As %iKnow.Domain [ Deprecated ]
{
}

///  Opens a domain object with the specified ID
///  <p><b>Deprecated</b>: use <method>%OpenId</method> instead</p>
ClassMethod OpenId(id As %Integer, Output sc As %Status = {$$$OK}) As %iKnow.Domain [ Deprecated ]
{
}

///  Checks whether a domain with the given name already exists within the namespace
///  <p><b>Deprecated</b>: use <method>NameIndexExists</method> instead</p>
ClassMethod Exists(name As %String) As %Boolean [ Deprecated ]
{
}

/// Instantiates a new Domain object iwth the given domain name.
/// <var>pBuildFlags</var> is either of "ALL" or "MINIMAL". An emtpy value will result in the
/// system default being used.
Method %OnNew(pName As %String, pBuildFlags As %String = "") As %Status [ Private, ServerOnly = 1 ]
{
}

Method %OnBeforeSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %OnAfterSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

///  This method will drop all sources and subsequent indexes from this domain.
/// <p>Note that it is recommended to call this method separately, before dropping the domain
/// through <method>%Delete</method> or <method>%DeleteId</method>.</p>
Method DropData(dropMetadataDefinitions As %Boolean = 0, dropDictionaries As %Boolean = 0, dropTempGlobals As %Boolean = 1, dropSkipLists As %Boolean = 1, dropMetricDefinitions As %Boolean = 0) As %Status
{
}

///  Utility method to delete a domain from the system, including its data, settings
///  and system global entries.
///  <p><b>Deprecated</b>: use <method>%DeleteId</method> instead (accepts domain ID)</p>
ClassMethod Delete(domainName As %String) As %Status [ Deprecated ]
{
}

///  Utility method to delete a domain from the system, including its data, settings
///  and system global entries.
/// <p><b>Deprecated</b>: use <method>%DeleteId</method> instead</p>
ClassMethod DeleteId(domainId As %Integer) As %Status [ Deprecated ]
{
}

ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

/// Returns the current namespace-wide value for a domain parameter if there is one registered.
/// See <method>GetParameter</method> for more details on how to fetch the current
/// APPLICABLE parameter for a domain, as this method does not take any domain-specific
/// settings or hardcoded defaults into account.
ClassMethod GetSystemParameter(paramName As %String) As %String
{
}

/// Removes a namespace-level default parameter value for the given parameter name.
ClassMethod UnsetSystemParameter(paramName As %String) As %Status
{
}

/// Registers a domain parameter at the namespace level, for all domains in the current namespace.
/// If there is already a value registered, call <method>UnsetSystemParameter</method>
/// first to explicitly clear the current value.
ClassMethod SetSystemParameter(paramName As %String, paramValue As %String) As %Status
{
}

ClassMethod CheckParameterValue(paramName As %String, paramValue As %String, domain As %iKnow.Domain = "") As %Status [ Internal, Private ]
{
}

///  Sets a domain-specific parameter, overriding the system default
Method SetParameter(paramName As %String, paramValue As %String) As %Status
{
}

///  Unsets a domain-specific parameter, so it will use the system default again
Method UnsetParameter(paramName As %String) As %Status
{
}

///  Returns the value used for parameter <var>paramName</var> for this domain. This can be a
/// domain-specific override (<var>definedAt</var> = "DOMAIN"), a namespace-wide default
/// (<var>definedAt</var> = "NAMESPACE") or the hardcoded default (<var>definedat</var> = "DEFAULT")
Method GetParameter(paramName As %String, Output definedAt As %String = "DOMAIN") As %String
{
}

///  Utility query to retrieve a list of all registered Domains
/// <p><b>Deprecated</b>: Please use normal SQL queries to approach this class.</p>
ClassMethod GetAllDomainsExecute(ByRef qHandle As %Binary, pCurrentNamespaceOnly As %Boolean = 0, pIncludeRemote As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetAllDomainsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetAllDomainsExecute ]
{
}

ClassMethod GetAllDomainsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetAllDomainsExecute ]
{
}

/// This method has been deprecated. There is no need for "registering" or otherwise marking
/// domains that have been imported from globals or data files.
ClassMethod RegisterImportedDomain(domainId As %Integer) As %Status [ Deprecated ]
{
}

///  Returns whether or not a domain is empty. If there are any entities or remnants of (virtual)
///  sources, this method will return false.
Method IsEmpty() As %Boolean
{
}

/// This method renames an existing domain named <var>pFrom</var> to <var>pTo</var>,
/// if there isn't already a domain with that name in this namespace. The domain ID does
/// not change.
ClassMethod Rename(pFrom As %String, pTo As %String) As %Status
{
}

/// <p>Returns an array <var>pParams</var> containing all the domain parameters registered
/// for this instance in the form: pParams(<i>paramName</i>) = <i>paramValue</i>.</p>
/// NOTE: this might include parameters that cannot be modified by end users, but will not
/// include values defined at the namespace level.
Method GetParameters(Output pParams) As %Status
{
}

/// <p>Returns the current version of this InterSystems IRIS instance, which is the version of any
/// newly created domain in this instance. Domains already created in this instance
/// before it was last upgraded or which were imported from other instances through other
/// means, may have earlier versions. To check the version of a particular domain, use
/// the <property>Version</property> property of a <class>%iKnow.Domain</class> instance.</p>
ClassMethod GetCurrentSystemVersion() As %String
{
}

/// Internal method to retrieve all raw ^IRIS.IK* global names to avoid having to list them
/// dynamically.
/// This excludes the global names that include domain/temp IDs and process IDs managed entirely
/// within the domain build process and tracked through ^IRIS.IKS.Globals / ^IRIS.IKT.Globals
ClassMethod GetIKnowGlobals(Output list) As %Status [ Internal ]
{
}

/// Is used to get the value of an unknown property, redirecting to the domain parameter.
Method %DispatchGetProperty(Property As %String) [ ServerOnly = 1 ]
{
}

/// is used to set the value of an unknown property, redirecting to the domain parameter.
Method %DispatchSetProperty(Property As %String, Val) [ ServerOnly = 1 ]
{
}

Method %ConstructClone(deep As %Boolean = 0, ByRef cloned As %String, location As %String) As %RegisteredObject [ ServerOnly = 0 ]
{
}

ClassMethod %DeleteExtent(concurrency As %Integer = -1, ByRef deletecount, ByRef instancecount, pInitializeExtent As %Integer = 1) As %Status [ ServerOnly = 0 ]
{
}

ClassMethod %KillExtentData(killstreams As %Boolean = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

/// This method assigns <var>pDomainId</var> as this domain's desired <property>Id</property> property,
/// if no value has been set so far. If the value is already taken when calling this method, an error
/// will be returned. If the value has already been taken by the time this domain object is saved,
/// the next available ID value will be assigned.
Method AssignId(pDomainId As %Integer) As %Status [ Internal ]
{
}

}
