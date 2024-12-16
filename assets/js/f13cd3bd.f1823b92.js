"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[73035],{91612:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>l,frontMatter:()=>a,toc:()=>c});var i=s(74848),n=s(28453);const a={pagination_prev:null,pagination_next:null},r="%iKnow.Matching.MatchingWSAPI",c=[{value:"Parameters",id:"parameters",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"SERVICENAME",id:"servicename",level:3},{value:"USECLASSNAMESPACES",id:"useclassnamespaces",level:3},{value:"Methods",id:"methods",level:2},{value:"ClearLogs",id:"clearlogs",level:3},{value:"GetDictionaryMatches",id:"getdictionarymatches",level:3},{value:"GetDictionaryMatchesById",id:"getdictionarymatchesbyid",level:3},{value:"GetErrors",id:"geterrors",level:3},{value:"GetMatchElements",id:"getmatchelements",level:3},{value:"GetMatchesByCrcOcc",id:"getmatchesbycrcocc",level:3},{value:"GetMatchesByDictionaryItemId",id:"getmatchesbydictionaryitemid",level:3},{value:"GetMatchesByDictionaryItemURI",id:"getmatchesbydictionaryitemuri",level:3},{value:"GetMatchesByDictionaryTermId",id:"getmatchesbydictionarytermid",level:3},{value:"GetMatchesByEntOcc",id:"getmatchesbyentocc",level:3},{value:"GetMatchesByPath",id:"getmatchesbypath",level:3},{value:"GetMatchesBySentence",id:"getmatchesbysentence",level:3},{value:"GetMatchesBySource",id:"getmatchesbysource",level:3},{value:"GetMatchesBySourceId",id:"getmatchesbysourceid",level:3},{value:"GetSentenceIdForMatchTarget",id:"getsentenceidformatchtarget",level:3},{value:"GetSourceIdForMatchTarget",id:"getsourceidformatchtarget",level:3},{value:"GetTopItems",id:"gettopitems",level:3},{value:"GetTopMatchesByDictionaryItemId",id:"gettopmatchesbydictionaryitemid",level:3},{value:"GetTopMatchesByDictionaryItemURI",id:"gettopmatchesbydictionaryitemuri",level:3},{value:"GetTopSourcesByDictionary",id:"gettopsourcesbydictionary",level:3},{value:"GetTopTermsByItemId",id:"gettoptermsbyitemid",level:3},{value:"GetTotalDictionaryScoresBySource",id:"gettotaldictionaryscoresbysource",level:3},{value:"GetTotalDictionaryScoresBySourceId",id:"gettotaldictionaryscoresbysourceid",level:3},{value:"GetTotalItemScoresBySource",id:"gettotalitemscoresbysource",level:3},{value:"GetTotalItemScoresBySourceId",id:"gettotalitemscoresbysourceid",level:3},{value:"InvalidateMatchingResults",id:"invalidatematchingresults",level:3},{value:"MatchSource",id:"matchsource",level:3},{value:"MatchSources",id:"matchsources",level:3}];function o(e){const t={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,n.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(t.header,{children:(0,i.jsx)(t.h1,{id:"iknowmatchingmatchingwsapi",children:"%iKnow.Matching.MatchingWSAPI"})}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Matching.MatchingWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"This is an automatically generated class, offering a functionally equivalent set of methods and queries as %iKnow.Matching.MatchingAPI, exposed as WebMethod methods."}),"\n",(0,i.jsx)(t.p,{children:"See the classdocs for %iKnow.Matching.MatchingAPI for more information."}),"\n",(0,i.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(t.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Matching/MatchingWSAPI";\n'})}),"\n",(0,i.jsx)(t.h3,{id:"servicename",children:"SERVICENAME"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter SERVICENAME = "iKnow.Matching.MatchingWSAPI";\n'})}),"\n",(0,i.jsx)(t.h3,{id:"useclassnamespaces",children:"USECLASSNAMESPACES"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter USECLASSNAMESPACES = 1;\n"})}),"\n",(0,i.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(t.h3,{id:"clearlogs",children:"ClearLogs"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ClearLogs(domainId As %Integer) As %Boolean [ WebMethod ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Clears any matching-related logfiles for the specified domain."}),"\n",(0,i.jsx)(t.h3,{id:"getdictionarymatches",children:"GetDictionaryMatches"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetDictionaryMatches(domainId As %Integer, string As %String, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, fullMatchOnly As %Integer = -1, profile As %iKnow.Matching.MatchingProfile = "", language As %String = "", nGramMatches As %Integer = -1) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Returns all potential matches for a given string. This string is treated as if it were a single entity and matched against single-entity Dictionary Terms. To find the matches for a full sentence, first index it and then call GetMatchesBySource using the source ID corresponding to the indexed sentence."}),"\n",(0,i.jsx)(t.p,{children:"A Matching Profile to be used when calculating match scores can be specified either by passing in an %iKnow.Matching.MatchingProfile object, or a Matching Profile ID. When passing in the ID, a negative number is treated as a namespace-wide profile, whereas a positive ID will be looked up within the context of the domain. If no profile is specified, the default profile for this domain will be used."}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will return results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.h3,{id:"getdictionarymatchesbyid",children:"GetDictionaryMatchesById"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetDictionaryMatchesById(domainId As %Integer, entUniId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, fullMatchOnly As %Integer = -1, profile As %iKnow.Matching.MatchingProfile = "", language As %String = "") As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Returns all potential matches for the given entity ID."}),"\n",(0,i.jsx)(t.p,{children:"A Matching Profile to be used when calculating match scores can be specified either by passing in an %iKnow.Matching.MatchingProfile object, or a Matching Profile ID. When passing in the ID, a negative number is treated as a namespace-wide profile, whereas a positive ID will be looked up within the context of the domain. If no profile is specified, the default profile for this domain will be used."}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will return results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.h3,{id:"geterrors",children:"GetErrors"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetErrors(domainId As %Integer, since As %Date = 0) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns any errors registered during the Matching process"}),"\n",(0,i.jsx)(t.h3,{id:"getmatchelements",children:"GetMatchElements"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetMatchElements(domainId As %Integer, matchId As %Integer, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns a detailed overview of all the elements in the match target, be it an entity-level, CRC-level or path-level match. The elements that are matched get annotated with the matched elements ID, value and eventually the output from a %iKnow.Matching.Formats.Format class if it was responsible for the match."}),"\n",(0,i.jsx)(t.p,{children:"If a Virtual Source ID is supplied, the query runs in the context of that virtual source."}),"\n",(0,i.jsx)(t.h3,{id:"getmatchesbycrcocc",children:"GetMatchesByCrcOcc"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetMatchesByCrcOcc(domainId As %Integer, crcOccId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, includeEntityMatches As %Boolean = 1, includePathMatches As %Boolean = 1, includeSentenceMatches As %Boolean = 1) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsxs)(t.p,{children:["Returns all the matches for the given CRC Occurrence. Use ",(0,i.jsx)(t.em,{children:"includeEntityMatches"}),", ",(0,i.jsx)(t.em,{children:"includePathMatches"})," and ",(0,i.jsx)(t.em,{children:"includeSentenceMatches"})," to also include any matches for the Entities this CRC is composed of and the Paths these Entities participate in."]}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will return results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.h3,{id:"getmatchesbydictionaryitemid",children:"GetMatchesByDictionaryItemId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetMatchesByDictionaryItemId(domainId As %Integer, dictItemId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", targetTypes As %ListOfDataTypes = "", ensureMatched As %Boolean = 1) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"This query returns all the match occurrences for the Dictionary Item specified through dictItemId."}),"\n",(0,i.jsx)(t.p,{children:"Specifying a %iKnow.Filters.Filter object as filter will restrict the search space to only those sources satisfying the filters criteria. Through targetTypes, the desired target types can be specified in a %List (defaults to all types)."}),"\n",(0,i.jsx)(t.h3,{id:"getmatchesbydictionaryitemuri",children:"GetMatchesByDictionaryItemURI"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetMatchesByDictionaryItemURI(domainId As %Integer, dictItemURI As %String, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", targetTypes As %ListOfDataTypes = "", xDomDicts As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"This query returns all the match occurrences for the Dictionary Item specified through dictItemURI."}),"\n",(0,i.jsx)(t.p,{children:"Specifying a %iKnow.Filters.Filter object as filter will restrict the search space to only those sources satisfying the filters criteria. Through targetTypes, the desired target types can be specified in a %List (defaults to all types)."}),"\n",(0,i.jsx)(t.h3,{id:"getmatchesbydictionarytermid",children:"GetMatchesByDictionaryTermId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetMatchesByDictionaryTermId(pDomainId As %Integer, pDictTermId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pTargetTypes As %ListOfDataTypes = "", pEnsureMatched As %Boolean = 1) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"This query returns all the match occurrences for the Dictionary Term specified through pDictTermId."}),"\n",(0,i.jsx)(t.p,{children:"Specifying a %iKnow.Filters.Filter object as pFilter will restrict the search space to only those sources satisfying the filters criteria. Through pTargetTypes, the desired target types can be specified in a %List (defaults to all types)."}),"\n",(0,i.jsx)(t.h3,{id:"getmatchesbyentocc",children:"GetMatchesByEntOcc"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetMatchesByEntOcc(domainId As %Integer, entOccId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, includeCrcMatches As %Boolean = 1, includePathMatches As %Boolean = 1, includeSentenceMatches As %Boolean = 1, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsxs)(t.p,{children:["Returns all the matches for the given Entity Occurrence. Use ",(0,i.jsx)(t.em,{children:"includeCrcMatches"}),", ",(0,i.jsx)(t.em,{children:"includePathMatches"})," and ",(0,i.jsx)(t.em,{children:"includeSentenceMatches"})," to also include any matches for the CRC, Path or Sentence in which this Entity Occurrences participates."]}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will return results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.h3,{id:"getmatchesbypath",children:"GetMatchesByPath"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetMatchesByPath(domainId As %Integer, pathId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, includeEntityMatches As %Boolean = 1, includeCrcMatches As %Boolean = 1, includeSentenceMatches As %Boolean = 1) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsxs)(t.p,{children:["Returns all the matches for the given Path. Use ",(0,i.jsx)(t.em,{children:"includeEntityMatches"}),", ",(0,i.jsx)(t.em,{children:"includeCRCMatches"})," and ",(0,i.jsx)(t.em,{children:"includeSentenceMatches"})," to also include any matches for the Entities this path is composed of and the CRCs or Sentences these Entities participate in."]}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will return results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.h3,{id:"getmatchesbysentence",children:"GetMatchesBySentence"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetMatchesBySentence(domainId As %Integer, sentenceId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10, includeEntityMatches As %Boolean = 1, includeCrcMatches As %Boolean = 1, includePathMatches As %Boolean = 1) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsxs)(t.p,{children:["Returns all the matches for the given Sentence. Use ",(0,i.jsx)(t.em,{children:"includeEntityMatches"}),", ",(0,i.jsx)(t.em,{children:"includeCrcMatches"})," and ",(0,i.jsx)(t.em,{children:"includePathMatches"})," to control which (target) types of matches should be included in the result."]}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will return results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.h3,{id:"getmatchesbysource",children:"GetMatchesBySource"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetMatchesBySource(domainId As %Integer, externalId As %String, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Returns all the matches for the given Source, as identified by its external ID."}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will return results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.h3,{id:"getmatchesbysourceid",children:"GetMatchesBySourceId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetMatchesBySourceId(domainId As %Integer, srcId As %Integer, dictIds As %ListOfDataTypes = "", page As %Integer = 1, pageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Returns all the matches for the given Source, as identified by its Source ID (interpreted as a Virtual Source if a negative value is supplied)."}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will return results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.h3,{id:"getsentenceidformatchtarget",children:"GetSentenceIdForMatchTarget"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSentenceIdForMatchTarget(domainId As %Integer, targetType As %Integer, targetId As %Integer, vSrcId As %Integer = 0) As %Library.Integer [ WebMethod ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Utility method to retrieve the Sentence ID for a given match target, as specified by its target type (either of $$$DMTARGETENTITY, $$$DMTARGETCRC, $$$DMTARGETPATH or $$$DMTARGETSENT) and ID."}),"\n",(0,i.jsx)(t.h3,{id:"getsourceidformatchtarget",children:"GetSourceIdForMatchTarget"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSourceIdForMatchTarget(domainId As %Integer, targetType As %Integer, targetId As %Integer) As %Library.Integer [ WebMethod ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Utility method to retrieve the Source ID for a given match target, as specified by its target type (either of $$$DMTARGETENTITY, $$$DMTARGETCRC, $$$DMTARGETPATH or $$$DMTARGETSENT) and ID."}),"\n",(0,i.jsx)(t.h3,{id:"gettopitems",children:"GetTopItems"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTopItems(domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", dictIds As %ListOfDataTypes = "", sortType As %Integer = {$$$SORTBYFREQUENCY}, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Returns the Dictionary Items for which most matches have been found in this domain (optionally narrowed down through a %iKnow.Filters.Filter object passed in through filter). Result sort order is controlled by sortType:"}),"\n",(0,i.jsxs)(t.ul,{children:["\n",(0,i.jsx)(t.li,{children:"$$$SORTBYFREQUENCY will sort by the number of actual matches for a Dictionary Item"}),"\n",(0,i.jsx)(t.li,{children:"$$$SORTBYSPREAD will sort by the number of distinct documents in which at least one match for the Dictionary Item occurs."}),"\n",(0,i.jsx)(t.li,{children:"$$$SORTBYSCORE will sort by the total match score of all matches for a Dictionary Item"}),"\n"]}),"\n",(0,i.jsx)(t.p,{children:'Specifying "" for dictIds will return results for all Dictionaries in this domain.'}),"\n",(0,i.jsx)(t.h3,{id:"gettopmatchesbydictionaryitemid",children:"GetTopMatchesByDictionaryItemId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTopMatchesByDictionaryItemId(domainId As %Integer, dictItemId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", targetTypes As %ListOfDataTypes = "", sortType As %Integer = {$$$SORTBYDOMAINDEFAULT}) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:'This query returns the "best" matching results for the Dictionary Item specified through dictItemId, aggregated by matched unique target (entity, CRC, path or sentence). The meaning of "best" is defined by sortType: if set to $$$SORTBYFREQUENCY or $$$SORTBYSPREAD, results are sorted by decreasing number of matched occurrences, whereas $$$SORTBYSCORE will rank them according to the highest match score. The first two options will yield the most relevant results for entities and CRCs, with the score ranking a better fit for paths and sentences, as they inherently have frequency and spread equal to 1.'}),"\n",(0,i.jsx)(t.p,{children:"Specifying a %iKnow.Filters.Filter object as filter will restrict the search space to only those sources satisfying the filters criteria. Through targetTypes, the desired target types can be specified in a %List (defaults to all types)."}),"\n",(0,i.jsx)(t.h3,{id:"gettopmatchesbydictionaryitemuri",children:"GetTopMatchesByDictionaryItemURI"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTopMatchesByDictionaryItemURI(domainId As %Integer, dictItemURI As %String, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", targetTypes As %ListOfDataTypes = "", sortType As %Integer = {$$$SORTBYFREQUENCY}, xDomDicts As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:'This query returns the "best" matching results for the Dictionary Item specified through dictItemURI, aggregated by matched unique target (entity, CRC, path or sentence). The meaning of "best" is defined by sortType: if set to $$$SORTBYFREQUENCY or $$$SORTBYSPREAD, results are sorted by decreasing number of matched occurrences, whereas $$$SORTBYSCORE will rank them according to the highest match score. The first two options will yield the most relevant results for entities and CRCs, with the score ranking a better fit for paths and sentences, as they inherently have frequency and spread equal to 1.'}),"\n",(0,i.jsx)(t.p,{children:"Specifying a %iKnow.Filters.Filter object as filter will restrict the search space to only those sources satisfying the filters criteria. Through targetTypes, the desired target types can be specified in a %List (defaults to all types)."}),"\n",(0,i.jsx)(t.h3,{id:"gettopsourcesbydictionary",children:"GetTopSourcesByDictionary"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTopSourcesByDictionary(pDomainId As %Integer, pDictIds As %ListOfDataTypes, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pSortType As %Integer = {$$$SORTBYFREQUENCY}, pNormalizeLength As %Numeric = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:'Returns the sources best matching a given list of dictionaries specified through pDictIds, optionally filtered through pFilter. "Best matching" is defined as having the highest number of matches (if pSortType = $$$SORTBYFREQUENCY) or the highest total match score (if pSortType = $$$SORTBYSCORE).'}),"\n",(0,i.jsx)(t.p,{children:"If pNormalizeLength is set to a nonzero value, this number is used as the power of the sources length in entities (occurrences) to normalize the score."}),"\n",(0,i.jsx)(t.h3,{id:"gettoptermsbyitemid",children:"GetTopTermsByItemId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTopTermsByItemId(pDomainId As %Integer, pDictItemIds As %ListOfDataTypes, pFilter As %String(MAXLEN=32767) = "", pSortType As %Integer = {$$$SORTBYFREQUENCY}, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"For a given Dictionary Item, returns all its Dictionary Terms sorted by the number of matches they have, optionally narrowed down through a %iKnow.Filters.Filter object passed in through pFilter). Result sort order is controlled by pSortType:"}),"\n",(0,i.jsxs)(t.ul,{children:["\n",(0,i.jsx)(t.li,{children:"$$$SORTBYFREQUENCY will sort by the number of actual matches for the Dictionary Term"}),"\n",(0,i.jsx)(t.li,{children:"$$$SORTBYSPREAD will sort by the number of distinct documents in which at least one match for the Dictionary Term occurs."}),"\n",(0,i.jsx)(t.li,{children:"$$$SORTBYSCORE will sort by the total match score of all matches for a Dictionary Term"}),"\n"]}),"\n",(0,i.jsx)(t.h3,{id:"gettotaldictionaryscoresbysource",children:"GetTotalDictionaryScoresBySource"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTotalDictionaryScoresBySource(domainId As %Integer, externalId As %String, sortType As %Integer = {$$$SORTBYFREQUENCY}) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns summary information for all matches in a given source (identified by External ID), organized per Dictionary."}),"\n",(0,i.jsx)(t.h3,{id:"gettotaldictionaryscoresbysourceid",children:"GetTotalDictionaryScoresBySourceId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTotalDictionaryScoresBySourceId(domainId As %Integer, srcId As %Integer, sortType As %Integer = {$$$SORTBYFREQUENCY}) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns summary information for all matches in a given source (identified by Source ID), organized per Dictionary."}),"\n",(0,i.jsx)(t.h3,{id:"gettotalitemscoresbysource",children:"GetTotalItemScoresBySource"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTotalItemScoresBySource(domainId As %Integer, externalId As %String, dictIds As %ListOfDataTypes = "", sortType As %Integer = {$$$SORTBYFREQUENCY}) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Returns summary information for all matches in a given source (identified by External ID), organized per Dictionary Item."}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will return results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.h3,{id:"gettotalitemscoresbysourceid",children:"GetTotalItemScoresBySourceId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTotalItemScoresBySourceId(domainId As %Integer, srcId As %Integer, dictIds As %ListOfDataTypes = "", sortType As %Integer = {$$$SORTBYFREQUENCY}) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Returns summary information for all matches in a given source (identified by Source ID), organized per Dictionary Item."}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will return results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.h3,{id:"invalidatematchingresults",children:"InvalidateMatchingResults"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod InvalidateMatchingResults(domainId As %Integer, dictIds As %ListOfDataTypes = "", pMode As %Integer = 0) As %Boolean [ WebMethod ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Deletes all current matching results for the list of Dictionary IDs passed in dictIds."}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will drop results for all Dictionaries in this domain."]}),"\n",(0,i.jsx)(t.p,{children:"pMode can be used to specify whether to keep intermediary (not source-related) matching results as follows:"}),"\n",(0,i.jsxs)(t.ul,{children:["\n",(0,i.jsx)(t.li,{children:"0: only source-related matching results are erased (default)"}),"\n",(0,i.jsx)(t.li,{children:"1: the matching results for unique entities are also erased"}),"\n",(0,i.jsx)(t.li,{children:'2: the matching results for unique entities and indexing results for dictionary terms are all erased (only available if dictIds="")\nThis parameter is mostly for internal use.'}),"\n"]}),"\n",(0,i.jsxs)(t.p,{children:["Note: pMode=2 will not erase the indexing results for dictionary terms of cross-domain dictionaries.",(0,i.jsx)(t.br,{}),"\nNote: matching results for virtual sources are always completely dropped, regardless of the value of dictIds and with the same effect as pMode=1"]}),"\n",(0,i.jsx)(t.h3,{id:"matchsource",children:"MatchSource"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod MatchSource(domainId As %Integer, srcId As %Integer, dictIds As %ListOfDataTypes = "", overrideProfile As %iKnow.Matching.MatchingProfile = "") As %Boolean [ WebMethod ]\n'})}),"\n",(0,i.jsxs)(t.p,{children:["Matches an individual source against the list of Dictionary IDs passed in ",(0,i.jsx)(t.em,{children:"dictIds"}),". Use negative numbers to identify any cross-domain dictionaries to match against. A Matching Profile to calculate match scores can be specified either by passing in an %iKnow.Matching.MatchingProfile object, or a Matching Profile ID. When passing in the ID, a negative number is treated as a namespace-wide profile, whereas a positive ID will be looked up within the context of the domain."]}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will match against all Dictionaries in this domain and passing $$$ALLXDOMDICTIONARIES will match against all cross-domain dictionaries."]}),"\n",(0,i.jsx)(t.p,{children:"A negative Source ID is interpreted as a Virtual Source."}),"\n",(0,i.jsx)(t.h3,{id:"matchsources",children:"MatchSources"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod MatchSources(domainId As %Integer, filter As %String(MAXLEN=32767) = "", dictIds As %ListOfDataTypes = "", overrideProfile As %iKnow.Matching.MatchingProfile = "") As %Boolean [ WebMethod ]\n'})}),"\n",(0,i.jsxs)(t.p,{children:["Matches all sources in the domain, optionally restricted to those satisfying the criteria of a %iKnow.Filters.Filter object provided as ",(0,i.jsx)(t.em,{children:"filter"}),", against the list of Dictionary IDs passed in ",(0,i.jsx)(t.em,{children:"dictIds"}),". Use negative numbers to mark cross-domain dictionaries."]}),"\n",(0,i.jsx)(t.p,{children:"A Matching Profile to calculate match scores can be specified either by passing in an %iKnow.Matching.MatchingProfile object, or a Matching Profile ID. When passing in the ID, a negative number is treated as a namespace-wide profile, whereas a positive ID will be looked up within the context of the domain."}),"\n",(0,i.jsxs)(t.p,{children:['Specifying "" for ',(0,i.jsx)(t.em,{children:"dictIds"})," will match against all Dictionaries in this domain and passing $$$ALLXDOMDICTIONARIES will match against all cross-domain dictionaries."]})]})}function l(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,i.jsx)(t,{...e,children:(0,i.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>c});var i=s(96540);const n={},a=i.createContext(n);function r(e){const t=i.useContext(a);return i.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:r(e.components),i.createElement(a.Provider,{value:t},e.children)}}}]);