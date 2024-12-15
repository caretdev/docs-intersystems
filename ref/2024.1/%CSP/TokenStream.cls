/// A simple xml tokenizer. NOT FOR PUBLIC USE.
Class %CSP.TokenStream Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

/// Last read Tag
Property Tag As %String [ Internal ];

/// Last read script tag
Property ScriptTag As %String [ Internal ];

/// Text content of tag
Property Text As %String [ Internal ];

/// Type of tag
Property Type As %String [ Internal ];

/// Lien  number
Property LineNo As %String [ Internal ];

/// Input handle for parse routine
Property InputHandle As %String [ Internal, MultiDimensional, Private ];

/// Information about last tag read
Property TagParms As %String [ Internal, MultiDimensional, Private ];

/// Stream that is being processed.
Property stream As %GlobalCharacterStream [ Internal, Private ];

/// Returns a the current tag, if there is one, converted to upper-case.
Method GetTag() As %String [ CodeMode = expression, Internal ]
{
}

/// Returns TRUE (1) if the current token is a tag.
Method IsTag() As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Returns TRUE (1) if the current token is a comment.
Method IsComment() As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Returns TRUE (1) if the current token is text.
Method IsText() As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Returns TRUE (1) if the current token is script.
Method IsScript() As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Converts <var>text</var> to a quoted HTML string.
ClassMethod QuoteHTML(text As %String) As %String [ Internal ]
{
}

/// Read the items from a file and process the tags
Method OpenFromFile(filename As %String) As %Status [ Internal ]
{
}

/// Read the items from a string and process the tags
Method OpenFromString(string As %String) As %Status [ Internal ]
{
}

/// Read the items from a character stream and process the tags
Method OpenFromStream(stream As %CharacterStream) As %Status [ Internal ]
{
}

/// Parse for next token
Method NextToken() As %Boolean [ Internal ]
{
}

/// Get attributes for current tag
Method GetAttrs(ByRef attrs As %String) [ Internal ]
{
}

/// Cleanup on instance close
Method %OnClose() As %Status [ Internal ]
{
}

}
