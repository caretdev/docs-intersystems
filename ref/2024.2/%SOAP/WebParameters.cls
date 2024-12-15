/// Utility class to parse and manage parameters XData block in web service and web client.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %SOAP.WebParameters Extends %RegisteredObject [ System = 2 ]
{

/// Parse parameters XData block for this web service or client.<br><br>
///
/// <pre>
/// The format of the parameters variable is
///    parameters(0,"request") is request parameters for entire web client or service.
///    parameters(0,"response") is response parameters for entire web client or service.
///    parameters(0,"soapAction",soapAction)=$lb(methodName,...)
///        specifies which methods are associated with a soap action
///    parameters(0,"requestName",requestName)=$lb(methodName,...)
///        specifies which methods are associated with a top level request element
///    parameters(methodName,"request") is request parameters for a method of web client or service.
///    parameters(methodName,"response") is response parameters for a method of web client or service.
///
/// The parameter subnodes defined are
///    parameter(...,"Action")=wsaw:Action value
///    parameter(...,"header",name,class)=$lb(alias,encoded)
///       name is the required element name of the header.
///       class is the required name of the class that corresponds to the header.
///       alias is the optional alias to be used for this header in the HeadersIn and HeadersOut arrays.
///          The default alias is the element name specified in the name attribute.
///       encoded is true if the header is expected to be output in encoded format.
/// </pre>
ClassMethod ParseParameters(classDef As %Dictionary.CompiledClass, methodInheritance As %Boolean, ByRef methods, ByRef actions, ByRef elements, Output parameters) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Parse the XML content of the XDATA block to get web service/client parameters
ClassMethod ParseOpen(stream As %GlobalCharacterStream, Output reader As %XML.Reader, Output root As %String) As %Status [ Internal ]
{
}

/// Parse a single parameters element which is defined as an XData block.
ClassMethod ParseParametersElement(reader As %XML.Reader, processMethod As %Boolean, ByRef methods, Output parameters) As %Status [ Internal ]
{
}

/// Parse the method element
ClassMethod ParseMethod(node As %XML.Node, ByRef methods, Output parameters) [ Internal ]
{
}

/// Parse the request or response element
ClassMethod ParseIO(node As %XML.Node, kind As %String, methodName As %String, Output parameters) [ Internal ]
{
}

/// Parse the header element and save in paramneters
ClassMethod ParseHeader(node As %XML.Node, kind As %String, methodName As %String, Output parameters) [ Internal ]
{
}

/// Parse the Action element and save in paramneters
ClassMethod ParseAction(node As %XML.Node, kind As %String, methodName As %String, Output parameters) [ Internal ]
{
}

/// Fill in array of headers based on parameters and SOAPHEADERS
/// headers(namespace,name)=$lb(class,alias,encoded)
ClassMethod GetHeaders(class As %String, method As %String, kind As %String, soapHeaders As %String, Output headers) [ Internal ]
{
}

/// Create index of header classes -- byClass(class)=alias
ClassMethod GetHeadersByClass(class As %String, method As %String, kind As %String, soapHeaders As %String, Output headersByClass) [ Internal ]
{
}

/// Fill in array of header classes based on parameters.
/// Each entry is classes(classname,encoded,alias)=$lb(name,namespace)
ClassMethod GetClasses(class As %String, Output classes) [ Internal ]
{
}

/// Get value of Action for method request or response.
ClassMethod GetAction(class As %String, method As %String, kind As %String) As %String [ CodeMode = expression, Internal ]
{
}

}
