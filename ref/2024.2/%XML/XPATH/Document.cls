/// Implements an interface to the XPATH Document. XML contained in a file or binary stream
/// may be selected and navigated. %XML.XPATH.Document should never be created directly with
/// %New(), but via the CreateFromFile() or CreateFromStream() factory methods
Class %XML.XPATH.Document Extends %RegisteredObject [ System = 3 ]
{

/// This property holds a handle to the parsed source
Property ParsedSourceHandle As %Integer [ Private ];

/// This holds a string specifying prefix mappings for the document. This is a comma delimited list
/// of prefix to namespace mappings. Each mapping is defined as a prefix, a space and then the uri to
/// which that prefix maps. This is especially useful if the document defines a default namespace with the
/// xmlns="http://somenamespaceuri" syntax but does not supply an explicit prefix mapping. For example, this
/// PrefixMappings string would map the myprefix prefix to the http://somenamespaceuri uri.
///
/// "myprefix http://somenamespaceuri
Property PrefixMappings As %String;

/// This is the setter for the PrefixMappings, it parses the mappings into
/// an array which can be queried by the GetPrefix() method
Method PrefixMappingsSet(pValue As %String) As %Status
{
}

/// May be called to determine the prefix defined for a particular url in the
/// Prefix Mappings passed to the CreateFromXXX() calls
Method GetPrefix(pUrl = "") As %String
{
}

/// This holds the default ResultHandler
Property ResultHandler As %XML.XPATH.ResultHandler;

/// Use this method a create an instance of an %XML.XPATH.Document from a file path name.
ClassMethod CreateFromFile(pSource As %String, Output pDocument As %XML.XPATH.Document, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, pFlags As %Integer = 0, pSchemaSpec As %String = "", pPrefixMappings As %String = "") As %Status
{
}

/// Use this method to create an instance of a %XML.XPATH.Document from a string.<br/>
/// The input string is expected to be UTF-8 encoded.
ClassMethod CreateFromString(pString As %String, Output pDocument As %XML.XPATH.Document, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, pFlags As %Integer = 0, pSchemaSpec As %String = "", pPrefixMappings As %String = "") As %Status
{
}

/// Use this method to create an instance of an %XML.XPATH.Document from a binary stream. It's important to use a binary stream because
/// if a character stream is used then (for a unicode cache) the characters will be automatically converted to unicode (utf-16). This can
/// cause a problem if the XML stream has a header declaring a different coding as it introduces an inconsistency between the
/// declared encoding and the actual encoding. This will cause the XML Parser to issue an error message and fail.
ClassMethod CreateFromStream(pStream As %AbstractStream, Output pDocument As %XML.XPATH.Document, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, pFlags As %Integer = 0, pSchemaSpec As %String = "", pPrefixMappings As %String = "") As %Status
{
}

/// This method evaluates an XPATH context and expression. The context selects the intial nodeset from the document and
/// the expression further filters the node set. See
/// <a href="http://www.w3.org/TR/xpath">http://www.w3.org/TR/xpath</a> for full details of XPATH syntax and usage
/// If the method succeeds it returns a list of Results which can be queried for their types and values.
Method EvaluateExpression(pContext As %String, pExpression As %String, Output pResults As %ListOfObjects(CLASSNAME="%XML.XPATH.RESULT")) As %Status
{
}

/// This method is called internally by the framework and should not be called directly by the user
Method Evaluate(pContext As %String, pExpression As %String, pResultHandler As %XML.XPATH.ResultHandler) As %Status [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
/// For this class, client code should NOT call this method directly via %New()
/// but should use the 'CreateFromFile()' or 'CreateFromStream()' factory methods
Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method %OnClose() As %Status [ Private, ProcedureBlock = 1 ]
{
}

ClassMethod NormalizeFileName(pFilename As %String) As %String
{
}

/// Evaluates an XPATH expression which returns a DOM Result
ClassMethod Example1()
{
}

/// Evaluates an XPATH expression which returns a VALUE Result
ClassMethod Example2()
{
}

/// Evaluates an XPATH expression which returns a VALUE Result ( demonstrates use of CreateFromString() )
ClassMethod Example3()
{
}

ClassMethod ExampleDisplayResults(pResults As %ListOfObjects(CLASSNAME="%XML.XPATH.Result"))
{
}

XData ExampleXML
{
}

}
