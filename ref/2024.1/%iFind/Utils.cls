/// This class offers a number of utility methods for working with %iFind
Class %iFind.Utils Extends %iFind.FindUtils [ System = 4 ]
{

/// <p>Normalizes the supplied <var>pSearchString</var> into an unambiguous combination of atomic
/// search strings, combined with AND, OR and NOT operators and appropriately surrounded by
/// parentheses for clarifying operator precedence.</p>
/// <example language="SQL">SELECT %iFind.NormalizeSearchString('abc or (def* and not xyz)')</example>
/// <p>See also <method>TestSearchString</method></p>
ClassMethod NormalizeSearchString(pSearchString As %String, Output pSC As %Status) As %String [ SqlName = NormalizeSearchString, SqlProc ]
{
}

/// <p>Validates whether the supplied <var>pSearchString</var> is correct according to iFind search
/// syntax rules, returning a <class>%Status</class> object capturing the correctness ($$$OK if the
/// supplied string is valid, an error code if it is not).</p>
/// <example language="SQL">SELECT %iFind.TestSearchString('abc or (def* and not xyz)')</example>
/// <p>This method will also return a cleaned and unambiguous version of the search string through
/// the <var>pNormalized</var> output argument. See also <method>NormalizeSearchString</method>.</p>
///
ClassMethod TestSearchString(pSearchString As %String, Output pNormalizedString As %String, Output pDidYouMean As %String) As %Status [ SqlName = TestSearchString, SqlProc ]
{
}

/// Rebuild the all iFind indices on the system (in all namespaces), optionally filtered to index class
/// <var>indexType</var>
ClassMethod RebuildFullIndices(indexType As %String = "") [ Deprecated, Internal ]
{
}

/// Rebuild all iFind indices in the specified namespace, defaulting to the current namespace.
/// Optionally filter indices to index class <var>indexType</var>
ClassMethod RebuildFullIndicesInNamespace(namespace As %String = {$namespace}, indexType As %String = "") [ Deprecated, Internal ]
{
}

/// returns all iFind indices in the namespace
ClassMethod GetIndicesInNamespaceExecute(ByRef qHandle As %Binary, namespace As %String = {$namespace}, indexType As %String = "") As %Status [ Internal ]
{
}

ClassMethod GetIndicesInNamespaceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetIndicesInNamespaceExecute ]
{
}

ClassMethod GetIndicesInNamespaceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetIndicesInNamespaceExecute ]
{
}

/// Returns all iFind indices in <var>class</var>
ClassMethod GetIndicesInClassExecute(ByRef qHandle As %Binary, namespace As %String = {$namespace}, class As %String, indexType As %String = "%iFind.Index") As %Status [ Internal ]
{
}

ClassMethod GetIndicesInClassClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetIndicesInClassExecute ]
{
}

ClassMethod GetIndicesInClassFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetIndicesInClassExecute ]
{
}

/// returns all indices of a type in the complete system
ClassMethod GetIndicesExecute(ByRef qHandle As %Binary, indexType As %String = "") As %Status [ Internal ]
{
}

ClassMethod GetIndicesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetIndicesExecute ]
{
}

ClassMethod GetIndicesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetIndicesExecute ]
{
}

/// <p>Utility function to retrieve words "similar" to the supplied search string, that have occurred
/// in indexing results for this namespace. For the <var>pSearchValue</var> argument, the same
/// syntax is available as for regular word search in an iFind search call, where now the matching
/// words rather than records containing them will be retrieved. Composite search syntax (AND, OR, NOT)
/// is not supported.</p>
/// <p><var>pSearchOption</var> supports the same values as for a regular iFind search ($$$IFSEARCHNORMAL,
/// $$$IFSEARCHSTEMMED, $$$IFSEARCHDECOMPOUNDED, $$$IFSEARCHPATTERN and $$$IFSEARCHFUZZY), although
/// in the case of stemmed or decompounded search, the results will be limited to those word forms
/// having been indexed by an iFind index with stemming resp decompounding enabled in this namespace.
/// For these two options, the <var>pLanguage</var> argument is also required (but ignored for other
/// search modes).</p>
/// <p>The <var>pStrippedWordsOnly</var> flag can be used to only retrieve words that have been stripped
/// of all leading and trailing punctuation (default) or include all actual forms as encountered
/// by iFind indices in this namespace given their respective punctuation-stripping settings.</p>
/// <p>Note that this method only retrieves words appearing in indices whose shared data is stored
/// namespace-wide (the default). See also the IFINDSHAREDSTORAGELOCATION parameter in
/// <class>%iFind.Index.Basic</class>.</p>
/// <p>Utility function to retrieve entities "similar" to the supplied search string, that have occurred
/// in indexing results for this namespace. For the <var>pSearchValue</var> argument, the same
/// syntax is available as for regular word search in an iFind search call for each word "position"
/// in the supplied search string. For example, the following request will retrieve entities such as
/// "matched words", "matching word" and "all matching words":</p>
/// <example language="SQL">CALL %iFind.FindEntities('match* word*')</example>
/// <p>Composite search syntax (AND, OR, NOT) is not supported, but you can use a lone asterisk to
/// accept <i>any</i> at a given position.</p>
/// <p><var>pSearchOption</var> supports the same values as for a regular iFind search ($$$IFSEARCHNORMAL,
/// $$$IFSEARCHSTEMMED, $$$IFSEARCHDECOMPOUNDED, $$$IFSEARCHPATTERN and $$$IFSEARCHFUZZY), although
/// in the case of stemmed or decompounded search, the results will be limited to those entity forms
/// having been indexed by an iFind index with stemming resp decompounding enabled in this namespace.
/// For these two options, the <var>pLanguage</var> argument is also required (but ignored for other
/// search modes).</p>
/// <p>The <var>pStrippedEntitiesOnly</var> flag can be used to only retrieve entities that have been stripped
/// of all (per-word) leading and trailing punctuation (default) or include all actual entities as encountered
/// by iFind indices in this namespace given their respective punctuation-stripping settings.</p>
/// <p>To filter or sort these results according to a particular index, the (Analytic) index will have
/// to have its IFINDADVANCED parameter set to 2, so this procedure's results can be JOINed to the
/// generated "EntSpread" table. For example, with a table <tt>Experiment.IFData</tt> and iFind
/// index <tt>iText</tt>:</p>
/// <example language="SQL">SELECT
/// 	e.EntityId, e.Entity, s.Spread
/// FROM
/// 	%iFind.FindEntities('a*') e
/// 	JOIN Experiment_IFData.IFData_iText_EntSpread s
/// 		ON e.EntityId = s.EntityId
/// ORDER BY Spread DESC</example>
/// <p>Note that this method only retrieves entities appearing in indices whose shared data is stored
/// namespace-wide (the default). See also the IFINDSHAREDSTORAGELOCATION parameter in
/// <class>%iFind.Index.Basic</class>.</p>
/// Internal utility method for retrieving the default set of index parameters
ClassMethod GetDefaultIndexParams(Output pParams) [ Internal ]
{
}

/// <p>This SQL function returns a score for how well record <var>pRecordId</var> matches the supplied search
/// string <var>pSearchString</var>, according to the ranker implementation <var>pRankerClass</var>.
/// This method can be invoked through SQL directly to override the default ranker class used by
/// the Rank procedure that's generated automatically on the iFind-indexed class.</p>
/// <example language="SQL">SELECT %ID,
/// 	Title,
/// 	FullText,
/// 	%iFind.Rank('%iFind.Rank.TFIDF', 'SomePackage.TheTable', 'MyIndex', %ID, 'cocktail* OR (hammock AND NOT bees)') As Rank
/// FROM SomePackage.TheTable
/// WHERE %ID %FIND search_index(MyIndex, 'cocktail* OR (hammock AND NOT bees)')
/// ORDER BY 4 DESC</example>
/// <p>See also <class>%iFind.Rank.Abstract</class>.</p>
ClassMethod Rank(pRankerClass As %String = {$$$IFDEFAULTRANKER}, pClassName As %String, pIndexName As %String, pRecordId As %RawString, pSearchString As %String, pSearchOptions As %String = {$$$IFSEARCHNORMAL}, Output pSC As %Status) As %Float [ SqlName = Rank, SqlProc ]
{
}

/// <p>This SQL procedure returns a marked-up version of <var>pText</var>, in which all matches of the
/// supplied <var>pSearchString</var> are highlighted using <var>pTags</var>.</p>
/// <example language="SQL">SELECT %iFind.Highlight('Great cocktails by the pool, but the bees were a bit of a bummer.', 'cocktail* OR (hammock AND NOT bees)')</example>
/// <p><var>pTags</var> is a comma-separated list of tags to use for highlighting. If only a single one
/// is supplied, it will be used to highlight all matches of search terms. If a second one is supplied,
/// it will be used for all terms in a NOT node of the search tree (such as 'bees' in the above example),
/// while the first will be used for all other terms.</p>
/// <p><var>pLimit</var> can be used to limit the text to a maximum number of hits rather than returning
/// the entire, highlighted text. <var>pSearchOption</var> can be used as in other iFind search operations,
/// for example to also mark fuzzy matches or stem matches.</p>
ClassMethod Highlight(pText As %String, pSearchString As %String, pSearchOption As %String = {$$$IFSEARCHNORMAL}, pTags As %String = {$$$IFDEFAULTHLTAGS}, pLimit As %Integer = 0, pLanguage As %String = "en", Output pSC As %Status) As %String [ SqlName = Highlight, SqlProc ]
{
}

/// pFullText is the text annotated with pTag
/// pLocations("pStartLocation") = pEndLocation
ClassMethod FindWordPositionHelper(pFullText As %String, Output pLocations, pOpenTag As %String, pEndTag As %String) As %Status [ Internal, Private ]
{
}

/// pWordLocations(wordId,startlocation) = endLocation, the wordId is not the wordId stored in iFind global,
/// it is just the index of the phrase in the proximity search phrases.
/// pHighlightLocations(idx)= start_pos_":"_end_pos
/// By definition, there will no overlapped proximity phrase.
ClassMethod CooccurrenceSearchInternal(ByRef pWordLocations, Output pHighlightLocations, pLower As %Integer, pUpper As %Integer, pFullText As %String, pNegated As %Integer) As %Status [ Internal, Private ]
{
}

/// Internal helper method, do not invoke directly.
ClassMethod HighlightInternal(pIndexLocation As %String, pDataLocation As %String, pFinderClass As %String, pRecordID As %RawString, pFullText As %String, pSearchString As %String, pSearchOption As %String = {$$$IFSEARCHNORMAL}, pTags As %String = {$$$IFDEFAULTHLTAGS}, pLimit As %Integer = 0, ByRef pParams, Output pSC As %Status, pLanguage As %String = "") As %String [ Internal ]
{
}

/// Either return a simple string through pTransformed, or an array of compounding words
ClassMethod ApplyTransformation(Output pTransformed As %String, ByRef pString, pSpec As %String, pLanguage As %String = "") [ Internal ]
{
}

/// Helper method override for %iFind.FindUtils
ClassMethod GetIndexParams(Output pParams) [ Internal, Private ]
{
}

/// Parse the TRANSFORMATIONSPEC value from the supplied index parameters,
/// taking care of interpreting INDEXOPTION and STEMMINGCONFIG for legacy classes.
ClassMethod GetTransformationSpecFromParams(ByRef pIndexParams, pSearchLanguage As %String = "") As %String [ Internal ]
{
}

/// Internal normalization wrapper around engine invocation
ClassMethod NormalizeString(pString As %String, pLanguage As %String = "", ByRef pIndexParams, pIndexer As %iKnow.Indexer = "", pSkipUserDictionary As %Boolean = 0, pCleanPunctuation As %Boolean = 0) As %String [ Internal ]
{
}

/// Internal method to quote table identifiers
/// Parts of iKnow/iFind use %DeepSee.Utils:%GetSQLTableName() to grab a table name for a class
/// and that method does not perform quoting of delimited identifiers, so it is up to the calling to do so
ClassMethod QuoteDelimitedIdentifier(pTableName As %String) As %String [ Internal ]
{
}

}
