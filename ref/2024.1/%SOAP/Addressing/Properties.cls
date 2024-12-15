/// %SOAP.Addressing.Properties represents the message properties for WS-Addressing
Class %SOAP.Addressing.Properties Extends %RegisteredObject [ System = 4 ]
{

/// An absolute URI representing the address of the intended receiver of this message.
Property Destination As %String(MAXLEN = "");

/// Reference to the endpoint from which the message originated.
Property SourceEndpoint As %SOAP.Addressing.EndpointReference;

/// An endpoint reference for the intended receiver for replies to this message.
Property ReplyEndpoint As %SOAP.Addressing.EndpointReference;

/// An endpoint reference for the intended receiver for faults related to this message.
Property FaultEndpoint As %SOAP.Addressing.EndpointReference;

/// An absolute IRI that uniquely identifies the semantics implied by this message.
/// Should be SoapAction for SOAP 1.1.
Property Action As %String(MAXLEN = "");

/// An absolute IRI that uniquely identifies the message.
Property MessageId As %String(MAXLEN = "");

/// A pair of values that indicate how this message relates to another message.
Property Relationship As %SOAP.Addressing.RelatesTo;

/// Corresponds to the value of the [reference parameters] property of the endpoint
/// reference to which the message is addressed.
Property ReferenceParameters As %XML.String(MAXLEN = "");

/// mustUnderstand is a multidimensional property which specifies the mustUnderstand attribute
/// for each of the headers that are created based on the %XML.AddresingProperties class.<br>
///    mustUnderstand(headerName) may be set to the %Boolean value of the mustUnderstand attribute to be produced for headerName.<br>
///    where headerName is "To", "From", "ReplyTo", "FaultTo", "Action", "MessageID", "RelatesTo".
Property mustUnderstand As %Boolean [ MultiDimensional ];

/// The actual namespace used for an imported WS-Addressing header.
/// Multiple namespaces are possible, since there exist multiple implementations
/// of WS-Addressing based on various submissions.
Property WSANamespace As %String [ Internal ];

/// An array of wsu:Id values for the defined WS-Addressing headers.
Property Ids As %String [ Internal, MultiDimensional ];

/// Get the WS-Addressing XML namespace.
/// Use the namespace of the imported headers if possible, otherwise use the
/// newest specification.
Method Namespace() As %String [ CodeMode = expression ]
{
}

/// Return true if the specified namespace is a supported WS-Addressing namespace.
ClassMethod IsWSANamespace(namespace As %String) As %Boolean
{
}

/// Get the default Properties for a SOAP request.
ClassMethod GetDefaultRequestProperties(destination As %String, action As %String, addressingNamespace As %String) As %SOAP.Addressing.Properties
{
}

/// Get the default Properties for a SOAP response.
ClassMethod GetDefaultResponseProperties(requestProperties As %SOAP.Addressing.Properties, action As %String) As %SOAP.Addressing.Properties
{
}

/// Get a unique InterSystems format message id.
ClassMethod GetUniqueMessageId() As %String [ CodeMode = expression ]
{
}

/// Get a unique wsu:Id value.
Method GetId(type As %String) As %String
{
}

/// Define Id's for the defined WS-Addressing headers
Method GetIds(ByRef addressingIds) [ Internal ]
{
}

/// Output the SOAP headers that correspond to these properties.
Method WriteSOAPHeaders(namespaces As %XML.Namespaces, soapPrefix As %String, soapVersion As %String) As %Status [ Internal ]
{
}

/// Import a WS-Addressing SOAP header
Method ImportHeader(headerName As %String, handler, message As %Integer, status As %Status) As %Boolean [ Internal ]
{
}

ClassMethod ImportAddressingHeaders(document As %XML.Document, headers As %String, baseChildlist As %String, Output addressing As %SOAP.Addressing.Properties) As %Status [ Internal ]
{
}

}
