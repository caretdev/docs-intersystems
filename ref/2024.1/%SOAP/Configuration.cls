/// Abstract super class of class to contain configuration of a SOAP web service or web client.
/// %SOAP.Configuration should be subclassed to specify the configuration.  No methods or
/// properties of %SOAP.Configuration should be directly accessed.<br><br>
///
/// The configuration is specified as XML content in an XData member of a subclass.
/// Each XData member may contain one configuration.  However, only one configuration
/// may be specified for each web service or web client class across all %SOAP.Configuration
/// subclasses in a namespace.
/// The format of the configuration as follows:<br>
/// <pre>
/// &lt;configuration name="xs:NCNAME"? xmlns="http://www.intersystems.com/configuration"&gt;
///    &lt;service classname="xs:NCNAME"&gt;
///       ( (&lt;wsp:Policy cfg:wsdlElement="s:string"? ...&gt; ... &lt;/wsp:Policy&gt;)
///        |(&lt;wsp:PolicyReference URI="#policyId cfg:wsdlElement="s:string"?&gt;)) *
///       &lt;method name="xs:NCNAME"&gt;
///          ( (&lt;wsp:Policy cfg:wsdlElement="s:string"? ...&gt; ... &lt;/wsp:Policy&gt;)
///           |(&lt;wsp:PolicyReference URI="#policyId cfg:wsdlElement="s:string"?&gt;)) *
///          &lt;request&gt;
///             ( (&lt;wsp:Policy cfg:wsdlElement="s:string"? ...&gt; ... &lt;/wsp:Policy&gt;)
///              |(&lt;wsp:PolicyReference URI="#policyId cfg:wsdlElement="s:string"?&gt;)) *
///          &lt;/request&gt; ?
///          &lt;response&gt;
///             ( (&lt;wsp:Policy cfg:wsdlElement="s:string"? ...&gt; ... &lt;/wsp:Policy&gt;)
///              |(&lt;wsp:PolicyReference URI="#policyId cfg:wsdlElement="s:string"?&gt;)) *
///          &lt;/response&gt; ?
///       &lt;/method&gt; *
///    &lt;/service&gt; +
/// &lt;configuration&gt;
/// Cardinality is indicated by ? (0 or 1), * (0 or more) and + (1 or more).
///
/// The following describes the elements and attributes:
/// /configuration
///     Identifies a configuration
/// /configuration/@name
///     Optional name of the configuration.
///     If specified this name must match the name of the XData block.
/// /configuration/service
///     Identifies the service that is being configured
/// /configuration/service/@classname
///     The name of the web service or web client class that is being configured.
/// /configuration/service/wsp:Policy
///     The optional WS-Policy 1.2 or WS-Policy 1.5 to be applied to the endpoint or service subject for
///     this web service or client.
/// /configuration/service/wsp:Policy/@cfg:wsdlElement
///     Specifies WSDL attachment elements: service, port, binding, portType
/// /configuration/service/wsp:PolicyReference
///     The optional WS-Policy 1.2 or WS-Policy 1.5 to be applied to the endpoint or service subject for
///     to this method in the SOAP binding for this web service or client.
///     The policyId is a reference to a local policy defined in a different XData section.
/// /configuration/service/wsp:PolicyReference/@cfg:wsdlElement
///     Specifies WSDL attachment elements: service, port, binding, portType
///
/// /configuration/service/method
///     The configuration for the operation corresponding to this method in the SOAP binding
///     for this web service or client.
/// /configuration/service/method/@name
///     The name of the method
/// /configuration/service/method/wsp:Policy
///     The optional WS-Policy 1.2 or WS-Policy 1.5 to be applied to the operation corresponding
///     to this method in the SOAP binding for this web service or client.
/// /configuration/service/method/wsp:Policy/@cfg:wsdlElement
///     Specifies WSDL attachment elements: binding, portType
/// /configuration/service/method/wsp:PolicyReference
///     The optional reference WS-Policy 1.2 or WS-Policy 1.5 to be applied to the operation corresponding
///     to this method in the SOAP binding for this web service or client.
///     The policyId is a reference to a local policy defined in a different XData section.
/// /configuration/service/method/wsp:PolicyReference/@cfg:wsdlElement
///     Specifies WSDL attachment elements: binding, portType
///
/// /configuration/service/method/request
///     The configuration for the request message corresponding to this method for
///     this web service or client.
/// /configuration/service/method/request/wsp:Policy
///     The optional WS-Policy 1.2 or WS-Policy 1.5 to be applied to the request message corresponding
///     to this method for this web service or client.
/// /configuration/service/method/request/wsp:Policy/@cfg:wsdlElement
///     Specifies WSDL attachment elements: binding, portType, message
/// /configuration/service/method/request/wsp:PolicyReference
///     The optional WS-Policy 1.2 or WS-Policy 1.5 to be applied to the request message corresponding
///     to this method for this web service or client.
///     The policyId is a reference to a local policy defined in a different XData section.
/// /configuration/service/method/request/wsp:PolicyReference/@cfg:wsdlElement
///     Specifies WSDL attachment elements: binding, portType, message
///
/// /configuration/service/method/response
///     The configuration for the response message corresponding to this method for
///     this web service or client.
/// /configuration/service/method/response/wsp:Policy
///     The optional WS-Policy 1.2 or WS-Policy 1.5 to be applied to the response message corresponding
///     to this method for this web service or client.
/// /configuration/service/method/response/wsp:Policy/@cfg:wsdlElement
///     Specifies WSDL attachment elements: binding, portType, message
/// /configuration/service/method/response/wsp:PolicyReference
///     The optional WS-Policy 1.2 or WS-Policy 1.5 to be applied to the response message corresponding
///     to this method for this web service or client.
///     The policyId is a reference to a local policy defined in a different XData section.
/// /configuration/service/method/response/wsp:PolicyReference/@cfg:wsdlElement
///     Specifies WSDL attachment elements: binding, portType, message
/// </pre>
Class %SOAP.Configuration Extends %RegisteredObject [ Abstract, System = 3 ]
{

/// If REPORTANYERROR is true (1), Report error when compiling policy if any alternative is invalid.
/// Otherwise only report an error if all aternatives are invalid.  In this latter case,
/// we are looking for any alternative to use in a policy supplied by a thrid party.
Parameter REPORTANYERROR As BOOLEAN = 1;

/// Get configuration id for specified class
ClassMethod GetConfigId(classname As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Associate configuration with SOAP class
Method AssociateConfiguration(soapClassname As %String, configName As %String) [ Internal ]
{
}

/// Remove Association of configuration with SOAP class
Method RemoveConfiguration(soapClassname As %String) [ Internal ]
{
}

/// Get names of all SOAP classes which are configured in the specified configuration class.
ClassMethod GetSOAPClasses(configId As %String, Output SOAPClasses As %String) [ Internal ]
{
}

/// Find all policies referenced using Policyreference or included as an inline Policy.
/// by one of the specified methods in the specified configuration.
/// List value is 1 if referenced policy, else 0.
ClassMethod FindWSDLPolicies(configId As %String, ByRef methods, Output policyList, Output version) [ Internal ]
{
}

/// Write all policies referenced using Policyreference by one of
/// the specified methods in the specified configuration
ClassMethod WriteReferencedPolicies(writer As %XML.Writer, ByRef policyList) [ Internal ]
{
}

/// Write inline Policy or PolicyReference for specified wsdlElement
ClassMethod WriteWSDLPolicy(writer As %XML.Writer, configId As %String, wsdlElement As %String, methodName As %String, reqres As %String) [ Internal ]
{
}

/// Write a policy for the configuration class
/// <var>configName</var> is the name of configuration or "" for all configurations in the class.
ClassMethod WriteConfiguration(configName As %String = "", normalized As %Boolean = 0) As %Status [ Internal ]
{
}

/// Write a single configuration
ClassMethod WriteOneConfig(writer As %XML.Writer, configName As %String, normalized As %Boolean) [ Internal ]
{
}

ClassMethod WritePolicy(writer As %XML.Writer, policyIndex As %Integer, uri As %String, wsdlElement As %String, internal As %Boolean) [ Internal ]
{
}

/// Write a method element
ClassMethod WriteMethod(writer As %XML.Writer, configName As %String, methodName As %String, normalized As %Boolean) [ Internal ]
{
}

/// Return true if this is a name rather than a defined type
ClassMethod IsName(name As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Parse all configurations defined in specified class.
ClassMethod OnConfigurationCompile() [ CodeMode = objectgenerator, Internal ]
{
}

/// Parse all configurations defined in specified class.
ClassMethod ParseAll(classname As %String, compiledclass As %Dictionary.CompiledClass) As %Status [ Internal ]
{
}

/// Parse the XML content of the XDATA block to determine if valid Policy or configuration
ClassMethod ParseOpen(stream As %GlobalCharacterStream, configName As %String, Output reader As %XML.Reader, Output root As %String) As %Status [ Internal ]
{
}

/// Parse a wsp:Policy within a configuration file which is defined as an XData block.
ClassMethod ParseConfigurationPolicy(reader As %XML.Reader, configName As %String) As %Status [ Internal ]
{
}

/// Parse a SOAP configuration which is defined as an XData block.
ClassMethod ParseConfiguration(reader As %XML.Reader, configName As %String) As %Status [ Internal ]
{
}

/// Parse the service configuration
ClassMethod ParseService(node As %XML.Node, configName As %String) [ Internal ]
{
}

/// Parse the method element of the configuration
ClassMethod ParseMethod(node As %XML.Node, configName As %String, servicePolicy As %SOAP.Policy) [ Internal ]
{
}

/// Parse the request or response element of the configuration
ClassMethod ParseIO(node As %XML.Node, configName As %String, kind As %String, methodName As %String, methodPolicy As %SOAP.Policy, methodPolicyIndex As %Integer) [ Internal ]
{
}

/// Analyze a policy
ClassMethod ParseAnalyze(policy As %SOAP.Policy, policyIndex As %Integer) [ Internal ]
{
}

/// Parse a wsp:Policy element in the configuration
ClassMethod ParsePolicy(node As %XML.Node, configName As %String, kind As %String, validWSDL As %List, inline As %Boolean, Output policyIndex As %Integer, basePolicy As %SOAP.Policy, Output normalizedPolicyIndex As %Integer) As %SOAP.Policy [ Internal ]
{
}

///    $$$SOAPPolicy(configClass,$$$SOAPConfigPolicyId,policyId)=policyIndex
///    $$$SOAPPolicy(configClass,$$$SOAPConfigPolicyName,policyName)=policyIndex
///    $$$SOAPPolicy(configClass,$$$SOAPConfigPolicyVersion)=policyVersion
/// Write out configuration policy -- should never be called.
ClassMethod WriteAlternative(ByRef alternative, indent As %String = "   ") As %String [ Internal ]
{
}

/// Analyze ISC configuraation assertion -- should never be called.
ClassMethod AnalyzeAssertion(policy As %SOAP.Policy, nodeId As %Integer, ByRef alternative) As %Status [ Internal ]
{
}

}
