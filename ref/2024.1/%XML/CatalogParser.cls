/// An XML Catalog file parser.<br>
/// This is used by the <CLASS>%XML.Catalog</CLASS> class.<br>
/// Use as follows:
/// <EXAMPLE>
/// Set parser = ##class(%XML.CatalogParser).%New()
/// Set sc = parser.Start("\dbdtd\docbook.cat"),!
///
/// While (parser.NextElement(.el)) {
/// 	// el will contain the values for this element
/// 	// as subscripts
/// 	}
/// </EXAMPLE>
Class %XML.CatalogParser Extends %Library.RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

Property BPos As %Integer;

Property Buffer As %String;

Property InStream As %AbstractStream;

Property LineNo As %Integer;

Property ColNo As %Integer;

Property LastColNo As %Integer;

Property AtEnd As %Boolean;

Property ErrorMsg As %String;

/// holds the last "undone" token
Property UndoBuffer As %String;

/// Begin parsing the given Catalog file
Method Start(file As %String) As %Status
{
}

Method End()
{
}

/// Find and return the next element in the catalog<br>
/// <VAR>element</VAR> returns the values of the element
/// as subscripts.
Method NextElement(ByRef element As %String) As %Boolean
{
}

/// Display an error message
Method Error(text As %String)
{
}

/// Put back a token into the input stream
Method UndoToken(token As %String)
{
}

/// Return the next token from the InputStream
Method NextToken() As %String
{
}

}
