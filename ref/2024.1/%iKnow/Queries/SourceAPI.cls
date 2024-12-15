/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
///  Main Query API for retrieving sources and related information.
Class %iKnow.Queries.SourceAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

///  <p>Retrieves the external ID for the source identified by <i>srcId</i>.</p>
///  <p>A negative srcId is considered to refer to a Virtual Source.</p>
ClassMethod GetExternalId(domainid As %Integer, srcId As %Integer, Output sc As %Status = {$$$OK}) As %String
{
}

///  <p>Retrieves the source ID for the source identified by <i>externalId</i>.</p>
ClassMethod GetSourceId(domainid As %Integer, externalId As %String, Output sc As %Status = {$$$OK}) As %Integer
{
}

///  <p>Retrieves the Full Reference for the source identified by <i>srcId</i>.</p>
///  <p>A negative srcId is considered to refer to a Virtual Source.</p>
ClassMethod GetFullReference(domainId As %Integer, srcId As %Integer, Output sc As %Status = {$$$OK}) As %String
{
}

Parameter GetSummaryForTextRT = "sentId:%Integer,sentenceValue:%String,sentenceIsTruncated:%Boolean";

///  <p>This method returns the most relevant sentences of the supplied text, in their original order.
///  The number of sentences returned is controlled by the <var>length</var> parameter.</p>
/// <p>Note: the value of <var>pDomainId</var> is ignored since 2013.2</p>
ClassMethod GetSummaryForText(ByRef pResult, pDomainId As %Integer = 0, pText As %String(MAXLEN=32000), pLength As %Integer = 5, pSummaryConfig As %String = "", pLanguage As %String = "en", pUserDict As %String = "") As %Status
{
}

/// sentIdToScore(sentId) = summaryScore
ClassMethod GetSummaryHelper(ByRef sentIdToScore, domainId As %Integer, srcId As %Integer, ByRef wordFreqConfig) As %Status [ Internal ]
{
}

ClassMethod parseSummaryConfig(ByRef wordWeight, ByRef sentWeight, summaryConfig As %String = "", sentStart As %Integer, sentEnd As %Integer) [ Internal ]
{
}

Parameter GetSummaryRT = "sentId:%Integer,sentenceValue:%String,sentenceIsTruncated:%Boolean";

///  <p>This method returns the most relevant sentences of the requested source, in their original order.
///  The number of sentences returned is controlled by the <var>length</var> parameter.</p>
///  <p>A negative Source ID is interpreted as a Virtual Source.</p>
ClassMethod GetSummary(ByRef result, domainId As %Integer, srcId As %Integer, length As %Integer = 5, summaryConfig As %String = "") As %Status
{
}

///  <p>This is a utility wrapper method around <method>GetSummary</method>, returning the summary
///  sentences as a single concatenated string.</p>
///  <p>The <i>isTruncated</i> output parameter indicates whether or not the
///  returned string is complete or was truncated to avoid MAXSTRING errors. This can happen when either
///  an individual sentence surpassed the maximum string length or when the concatenation of these
///  sentences surpassed it.</p>
ClassMethod GetSummaryDirect(domainId As %Integer, sourceId As %Integer, length As %Integer = 5, Output isTruncated As %Boolean = 0, Output sc As %Status = {$$$OK}, separator As %String = " ... ", summaryConfig As %String = "") As %String
{
}

Parameter GetByDomainRT = "srcId:%Integer,externalId:%String";

///  <p>Returns all sources within a domain, optionally filtered through
///  a <class>%iKnow.Filters.Filter</class> object passed in as <i>filter</i>.</p>
ClassMethod GetByDomain(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", sortByField As %String = "") As %Status
{
}

///  <p>This method returns the total number of sources in the specified domain, optionally filtered
///  through a <class>%iKnow.Filters.Filter</class> object passed in as <i>filter</i>.</p>
ClassMethod GetCountByDomain(domainid As %Integer, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

Parameter GetLanguagesRT = "language:%String,totalConfidence:%Numeric,sentenceCount:%Integer";

///  <p>This method returns, for a given source, all languages the iKnow Automatic Language
///  Identification algorithm has identified for the sentences it contains. For each language, it will
///  list the sum of ALI confidence ratings when assigning the language to a sentence, plus the total
///  number of sentences the language was assigned to. If ALI was disabled when indexing this
///  source, confidence ratings will be set to 0.</p>
///  <p>A negative Source ID is interpreted as a Virtual Source.</p>
ClassMethod GetLanguages(ByRef result, domainid As %Integer, sourceid As %Integer) As %Status
{
}

///  <p>This method returns the language of a given source, calculated as the one with the
///  highest total confidence rating for the individual sentences in the source. This total
///  confidence, as well as the number of sentences to which this language was assigned
///  is provided through output variables <i>totalConfidence</i> and <i>numberOfSentences</i>.</p>
///  <p>A <i>totalConfidence</i> of 0 indicates ALI was switched off when indexing this source.</p>
///  <p>A negative Source ID is interpreted as a Virtual Source.</p>
ClassMethod GetTopLanguage(domainid As %Integer, sourceid As %Integer, Output totalConfidence As %Numeric = "", Output numberOfSentences As %Integer = "", Output sc As %Status = {$$$OK}) As %String
{
}

Parameter GetByEntitiesRT = "srcId:%Integer,externalId:%String";

///  <p>This method will retrieve all sources containing any (if <var>setop</var> = $$$UNION) or all (if <var>setop</var> =
///  $$$INTERSECT) of the entities supplied through <var>entitylist</var>.</p>
///  <p>The scope of this query can be limited through supplying a <class>%iKnow.Filters.Filter</class>
///  object for the <var>filter</var> parameter to restrict the result to those sources satisfying the
///  filter criteria.</p>
///  <p>By default, results are ordered by decreasing source id. You can override this by setting
///  <var>sortByField</var> to the name of a metadata field (optionally appended with " ASC" or " DESC"
/// for this domain to order by that field's value. </p>
/// <p>The <var>attributeFilter</var> argument can be used to filter the results to only those where
/// the requested entities (<var>entitylist</var>) appear in the context of a particular (set of)
/// attribute(s). By using the negative attribute ID, you can select only those occurrences NOT
/// appearing in the context of that attribute. For example, passing in $lb($$$IKATTNEGATION) will restrict the result to only those
/// entities in a negative context and $lb(-$$$IKATTNEGATION) the ones in an affirmative context.
/// Note that the use of this argument may have a significant performance impact.</p>
/// <p>If stemming is enabled for this domain through $$$IKPSTEMMING, sources containing any actual
/// form of the entities in <var>entityList</var> will be returned. Use <var>pActualFormOnly</var>=1
/// to retrieve only those sources containing the actual forms in <var>entitylist</var>. This
/// argument is ignored if stemming is not enabled.</p>
ClassMethod GetByEntities(ByRef result, domainid As %Integer, entitylist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, attributeFilter As %List = "", sortByField As %String = "", pActualFormOnly As %Boolean = 0) As %Status
{
}

Parameter GetByEntityIdsRT = "srcId:%Integer,externalId:%String";

///  <p>Retrieves all sources containing the given entity ids.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByEntityIds(ByRef result, domainid As %Integer, entityidlist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, attributeFilter As %List = "", sortByField As %String = "", pActualFormOnly As %Boolean = 0) As %Status
{
}

ClassMethod GetByEntitiesInternal(ByRef result, domainid As %Integer, ByRef entitylist, page As %Integer, pagesize As %Integer, filter As %iKnow.Filters.Filter, setop As %Integer, attributeFilter As %List = "", sortByField As %String = "") As %Status [ Internal ]
{
}

Parameter GetByEquivalentsRT [ Deprecated, Internal ] = "srcId:%Integer,externalId:%String";

/// Deprecated
ClassMethod GetByEquivalents(ByRef result, domainid As %Integer, entitylist As %List, setid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated, Internal ]
{
}

Parameter GetByEquivalentIdsRT [ Deprecated, Internal ] = "srcId:%Integer,externalId:%String";

/// Deprecated
ClassMethod GetByEquivalentIds(ByRef result, domainid As %Integer, entityidlist As %List, setid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated, Internal ]
{
}

/// Deprecated
ClassMethod GetByEquivalentsInternal(ByRef result, domainid As %Integer, ByRef entitylist, setid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "") As %Status [ Internal ]
{
}

///  <p>Retrieves the number of sources containing the given entities.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntities(domainid As %Integer, entitylist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

///  <p>Retrieves the number of sources containing the given entity ids.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntityIds(domainid As %Integer, entityidlist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

ClassMethod GetCountByEntitiesInternal(domainid As %Integer, ByRef entitylist, filter As %iKnow.Filters.Filter, setop As %Integer, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

///  <p>Retrieves a bitstring array identifying all sources containing the given entities.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetBitsByEntities(ByRef result, domainid As %Integer, entitylist As %List, filter As %iKnow.Filters.Filter = "", setop As %String = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status [ Internal ]
{
}

///  <p>Retrieves a bitstring array identifying all sources containing the given entity ids.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetBitsByEntityIds(ByRef result, domainid As %Integer, entityidlist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod GetBitsByEntitiesInternal(ByRef result, domainid As %Integer, ByRef entitylist, filter As %iKnow.Filters.Filter, setop As %Integer) As %Status [ Internal ]
{
}

Parameter GetByCrcsRT = "srcId:%Integer,externalId:%String";

///  <p>Retrieves all sources containing the given CRCs.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByCrcs(ByRef result, domainid As %Integer, crclist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, sortByField As %String = "") As %Status
{
}

Parameter GetByCrcMaskRT = "srcId:%Integer,externalId:%String";

///  <p>Retrieves all sources containing a CRC satisfying the given CRC Mask.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByCrcMask(ByRef result, domainid As %Integer, head As %String = {$$$WILDCARD}, relation As %String = {$$$WILDCARD}, tail As %String = {$$$WILDCARD}, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", sortByField As %String = "", pActualFormOnly As %Boolean = 0) As %Status
{
}

Parameter GetByCrcIdsRT = "srcId:%Integer,externalId:%String";

///  <p>Retrieves all sources containing the given CRC ids.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByCrcIds(ByRef result, domainid As %Integer, crcidlist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, sortByField As %String = "") As %Status
{
}

ClassMethod GetByCrcsInternal(ByRef result, domainid As %Integer, crcIdsGlob As %String, page As %Integer, pagesize As %Integer, filter As %iKnow.Filters.Filter, setop As %Integer, sortByField As %String = "") As %Status [ Internal ]
{
}

///  <p>Retrieves the number of sources containing the given CRCs.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByCrcs(domainid As %Integer, crclist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}) As %Integer
{
}

///  <p>Retrieves the number of sources containing a CRC satisfying the given CRC Mask.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByCrcMask(domainid As %Integer, head As %String = {$$$WILDCARD}, relation As %String = {$$$WILDCARD}, tail As %String = {$$$WILDCARD}, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

///  <p>Retrieves the number of sources containing the given CRC ids.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByCrcIds(domainid As %Integer, crcidlist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}) As %Integer
{
}

ClassMethod GetCountByCrcsInternal(domainid As %Integer, crcIdsGlob As %String, filter As %iKnow.Filters.Filter, setop As %Integer, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

Parameter GetByPathIdsRT = "srcId:%Integer,externalId:%String";

///  <p>Retrieves all sources containing the given path ids.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByPathIds(ByRef result, domainid As %Integer, pathidlist As %List, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", sortByField As %String = "") As %Status
{
}

ClassMethod GetByPathsInternal(ByRef result, domainid As %Integer, ByRef pathlist, page As %Integer, pagesize As %Integer, filter As %iKnow.Filters.Filter, sortByField As %String) As %Status [ Internal ]
{
}

///  <p>Retrieves the number of sources containing the given path ids.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByPathIds(domainid As %Integer, pathidlist As %List, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

ClassMethod GetCountByPathsInternal(domainid As %Integer, ByRef pathlist, filter As %iKnow.Filters.Filter, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

Parameter GetSimilarRT = "srcId:%Integer,extId:%String,percentageMatched:%Numeric,percentageNew:%Numeric,nbOfEntsInRefSrc:%Integer,nbOfEntsInCommon:%Integer,nbOfEntsInSimSrc:%Integer,score:%Numeric";

///  <p>Retrieves those sources that have similar content to the one specified
///  through the <i>sourceId</i> parameter. Similarity is expressed by the (approximated)
///  ratio between the length of the source and the overlap with the starting source, based on the
///  chosen <i>algorithm</i> (according to the algorithm-specific <i>algorithmParams</i>).</p>
///  <p><b>Note:</b> whenever possible, use a filter object to limit the search space for this query to perform
///  adequately.</p>
///  <p>If the supplied Source ID is negative, it is treated as a Virtual Source. While this allows
///  looking for sources similar to a Virtual Source, the query will not verify against other
///  Virtual Sources and they will therefore not appear in the results of this query.</p>
///  <p>The <i>skipListIds</i> parameter allows a user to select one or more SkipLists of which the elements
///  should be completely ignored in the similarity algorithm. Skiplisted elements will be ignored
///  both for selecting similar candidates AND the calculation of their similarity score.</p>
///
///  <p>The following algorithms are currently available:</p>
///  <ul>
///  	<li>$$$SIMSRCSIMPLE: basic algorithm simply looking at entities (or CRCs or CCs)
/// 				present in the reference source.<br/>Parameters:<ol>
///  			<li>targetType As %String - either "ent", "crc" or "cc" (case insensitive,
/// 				defaults to "ent"). Please note this implies the result columns will
/// 					represent the corresponding targets, despite being named "nbOf<i>Ent</i>***"</li>
/// 				</ol></li>
///  	<!--li>$$$SIMSRCEQUIVS: similar to $$$SIMSRCSIMPLE, but also taking into account equivalent terms.
///  			<br/>Parameters:<ol>
///  			<li>equivSetId As %Integer - equivalency set ID</li>
///  			</ol></li-->
///  	<li>$$$SIMSRCDOMENTS starts looking for similar sources based on dominant terms
///  			in the reference source.<br/>Parameters:<ol>
///  			<li>strict As %Boolean - whether or not to select only sources for which at least one of
///  			the reference source's dominant concepts are also dominant in a similar source. (defaults to 1)</li>
///  			</ol></li>
///  </ul>
ClassMethod GetSimilar(ByRef result, domainid As %Integer, sourceid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "", algorithm As %String = {$$$SIMSRCSIMPLE}, algorithmParams As %List = "", skipListIds As %List = "") As %Status
{
}

Parameter GetAttributesRT = "attTypeId:%Integer,attType:%String,level:%Integer,targetId:%Integer,startPos:%Integer,span:%Integer,properties:%String";

/// <p>Returns all the attributes of the Entity Occurrences, Paths and Sentences enclosed in the
/// specified source, optionally filtered by level through <var>pLevel</var> and/or <var>pType</var>.</p>
/// <p>Please note the <i>startPos</i> and <i>span</i> result columns refer to positions within
/// the path for path-level attributes (level=$$$IKATTLVLPATH) and sentence positions for the
/// other attributes (level=$$$IKATTLVLSENT).</p>
ClassMethod GetAttributes(ByRef pResult, pDomainId As %Integer, pSrcId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pTypes As %List = "", pLevel As %Integer = {$$$IKATTLVLANY}) As %Status
{
}

}
