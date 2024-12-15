/// XML Encryption element.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %XML.Security.RetrievalMethod Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2001/04/xmlenc#";

Parameter ELEMENTQUALIFIED = 1;

Property URI As %xsd.anyURI(XMLPROJECTION = "attribute");

Property Type As %xsd.anyURI(XMLPROJECTION = "attribute");

Property Transforms As list Of %XML.Security.Transform(XMLPROJECTION = "wrapped", XMLREF = 1);

}