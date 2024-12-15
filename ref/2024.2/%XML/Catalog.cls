/// This class represents an XML catalog. It defines a database of associations
/// between PUBLIC document identifiers and the URLs for their DTD and/or schema files.
///
/// This class is used by the XML.CatalogResolver class when it resolves
/// DTD and Schema references.
Class %XML.Catalog Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock, SqlTableName = XCatalog, System = 3 ]
{

/// The Keyword for a Catalog entry.
/// Currently only PUBLIC is supported
Property Keyword As %String(MAXLEN = 20) [ Required ];

/// The Public Identifier string for a Catalog entry.
Property PublicId As %String(MAXLEN = 200) [ Required ];

/// The URL string for a Catalog entry.
Property URL As %String(MAXLEN = 200) [ Required ];

/// Clear the contents of the catalog.
ClassMethod Reset()
{
}

/// Test if the Catalog is empty
ClassMethod IsEmpty() As %Boolean
{
}

/// Reset and load the default catalog.
ClassMethod LoadDefault() As %Status
{
}

/// Load a Catalog File
ClassMethod Load(filename As %String) As %Status
{
}

/// Return an open Stream object that contains the
/// DTD for a given Public Identifier.<br>
/// The caller is responsible for closing the stream.
ClassMethod ResolvePublic(publicId As %String) As %AbstractStream
{
}

/// Find the URL for a given Public Identifier.
ClassMethod FindURL(publicId As %String) As %String
{
}

/// Display the contents of the XML Catalog to the console.
ClassMethod DisplayCatalog()
{
}

}
