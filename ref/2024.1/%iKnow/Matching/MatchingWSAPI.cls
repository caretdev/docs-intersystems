/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Matching.MatchingAPI</class>, exposed as WebMethod methods.</p><p>See the classdocs for <class>%iKnow.Matching.MatchingAPI</class> for more information.</p>
Class %iKnow.Matching.MatchingWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]
{

///  Clears any matching-related logfiles for the specified domain.
ClassMethod ClearLogs(domainId As %Integer) As %Boolean [ WebMethod ]
{
}

///  <p>Returns all potential matches for a given string. This string is treated as if it
///  were a single entity and matched against single-entity Dictionary Terms. To find the
///  matches for a full sentence, first index it and then call <method>GetMatchesBySource</method>
///  using the source ID corresponding to the indexed sentence.</p>
///  <p>A Matching Profile to be used when calculating match scores can be specified either by passing in an
/// 	 <class>%iKnow.Matching.MatchingProfile</class> object, or a Matching Profile ID. When
///  passing in the ID, a negative number is treated as a namespace-wide profile, whereas
///  a positive ID will be looked up within the context of the domain. If no profile is
///  specified, the default profile for this domain will be used.</p>
///  <p>Specifying "" for <i>dictIds</i> will return results for all Dictionaries in this domain.</p>
ClassMethod GetDictionaryMatches(domainId As %Integer, string As %String, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, fullMatchOnly As %Integer = -1, profile As %iKnow.Matching.MatchingProfile = "", language As %String = "", nGramMatches As %Integer = -1) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns all potential matches for the given entity ID.</p>
///  <p>A Matching Profile to be used when calculating match scores can be specified either by passing in an
/// 	 <class>%iKnow.Matching.MatchingProfile</class> object, or a Matching Profile ID. When
///  passing in the ID, a negative number is treated as a namespace-wide profile, whereas
///  a positive ID will be looked up within the context of the domain. If no profile is
///  specified, the default profile for this domain will be used.</p>
///  <p>Specifying "" for <i>dictIds</i> will return results for all Dictionaries in this domain.</p>
ClassMethod GetDictionaryMatchesById(domainId As %Integer, entUniId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, fullMatchOnly As %Integer = -1, profile As %iKnow.Matching.MatchingProfile = "", language As %String = "") As %XML.DataSet [ WebMethod ]
{
}

///  Returns any errors registered during the Matching process
ClassMethod GetErrors(domainId As %Integer, since As %Date = 0) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns a detailed overview of all the elements in the match target, be it an entity-level,
///  CRC-level or path-level match. The elements that are matched get annotated with the matched
///  elements ID, value and eventually the output from a <class>%iKnow.Matching.Formats.Format</class>
///  class if it was responsible for the match.</p>
///  <p>If a Virtual Source ID is supplied, the query runs in the context of that virtual source.</p>
ClassMethod GetMatchElements(domainId As %Integer, matchId As %Integer, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns all the matches for the given CRC Occurrence. Use <i>includeEntityMatches</i>,
///  <i>includePathMatches</i> and <i>includeSentenceMatches</i> to also include any matches for the Entities this CRC is composed of
///  and the Paths these Entities participate in.</p>
///  <p>Specifying "" for <i>dictIds</i> will return results for all Dictionaries in this domain.</p>
ClassMethod GetMatchesByCrcOcc(domainId As %Integer, crcOccId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, includeEntityMatches As %Boolean = 1, includePathMatches As %Boolean = 1, includeSentenceMatches As %Boolean = 1) As %XML.DataSet [ WebMethod ]
{
}

///  <p>This query returns all the match occurrences for the Dictionary Item
///  specified through <var>dictItemId</var>.</p>
///  <p>Specifying a <class>%iKnow.Filters.Filter</class> object as <var>filter</var> will
///  restrict the search space to only those sources satisfying the filters criteria.
///  Through <var>targetTypes</var>, the desired target types can be specified in a %List
///  (defaults to all types).</p>
ClassMethod GetMatchesByDictionaryItemId(domainId As %Integer, dictItemId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", targetTypes As %ListOfDataTypes = "", ensureMatched As %Boolean = 1) As %XML.DataSet [ WebMethod ]
{
}

///  <p>This query returns all the match occurrences for the Dictionary Item
///  specified through <var>dictItemURI</var>.</p>
///  <p>Specifying a <class>%iKnow.Filters.Filter</class> object as <var>filter</var> will
///  restrict the search space to only those sources satisfying the filters criteria.
///  Through <var>targetTypes</var>, the desired target types can be specified in a %List
///  (defaults to all types).</p>
ClassMethod GetMatchesByDictionaryItemURI(domainId As %Integer, dictItemURI As %String, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", targetTypes As %ListOfDataTypes = "", xDomDicts As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

///  <p>This query returns all the match occurrences for the Dictionary Term
///  specified through <var>pDictTermId</var>.</p>
///  <p>Specifying a <class>%iKnow.Filters.Filter</class> object as <var>pFilter</var> will
///  restrict the search space to only those sources satisfying the filters criteria.
///  Through <var>pTargetTypes</var>, the desired target types can be specified in a %List
///  (defaults to all types).</p>
ClassMethod GetMatchesByDictionaryTermId(pDomainId As %Integer, pDictTermId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pTargetTypes As %ListOfDataTypes = "", pEnsureMatched As %Boolean = 1) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns all the matches for the given Entity Occurrence. Use <i>includeCrcMatches</i>,
///  <i>includePathMatches</i> and <i>includeSentenceMatches</i> to also include any matches for the CRC, Path or Sentence in which this Entity
///  Occurrences participates.</p>
///  <p>Specifying "" for <i>dictIds</i> will return results for all Dictionaries in this domain.</p>
ClassMethod GetMatchesByEntOcc(domainId As %Integer, entOccId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, includeCrcMatches As %Boolean = 1, includePathMatches As %Boolean = 1, includeSentenceMatches As %Boolean = 1, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns all the matches for the given Path. Use <i>includeEntityMatches</i>,
///  <i>includeCRCMatches</i> and <i>includeSentenceMatches</i> to also include any matches for the Entities this path is composed of
///  and the CRCs or Sentences these Entities participate in.</p>
///  <p>Specifying "" for <i>dictIds</i> will return results for all Dictionaries in this domain.</p>
ClassMethod GetMatchesByPath(domainId As %Integer, pathId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, includeEntityMatches As %Boolean = 1, includeCrcMatches As %Boolean = 1, includeSentenceMatches As %Boolean = 1) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns all the matches for the given Sentence. Use <i>includeEntityMatches</i>,
///  <i>includeCrcMatches</i> and <i>includePathMatches</i> to control which (target) types of
///  matches should be included in the result.</p>
///  <p>Specifying "" for <i>dictIds</i> will return results for all Dictionaries in this domain.</p>
ClassMethod GetMatchesBySentence(domainId As %Integer, sentenceId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, includeEntityMatches As %Boolean = 1, includeCrcMatches As %Boolean = 1, includePathMatches As %Boolean = 1) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns all the matches for the given Source, as identified by its external ID.</p>
///  <p>Specifying "" for <i>dictIds</i> will return results for all Dictionaries in this domain.</p>
ClassMethod GetMatchesBySource(domainId As %Integer, externalId As %String, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns all the matches for the given Source, as identified by its Source ID (interpreted as a Virtual Source if a negative
///  value is supplied).</p>
///  <p>Specifying "" for <i>dictIds</i> will return results for all Dictionaries in this domain.</p>
ClassMethod GetMatchesBySourceId(domainId As %Integer, srcId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

/// Utility method to retrieve the Sentence ID for a given match target, as specified by its target type
/// (either of $$$DMTARGETENTITY, $$$DMTARGETCRC, $$$DMTARGETPATH or $$$DMTARGETSENT) and ID.
ClassMethod GetSentenceIdForMatchTarget(domainId As %Integer, targetType As %Integer, targetId As %Integer, vSrcId As %Integer = 0) As %Library.Integer [ WebMethod ]
{
}

/// Utility method to retrieve the Source ID for a given match target, as specified by its target type
/// (either of $$$DMTARGETENTITY, $$$DMTARGETCRC, $$$DMTARGETPATH or $$$DMTARGETSENT) and ID.
ClassMethod GetSourceIdForMatchTarget(domainId As %Integer, targetType As %Integer, targetId As %Integer) As %Library.Integer [ WebMethod ]
{
}

///  <p>Returns the Dictionary Items for which most matches have been found in this domain (optionally
///  narrowed down through a <class>%iKnow.Filters.Filter</class> object passed in through <var>filter</var>).
///  Result sort order is controlled by <var>sortType</var>:</p>
///  <ul>
///  		<li>$$$SORTBYFREQUENCY will sort by the number of actual matches for a Dictionary Item</li>
///  		<li>$$$SORTBYSPREAD will sort by the number of distinct documents in which at least one match for the Dictionary Item occurs.</li>
///  		<li>$$$SORTBYSCORE will sort by the total match score of all matches for a Dictionary Item</li>
///  </ul>
///  <p>Specifying "" for <var>dictIds</var> will return results for all Dictionaries in this domain.</p>
ClassMethod GetTopItems(domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", dictIds As %ListOfDataTypes = "", sortType As %Integer = {$$$SORTBYFREQUENCY}, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]
{
}

///  <p>This query returns the "best" matching results for the Dictionary Item
///  specified through <var>dictItemId</var>, aggregated by matched unique target
///  (entity, CRC, path or sentence). The meaning of "best" is defined by <var>sortType</var>:
///  if set to $$$SORTBYFREQUENCY or $$$SORTBYSPREAD, results are sorted by decreasing
///  number of matched occurrences, whereas $$$SORTBYSCORE will rank them according to the
///  highest match score. The first two options will yield the most relevant results for
///  entities and CRCs, with the score ranking a better fit for paths and sentences, as they
///  inherently have frequency and spread equal to 1.</p>
///  <p>Specifying a <class>%iKnow.Filters.Filter</class> object as <var>filter</var> will
///  restrict the search space to only those sources satisfying the filters criteria.
///  Through <var>targetTypes</var>, the desired target types can be specified in a %List
///  (defaults to all types).</p>
ClassMethod GetTopMatchesByDictionaryItemId(domainId As %Integer, dictItemId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", targetTypes As %ListOfDataTypes = "", sortType As %Integer = {$$$SORTBYDOMAINDEFAULT}) As %XML.DataSet [ WebMethod ]
{
}

///  <p>This query returns the "best" matching results for the Dictionary Item
///  specified through <var>dictItemURI</var>, aggregated by matched unique target
///  (entity, CRC, path or sentence). The meaning of "best" is defined by <var>sortType</var>:
///  if set to $$$SORTBYFREQUENCY or $$$SORTBYSPREAD, results are sorted by decreasing
///  number of matched occurrences, whereas $$$SORTBYSCORE will rank them according to the
///  highest match score. The first two options will yield the most relevant results for
///  entities and CRCs, with the score ranking a better fit for paths and sentences, as they
///  inherently have frequency and spread equal to 1.</p>
///  <p>Specifying a <class>%iKnow.Filters.Filter</class> object as <var>filter</var> will
///  restrict the search space to only those sources satisfying the filters criteria.
///  Through <var>targetTypes</var>, the desired target types can be specified in a %List
///  (defaults to all types).</p>
ClassMethod GetTopMatchesByDictionaryItemURI(domainId As %Integer, dictItemURI As %String, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", targetTypes As %ListOfDataTypes = "", sortType As %Integer = {$$$SORTBYFREQUENCY}, xDomDicts As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

/// <p>Returns the sources best matching a given list of dictionaries specified through
/// <var>pDictIds</var>, optionally filtered through <var>pFilter</var>. "Best matching" is
/// defined as having the highest number of matches (if <var>pSortType</var> = $$$SORTBYFREQUENCY)
/// or the highest total match score (if <var>pSortType</var> = $$$SORTBYSCORE).</p>
/// <p>If <var>pNormalizeLength</var> is set to a nonzero value, this number is used as the power
/// of the sources length in entities (occurrences) to normalize the score.</p>
ClassMethod GetTopSourcesByDictionary(pDomainId As %Integer, pDictIds As %ListOfDataTypes, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pSortType As %Integer = {$$$SORTBYFREQUENCY}, pNormalizeLength As %Numeric = 0) As %XML.DataSet [ WebMethod ]
{
}

///  <p>For a given Dictionary Item, returns all its Dictionary Terms sorted by the number of
///  matches they have, optionally narrowed down through a <class>%iKnow.Filters.Filter</class>
///  object passed in through <var>pFilter</var>).
///  Result sort order is controlled by <var>pSortType</var>:</p>
///  <ul>
///  		<li>$$$SORTBYFREQUENCY will sort by the number of actual matches for the Dictionary Term
///  		<li>$$$SORTBYSPREAD will sort by the number of distinct documents in which at least one match for the Dictionary Term occurs.</li>
///  		<li>$$$SORTBYSCORE will sort by the total match score of all matches for a Dictionary Term</li>
///  </ul>
ClassMethod GetTopTermsByItemId(pDomainId As %Integer, pDictItemIds As %ListOfDataTypes, pFilter As %String(MAXLEN=32767) = "", pSortType As %Integer = {$$$SORTBYFREQUENCY}, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]
{
}

///  Returns summary information for all matches in a given source (identified by External ID), organized per Dictionary.
ClassMethod GetTotalDictionaryScoresBySource(domainId As %Integer, externalId As %String, sortType As %Integer = {$$$SORTBYFREQUENCY}) As %XML.DataSet [ WebMethod ]
{
}

///  Returns summary information for all matches in a given source (identified by Source ID), organized per Dictionary.
ClassMethod GetTotalDictionaryScoresBySourceId(domainId As %Integer, srcId As %Integer, sortType As %Integer = {$$$SORTBYFREQUENCY}) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns summary information for all matches in a given source (identified by External ID), organized per Dictionary Item.</p>
///  <p>Specifying "" for <i>dictIds</i> will return results for all Dictionaries in this domain.</p>
ClassMethod GetTotalItemScoresBySource(domainId As %Integer, externalId As %String, dictIds As %ListOfDataTypes = "", sortType As %Integer = {$$$SORTBYFREQUENCY}) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns summary information for all matches in a given source (identified by Source ID), organized per Dictionary Item.</p>
///  <p>Specifying "" for <i>dictIds</i> will return results for all Dictionaries in this domain.</p>
ClassMethod GetTotalItemScoresBySourceId(domainId As %Integer, srcId As %Integer, dictIds As %ListOfDataTypes = "", sortType As %Integer = {$$$SORTBYFREQUENCY}) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Deletes all current matching results for the list of Dictionary IDs passed in <var>dictIds</var>.</p>
///  <p>Specifying "" for <i>dictIds</i> will drop results for all Dictionaries in this domain.</p>
///  <p><var>pMode</var> can be used to specify whether to keep intermediary (not source-related)
///  matching results as follows:<ul><li>0: only source-related matching results are erased (default)</li>
///  <li>1: the matching results for unique entities are also erased</li><li>2: the matching
///  results for unique entities and indexing results for dictionary terms are all erased (only available if dictIds="")</li></ul>
///  This parameter is mostly for internal use.</p>
///  <p>Note: <var>pMode</var>=2 will not erase the indexing results for dictionary terms of
///  cross-domain dictionaries.<br/>
///  Note: matching results for virtual sources are always completely dropped, regardless of the
///  value of <var>dictIds</var> and with the same effect as <var>pMode</var>=1</p>
ClassMethod InvalidateMatchingResults(domainId As %Integer, dictIds As %ListOfDataTypes = "", pMode As %Integer = 0) As %Boolean [ WebMethod ]
{
}

///  <p>Matches an individual source against the list of Dictionary IDs passed in <i>dictIds</i>.
///  Use negative numbers to identify any cross-domain dictionaries to match against.
///  A Matching Profile to calculate match scores can be specified either by passing in an
/// 	 <class>%iKnow.Matching.MatchingProfile</class> object, or a Matching Profile ID. When
///  passing in the ID, a negative number is treated as a namespace-wide profile, whereas
///  a positive ID will be looked up within the context of the domain.</p>
///  <p>Specifying "" for <i>dictIds</i> will match against all Dictionaries in this domain and
///  passing $$$ALLXDOMDICTIONARIES will match against all cross-domain dictionaries.</p>
///  <p>A negative Source ID is interpreted as a Virtual Source.</p>
ClassMethod MatchSource(domainId As %Integer, srcId As %Integer, dictIds As %ListOfDataTypes = "", overrideProfile As %iKnow.Matching.MatchingProfile = "") As %Boolean [ WebMethod ]
{
}

///  <p>Matches all sources in the domain, optionally restricted to those satisfying the criteria of a
///  <class>%iKnow.Filters.Filter</class> object provided as <i>filter</i>, against the list of
///  Dictionary IDs passed in <i>dictIds</i>. Use negative numbers to mark cross-domain dictionaries.</p>
///  <p>A Matching Profile to calculate match scores can be specified either by passing in an
/// 	 <class>%iKnow.Matching.MatchingProfile</class> object, or a Matching Profile ID. When
///  passing in the ID, a negative number is treated as a namespace-wide profile, whereas
///  a positive ID will be looked up within the context of the domain.</p>
///  <p>Specifying "" for <i>dictIds</i> will match against all Dictionaries in this domain and
///  passing $$$ALLXDOMDICTIONARIES will match against all cross-domain dictionaries.</p>
ClassMethod MatchSources(domainId As %Integer, filter As %String(MAXLEN=32767) = "", dictIds As %ListOfDataTypes = "", overrideProfile As %iKnow.Matching.MatchingProfile = "") As %Boolean [ WebMethod ]
{
}

Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Matching/MatchingWSAPI";

Parameter SERVICENAME = "iKnow.Matching.MatchingWSAPI";

Parameter USECLASSNAMESPACES = 1;

}