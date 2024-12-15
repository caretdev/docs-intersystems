/// This data data type represents an XML format duration.
/// Internally, this is stored as a string.
Class %xsd.duration Extends %String [ Not ProcedureBlock, System = 2 ]
{

/// Declares the XSD type used when projecting XML schemas.
Parameter XSDTYPE = "duration";

/// Converts the SOAP encoded input dateTime value into a %TimeStamp value.
ClassMethod XSDToLogical(%val As %String) As %xsd.duration [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the %TimeStamp value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %xsd.duration) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Tests if the logical value <var>%val</var>, which represents a duration
/// value in <code>PnYnMnDTnHnMn[.nnnnnnnn]S</code> format, is valid.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

}
