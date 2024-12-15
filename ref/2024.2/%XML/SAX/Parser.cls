/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.SAX.Parser">Customizing How the SAX Parser Is Used</a>.</p>
/// Implements an interface to the XERCES SAX Parser. XML contained in a file
/// or a stream may be parsed.
Class %XML.SAX.Parser Extends %RegisteredObject [ System = 3 ]
{

/// <p>This method takes the name of a file to be parsed, an instance of a content handler
/// (see <class>%XML.SAX.ContentHandler</class>), optionally an instance of an entity resolver (see <class>%XML.SAX.EntityResolver</class>),
/// flags, and a mask. The content handler provides methods that will be called during the parse of the XML document.
/// </p>
/// <p>
/// The flags control the behavior of the parser by specifying options as a series of bit flags.
/// You can combine the flags by 'OR' ing them together to specify the behavior you require.
/// The flags and their meanings are documented in the %occSAX.inc include file.
/// </p>
/// <p>
/// The mask allows you to specify which callback methods of the content handler should be
/// called. This enables you to optimize the performance of the parser, by limiting the number
/// of callbacks by the SAX Parser. You can combine the mask bits by 'OR' ing them together
/// to specify the behavior you require. The bits and their meanings are documented in the %occSAX.inc
/// include file. By default, the mask is determined by calling the Mask() method of the supplied content handler.
/// </p>
/// <p>
/// The schemaspec allows you to specify schema(s) that should be applied to the document. The spec consists of a comma-delimited list of
/// schema locations. Each schema location can either be a URL that points to the location of the schema document or a pair of values consisting of
/// a namespace URI followed by a space and then the URL for the location of the schema document. The location without a namespace is known as the
/// noNamespaceSchemaLocation, and the pair is known simply as the
/// SchemaLocation; see <a href="https://www.w3.org/TR/xmlschema11-1/#schema-repr">https://www.w3.org/TR/xmlschema11-1/#schema-repr</a>.
/// These values are equivalent to the xsi:schemaLocation attribute
/// and the xsi:noNamespaceSchemaLocation, which can appear within standalone XML documents.
/// </p>
/// <p>If an instance of an entity resolver is not supplied, then the SSLConfiguration name will used for entity resolution.
/// </p>
ClassMethod ParseFile(pFilename As %String, pHandler As %XML.SAX.ContentHandler, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pFlags As %Integer = {$$$SAXDEFAULTS}, pMask As %Integer = 0, pSchemaSpec As %String = "", pSSLConfiguration As %String = "") As %Status [ Final ]
{
}

/// <p>This method takes an instance of a stream to be parsed, an instance of a content handler
/// (see <class>%XML.SAX.ContentHandler</class>), an instance of an entity resolver (see <class>%XML.SAX.EntityResolver</class>),
/// flags, and a mask. The content handler provides methods that will be called during the parse of the
/// XML document. The entity resolver provides a method for the parser to resolve an external entity
/// reference to a stream containing the content of that entity.
/// </p>
/// <p>
/// The flags control the behavior of the parser by specifiying options as a series of bit flags.
/// You can combine the flags by 'OR' ing them together to specify the behavior you require.
/// The flags and their meanings are documented in the %occSAX.inc include file.
/// </p>
/// <p>
/// The mask allows you to specify which callback methods of the content handler should be
/// called. This enables you to optimize the performance of the parser, by limiting the number
/// of callbacks by the SAX Parser. You can combine the mask bits by 'OR' ing them together
/// to specify the behavior you require. The bits and their meanings are documented in the %occSAX.inc
/// include file. By default, the mask is determined by calling the Mask() method of the supplied content handler.
/// </p>
/// <p>
/// The schemaspec allows you to specify schema(s) that should be applied to the document. The spec consists of a comma-delimited list of
/// schema locations. Each schema location can either be a URL that points to the location of the schema document or a pair of values consisting of
/// a namespace URI followed by a space and then the URL for the location of the schema document. The location without a namespace is known as the
/// noNamespaceSchemaLocation, and the pair is known simply as the
/// SchemaLocation; see <a href="https://www.w3.org/TR/xmlschema11-1/#schema-repr">https://www.w3.org/TR/xmlschema11-1/#schema-repr</a>.
/// These values are equivalent to the xsi:schemaLocation attribute
/// and the xsi:noNamespaceSchemaLocation, which can appear within standalone XML documents.
/// </p>
/// <p>If an instance of an entity resolver is not supplied, then the SSLConfiguration name will used for entity resolution.
/// </p>
ClassMethod ParseStream(pStream As %Stream.Object, pHandler As %XML.SAX.ContentHandler, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pFlags As %Integer = {$$$SAXDEFAULTS}, pMask As %Integer = 0, pSchemaSpec As %String = "", pSSLConfiguration As %String = "") As %Status [ Final ]
{
}

/// <p>This method takes the URL of a file to be parsed, an instance of a content handler
/// (see <class>%XML.SAX.ContentHandler</class>), optionally an instance of an entity resolver (see <class>%XML.SAX.EntityResolver</class>),
/// flags, and a mask. The content handler provides methods that will be called during the parse of the XML document.
/// </p>
/// <p>
/// The flags control the behavior of the parser by specifying options as a series of bit flags.
/// You can combine the flags by 'OR' ing them together to specify the behavior you require.
/// The flags and their meanings are documented in the %occSAX.inc include file.
/// </p>
/// <p>
/// The mask allows you to specify which callback methods of the content handler should be
/// called. This enables you to optimize the performance of the parser, by limiting the number
/// of callbacks by the SAX Parser. You can combine the mask bits by 'OR' ing them together
/// to specify the behavior you require. The bits and their meanings are documented in the %occSAX.inc
/// include file. By default, the mask is determined by calling the Mask() method of the supplied content handler.
/// </p>
/// <p>
/// The schemaspec allows you to specify schema(s) that should be applied to the document. The spec consists of a comma-delimited list of
/// schema locations. Each schema location can either be a URL that points to the location of the schema document or a pair of values consisting of
/// a namespace URI followed by a space and then the URL for the location of the schema document. The location without a namespace is known as the
/// noNamespaceSchemaLocation, and the pair is known simply as the
/// SchemaLocation; see <a href="https://www.w3.org/TR/xmlschema11-1/#schema-repr">https://www.w3.org/TR/xmlschema11-1/#schema-repr</a>.
/// These values are equivalent to the xsi:schemaLocation attribute
/// and the xsi:noNamespaceSchemaLocation, which can appear within standalone XML documents.
/// </p>
/// <p>pSSLConfiguration is the name of the SSLConfiguration to use if you wish to parse a URL
/// with the https protocol. If an instance of an entity resolver is not supplied, then the SSLConfiguration name will
/// be also used for entity resolution.
/// </p>
ClassMethod ParseURL(pURL As %String, pHandler As %XML.SAX.ContentHandler, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pFlags As %Integer = {$$$SAXDEFAULTS}, pMask As %Integer = 0, pSchemaSpec As %String = "", pHttpRequest As %Net.HttpRequest = {$$$NULLOREF}, pSSLConfiguration As %String = "") As %Status [ Final ]
{
}

/// InterSystems Internal Use Only.  Users should NOT make use of this method in their code
/// The buffer descriptor is a 2 piece $List which contains an integer representation of the pointer to the buffer and
/// a length count.
ClassMethod ParseBuffer(pBufferDesc As %List, pHandler As %XML.SAX.ContentHandler, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pFlags As %Integer = {$$$SAXDEFAULTS}, pMask As %Integer = 0, pSchemaSpec As %String = "", pSSLConfiguration As %String = "") As %Status [ Final, Internal ]
{
}

/// <p>This method takes a string of XML to be parsed, an instance of a content handler
/// (see <class>%XML.SAX.ContentHandler</class>), an instance of an entity resolver (see <class>%XML.SAX.EntityResolver</class>),
/// flags, and a mask. The content handler provides methods that will be called during the parse of the
/// XML document. The entity resolved provides a method for the parser to resolve an external entity
/// reference to a stream containing the content of that entity.
/// </p>
/// <p>
/// The flags control the behavior of the parser by specifiying options as a series of bit flags.
/// You can combine the flags by 'OR' ing them together to specify the behavior you require.
/// The flags and their meanings are documented in the %occSAX.inc include file.
/// </p>
/// <p>
/// The mask allows you to specify which callback methods of the content handler should be
/// called. This enables you to optimize the performance of the parser, by limiting the number
/// of callbacks by the SAX Parser. You can combine the mask bits by 'OR' ing them together
/// to specify the behavior you require. The bits and their meanings are documented in the %occSAX.inc
/// include file. By default, the mask is determined by calling the Mask() method of the supplied content handler
/// The Reserved parameter is reserved for use by InterSystems.
/// </p>
/// <p>
/// The schemaspec allows you to specify schema(s) that should be applied to the document. The spec consists of a comma-delimited list of
/// schema locations. Each schema location can either be a URL that points to the location of the schema document or a pair of values consisting of
/// a namespace URI followed by a space and then the URL for the location of the schema document. The location without a namespace is known as the
/// noNamespaceSchemaLocation, and the pair is known simply as the
/// SchemaLocation; see <a href="https://www.w3.org/TR/xmlschema11-1/#schema-repr">https://www.w3.org/TR/xmlschema11-1/#schema-repr</a>.
/// These values are equivalent to the xsi:schemaLocation attribute
/// and the xsi:noNamespaceSchemaLocation, which can appear within standalone XML documents.
/// </p>
/// <p>If an instance of an entity resolver is not supplied, then the SSLConfiguration name will used for entity resolution.
/// </p>
ClassMethod ParseString(pString As %String, pHandler As %XML.SAX.ContentHandler, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pFlags As %Integer = {$$$SAXDEFAULTS}, pMask As %Integer = 0, pSchemaSpec As %String = "", pSSLConfiguration As %String = "") As %Status [ Final ]
{
}

ClassMethod IsProxyServerConfigured() As %Boolean [ CodeMode = expression ]
{
}

}
