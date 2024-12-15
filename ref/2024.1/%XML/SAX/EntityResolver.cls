/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.SAX.EntityResolver">Customizing How the SAX Parser Is Used</a>.</p>
/// This class enables the SAX parser to resolve external entities. The parser will call the
/// resolveEntity method passing the URI/URL of the external entity,expecting a
/// new stream object to be returned. This class provides a default implementation;
/// you may wish to provide your own subclass with specialized semantics. The entity must be
/// returned as an instance of %BinaryStream (or one of its subclasses) wrapped  in an instance of
/// %XML.SAX.StreamAdapter. If the entity cannot be resolved, then $$$NULLOREF should be returned to
/// indicate to the SAX parser that the entity cannot be resolved).
///
/// <p>If you want the EntityResolver to be able to resolve urls prefixed by https then you MUST
/// set the SSLConfiguration property to the name of a valid SSLConfiguration that is appropriate
/// for the servers to which the urls resolve.</p>
Class %XML.SAX.EntityResolver Extends %Library.RegisteredObject [ System = 3 ]
{

///  The amount of time to wait for a response from the web server before
///  assuming that the web server is not responding.
///  If not specified, the %Net.HttpRequest default is used.
Property Timeout As %Integer;

/// The name of the activated TLS/SSL configuration to use for https requests.
Property SSLConfiguration As %String;

Method resolveEntity(publicID As %Library.String, systemID As %Library.String) As %Library.Integer
{
}

}
