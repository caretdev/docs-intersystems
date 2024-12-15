Class %Library.TextStreamInterface Extends %Compiler.Type.StreamEmbedded [ System = 2 ]
{

/// <p>The <PARAMETER>LANGUAGECLASS</PARAMETER> parameter specifies the fully qualified name of the language
/// implementation class.  Optionally, he <PARAMETER>LANGUAGECLASS</PARAMETER> may be set to the name of a global
/// that indirectly defines the language class name. If a global name is specified, then the global must be
/// defined and available at index build time and at SQL query execution time.</p>
Parameter LANGUAGECLASS = "%Text.English";

/// Specify the <PARAMETER>SIMILARITYINDEX</PARAMETER> parameter when you intend to use
/// the %SIMILARITY SQL operator to rank query results by relevance.
/// <p>
/// The <PARAMETER>SIMILARITYINDEX</PARAMETER> parameter specifies the name of an index on the current
/// property that has the structure expected by the SimilarityIdx class method of the class specified in
/// the LANGUAGECLASS parameter.  The SimilarityIdx class method in the %Text.Text class requires the index
/// global to have the structure: ^textIndexGlobal([constantSubscripts,]key,ID) = value.  An index with this
/// structure can be created by compiling an index specification such as:</p>
/// <EXAMPLE LANGUAGE=UDL>
/// PROPERTY myDocument As User.TextStream (LANGUAGECLASS = "%Text.English", SIMILARITYINDEX = "myIndex");
/// INDEX myIndex ON myDocument(KEYS) DATA [ myDocument(VALUES) ];
/// </EXAMPLE>
/// The SimilarityIdx method of the %Text.Text class requires the index specified in the SIMILARITYINDEX parameter
/// to have exactly this structure.  The index may not be a bitmap index, additional subscripts or data values
/// may not be added to the Index specification, and the index must inherit the collation of the property.
/// <p>
Parameter SIMILARITYINDEX;

ClassMethod BuildValueArray(document As %Binary, ByRef valueArray As %Binary) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

ClassMethod Similarity(document As %String, qList As %List) As %Numeric [ CodeMode = generator ]
{
}

ClassMethod SimilarityIdx(ID As %String, textIndex As %String, qList As %List) As %Numeric [ CodeMode = generator ]
{
}

ClassMethod ChooseSearchKey(searchString As %String) As %String [ CodeMode = generator ]
{
}

ClassMethod Standardize(document As %String, origtext As %Boolean = 0) As %String [ CodeMode = generator ]
{
}

ClassMethod CreateQList(searchPattern As %String, collationExpr As %String) As %List [ CodeMode = generator ]
{
}

ClassMethod MakeSearchTerms(searchPattern As %String, ngramlen As %Integer = 0) As %List [ CodeMode = generator ]
{
}

}
