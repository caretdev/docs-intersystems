/// A serializable subclass of %Net.MIMEPart
Class %Net.MIMESerialPart Extends (%Net.MIMEPart, %SerialObject, %XML.Adaptor) [ ClassType = serial, Inheritance = right, System = 4 ]
{

/// The body of the attachment as a stream.
/// Either Parts must contain MIMEParts or Body must be specified, but not both.
Property Body As %Stream.GlobalBinary;

/// Set the body of the attachment to a stream.
/// If the stream contains a Headers attribute, this attribute is used to
/// initialize the headers of the MIME part.
/// The %CSP.BinaryStream that is returned by the CSP engine is an example of such
/// a stream with Headers attribute.
Method BodySet(body As %CSP.BinaryStream = "") As %Status
{
}

/// Clonesa regular %Net.MIMEPart into a serializable %Net.MIMESerialPart
ClassMethod CloneFromMIMEPart(pPart As %Net.MIMEPart) As %Net.MIMESerialPart
{
}

}
