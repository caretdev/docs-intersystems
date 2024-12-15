/// The %XML.GUID datatype class represents a GUID field in an XML enabled class and has the following behavior:<br>
/// 1) If the property has not been set, it's value will default to ..%GUID().
/// Thus opening and exporting a persistent object will result in including the ID.<br>
/// 2) It is possible to set the property value and then retrieve it. Thus
/// the exported class can be imported and the imported GUID is available to
/// the programmer. Note that it will still be the programmer's
/// responsibility to deal with the imported GUID -- no automatic matching of
/// records is done based on this GUID.
Class %XML.GUID Extends %String [ System = 2 ]
{

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "string";

/// Override of default Get method
Method Get() As %String [ CodeMode = generator, Internal, NoContext ]
{
}

}
