Class %iKnow.REST.Base Extends %CSP.REST [ Abstract, Deprecated, System = 4 ]
{

Parameter CHARSET = "utf-8";

Parameter CONTENTTYPE = "application/json";

Parameter HandleCorsRequest = 1;

Parameter PAGESIZE As INTEGER = 200;

Parameter IKLATESTVERSION As STRING = "%iKnow.REST.v1dot1";

ClassMethod OnPreDispatch(pUrl As %String, pMethod As %String, ByRef pContinue As %Boolean) As %Status
{
}

ClassMethod %ErrorHandler(pSC As %Status, ByRef pContinue As %Boolean) As %Status
{
}

ClassMethod %ProcessResult(pSC As %Status, pResult As %DynamicObject = "") As %Status [ Internal ]
{
}

/// If the supplied domain ID is not a valid integer, verify if it happens to be a domain name
/// and update pDomainId to that domain's ID
ClassMethod ResolveDomainId(ByRef pDomainId As %RawString) As %Status
{
}

/// Parse a few common arguments out of %request.Content
ClassMethod ParseArgs(pDomainId As %Integer = 0, Output pPage As %Integer, Output pPageSize As %Integer, Output pFilter As %iKnow.Filters.Filter, Output pFilterMode As %Integer, Output pSkiplists As %List) As %Status [ Internal ]
{
}

/// { ids: [ srcID1, srcID2, ...] } --> SourceIdFilter
/// { extIds: [ extID1, extID2, ...] } --> ExternalIdFilter
/// { field: "fieldName", operator: "<", value: "value" } --> SimpleMetadataFilter
/// { operator: "AND"|"OR", negate : false, filters: [...] } --> GroupFilter
/// { className: "RandomClass", arguments : [ all args except domainID] }
ClassMethod ParseFilter(pDomainId As %Integer, pObject As %DynamicObject, Output pFilter As %iKnow.Filters.Filter) As %Status
{
}

/// { highlight: [
/// 	{ style: "...", entities : ["..."] }, --> ENTITY
/// 	{ style: "...", role : "concept"|"relation"|"nonRelevant"|"pathRelevant" } --> ROLE
/// 	{ style: "...", attribute : "negation"|"positiveSentiment"|"negativeSentiment"|id } --> ATTRIBUTE
/// 	{ style: "...", attributeWords : "negation"|"positiveSentiment"|"negativeSentiment"|id } --> ATTRIBUTEWORDS
/// 	{ style: "...", anyMatch: true [, matchType:"partial"|"full"] } --> MATCH
/// 	{ style: "...", dictionaries: [ dictIDs... ] [, matchType:"partial"|"full"] } --> MATCH
/// 	{ style: "...", dictionaryItems: [ dictItemIDs... ] [, matchType:"partial"|"full"] } --> MATCHITEM
/// 	{ style: "...", start: ##, end: ## } --> CHARS
/// 	{ style: "...", stems : ["..."] }, --> STEMS
/// 	{ style: "...", crcs : ["..."] }, --> CRC
/// 	{ style: "...", paths : ["..."] }, --> PATH
/// ] ... }
ClassMethod ParseHighlight(Output pHighlight) As %Status
{
}

ClassMethod ParseList(pObjectProp As %String, pRequestParam As %RawString = "") As %List
{
}

ClassMethod ParseStringArray(pObjectProp As %String, pRequestParam As %RawString = "") As %DynamicArray
{
}

/// Use this method
ClassMethod CreateDomainAPI(pDomainId As %Integer, pClassname As %String, pVersion As %String = "%iKnow.REST.v1") As %Status
{
}

}
