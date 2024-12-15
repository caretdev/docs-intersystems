/// XML Signature SignedInfo Reference element.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %XML.Security.Reference Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter ELEMENTQUALIFIED = 1;

Property Transforms As list Of %XML.Security.Transform(XMLPROJECTION = "wrapped", XMLREF = 1);

Property DigestMethod As %XML.Security.Algorithm;

Property DigestValue As %xsd.base64Binary(CANONICALXML = 1);

Property Id As %String(MAXLEN = "", XMLPROJECTION = "attribute");

Property Type As %xsd.anyURI(XMLPROJECTION = "attribute");

/// Type is string so that "" is a valid value.
Property URI As %String(MAXLEN = "", XMLPROJECTION = "attribute");

/// The type of element referenced: "Body", "Header", "Element" or "".
/// Used only when validating received SOAP messages.
Property ElementType As %String(XMLPROJECTION = "none") [ Internal ];

/// The node id of the element which was signed.
Property ElementNodeId As %String(XMLPROJECTION = "none") [ Internal ];

/// If DoNotReuse is true, then this reference was created by InitializeForService and
/// should be removed during Reset.
Property DoNotReuse As %Boolean(XMLPROJECTION = "none") [ Internal ];

/// Create a new Reference based on the specified id.<br>
/// The DigestMethod will be initialized to "" by Create and may be explicitely set
/// by the application.  If not set by the application, DigestMethod will be defaulted
/// by the %XML.Security.Signature AddReference method.
ClassMethod Create(id As %String, algorithm As %String, prefixList As %String) [ Internal ]
{
}

/// Create a new Reference based on the specified id of a SecurityTokenReference using STR-Transform.<br>
/// The DigestMethod will be initialized to "" by Create and may be explicitely set
/// by the application.  If not set by the application, DigestMethod will be defaulted
/// by the %XML.Security.Signature AddReference method.
ClassMethod CreateSTR(id As %String, algorithm As %String) [ Internal ]
{
}

}
