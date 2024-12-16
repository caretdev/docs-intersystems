"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[45956],{6038:(e,n,i)=>{i.r(n),i.d(n,{contentTitle:()=>r,default:()=>d,frontMatter:()=>a,toc:()=>l});var s=i(74848),t=i(28453);const a={pagination_prev:null,pagination_next:null},r="%iFind.Utils",l=[{value:"Methods",id:"methods",level:2},{value:"NormalizeSearchString",id:"normalizesearchstring",level:3},{value:"TestSearchString",id:"testsearchstring",level:3},{value:"RebuildFullIndices",id:"rebuildfullindices",level:3},{value:"RebuildFullIndicesInNamespace",id:"rebuildfullindicesinnamespace",level:3},{value:"GetIndicesInNamespaceExecute",id:"getindicesinnamespaceexecute",level:3},{value:"GetIndicesInNamespaceClose",id:"getindicesinnamespaceclose",level:3},{value:"GetIndicesInNamespaceFetch",id:"getindicesinnamespacefetch",level:3},{value:"GetIndicesInClassExecute",id:"getindicesinclassexecute",level:3},{value:"GetIndicesInClassClose",id:"getindicesinclassclose",level:3},{value:"GetIndicesInClassFetch",id:"getindicesinclassfetch",level:3},{value:"GetIndicesExecute",id:"getindicesexecute",level:3},{value:"GetIndicesClose",id:"getindicesclose",level:3},{value:"GetIndicesFetch",id:"getindicesfetch",level:3},{value:"GetDefaultIndexParams",id:"getdefaultindexparams",level:3},{value:"Rank",id:"rank",level:3},{value:"Highlight",id:"highlight",level:3},{value:"FindWordPositionHelper",id:"findwordpositionhelper",level:3},{value:"CooccurrenceSearchInternal",id:"cooccurrencesearchinternal",level:3},{value:"HighlightInternal",id:"highlightinternal",level:3},{value:"ApplyTransformation",id:"applytransformation",level:3},{value:"GetIndexParams",id:"getindexparams",level:3},{value:"GetTransformationSpecFromParams",id:"gettransformationspecfromparams",level:3},{value:"NormalizeString",id:"normalizestring",level:3},{value:"QuoteDelimitedIdentifier",id:"quotedelimitedidentifier",level:3}];function c(e){const n={code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"ifindutils",children:"%iFind.Utils"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iFind.Utils Extends %iFind.FindUtils [ System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This class offers a number of utility methods for working with %iFind"}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"normalizesearchstring",children:"NormalizeSearchString"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod NormalizeSearchString(pSearchString As %String, Output pSC As %Status) As %String [ SqlName = NormalizeSearchString, SqlProc ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Normalizes the supplied pSearchString into an unambiguous combination of atomic search strings, combined with AND, OR and NOT operators and appropriately surrounded by parentheses for clarifying operator precedence."}),"\n",(0,s.jsx)(n.p,{children:(0,s.jsx)(n.code,{children:"SELECT %iFind.NormalizeSearchString('abc or (def* and not xyz)')"})}),"\n",(0,s.jsx)(n.p,{children:"See also TestSearchString"}),"\n",(0,s.jsx)(n.h3,{id:"testsearchstring",children:"TestSearchString"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod TestSearchString(pSearchString As %String, Output pNormalizedString As %String, Output pDidYouMean As %String) As %Status [ SqlName = TestSearchString, SqlProc ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Validates whether the supplied pSearchString is correct according to iFind search syntax rules, returning a %Status object capturing the correctness ($$$OK if the supplied string is valid, an error code if it is not)."}),"\n",(0,s.jsx)(n.p,{children:(0,s.jsx)(n.code,{children:"SELECT %iFind.TestSearchString('abc or (def* and not xyz)')"})}),"\n",(0,s.jsx)(n.p,{children:"This method will also return a cleaned and unambiguous version of the search string through the pNormalized output argument. See also NormalizeSearchString."}),"\n",(0,s.jsx)(n.h3,{id:"rebuildfullindices",children:"RebuildFullIndices"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod RebuildFullIndices(indexType As %String = "") [ Deprecated, Internal ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"Rebuild the all iFind indices on the system (in all namespaces), optionally filtered to index class indexType"}),"\n",(0,s.jsx)(n.h3,{id:"rebuildfullindicesinnamespace",children:"RebuildFullIndicesInNamespace"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod RebuildFullIndicesInNamespace(namespace As %String = {$namespace}, indexType As %String = "") [ Deprecated, Internal ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"Rebuild all iFind indices in the specified namespace, defaulting to the current namespace. Optionally filter indices to index class indexType"}),"\n",(0,s.jsx)(n.h3,{id:"getindicesinnamespaceexecute",children:"GetIndicesInNamespaceExecute"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod GetIndicesInNamespaceExecute(ByRef qHandle As %Binary, namespace As %String = {$namespace}, indexType As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"returns all iFind indices in the namespace"}),"\n",(0,s.jsx)(n.h3,{id:"getindicesinnamespaceclose",children:"GetIndicesInNamespaceClose"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetIndicesInNamespaceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetIndicesInNamespaceExecute ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getindicesinnamespacefetch",children:"GetIndicesInNamespaceFetch"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetIndicesInNamespaceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetIndicesInNamespaceExecute ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getindicesinclassexecute",children:"GetIndicesInClassExecute"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod GetIndicesInClassExecute(ByRef qHandle As %Binary, namespace As %String = {$namespace}, class As %String, indexType As %String = "%iFind.Index") As %Status [ Internal ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"Returns all iFind indices in class"}),"\n",(0,s.jsx)(n.h3,{id:"getindicesinclassclose",children:"GetIndicesInClassClose"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetIndicesInClassClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetIndicesInClassExecute ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getindicesinclassfetch",children:"GetIndicesInClassFetch"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetIndicesInClassFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetIndicesInClassExecute ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getindicesexecute",children:"GetIndicesExecute"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod GetIndicesExecute(ByRef qHandle As %Binary, indexType As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"returns all indices of a type in the complete system"}),"\n",(0,s.jsx)(n.h3,{id:"getindicesclose",children:"GetIndicesClose"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetIndicesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetIndicesExecute ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getindicesfetch",children:"GetIndicesFetch"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetIndicesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetIndicesExecute ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getdefaultindexparams",children:"GetDefaultIndexParams"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetDefaultIndexParams(Output pParams) [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:'Utility function to retrieve words "similar" to the supplied search string, that have occurred in indexing results for this namespace. For the pSearchValue argument, the same syntax is available as for regular word search in an iFind search call, where now the matching words rather than records containing them will be retrieved. Composite search syntax (AND, OR, NOT) is not supported.'}),"\n",(0,s.jsx)(n.p,{children:"pSearchOption supports the same values as for a regular iFind search ($$$IFSEARCHNORMAL, $$$IFSEARCHSTEMMED, $$$IFSEARCHDECOMPOUNDED, $$$IFSEARCHPATTERN and $$$IFSEARCHFUZZY), although in the case of stemmed or decompounded search, the results will be limited to those word forms having been indexed by an iFind index with stemming resp decompounding enabled in this namespace. For these two options, the pLanguage argument is also required (but ignored for other search modes)."}),"\n",(0,s.jsx)(n.p,{children:"The pStrippedWordsOnly flag can be used to only retrieve words that have been stripped of all leading and trailing punctuation (default) or include all actual forms as encountered by iFind indices in this namespace given their respective punctuation-stripping settings."}),"\n",(0,s.jsx)(n.p,{children:"Note that this method only retrieves words appearing in indices whose shared data is stored namespace-wide (the default). See also the IFINDSHAREDSTORAGELOCATION parameter in %iFind.Index.Basic."}),"\n",(0,s.jsx)(n.p,{children:'Utility function to retrieve entities "similar" to the supplied search string, that have occurred in indexing results for this namespace. For the pSearchValue argument, the same syntax is available as for regular word search in an iFind search call for each word "position" in the supplied search string. For example, the following request will retrieve entities such as "matched words", "matching word" and "all matching words":'}),"\n",(0,s.jsx)(n.p,{children:(0,s.jsx)(n.code,{children:"CALL %iFind.FindEntities('match* word*')"})}),"\n",(0,s.jsxs)(n.p,{children:["Composite search syntax (AND, OR, NOT) is not supported, but you can use a lone asterisk to accept ",(0,s.jsx)(n.em,{children:"any"})," at a given position."]}),"\n",(0,s.jsx)(n.p,{children:"pSearchOption supports the same values as for a regular iFind search ($$$IFSEARCHNORMAL, $$$IFSEARCHSTEMMED, $$$IFSEARCHDECOMPOUNDED, $$$IFSEARCHPATTERN and $$$IFSEARCHFUZZY), although in the case of stemmed or decompounded search, the results will be limited to those entity forms having been indexed by an iFind index with stemming resp decompounding enabled in this namespace. For these two options, the pLanguage argument is also required (but ignored for other search modes)."}),"\n",(0,s.jsx)(n.p,{children:"The pStrippedEntitiesOnly flag can be used to only retrieve entities that have been stripped of all (per-word) leading and trailing punctuation (default) or include all actual entities as encountered by iFind indices in this namespace given their respective punctuation-stripping settings."}),"\n",(0,s.jsx)(n.p,{children:'To filter or sort these results according to a particular index, the (Analytic) index will have to have its IFINDADVANCED parameter set to 2, so this procedure\'s results can be JOINed to the generated "EntSpread" table. For example, with a table Experiment.IFData and iFind index iText:'}),"\n",(0,s.jsx)(n.p,{children:(0,s.jsx)(n.code,{children:"SELECT e.EntityId, e.Entity, s.Spread FROM %iFind.FindEntities('a*') e JOIN Experiment_IFData.IFData_iText_EntSpread s ON e.EntityId = s.EntityId ORDER BY Spread DESC"})}),"\n",(0,s.jsx)(n.p,{children:"Note that this method only retrieves entities appearing in indices whose shared data is stored namespace-wide (the default). See also the IFINDSHAREDSTORAGELOCATION parameter in %iFind.Index.Basic."}),"\n",(0,s.jsx)(n.p,{children:"Internal utility method for retrieving the default set of index parameters"}),"\n",(0,s.jsx)(n.h3,{id:"rank",children:"Rank"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Rank(pRankerClass As %String = {$$$IFDEFAULTRANKER}, pClassName As %String, pIndexName As %String, pRecordId As %RawString, pSearchString As %String, pSearchOptions As %String = {$$$IFSEARCHNORMAL}, Output pSC As %Status) As %Float [ SqlName = Rank, SqlProc ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This SQL function returns a score for how well record pRecordId matches the supplied search string pSearchString, according to the ranker implementation pRankerClass. This method can be invoked through SQL directly to override the default ranker class used by the Rank procedure that's generated automatically on the iFind-indexed class."}),"\n",(0,s.jsx)(n.p,{children:(0,s.jsx)(n.code,{children:"SELECT %ID, Title, FullText, %iFind.Rank('%iFind.Rank.TFIDF', 'SomePackage.TheTable', 'MyIndex', %ID, 'cocktail* OR (hammock AND NOT bees)') As Rank FROM SomePackage.TheTable WHERE %ID %FIND search_index(MyIndex, 'cocktail* OR (hammock AND NOT bees)') ORDER BY 4 DESC"})}),"\n",(0,s.jsx)(n.p,{children:"See also %iFind.Rank.Abstract."}),"\n",(0,s.jsx)(n.h3,{id:"highlight",children:"Highlight"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod Highlight(pText As %String, pSearchString As %String, pSearchOption As %String = {$$$IFSEARCHNORMAL}, pTags As %String = {$$$IFDEFAULTHLTAGS}, pLimit As %Integer = 0, pLanguage As %String = "en", Output pSC As %Status) As %String [ SqlName = Highlight, SqlProc ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"This SQL procedure returns a marked-up version of pText, in which all matches of the supplied pSearchString are highlighted using pTags."}),"\n",(0,s.jsx)(n.p,{children:(0,s.jsx)(n.code,{children:"SELECT %iFind.Highlight('Great cocktails by the pool, but the bees were a bit of a bummer.', 'cocktail* OR (hammock AND NOT bees)')"})}),"\n",(0,s.jsx)(n.p,{children:"pTags is a comma-separated list of tags to use for highlighting. If only a single one is supplied, it will be used to highlight all matches of search terms. If a second one is supplied, it will be used for all terms in a NOT node of the search tree (such as 'bees' in the above example), while the first will be used for all other terms."}),"\n",(0,s.jsx)(n.p,{children:"pLimit can be used to limit the text to a maximum number of hits rather than returning the entire, highlighted text. pSearchOption can be used as in other iFind search operations, for example to also mark fuzzy matches or stem matches."}),"\n",(0,s.jsx)(n.h3,{id:"findwordpositionhelper",children:"FindWordPositionHelper"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod FindWordPositionHelper(pFullText As %String, Output pLocations, pOpenTag As %String, pEndTag As %String) As %Status [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.p,{children:'pFullText is the text annotated with pTag pLocations("pStartLocation") = pEndLocation'}),"\n",(0,s.jsx)(n.h3,{id:"cooccurrencesearchinternal",children:"CooccurrenceSearchInternal"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod CooccurrenceSearchInternal(ByRef pWordLocations, Output pHighlightLocations, pLower As %Integer, pUpper As %Integer, pFullText As %String, pNegated As %Integer) As %Status [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.p,{children:'pWordLocations(wordId,startlocation) = endLocation, the wordId is not the wordId stored in iFind global, it is just the index of the phrase in the proximity search phrases. pHighlightLocations(idx)= start_pos_":"_end_pos By definition, there will no overlapped proximity phrase.'}),"\n",(0,s.jsx)(n.h3,{id:"highlightinternal",children:"HighlightInternal"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod HighlightInternal(pIndexLocation As %String, pDataLocation As %String, pFinderClass As %String, pRecordID As %RawString, pFullText As %String, pSearchString As %String, pSearchOption As %String = {$$$IFSEARCHNORMAL}, pTags As %String = {$$$IFDEFAULTHLTAGS}, pLimit As %Integer = 0, ByRef pParams, Output pSC As %Status, pLanguage As %String = "") As %String [ Internal ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"Internal helper method, do not invoke directly."}),"\n",(0,s.jsx)(n.h3,{id:"applytransformation",children:"ApplyTransformation"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod ApplyTransformation(Output pTransformed As %String, ByRef pString, pSpec As %String, pLanguage As %String = "") [ Internal ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"Either return a simple string through pTransformed, or an array of compounding words"}),"\n",(0,s.jsx)(n.h3,{id:"getindexparams",children:"GetIndexParams"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetIndexParams(Output pParams) [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Helper method override for %iFind.FindUtils"}),"\n",(0,s.jsx)(n.h3,{id:"gettransformationspecfromparams",children:"GetTransformationSpecFromParams"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod GetTransformationSpecFromParams(ByRef pIndexParams, pSearchLanguage As %String = "") As %String [ Internal ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"Parse the TRANSFORMATIONSPEC value from the supplied index parameters, taking care of interpreting INDEXOPTION and STEMMINGCONFIG for legacy classes."}),"\n",(0,s.jsx)(n.h3,{id:"normalizestring",children:"NormalizeString"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod NormalizeString(pString As %String, pLanguage As %String = "", ByRef pIndexParams, pIndexer As %iKnow.Indexer = "", pSkipUserDictionary As %Boolean = 0, pCleanPunctuation As %Boolean = 0) As %String [ Internal ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"Internal normalization wrapper around engine invocation"}),"\n",(0,s.jsx)(n.h3,{id:"quotedelimitedidentifier",children:"QuoteDelimitedIdentifier"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod QuoteDelimitedIdentifier(pTableName As %String) As %String [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Internal method to quote table identifiers Parts of iKnow/iFind use %DeepSee.Utils:%GetSQLTableName() to grab a table name for a class and that method does not perform quoting of delimited identifiers, so it is up to the calling to do so"})]})}function d(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,i)=>{i.d(n,{R:()=>r,x:()=>l});var s=i(96540);const t={},a=s.createContext(t);function r(e){const n=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:r(e.components),s.createElement(a.Provider,{value:n},e.children)}}}]);