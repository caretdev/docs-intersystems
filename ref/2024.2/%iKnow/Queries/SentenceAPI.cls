/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// Main Query API class to retrieve sentence information.
Class %iKnow.Queries.SentenceAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

/// <p>This method rebuilds a sentence based on the literals and entities it is composed of.</p>
/// <p>The string returned is the first part, up to the maximum string length, whereas the
/// output parameter <i>fullSentence</i> is an array containing all the parts in the right order, containing
/// a %Boolean value at the top level indicating whether the returned string is the full sentence (1)
/// or (if 0) the user should have to look into this array to learn the full sentence.</p>
/// <p>If a Virtual Source ID is specified, the sentence ID is treated as a virtual one, in the
/// context of the supplied vSrcId.</p>
ClassMethod GetValue(domainid As %Integer, sentenceid As %Integer, Output fullSentence As %Boolean = 1, vSrcId As %Integer = 0) As %String(MAXLEN=32767)
{
}

/// Returns the source ID in which the supplied sentence ID occurs
ClassMethod GetSourceId(domainId As %Integer, sentenceId As %Integer) As %Integer
{
}

/// Returns the position within the source this sentence occurs at (1-based).
ClassMethod GetPosition(domainId As %Integer, sentenceId As %Integer, vSrcId As %Integer = 0) As %Integer
{
}

/// Returns the literal of the entity or nonrelevant at the specified position.
ClassMethod GetPartLiteral(domainId As %Integer, sentenceId As %Integer, position As %Integer, vSrcId As %Integer = 0) As %String
{
}

/// <p>Retrieves the language of the given sentence, as derived by the Automatic Language Identification
/// algorithm or, if ALI was disabled, the language specified when indexing this sentence.</p>
/// <p>The confidence level is returned as well through an output parameter.
/// If the confidence level is 0, this means ALI was not used and the language was defined by the
/// user loading the source.</p>
/// <p>If a Virtual Source ID is specified, the sentence ID is treated as a virtual one, in the
/// context of the supplied vSrcId.</p>
ClassMethod GetLanguage(domainid As %Integer, sentenceid As %Integer, Output confidence As %Numeric = "", vSrcId As %Integer = 0) As %String
{
}

Parameter GetPartsRT = "entOccId:%Integer,entUniId:%Integer,literal:%String,role:%Integer,stemUniId:%Integer";

/// <p>Returns the elements (concepts, relations and nonrelevants) that make up the sentence,
/// optional including markers for the beginning and end of any CRCs or Paths in the sentence. This
/// information can be used to display the sentence value (see also <method>GetValue</method>)
/// and/or highlight specific elements of interest.</p>
/// <blockquote>Output structure:
/// <pre>result(pos) = $lb(entOccId, entUniId, entity, role)</pre>
/// when includeCRCMarkers = 1, adds
/// <pre>result(pos, [CRCHEAD | CRCRELATION | CRCTAIL]) = $lb(crcOccId, crcUniId)</pre>
/// when includePathMarkers = 1, adds
/// <pre>result(pos, [PATHBEGIN | PATHEND]) = $lb(pathId)</pre>
/// </blockquote>
/// <p>Note: the subscript levels for CRC and Path markers are not available in the QAPI and WSAPI
/// versions of this query.</p>
/// <p>If a Virtual Source ID is specified, the sentence ID is treated as a virtual one, in the
/// context of the supplied vSrcId.</p>
ClassMethod GetParts(ByRef result, domainid As %Integer, sentenceid As %Integer, includeCRCMarkers As %Boolean = 0, includePathMarkers As %Boolean = 0, vSrcId As %Integer = 0) As %Status
{
}

Parameter GetBySourceRT = "sentId:%Integer,sentenceValue:%String,sentenceIsTruncated:%Boolean";

/// Returns the sentences for the given source. A negative source ID is interpreted as a Virtual Source.
ClassMethod GetBySource(ByRef result, domainid As %Integer, sourceid As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %Status
{
}

/// <p>Returns the total number of sentences for a given domain, optionally filtered to those sources
/// satisfying a <class>%iKnow.Filters.Filter</class> object passed in through <i>filter</i>.</p>
ClassMethod GetCountByDomain(domainid As %Integer, filter As %iKnow.Filters.Filter = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

/// <p>Returns the total number of sentences for the given sources. Negative Source IDs are
/// interpreted as referring to Virtual Sources.</p>
ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %List, Output sc As %Status = {$$$OK}) As %Integer
{
}

Parameter GetByEntitiesRT = "srcId:%Integer,externalId:%String,sentId:%Integer,sentenceValue:%String";

/// <p>This method will retrieve all sentences containing any (if <i>setop</i> = $$$UNION) or all
/// (if <i>setop</i> = $$$INTERSECT) of the entities supplied through <i>entitylist</i>, optionally limited to
/// all sentences in records satisfying <var>filter</var>.
/// For querying Virtual Sources, set <var>filter</var> to a single, negative integer.</p>
/// <p>If stemming is enabled for this domain through $$$IKPSTEMMING, sentences containing any actual
/// form of the entities in <var>entityList</var> will be returned. Use <var>pActualFormOnly</var>=1
/// to retrieve only those sentences containing the actual forms in <var>entitylist</var>. This
/// argument is ignored if stemming is not enabled.</p>
ClassMethod GetByEntities(ByRef result, domainid As %Integer, entitylist As %List, filter As %iKnow.Filters.Filter = "", page As %Integer = 1, pagesize As %Integer = 10, setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status
{
}

Parameter GetByEntityIdsRT = "srcId:%Integer,externalId:%String,sentId:%Integer,sentenceValue:%String";

/// <p>Retrieves all sentences containing the given entity IDs., optionally limited to
/// all sentences in records satisfying <var>filter</var>.
/// For querying Virtual Sources, set <var>filter</var> to a single, negative integer.
/// In this case, <var>entityidlist</var> is expected to contain virtual Entity IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByEntityIds(ByRef result, domainid As %Integer, entityidlist As %List, filter As %iKnow.Filters.Filter = "", page As %Integer = 1, pagesize As %Integer = 10, setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status
{
}

ClassMethod GetByEntitiesInternal(ByRef result, domainid As %Integer, ByRef entitylist, filter As %iKnow.Filters.Filter, page As %Integer, pagesize As %Integer, setop As %Integer) As %Status [ Internal ]
{
}

/// <p>Retrieves the number of sentences containing the given entities, optionally limited to
/// all sentences in records satisfying <var>filter</var>.
/// For querying Virtual Sources, set <var>filter</var> to a single, negative integer.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntities(domainid As %Integer, entitylist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

/// <p>Retrieves the nubmer of sentences containing the given entity ids.
/// For querying Virtual Sources, set <var>filter</var> to a single, negative integer.
/// In this case, <var>entityidlist</var> is expected to contain virtual Entity IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
/// <p>If stemming is enabled for this domain through $$$IKPSTEMMING, sources containing any actual
/// form of the entities in <var>entityidlist</var> will be returned. Use <var>pActualFormOnly</var>=1
/// to retrieve only those sources containing the actual forms in <var>entityidlist</var>. This
/// argument is ignored if stemming is not enabled.</p>
ClassMethod GetCountByEntityIds(domainid As %Integer, entityidlist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

ClassMethod GetCountByEntitiesInternal(domainid As %Integer, ByRef entitylist, filter As %iKnow.Filters.Filter, setop As %Integer, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

Parameter GetByCrcsRT = "srcId:%Integer,externalId:%String,sentId:%Integer,sentenceValue:%String";

/// <p>Retrieves all sentences containing the given CRCs, optionally limited to
/// all sentences in records satisfying <var>filter</var>.
/// For querying Virtual Sources, set <var>filter</var> to a single, negative integer.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByCrcs(ByRef result, domainid As %Integer, crclist As %List, filter As %iKnow.Filters.Filter = "", page As %Integer = 1, pagesize As %Integer = 10, setop As %Integer = {$$$UNION}) As %Status
{
}

Parameter GetByCrcIdsRT = "srcId:%Integer,externalId:%String,sentId:%Integer,sentenceValue:%String";

/// <p>Retrieves all sentences containing the given CRC ids, optionally limited to
/// all sentences in records satisfying <var>filter</var>.
/// For querying Virtual Sources, set <var>filter</var> to a single, negative integer.
/// In this case, <var>crcidlist</var> is expected to contain virtual Entity IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByCrcIds(ByRef result, domainid As %Integer, crcidlist As %List, filter As %iKnow.Filters.Filter = "", page As %Integer = 1, pagesize As %Integer = 10, setop As %Integer = {$$$UNION}) As %Status
{
}

Parameter GetByCrcMaskRT = "srcId:%Integer,externalId:%String,sentId:%Integer,sentenceValue:%String";

/// <p>Retrieves all sentences containing a CRC satisfying the given CRC Mask, optionally limited to
/// all sentences in records satisfying <var>filter</var>.
/// For querying Virtual Sources, set <var>filter</var> to a single, negative integer.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByCrcMask(ByRef result, domainid As %Integer, head As %String = {$$$WILDCARD}, relation As %String = {$$$WILDCARD}, tail As %String = {$$$WILDCARD}, filter As %iKnow.Filters.Filter = "", page As %Integer = 1, pagesize As %Integer = 10, setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status
{
}

ClassMethod GetByCrcsInternal(ByRef result, domainid As %Integer, crcIdsGlob As %String, filter As %iKnow.Filters.Filter = "", page As %Integer, pagesize As %Integer, setop As %Integer) As %Status [ Internal ]
{
}

/// <p>Retrieves the number of sentences containing the given CRCs, optionally limited to
/// all sentences in records satisfying <var>filter</var>.
/// For querying Virtual Sources, set <var>filter</var> to a single, negative integer.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByCrcs(domainid As %Integer, crclist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}) As %Integer
{
}

/// <p>Retrieves the number of sentences containing the given CRC ids, optionally limited to
/// all sentences in records satisfying <var>filter</var>.
/// For querying Virtual Sources, set <var>filter</var> to a single, negative integer.
/// In this case, <var>crcidlist</var> is expected to contain virtual Entity IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByCrcIds(domainid As %Integer, crcidlist As %List, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}) As %Integer
{
}

/// <p>Retrieves the number of sentences containing a CRC satisfying the given CRC Mask, optionally limited to
/// all sentences in records satisfying <var>filter</var>.
/// For querying Virtual Sources, set <var>filter</var> to a single, negative integer.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByCrcMask(domainid As %Integer, head As %String = {$$$WILDCARD}, relation As %String = {$$$WILDCARD}, tail As %String = {$$$WILDCARD}, filter As %iKnow.Filters.Filter = "", setop As %Integer = {$$$UNION}, Output sc As %Status = {$$$OK}, pActualFormOnly As %Boolean = 0) As %Integer
{
}

ClassMethod GetCountByCrcsInternal(domainid As %Integer, crcIdsGlob As %String, filter As %iKnow.Filters.Filter = "", setop As %Integer, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

Parameter GetByPathIdsRT = "srcId:%Integer,externalId:%String,sentId:%Integer,sentenceValue:%String";

/// <p>Retrieves all sentences containing the given path IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByPathIds(ByRef result, domainid As %Integer, pathidlist As %List, sourceidlist As %List, page As %Integer = 1, pagesize As %Integer = 10) As %Status
{
}

ClassMethod GetByPathsInternal(ByRef result, domainid As %Integer, ByRef pathlist, sourceidlist As %List, page As %Integer, pagesize As %Integer) As %Status [ Internal ]
{
}

/// <p>Retrieves the number of sentences containing the given path IDs.</p>
/// <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByPathIds(domainid As %Integer, pathidlist As %List, sourceidlist As %List, Output sc As %Status = {$$$OK}) As %Integer
{
}

ClassMethod GetCountByPathsInternal(domainid As %Integer, ByRef pathlist, sourceidlist As %List, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

Parameter GetNewBySourceRT = "sentId:%Integer,sentenceValue:%String,score:%Numeric";

/// <p>Retrieves the sentences with the most significant concepts compared to the rest of the domain
/// (or optionally a subset thereof as filtered through <i>filter</i>). This array of sentences is
/// based on results of the GetNewBySource query in <class>%iKnow.Queries.EntityAPI</class>, using
/// the supplied algorithm and parameter values. The scores of the first [<i>newEntitiesWindow</i>]
/// concepts are aggregated across sentences to produce the result of this query.</p>
/// <p>Please refer to the documentation of the GetNewBySource query in
/// <class>%iKnow.Queries.EntityAPI</class> for more details on the parameters and available algorithms.</p>
ClassMethod GetNewBySource(ByRef result, domainid As %Integer, sourceid As %Integer, length As %Integer = 5, filter As %iKnow.Filters.Filter = "", algorithm As %String = {$$$NEWENTSIMPLE}, algorithmParams As %List = "", newEntitiesWindow As %Integer = 100, skipListIds As %List = "") As %Status
{
}

Parameter GetHighlightedEXP [ Internal ] = 0;

/// <h2>Highlighting</h2>
/// <p>This is a flexible method to highlight specific elements within a sentence using
/// user-supplied markup passed in through the <var>pHighlight</var> argument (by reference) in a
/// multidimensional form:
/// <example language="COS"> set pHighlight("FLAG") = "markup"
///  set pHighlight("FLAG", id) = "markup"
/// </example>
/// <p>The first option will highlight any element
/// of the type identified by "FLAG", the second option allows refining this to a particular instance,
/// identified by <i>id</i>, overriding any eventual definitions at the generic "FLAG" level.</p>
/// <p>Note: unless explicitly stated otherwise, all highlighting is based on the entity level.</p>
/// <h3>Markup options</h3>
/// <p>Any single (opening) HTML tag can be specified on the value side of <var>pHighlight</var> and will
/// automatically be wrapped around every entity. The closing tag will be automatically derived from the
/// opening tag supplied through <var>pHighlight</var>
/// <p>HTML markup supplied this way supports a basic means of annotating with metadata about the
/// particular thing being highlighted. Any occurrences of "$$$ID" in the HTML tag will be substituted
/// with the relevant identifier of what's being highlighted, such as entity IDs for entity markup,
/// CRC IDs for CRC markup or match IDs for dictionary matching markup. Most entity-level markup also
/// supports the $$$LITERAL tag to replace with the original text string for that entity.<br/>
/// For example, the following highlight spec would add links to an info page that takes entity IDs as a URL parameter:</p>
/// <example language="COS"> set tHighlight("ROLE", "concept") = "<a href=""Example.MyEntityViewer.cls?entity=$$$ID"">"</example>
/// <p>Note that in some cases, such as dictionary matches, ther may be multiple IDs associated with
/// the same highlighted entity. These will be provided as a comma-separated list replacing the $$$ID
/// placeholder.</p>
/// <p>As an alternative to HTML markup, you can also supply two-character strings that will be used
/// to wrap entities that need highlighting. For example, this array will put square brackets around
/// all concepts and curly braces around relationships:</p>
/// <example language="COS"> set tHighlight("ROLE", "concept") = "[]"
///  set tHighlight("ROLE", "relation") = "{}"</example>
/// <h3>Highlighting specific entities, CRCs and paths</h3>
/// <p>To highlight all occurrences of a particular entity, stem, CRC, CC or path, use the corresponding flag.
/// For entities, you can also supply the string value (except when the string value is an integer number itself).
/// <example language="COS"> set tHighlight("ENTITY", 123) = "<b>"
///  set tHighlight("ENTITY", "snow storm") = "<b>"
///  set tHighlight("STEM", 234) = "<strong title=""$$$LITERAL"">"
///  set tHighlight("CRC", 345) = "<u>"
///  set tHighlight("PATH", 456) = "<span style='border: 1px solid blue;'>"</example>
/// <h3>Highlighting based on role</h3>
/// <p>The "ROLE" flag can be used to mark concepts, relations and non-relevants, either by using
/// the corresponding integer code (i.e. $$$ENTTYPECONCEPT) or a simple string value. Note that
/// in some cases, some words inside a relationship entity may be marked as non-relevant. These will be
/// highlighted at the word level (only if there is a specific highlighting spec for non-relevants)
/// and are an exception to the general rule that all highlighting happens at the entity level.</p>
/// <example language="COS"> set tHighlight("ROLE", "concept") = "<c>"
///  set tHighlight("ROLE", "relation") = "<r>"
///  set tHighlight("ROLE", "non-relevant") = "()"
///  set tString = "The newspaper published the article and it sold very well."
///  write $system.iKnow.Highlight(tString, .tHighlight)</example>
/// <p>The above example would print: </p>
/// <blockquote><pre>(The) &lt;c&gt;newspaper&lt;/c&gt; &lt;r&gt;published&lt;/r&gt; (the) &lt;c&gt;article&lt;/c&gt; &lt;r&gt;and (it) sold very well&lt;/r&gt;.</pre></blockquote>
/// <h3>Highlighting based on attributes</h3>
/// <p>Attributes can be highlighted at two levels. Using the regular "ATTRIBUTE" flag will highlight
/// all entities affected by the attribute specified by attribute ID (such as $$$IKATTNEGATION).
/// However, some attributes support more fine-grained annotation at the word level, marking those
/// words that actually caused the attribute to apply to an entity or part of a path. These can be
/// highlighted individually through the "ATTRIBUTEWORDS" flag and are an exception to the general
/// rule that highlighting happens per-entity.</p>
/// <example language="COS"> set tHighlight("ATTRIBUTE", $$$IKATTNEGATION) = "<span style='color: red;'>"
///  set tHighlight("ATTRIBUTEWORDS", $$$IKATTNEGATION) = "<u>"
///  set tString = "The landlord doesn't accept late payments, but makes exceptions for students."
///  write $system.iKnow.Highlight(tString, .tHighlight)</example>
/// <p>The above example would display as: </p>
/// <blockquote>The <span style='color: red;'>landlord</span> <span style='color: red;'><u>doesn&#39;t</u> accept</span> <span style='color: red;'>late payments</span>, but makes exceptions for students.</blockquote>
/// <p>For some attributes, such as certain expressions of measurements, the engine is able to extract
/// additional data elements which are exposed as "measurement properties". You can include these properties
/// in your highlighted text by including the $$$PROPERTIES placeholder. Note that these are typically
/// identified for the word level.</p>
/// <h3>Highlighting based on matching results</h3>
/// <p>Dictionary matches can be highlighted using the "MATCH" flag, optionally restricted to a particular
/// dictionary ID. To refine to a particular dictionary item, use the "MATCHITEM" flag. Highlighting can
/// further be refined to distinguish based on full or partial matches using the "FULL" and "PARTIAL"
/// flags as an additional subscript. Please note this is a refinement and the parent node (ID-specific or
/// generic) should contain a value:</p>
/// <p>Additional information about the matches themselves is available through the metadata rewrite
/// mechanism: $$$TERM, $$$TERMID, $$$ITEM, $$$ITEMID, $$$ITEMURI, $$$DICT, $$$DICTID. Note that
/// the regular $$$ID markers will be replaced with dictionary match IDs, not the IDs of the Dictionary or Dictionary Items.</p>
/// <example language="COS"> set tHighlight("MATCH") = "<a href=""Example.MoreInfo.zen?uri=$$$ITEMURI"" style='border: 1px solid Tomato;' >"
///  set tHighlight("MATCH", "FULL") = "<a href=""Example.MoreInfo.zen?uri=$$$ITEMURI""style='background-color: Tomato'>"
///  set tHighlight("MATCHITEM", 123) = "<a href=""Example.MoreInfo.zen?uri=$$$ITEMURI"" style='border: 1px solid Lime;'>"</example>
/// <h3>Highlighting based on character position</h3>
/// <p>If external tooling provided annotations based on character positions, use the "CHARS" flag to
/// highlight those annotations by providing the start and end positions as second and third subscripts
/// of the highlight spec array. This will highlight the entities "covering" these start and end
/// positions, starting with the entity which includes the character at the designated start position
/// and ending with the entity including the character at the designated end position.</p>
/// <example language="COS"> set tHighlight("CHARS", 13, 21) = "<a href=""www.imdb.com/title/tt1636826/"">"
///  set tHighlight("CHARS", 71, 75) = "<a href=""http://www.haren.nl/"">"
///  set tString = "The instant Project X party was not well-received by the cummunity of Haren in the Netherlands."
///  write $system.iKnow.Highlight(tString, .tHighlight)
/// </example>
/// <p>The above example will annotate the entire entities "instant Project X party" and "Haren".</p>
/// <p>Note that the iKnow indexing engine in certain cases may modify input text while processing text
/// and therefore, character position based informations from external sources that based themselves
/// on the original text, may no longer point to the expected positions. The two most important cases
/// where this can happen is when User Dictionaries are used to rewrite the input explicitly or when
/// duplicate whitespace is normalized by the engine. To work around this issue, present the output of
/// the iKnow engine (as retrieved through <method>GetValue</method> to these external tools to be sure
/// the same normalizations are applied.</p>
/// <p>In cases where the externally provided character positions span more than a single sentence,
/// you can pass an offset as the data element of the main "CHARS" node to mark the character position
/// that corresponds the start of this sentence. This should be easier than recalculating all character
/// positions and allows you to reuse the entire array for successive calls to <method>GetHighlighted</method>.
/// <h3>Style precedence</h3>
/// <p>For the purpose of HTML styling precedence, this is the order in which tags are
/// wrapped around entities, from innermost to outermost:
/// <ol>
/// 		<li>ATTRIBUTEWORDS (wrapped around individual words)</li>
/// 		<li>ATTRIBUTE - ID-specific (attribute type ID)</li>
/// 		<li>ATTRIBUTE - generic</li>
/// 		<li>ENTITY - ID-specific</li>
/// 		<li>STEM - ID-specific</li>
/// 		<li>CRC - ID-specific</li>
/// 		<li>CC - ID-specific</li>
/// 		<li>MATCHITEM - ID-specific (dictionary item ID)</li>
/// 		<li>MATCH - ID-specific (dictionary ID)</li>
/// 		<li>MATCHITEM - generic</li>
/// 		<li>MATCH - generic</li>
/// 		<li>PATH - ID-specific</li>
/// 		<li>ROLE - ID-specific (role)</li>
/// 		<li>CHARS</li>
/// </ol></p>
///
ClassMethod GetHighlighted(pDomainId As %Integer, pSentenceId As %Integer, ByRef pHighlight = "", vSrcId As %Integer = 0, Output pFullSentence = "", Output pSC As %Status = {$$$OK}, pEscapeHTML As %Boolean = 1) As %String
{
}

Parameter GetAttributesRT = "attTypeId:%Integer,attType:%String,start:%Integer,span:%Integer,wordPositions:%String,properties:%String,level:%Integer";

/// <p>Returns all attributes for a given sentence. By default, only entity-level attributes are
/// returned, with the <i>wordPositions</i> result column referring which words within the affected
/// entities are actually attributed. Using <var>pIncludePathAttributes</var>, also path-level
/// attributes (such as implied negation) can be returned, but these will have no values for the
/// <i>wordPositions</i> column. Also note that the <i>start</i> and <i>span</i> columns for
/// path-level results will refer to positions within those paths and not entity positions within
/// the sentence. See also <method>GetAttributes</method> in <class>%iKnow.Queries.PathAPI</class>
/// and <method>GetOccurrenceAttributes</method> in <class>%iKnow.Queries.EntityAPI</class>.</p>
/// <p>Any named attribute properties are also
/// included through sub-nodes (not available through SQL or SOAP):
/// <blockquote>pResult(<i>rowNumber</i>, <i>propertyName</i>) = <i>propertyValue</i></blockquote></p>
/// <p>The returned <var>wordPositions</var> apply to the entities starting from <var>start</var>
/// up to <var>offset</var> and only extend to the last attributed word position (there might
/// be more words within the entity).</p>
ClassMethod GetAttributes(ByRef pResult, pDomainId As %Integer, pSentId As %Integer, vSrcId As %Integer = 0, pIncludePathAttributes As %Boolean = 0) As %Status
{
}

}
