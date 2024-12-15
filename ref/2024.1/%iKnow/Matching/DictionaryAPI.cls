/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
///  Main entry point for managing Dictionary contents to be used by the Matching APIs
Class %iKnow.Matching.DictionaryAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

///  Creates a Dictionary and returns its ID.
ClassMethod CreateDictionary(domainId As %Integer, name As %String, description As %String = "", defaultLanguage As %String = "en", defaultProfileId As %Integer = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

ClassMethod CreateDictionaryInternal(domainId As %Integer, name As %String, description As %String = "", defaultLanguage As %String = "en", defaultProfileId As %Integer = "", mgrClass As %String = "", Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

///  Looks up the Dictionary ID corresponding to the supplied Dictionary name.
ClassMethod GetDictionaryId(domainId As %Integer, name As %String, Output sc As %Status = {$$$OK}) As %Integer
{
}

/// Returns whether or not there are any dictionaries in the domain
ClassMethod HasDictionaries(pDomainId As %Integer) As %Boolean
{
}

Parameter DropDictionaryEXP [ Internal ] = 1;

///  Deletes a Dictionary and all related items, terms, elements and matches.
ClassMethod DropDictionary(domainId As %Integer, dictId As %Integer) As %Status
{
}

///  Creates a Dictionary Item and returns its ID.
ClassMethod CreateDictionaryItem(domainId As %Integer, dictId As %Integer, name As %String, ByRef URI As %String, defaultLanguage As %String = "en", Output sc As %Status = {$$$OK}) As %Integer
{
}

///  Looks up the Dictionary Item ID corresponding to the supplied Dictionary Item URI.
ClassMethod GetDictionaryItemIdByURI(domainId As %Integer, URI As %String, Output sc As %Status = {$$$OK}) As %Integer
{
}

Parameter DropDictionaryItemEXP [ Internal ] = 1;

///  Deletes a Dictionary Item with all related terms, elements and matches.
ClassMethod DropDictionaryItem(domainId As %Integer, dictItemId As %Integer) As %Status
{
}

///  Shorthand method for creating a Dictionary Item and Term using the Item's name. Returns the Items ID.
ClassMethod CreateDictionaryItemAndTerm(domainId As %Integer, dictId As %Integer, name As %String, ByRef URI As %String, language As %String = "en", Output sc As %Status = {$$$OK}) As %Integer
{
}

///  <p>Creates a Dictionary Term and returns its ID.</p>
///  <p>If <var>isProcessed</var> is 1 (default 0), the term will be marked as processed upon creation
///  and no Dictionary Elements will be created. This parameter is for internal use only and deprecated in 2013.1.</p>
ClassMethod CreateDictionaryTerm(domainId As %Integer, dictItemId As %Integer, string As %String, language As %String = "en", Output sc As %Status = {$$$OK}, isProcessed As %Boolean = 0) As %Integer
{
}

Parameter DropDictionaryTermEXP [ Internal ] = 1;

///  Drops a single Dictionary Term and its matching results
ClassMethod DropDictionaryTerm(domainId As %Integer, dictTermId As %String) As %Status
{
}

///  Creates a Dictionary Format instance of the supplied <i>formatClass</i> and returns its ID.
ClassMethod CreateDictionaryFormat(domainId As %Integer, formatClass As %String, formatParams As %List = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

/// Shorthand method to create a Dictionary Term composed of a single Dictionary Format of type
/// <class>%iKnow.Matching.Formats.RegularExpression</class>, matching <var>pRegularExpression</var> and
/// optionally producing output by replacing the matched parts of an entity with <var>pReplace</var>.
ClassMethod CreateRegularExpression(pDomainId As %Integer, pDictItemId As %Integer, pRegularExpression As %String, pReplace As %String = "", Output pSC As %Status) As %Integer
{
}

///  Creates a Dictionary Term composed of a single Dictionary Format and returns the Terms ID.
ClassMethod CreateDictionaryTermFormat(domainId As %Integer, dictItemId As %Integer, formatClass As %String, formatParams As %List = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

///  Creates a Dictionary Element
/// NOTE: if $$$IKPSTANDARDIZEDFORM="Stem", the input is assumed to be stemmed already
ClassMethod CreateDictionaryElement(domainId As %Integer, type As %String = {$$$DETERM}, dictTermId As %Integer, value As %String, position As %Integer = {$$$DMPOSUNDEFINED}, role As %Integer = {$$$DMROLEUNDEFINED}, matchScore As %Integer = {$$$DMSCOREUNDEFINED}, nbOfEntries As %Integer = -1, useTransaction As %Boolean = 1, elementWeight As %Numeric = 1, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

Parameter GetDictionariesRT = "dictId:%Integer,name:%String,description:%String,defaultLanguage:%String";

///  Returns all Dictionaries in this domain.
///  If <var>pIncludeCrossDomain</var> = 1, any cross-domain dictionaries registered in "domain 0"
///  are also included in the result, using a negative value for their ID.
ClassMethod GetDictionaries(ByRef result, domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, pIncludeCrossDomain As %Boolean = 0) As %Status
{
}

Parameter GetDictionaryItemsRT = "dictItemId:%Integer,name:%String,URI:%String,defaultLanguage:%String";

///  Returns all Dictionary Items for the given Dictionary ID.
ClassMethod GetDictionaryItems(ByRef result, domainId As %Integer, dictId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status
{
}

Parameter GetDictionaryItemsAndTermsRT = "dictItemId:%Integer,name:%String,URI:%String,dictTermId:%Integer,string:%String,language:%String,isProcessed:%Boolean";

///  Returns all Dictionary Items and their Terms for the given Dictionary ID.
ClassMethod GetDictionaryItemsAndTerms(ByRef result, domainId As %Integer, dictId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status
{
}

Parameter GetDictionaryTermsByItemRT = "dictTermId:%Integer,string:%String,language:%String,isProcessed:%Boolean";

///  Returns all the Dictionary Terms for the given Dictionary Item ID.
ClassMethod GetDictionaryTermsByItem(ByRef result, domainId As %Integer, dictItemId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status
{
}

Parameter DropAllDictionaryDataEXP [ Internal ] = 1;

/// Drops all dictionary data, including matching results.
/// This method will fail if there are managed dictionaries in this domain.
ClassMethod DropAllDictionaryData(domainId As %Integer) As %Status
{
}

/// Returns whether or not a given Dictionary Term <var>pTermId</var> contains at least one
/// Dictionary Format element.
ClassMethod ContainsFormat(pDomainId As %Integer, pTermId As %Integer, Output pSC As %Status = {$$$OK}) As %Boolean [ Internal ]
{
}

Parameter GetTermElementsRT [ Internal ] = "dictElemId:%Integer,type:%Integer,valueId:%Integer,value:%String,position:%Integer,role:%Integer,minMatchScore:%Numeric,scoreMultiplier:%Numeric";

/// Retrieves the elements corresponding to a given <var>pDictionaryTermId</var>.
ClassMethod GetTermElements(ByRef pResult, pDomainId As %Integer, pDictionaryTermId As %Integer) As %Status [ Internal ]
{
}

/// Retrieves the Dictionary format class and parameters for a given <var>pDictionaryFormatId</var>
ClassMethod GetFormatDetails(pDomainId As %Integer, pDictionaryFormatId As %Integer, Output pFormatClass As %String, Output pFormatParams As %List) As %Status
{
}

ClassMethod GetDictionaryCount(pDomainId As %Integer, Output pSC As %Status = {$$$OK}) As %Integer
{
}

ClassMethod GetItemCount(pDomainId As %Integer, pDictIds As %List = "", Output pSC As %Status) As %Integer
{
}

ClassMethod GetTermCount(pDomainId As %Integer, pDictIds As %List = "", Output pSC As %Status = {$$$OK}) As %Integer
{
}

ClassMethod GetTermCountByItem(pDomainId As %Integer, pDictItemIds As %List = "", Output pSC As %Status = {$$$OK}) As %Integer
{
}

Parameter GetItemsByNameRT = "dictId:%Integer,dictName:%String,itemId:%Integer,itemName:%String,URI:%String,language:%String";

/// Note: <var>pFilter</var> is ignored when looking at cross-domain dictionaries
ClassMethod GetItemsByName(ByRef pResult, pDomainId As %Integer, pString As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pDictIds As %List = "", pMode As %Integer = {$$$USEPARTS}, pCheck As %String(VALUELIST="NAME,URI") = "NAME", pLang As %String = "en") As %Status
{
}

Parameter GetTermsByNameRT = "dictId:%Integer,dictName:%String,itemId:%Integer,itemName:%String,URI:%String,termId:%Integer,term:%String,language:%String";

/// Note: <var>pFilter</var> is ignored when looking at cross-domain dictionaries
ClassMethod GetTermsByName(ByRef pResult, pDomainId As %Integer, pString As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pDictIds As %List = "", pMode As %Integer = {$$$USEPARTS}, pLang As %String = "en") As %Status
{
}

/// Returns an identifier for the string value <var>pString</var> of a dictionary element.
/// If this string exists as a real Unique Entity, the corresponding entUniId is returned.
/// Otherwise, the string is added to ^IRIS.IK.Mat.DictElemStringId (if it didn't exist already)
/// and the corresponding dictElemStringId is returned.
/// In either case, a lookup entry in ^IRIS.IK.Mat.DictElemString is added if it didn't exist already.
ClassMethod GetDictElemStringId(pDomainId As %Status, pString As %String, Output pSC As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

}
