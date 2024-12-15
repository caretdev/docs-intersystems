Class %XML.SAX.Utils.Sequencer Extends %XML.SAX.ContentHandler [ System = 3 ]
{

Property CharType As %Boolean [ InitialExpression = "chars", Private ];

Property Depth As %Integer [ InitialExpression = 0 ];

Property EntityName As %String [ Private ];

Property Seq As %Integer [ InitialExpression = 0, Private ];

Property Target As %Integer;

Property KeepWhitespace As %Boolean [ InitialExpression = 0 ];

Property GlobalName As %String;

Method TargetGet() As %Integer
{
}

Method characters(chars As %String, length As %Integer)
{
}

Method comment(chars As %String, length As %Integer)
{
}

Method endCDATA()
{
}

Method endElement(uri As %String, localname As %String, qname As %String)
{
}

Method endEntity(name As %String)
{
}

Method endPrefixMapping(prefix As %Library.String)
{
}

Method error(error As %String)
{
}

Method fatalError(fatalerror As %String)
{
}

Method ignorableWhitespace(chars As %String, length As %Integer)
{
}

Method processingInstruction(target As %String, data As %String)
{
}

Method startCDATA()
{
}

Method startDocument()
{
}

Method startElement(uri As %String, localname As %String, qname As %String, attrs As %List)
{
}

Method startEntity(name As %String)
{
}

Method startPrefixMapping(prefix As %Library.String, uri As %Library.String)
{
}

Method warning(warning As %String)
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
Method %OnNew(initvalue As %RawString, pGlobalName = "^IRIS.Temp") As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// Post process the document
Method OnPostParse() As %Status [ Internal ]
{
}

/// Determine Candidate For Whitespace Stripping
Method CFWS(tType As %String) As %Boolean [ CodeMode = expression, Internal, Private ]
{
}

}
