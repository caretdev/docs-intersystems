/// This data type is used to represent binary data
/// that will be encoded using the hex encoding for XML serialization.
/// Internally, this is stored as a string containing a binary value.
///
/// <p>When a <b>%Binary</b> data type value is projected to a client application,
/// such as when it is used in a Java, Visual Basic (ActiveX), ODBC, or JDBC application,
/// the Object Server performs no translations or conversions on it.
/// That is, the actual binary data is sent to and from the client without any Unicode (or other) translations.
Class %xsd.hexBinary Extends %Binary [ Not ProcedureBlock, System = 2 ]
{

/// Declares the XSD type used when projecting XML schemas.
Parameter XSDTYPE = "hexBinary";

/// There is no length restriction for %xsd binary types.
Parameter MAXLEN As INTEGER;

/// Converts the SOAP encoded base64 input value to a logical value.
ClassMethod XSDToLogical(%val As %String) As %xsd.hexBinary [ CodeMode = generator ]
{
}

/// Converts the %Binary value to the SOAP base64 encoded value.
ClassMethod LogicalToXSD(%val As %xsd.hexBinary) As %String [ CodeMode = generator ]
{
}

/// Converts the JSON base64 input value to a logical value.
ClassMethod JSONToLogical(%val As %String) As %xsd.hexBinary [ CodeMode = generator ]
{
}

/// Converts the %Binary value to JSON base64 encoded value.
ClassMethod LogicalToJSON(%val As %xsd.hexBinary) As %String [ CodeMode = generator ]
{
}

}
