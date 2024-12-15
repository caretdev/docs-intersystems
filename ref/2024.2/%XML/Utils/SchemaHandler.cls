/// A SAX content handler that processes XML Schema files.<BR>
/// This class is used by the XML Schema Wizard; it is not
/// for direct use within applications.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %XML.Utils.SchemaHandler Extends %XML.SAX.ContentHandler [ System = 3 ]
{

/// Integer tree id within ^IRIS.Temp
Property Tree As %Integer;

/// Are we in a schema?
Property InSchema As %Boolean [ InitialExpression = 0 ];

/// Stack level
Property Level As %Integer [ InitialExpression = 0 ];

/// Stack of parsed elements.<BR>
/// Each entry contains: $LB(local, elno)
///
Property ElStack As %String [ MultiDimensional ];

/// The <class>SchemaReader</class> that invoked us.
Property Reader As SchemaReader;

/// The file we are parsing
Property SourceName As %String;

/// List of namespace prefixes and their mappings<BR>
/// PrefixMap(prefix) = uri<BR>
/// PrefixMap(prefix,#) = uri (for "stacked" prefixes)
Property PrefixMap As %String [ MultiDimensional ];

/// current target namespace for this schema
Property TargetNS As %String;

/// Save original target namespace when starting processing of schema
Property SaveTargetNS As %String [ Private ];

/// included or imported schema being processed
Property Included As %Boolean;

/// Parse an XML Schema file
ClassMethod ParseFile(filename As %String, reader As SchemaReader, target As %String = "", bInclude As %Boolean = 0) As %Status
{
}

/// Parse an XML Schema stream
ClassMethod ParseStream(stream As %AbstractStream, reader As SchemaReader) As %Status
{
}

/// Parse an XML Schema from a URL
ClassMethod ParseURL(url As %String, reader As SchemaReader, target As %String = "", bInclude As %Boolean = 0) As %Status
{
}

/// Converts list of attrs into an array keyed by attr name
Method UnpackAttrs(attrs As %List, ByRef array As %String)
{
}

ClassMethod GetFullPath(base As %String, file As %String) As %String
{
}

Method startDocument()
{
}

Method startPrefixMapping(prefix As %Library.String, uri As %Library.String)
{
}

Method endPrefixMapping(prefix As %Library.String)
{
}

Method startElement(uri As %Library.String, local As %Library.String, qname As %Library.String, attrs As %List)
{
}

Method endElement(uri As %Library.String, local As %Library.String, qname As %Library.String)
{
}

Method characters(chars As %Library.String, length As %Library.Integer)
{
}

}
