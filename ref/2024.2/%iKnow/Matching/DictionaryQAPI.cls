/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Matching.DictionaryAPI</class>, exposed as SqlProc methods.</p><p>See the classdocs for <class>%iKnow.Matching.DictionaryAPI</class> for more information.</p>
Class %iKnow.Matching.DictionaryQAPI Extends %iKnow.Queries.AbstractQAPI [ Deprecated, System = 4 ]
{

///  Creates a Dictionary and returns its ID.
ClassMethod CreateDictionary(domainId As %Integer, name As %String(MAXLEN=32767), description As %String(MAXLEN=32767) = "", defaultLanguage As %String(MAXLEN=32767) = "en", defaultProfileId As %Integer = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

///  Creates a Dictionary Format instance of the supplied <i>formatClass</i> and returns its ID.
ClassMethod CreateDictionaryFormat(domainId As %Integer, formatClass As %String(MAXLEN=32767), formatParams As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

///  Creates a Dictionary Item and returns its ID.
ClassMethod CreateDictionaryItem(domainId As %Integer, dictId As %Integer, name As %String(MAXLEN=32767), ByRef URI As %String(MAXLEN=32767), defaultLanguage As %String(MAXLEN=32767) = "en", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

///  Shorthand method for creating a Dictionary Item and Term using the Item's name. Returns the Items ID.
ClassMethod CreateDictionaryItemAndTerm(domainId As %Integer, dictId As %Integer, name As %String(MAXLEN=32767), ByRef URI As %String(MAXLEN=32767), language As %String(MAXLEN=32767) = "en", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

///  <p>Creates a Dictionary Term and returns its ID.</p>
///  <p>If <var>isProcessed</var> is 1 (default 0), the term will be marked as processed upon creation
///  and no Dictionary Elements will be created. This parameter is for internal use only and deprecated in 2013.1.</p>
ClassMethod CreateDictionaryTerm(domainId As %Integer, dictItemId As %Integer, string As %String(MAXLEN=32767), language As %String(MAXLEN=32767) = "en", Output scText As %String = "", isProcessed As %Boolean = 0) As %Library.Integer [ SqlProc ]
{
}

///  Creates a Dictionary Term composed of a single Dictionary Format and returns the Terms ID.
ClassMethod CreateDictionaryTermFormat(domainId As %Integer, dictItemId As %Integer, formatClass As %String(MAXLEN=32767), formatParams As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// Shorthand method to create a Dictionary Term composed of a single Dictionary Format of type
/// <class>%iKnow.Matching.Formats.RegularExpression</class>, matching <var>pRegularExpression</var> and
/// optionally producing output by replacing the matched parts of an entity with <var>pReplace</var>.
ClassMethod CreateRegularExpression(pDomainId As %Integer, pDictItemId As %Integer, pRegularExpression As %String(MAXLEN=32767), pReplace As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// Drops all dictionary data, including matching results.
/// This method will fail if there are managed dictionaries in this domain.
ClassMethod DropAllDictionaryData(domainId As %Integer) As %Boolean [ SqlProc ]
{
}

///  Deletes a Dictionary and all related items, terms, elements and matches.
ClassMethod DropDictionary(domainId As %Integer, dictId As %Integer) As %Boolean [ SqlProc ]
{
}

///  Deletes a Dictionary Item with all related terms, elements and matches.
ClassMethod DropDictionaryItem(domainId As %Integer, dictItemId As %Integer) As %Boolean [ SqlProc ]
{
}

///  Drops a single Dictionary Term and its matching results
ClassMethod DropDictionaryTerm(domainId As %Integer, dictTermId As %String(MAXLEN=32767)) As %Boolean [ SqlProc ]
{
}

///  Returns all Dictionaries in this domain.
///  If <var>pIncludeCrossDomain</var> = 1, any cross-domain dictionaries registered in "domain 0"
///  are also included in the result, using a negative value for their ID.
ClassMethod GetDictionariesExecute(ByRef qHandle As %Binary,  domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, pIncludeCrossDomain As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetDictionariesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetDictionariesExecute ]
{
}

ClassMethod GetDictionariesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetDictionariesExecute ]
{
}

ClassMethod GetDictionaryCount(pDomainId As %Integer, Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

///  Looks up the Dictionary ID corresponding to the supplied Dictionary name.
ClassMethod GetDictionaryId(domainId As %Integer, name As %String(MAXLEN=32767), Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

///  Looks up the Dictionary Item ID corresponding to the supplied Dictionary Item URI.
ClassMethod GetDictionaryItemIdByURI(domainId As %Integer, URI As %String(MAXLEN=32767), Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

///  Returns all Dictionary Items for the given Dictionary ID.
ClassMethod GetDictionaryItemsExecute(ByRef qHandle As %Binary,  domainId As %Integer, dictId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status [ Internal ]
{
}

ClassMethod GetDictionaryItemsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetDictionaryItemsExecute ]
{
}

ClassMethod GetDictionaryItemsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetDictionaryItemsExecute ]
{
}

///  Returns all Dictionary Items and their Terms for the given Dictionary ID.
ClassMethod GetDictionaryItemsAndTermsExecute(ByRef qHandle As %Binary,  domainId As %Integer, dictId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status [ Internal ]
{
}

ClassMethod GetDictionaryItemsAndTermsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetDictionaryItemsAndTermsExecute ]
{
}

ClassMethod GetDictionaryItemsAndTermsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetDictionaryItemsAndTermsExecute ]
{
}

///  Returns all the Dictionary Terms for the given Dictionary Item ID.
ClassMethod GetDictionaryTermsByItemExecute(ByRef qHandle As %Binary,  domainId As %Integer, dictItemId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status [ Internal ]
{
}

ClassMethod GetDictionaryTermsByItemFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetDictionaryTermsByItemExecute ]
{
}

ClassMethod GetDictionaryTermsByItemClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetDictionaryTermsByItemExecute ]
{
}

ClassMethod GetItemCount(pDomainId As %Integer, pDictIds As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// Note: <var>pFilter</var> is ignored when looking at cross-domain dictionaries
ClassMethod GetItemsByNameExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pString As %String(MAXLEN=32767), pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pDictIds As %String(MAXLEN=32767) = "", pMode As %Integer = {$$$USEPARTS}, pCheck As %String(VALUELIST="NAME,URI") = "NAME", pLang As %String(MAXLEN=32767) = "en") As %Status [ Internal ]
{
}

ClassMethod GetItemsByNameFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetItemsByNameExecute ]
{
}

ClassMethod GetItemsByNameClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetItemsByNameExecute ]
{
}

ClassMethod GetTermCount(pDomainId As %Integer, pDictIds As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

ClassMethod GetTermCountByItem(pDomainId As %Integer, pDictItemIds As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// Retrieves the elements corresponding to a given <var>pDictionaryTermId</var>.
ClassMethod GetTermElementsExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pDictionaryTermId As %Integer) As %Status [ Internal ]
{
}

ClassMethod GetTermElementsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTermElementsExecute ]
{
}

ClassMethod GetTermElementsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTermElementsExecute ]
{
}

/// Note: <var>pFilter</var> is ignored when looking at cross-domain dictionaries
ClassMethod GetTermsByNameExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pString As %String(MAXLEN=32767), pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pDictIds As %String(MAXLEN=32767) = "", pMode As %Integer = {$$$USEPARTS}, pLang As %String(MAXLEN=32767) = "en") As %Status [ Internal ]
{
}

ClassMethod GetTermsByNameFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTermsByNameExecute ]
{
}

ClassMethod GetTermsByNameClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTermsByNameExecute ]
{
}

/// Returns whether or not there are any dictionaries in the domain
ClassMethod HasDictionaries(pDomainId As %Integer) As %Library.Boolean [ SqlProc ]
{
}

}
