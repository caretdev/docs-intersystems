/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Matching.DictionaryAPI</class>, exposed as WebMethod methods.</p><p>See the classdocs for <class>%iKnow.Matching.DictionaryAPI</class> for more information.</p>
Class %iKnow.Matching.DictionaryWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]
{

///  Creates a Dictionary and returns its ID.
ClassMethod CreateDictionary(domainId As %Integer, name As %String, description As %String = "", defaultLanguage As %String = "en", defaultProfileId As %Integer = "") As %Library.Integer [ WebMethod ]
{
}

///  Creates a Dictionary Format instance of the supplied <i>formatClass</i> and returns its ID.
ClassMethod CreateDictionaryFormat(domainId As %Integer, formatClass As %String, formatParams As %ListOfDataTypes = "") As %Library.Integer [ WebMethod ]
{
}

///  Creates a Dictionary Item and returns its ID.
ClassMethod CreateDictionaryItem(domainId As %Integer, dictId As %Integer, name As %String, URI As %String, defaultLanguage As %String = "en") As %Library.Integer [ WebMethod ]
{
}

///  Shorthand method for creating a Dictionary Item and Term using the Item's name. Returns the Items ID.
ClassMethod CreateDictionaryItemAndTerm(domainId As %Integer, dictId As %Integer, name As %String, URI As %String, language As %String = "en") As %Library.Integer [ WebMethod ]
{
}

///  <p>Creates a Dictionary Term and returns its ID.</p>
///  <p>If <var>isProcessed</var> is 1 (default 0), the term will be marked as processed upon creation
///  and no Dictionary Elements will be created. This parameter is for internal use only and deprecated in 2013.1.</p>
ClassMethod CreateDictionaryTerm(domainId As %Integer, dictItemId As %Integer, string As %String, language As %String = "en", isProcessed As %Boolean = 0) As %Library.Integer [ WebMethod ]
{
}

///  Creates a Dictionary Term composed of a single Dictionary Format and returns the Terms ID.
ClassMethod CreateDictionaryTermFormat(domainId As %Integer, dictItemId As %Integer, formatClass As %String, formatParams As %ListOfDataTypes = "") As %Library.Integer [ WebMethod ]
{
}

/// Shorthand method to create a Dictionary Term composed of a single Dictionary Format of type
/// <class>%iKnow.Matching.Formats.RegularExpression</class>, matching <var>pRegularExpression</var> and
/// optionally producing output by replacing the matched parts of an entity with <var>pReplace</var>.
ClassMethod CreateRegularExpression(pDomainId As %Integer, pDictItemId As %Integer, pRegularExpression As %String, pReplace As %String = "") As %Library.Integer [ WebMethod ]
{
}

/// Drops all dictionary data, including matching results.
/// This method will fail if there are managed dictionaries in this domain.
ClassMethod DropAllDictionaryData(domainId As %Integer) As %Boolean [ WebMethod ]
{
}

///  Deletes a Dictionary and all related items, terms, elements and matches.
ClassMethod DropDictionary(domainId As %Integer, dictId As %Integer) As %Boolean [ WebMethod ]
{
}

///  Deletes a Dictionary Item with all related terms, elements and matches.
ClassMethod DropDictionaryItem(domainId As %Integer, dictItemId As %Integer) As %Boolean [ WebMethod ]
{
}

///  Drops a single Dictionary Term and its matching results
ClassMethod DropDictionaryTerm(domainId As %Integer, dictTermId As %String) As %Boolean [ WebMethod ]
{
}

///  Returns all Dictionaries in this domain.
///  If <var>pIncludeCrossDomain</var> = 1, any cross-domain dictionaries registered in "domain 0"
///  are also included in the result, using a negative value for their ID.
ClassMethod GetDictionaries(domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, pIncludeCrossDomain As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

ClassMethod GetDictionaryCount(pDomainId As %Integer) As %Library.Integer [ WebMethod ]
{
}

///  Looks up the Dictionary ID corresponding to the supplied Dictionary name.
ClassMethod GetDictionaryId(domainId As %Integer, name As %String) As %Library.Integer [ WebMethod ]
{
}

///  Looks up the Dictionary Item ID corresponding to the supplied Dictionary Item URI.
ClassMethod GetDictionaryItemIdByURI(domainId As %Integer, URI As %String) As %Library.Integer [ WebMethod ]
{
}

///  Returns all Dictionary Items for the given Dictionary ID.
ClassMethod GetDictionaryItems(domainId As %Integer, dictId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

///  Returns all Dictionary Items and their Terms for the given Dictionary ID.
ClassMethod GetDictionaryItemsAndTerms(domainId As %Integer, dictId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

///  Returns all the Dictionary Terms for the given Dictionary Item ID.
ClassMethod GetDictionaryTermsByItem(domainId As %Integer, dictItemId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

ClassMethod GetItemCount(pDomainId As %Integer, pDictIds As %ListOfDataTypes = "") As %Library.Integer [ WebMethod ]
{
}

/// Note: <var>pFilter</var> is ignored when looking at cross-domain dictionaries
ClassMethod GetItemsByName(pDomainId As %Integer, pString As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pDictIds As %ListOfDataTypes = "", pMode As %Integer = {$$$USEPARTS}, pCheck As %String(VALUELIST="NAME,URI") = "NAME", pLang As %String = "en") As %XML.DataSet [ WebMethod ]
{
}

ClassMethod GetTermCount(pDomainId As %Integer, pDictIds As %ListOfDataTypes = "") As %Library.Integer [ WebMethod ]
{
}

ClassMethod GetTermCountByItem(pDomainId As %Integer, pDictItemIds As %ListOfDataTypes = "") As %Library.Integer [ WebMethod ]
{
}

/// Retrieves the elements corresponding to a given <var>pDictionaryTermId</var>.
ClassMethod GetTermElements(pDomainId As %Integer, pDictionaryTermId As %Integer) As %XML.DataSet [ Internal, WebMethod ]
{
}

/// Note: <var>pFilter</var> is ignored when looking at cross-domain dictionaries
ClassMethod GetTermsByName(pDomainId As %Integer, pString As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pDictIds As %ListOfDataTypes = "", pMode As %Integer = {$$$USEPARTS}, pLang As %String = "en") As %XML.DataSet [ WebMethod ]
{
}

/// Returns whether or not there are any dictionaries in the domain
ClassMethod HasDictionaries(pDomainId As %Integer) As %Library.Boolean [ WebMethod ]
{
}

Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Matching/DictionaryWSAPI";

Parameter SERVICENAME = "iKnow.Matching.DictionaryWSAPI";

Parameter USECLASSNAMESPACES = 1;

}
