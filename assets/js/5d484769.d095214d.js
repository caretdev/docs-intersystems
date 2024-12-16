"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[61068],{52983:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>a,default:()=>d,frontMatter:()=>i,toc:()=>l});var n=s(74848),r=s(28453);const i={pagination_prev:null,pagination_next:null},a="%iKnow.Queries.EntityWSAPI",l=[{value:"Parameters",id:"parameters",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"SERVICENAME",id:"servicename",level:3},{value:"USECLASSNAMESPACES",id:"useclassnamespaces",level:3},{value:"Methods",id:"methods",level:2},{value:"GetByFilter",id:"getbyfilter",level:3},{value:"GetBySource",id:"getbysource",level:3},{value:"GetByStem",id:"getbystem",level:3},{value:"GetCountByDomain",id:"getcountbydomain",level:3},{value:"GetCountBySource",id:"getcountbysource",level:3},{value:"GetFrequency",id:"getfrequency",level:3},{value:"GetId",id:"getid",level:3},{value:"GetLiteral",id:"getliteral",level:3},{value:"GetNewBySource",id:"getnewbysource",level:3},{value:"GetOccurrenceAttributes",id:"getoccurrenceattributes",level:3},{value:"GetOccurrenceCountByDomain",id:"getoccurrencecountbydomain",level:3},{value:"GetOccurrenceCountBySource",id:"getoccurrencecountbysource",level:3},{value:"GetOccurrencesById",id:"getoccurrencesbyid",level:3},{value:"GetRelated",id:"getrelated",level:3},{value:"GetRelatedById",id:"getrelatedbyid",level:3},{value:"GetRelatedCount",id:"getrelatedcount",level:3},{value:"GetRelatedCountById",id:"getrelatedcountbyid",level:3},{value:"GetSimilar",id:"getsimilar",level:3},{value:"GetSimilarCounts",id:"getsimilarcounts",level:3},{value:"GetSpread",id:"getspread",level:3},{value:"GetStem",id:"getstem",level:3},{value:"GetStemFrequency",id:"getstemfrequency",level:3},{value:"GetStemId",id:"getstemid",level:3},{value:"GetStemRepresentationForm",id:"getstemrepresentationform",level:3},{value:"GetStemSpread",id:"getstemspread",level:3},{value:"GetStemValue",id:"getstemvalue",level:3},{value:"GetTop",id:"gettop",level:3},{value:"GetTopBM25",id:"gettopbm25",level:3},{value:"GetTopGroups",id:"gettopgroups",level:3},{value:"GetTopTFIDF",id:"gettoptfidf",level:3},{value:"GetValue",id:"getvalue",level:3},{value:"IsAttributed",id:"isattributed",level:3}];function o(e){const t={blockquote:"blockquote",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"iknowqueriesentitywsapi",children:"%iKnow.Queries.EntityWSAPI"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Queries.EntityWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This is an automatically generated class, offering a functionally equivalent set of methods and queries as %iKnow.Queries.EntityAPI, exposed as WebMethod methods."}),"\n",(0,n.jsx)(t.p,{children:"See the classdocs for %iKnow.Queries.EntityAPI for more information."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Queries/EntityWSAPI";\n'})}),"\n",(0,n.jsx)(t.h3,{id:"servicename",children:"SERVICENAME"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter SERVICENAME = "iKnow.Queries.EntityWSAPI";\n'})}),"\n",(0,n.jsx)(t.h3,{id:"useclassnamespaces",children:"USECLASSNAMESPACES"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter USECLASSNAMESPACES = 1;\n"})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"getbyfilter",children:"GetByFilter"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByFilter(domainid As %Integer, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, enttype As %Integer = {$$$ENTTYPECONCEPT}, skipListIds As %ListOfDataTypes = "", pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns all entities appearing in any source satisfying the supplied filter objects criteria, with their frequencies and spread recalculated to comply with the filter depending on the value of filtermode, but the result is NOT re-sorted, regardless of the value for filtermode (use GetTop if you want sorted results)."}),"\n",(0,n.jsx)(t.p,{children:"Depending on the value of enttype parameter, this method will only return concepts ($$$ENTTYPECONCEPT, default), relations ($$$ENTTYPERELATION) or both ($$$ENTTYPEANY)."}),"\n",(0,n.jsx)(t.p,{children:"Through the skipListIds parameter, a user can supply one or more lists of (to the user) insignificant terms that should be excluded from the result."}),"\n",(0,n.jsx)(t.h3,{id:"getbysource",children:"GetBySource"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetBySource(domainid As %Integer, sourceidlist As %ListOfDataTypes, page As %Integer = 1, pagesize As %Integer = 10, enttype As %Integer = {$$$ENTTYPEANY}, skipListIds As %ListOfDataTypes = "", pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the unique entities appearing in the sources specified."}),"\n",(0,n.jsx)(t.p,{children:"To get the unique entities of a virtual source, only a single virtual source can be supplied using its negative ID value."}),"\n",(0,n.jsx)(t.h3,{id:"getbystem",children:"GetByStem"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByStem(pDomainId As %Integer, pStemUniId As %Integer, vSrcId As %Integer = 0, pLanguage As %String = "") As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all entities corresponding to a certain stem identified by pStemUniId."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbydomain",children:"GetCountByDomain"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByDomain(domainid As %Integer, filter As %String(MAXLEN=32767) = "", skipListIds As %ListOfDataTypes = "", includeZeroFrequency As %Boolean = 0, pUseStems As %Boolean = 0) As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the total number of distinct entities for this domain, optionally filtered to a set of sources satisfying the %iKnow.Filters.Filter object supplied through filter. Depending on the value of includeZeroFrequency, entities not appearing in any source (but registered in the domain for other purposes) are included or excluded from the result."}),"\n",(0,n.jsx)(t.p,{children:"Through the skipListIds parameter, a user can supply one or more lists of (to the user) insignificant terms that should be excluded from the result."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbysource",children:"GetCountBySource"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %ListOfDataTypes, setop As %Integer = {$$$UNION}, skipListIds As %ListOfDataTypes = "", enttype As %Integer = {$$$ENTTYPEANY}, pUseStems As %Boolean = 0) As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the total number of distinct entities for a given list of sources. The count returned either represents the entities appearing in either (with setop $$$UNION) or all (with setop $$$INTERSECT) of the supplied sources. Using enttype, the returned count is filtered to just entities ($$$ENTTYPECONCEPT), relations ($$$ENTTYPERELATION). The default is unfiltered ($$$ENTTYPEANY)."}),"\n",(0,n.jsx)(t.p,{children:"To get the unique entities of a virtual source, only a single virtual source can be supplied using its negative ID value (otherwise, -1 is returned)."}),"\n",(0,n.jsx)(t.p,{children:"Through the skipListIds parameter, a user can supply one or more lists of (to the user) insignificant terms that should be excluded from the result."}),"\n",(0,n.jsx)(t.h3,{id:"getfrequency",children:"GetFrequency"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetFrequency(domainId As %Integer, entUniId As %Integer, enttype As %Integer = {$$$ENTTYPEANY}, vSrcId As %Integer = 0, filter As %String(MAXLEN=32767) = "") As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the frequency of the entity corresponding to the supplied entUniId, occurring in a concept role (if enttype = $$$ENTTYPECONCEPT), a relationship role (if enttype = $$$ENTTYPERELATION) or both (enttype = $$$ENTTYPEANY)."}),"\n",(0,n.jsx)(t.p,{children:"When specifying a Virtual Source ID, the frequency within the virtual source will be returned."}),"\n",(0,n.jsx)(t.h3,{id:"getid",children:"GetId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetId(domainid As %Integer, entityvalue As %String, vSrcId As %Integer = 0) As %Library.Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the entity ID corresponding to the specified entity value, if any."}),"\n",(0,n.jsx)(t.p,{children:"When specifying a Virtual Source ID, it will treat the entity as a virtual one, in the context of that vSrcId."}),"\n",(0,n.jsx)(t.h3,{id:"getliteral",children:"GetLiteral"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetLiteral(pDomainId As %Integer, pPartId As %Integer, vSrcId As %Integer = 0) As %Library.String [ WebMethod ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Returns the literal value for a particular ",(0,n.jsx)(t.em,{children:"Part ID"}),", as it occurred in the original text."]}),"\n",(0,n.jsx)(t.h3,{id:"getnewbysource",children:"GetNewBySource"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetNewBySource(domainid As %Integer, sourceidlist As %ListOfDataTypes, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", entType As %Integer = {$$$ENTTYPECONCEPT}, algorithm As %String = {$$$NEWENTSIMPLE}, algorithmParams As %ListOfDataTypes = "", skipListIds As %ListOfDataTypes = "", pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the significant entities in a list of sources supplied through sourceidlist, as compared to the other sources in the domain (optionally filtered through a %iKnow.Filters.Filter object specified through filter)."}),"\n",(0,n.jsx)(t.p,{children:"The following algorithm values are currently available:"}),"\n",(0,n.jsxs)(t.ul,{children:["\n",(0,n.jsx)(t.li,{children:"$$$NEWENTSIMPLE - takes no parameters"}),"\n"]}),"\n",(0,n.jsx)(t.p,{children:"To get the significant entities of a virtual source compared to the non-virtual ones in the domain, only a single virtual source can be supplied using its negative ID value."}),"\n",(0,n.jsx)(t.p,{children:"Through the enttype parameter, the method can be instructed to return either concepts ($$$ENTTYPECONCEPT) or relations ($$$ENTTYPERELATION)."}),"\n",(0,n.jsx)(t.p,{children:"Through the skipListIds parameter, a user can supply one or more lists of (to the user) insignificant terms that should be excluded from the result."}),"\n",(0,n.jsx)(t.h3,{id:"getoccurrenceattributes",children:"GetOccurrenceAttributes"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetOccurrenceAttributes(pDomainId As %Integer, pPartId As %Integer, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns all attributes for a given part. Any named attribute properties are also included through sub-nodes (not available through SQL or SOAP):"}),"\n",(0,n.jsxs)(t.blockquote,{children:["\n",(0,n.jsxs)(t.p,{children:["pResult(",(0,n.jsx)(t.em,{children:"rowNumber"}),", ",(0,n.jsx)(t.em,{children:"propertyName"}),") = ",(0,n.jsx)(t.em,{children:"propertyValue"})]}),"\n"]}),"\n",(0,n.jsx)(t.p,{children:"The returned wordPositions only extend to the last attributed word position (there might be more words within the entity)."}),"\n",(0,n.jsx)(t.h3,{id:"getoccurrencecountbydomain",children:"GetOccurrenceCountByDomain"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetOccurrenceCountByDomain(pDomainId As %Integer, pFilter As %String(MAXLEN=32767) = "", pEntType As %Integer = {$$$ENTTYPEANY}) As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the total number of entity occurrences in a domain."}),"\n",(0,n.jsx)(t.h3,{id:"getoccurrencecountbysource",children:"GetOccurrenceCountBySource"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetOccurrenceCountBySource(domainid As %Integer, sourceidlist As %ListOfDataTypes, enttype As %Integer = {$$$ENTTYPEANY}) As %Library.Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the total number of entity occurrences for the given list of sources. Use negative source IDs to refer to virtual sources."}),"\n",(0,n.jsx)(t.h3,{id:"getoccurrencesbyid",children:"GetOccurrencesById"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetOccurrencesById(pDomainId As %Integer, pEntUniIds As %ListOfDataTypes, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pAttributeId As %Integer = {$$$IKATTNEGATION}, vSrcId As %Integer = 0, pIncludeActualForms As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns all occurrences for any of the given unique entities in pEntUniIds, including whether the attribute pAttributeId is applicable to this occurrence."}),"\n",(0,n.jsx)(t.p,{children:"If this domain is configured for stemming using $$$IKPSTEMMING, any actual entities corresponding to pEntUniIds elements will be returned."}),"\n",(0,n.jsx)(t.h3,{id:"getrelated",children:"GetRelated"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetRelated(domainid As %Integer, entitylist As %ListOfDataTypes, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSHT}, aggregationtype As %Integer = {$$$AGGSUM}, setop As %Integer = {$$$UNION}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, skipListIds As %ListOfDataTypes = "") As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method will return all entities occurring in a direct relationship with at least on (if setop = $$$UNION) or all (if setop = $$$INTERSECT) of the entities in the supplied entitylist, anywhere within the supplied domain."}),"\n",(0,n.jsx)(t.p,{children:"The scope of this query can be limited through supplying a %iKnow.Filters.Filter object for the filter parameter to restrict the result to those CRCs occurring in any source satisfying the filter criteria. When using a filter, the filtermode parameter will control whether or not the frequency and spread of returned records should be recalculated and whether results should be resorted along these recalculated numbers."}),"\n",(0,n.jsx)(t.p,{children:"Through the positionstomatch parameter, the user can specify whether the entities returned should be occurring on the Head side ($$$USEPOSH), the Tail side ($$$USEPOST) or either ($$$USEPOSHT, default) side of the relationship."}),"\n",(0,n.jsx)(t.p,{children:"The aggregationtype parameter lets you choose how to aggregate the frequency and spread of results related to multiple entries in the input entitylist."}),"\n",(0,n.jsx)(t.p,{children:"Through the skipListIds parameter, a user can supply one or more lists of (to the user) insignificant terms that should be excluded from the result."}),"\n",(0,n.jsx)(t.p,{children:"Note: this method only returns entities that appear in direct relationships with the seed entity. For the broader context of entities, including indirect relationships (still within a single path), please refer to %iKnow.Semantics.ProximityAPI"}),"\n",(0,n.jsx)(t.h3,{id:"getrelatedbyid",children:"GetRelatedById"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetRelatedById(domainid As %Integer, entityidlist As %ListOfDataTypes, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSHT}, aggregationtype As %Integer = {$$$AGGSUM}, setop As %Integer = {$$$UNION}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, skipListIds As %ListOfDataTypes = "") As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the entities directly related to a supplied list of entity IDs."}),"\n",(0,n.jsx)(t.p,{children:"See GetRelated for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getrelatedcount",children:"GetRelatedCount"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetRelatedCount(domainid As %Integer, entitylist As %ListOfDataTypes, filter As %String(MAXLEN=32767) = "", positionstomatch As %Integer = {$$$USEPOSHT}, setop As %Integer = {$$$UNION}, pIncludeActualForms As %Boolean = 0) As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the number of related entities for a given list of entities."}),"\n",(0,n.jsx)(t.p,{children:"See GetRelated for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getrelatedcountbyid",children:"GetRelatedCountById"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetRelatedCountById(domainid As %Integer, entityidlist As %ListOfDataTypes, filter As %String(MAXLEN=32767) = "", positionstomatch As %Integer = {$$$USEPOSHT}, setop As %Integer = {$$$UNION}, pIncludeActualForms As %Boolean = 0) As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the number of related entities for a given list of entity ids."}),"\n",(0,n.jsx)(t.p,{children:"See GetRelated for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getsimilar",children:"GetSimilar"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetSimilar(domainid As %Integer, part As %String, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, mode As %Integer = {$$$USEDOMAINDEFAULT}, skipListIds As %ListOfDataTypes = "", pEntRole As %Integer = {$$$ENTTYPEANY}, pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:'This method will return all entities in the specified domain that are "similar" to the supplied part string. Similarity is defined using the mode parameter. The default setting ($$$USEPARTS), will retrieve all clusters containing at least one word starting with the supplied string, whereas $$$USENGRAMS will search for any character sequence within the whole entity. With mode = $$$USEWORDS, the behavior is the same as $$$USEPARTS but the supplied part needs to occur as a whole word in the retrieved clusters.'}),"\n",(0,n.jsx)(t.p,{children:"The scope of this query can be limited through supplying a %iKnow.Filters.Filter object for the filter parameter to restrict the result to those CRCs occurring in any source satisfying the filter criteria. When using a filter, the filtermode parameter will control whether or not the frequency and spread of returned records should be recalculated and whether results should be resorted along these recalculated numbers."}),"\n",(0,n.jsx)(t.p,{children:"Through the skipListIds parameter, a user can supply one or more lists of (to the user) insignificant terms that should be excluded from the result."}),"\n",(0,n.jsx)(t.h3,{id:"getsimilarcounts",children:"GetSimilarCounts"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetSimilarCounts(domainid As %Integer, part As %String, filter As %String(MAXLEN=32767) = "", mode As %Integer = {$$$USEDOMAINDEFAULT}, skipListIds As %ListOfDataTypes = "", entType As %Integer = {$$$ENTTYPEANY}, pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:'This method returns aggregated details on the entities similar to a supplied text fragment part. The returned list contains the total number of distinct entities similar to part appearing in sources satisfying the supplied filter (if defined), their total aggregated frequency (with respect to filter, if defined) and the total number of sources containing at least one of these "similar" entities (again, respecting filter, if defined).'}),"\n",(0,n.jsx)(t.p,{children:"See also GetSimilar for a description of the other parameters."}),"\n",(0,n.jsx)(t.p,{children:"Setting the entType parameter to $$$ENTTYPECONCEPT or $$$ENTTYPERELATION will restrict the result to only include entity occurrences of the specified type in the returned number of distinct entities and aggregated frequency. If an entity occurs as both a concept and a relationship (typically in <1% of cases), it contributes to the aggregated spread regardless of entType."}),"\n",(0,n.jsx)(t.h3,{id:"getspread",children:"GetSpread"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetSpread(domainId As %Integer, entUniId As %Integer, enttype As %Integer = {$$$ENTTYPEANY}, filter As %String(MAXLEN=32767) = "") As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the spread of the entity corresponding to the supplied entUniId, occurring in a concept role (if enttype = $$$ENTTYPECONCEPT), a relationship role (if enttype = $$$ENTTYPERELATION) or both (enttype = $$$ENTTYPEANY)."}),"\n",(0,n.jsx)(t.h3,{id:"getstem",children:"GetStem"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetStem(pDomainId As %Integer = "", pString As %String, pLanguage As %String = "") As %Library.String [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the stemmed form of the supplied string pString. If pDomainId is non-null, any domain-level configuration settings will be used for the stemming operation."}),"\n",(0,n.jsx)(t.h3,{id:"getstemfrequency",children:"GetStemFrequency"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetStemFrequency(pDomainId As %Integer, pStemUniId As %Integer, pEntType As %Integer = {$$$ENTTYPEANY}, vSrcId As %Integer = 0, pFilter As %String(MAXLEN=32767) = "") As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the frequency of the stem corresponding to the supplied pStemUniId, occurring in a concept role (if pEntType = $$$ENTTYPECONCEPT), a relationship role (if pEntType = $$$ENTTYPERELATION) or both (pEntType = $$$ENTTYPEANY)."}),"\n",(0,n.jsx)(t.p,{children:"When specifying a Virtual Source ID, the frequency within the virtual source will be returned."}),"\n",(0,n.jsx)(t.h3,{id:"getstemid",children:"GetStemId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetStemId(pDomainId As %Integer, pStemValue As %String, vSrcId As %Integer = 0) As %Library.Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the stem ID corresponding to the specified stem value, if any."}),"\n",(0,n.jsx)(t.p,{children:"When specifying a Virtual Source ID, it will treat the stem as a virtual one, in the context of that vSrcId."}),"\n",(0,n.jsx)(t.h3,{id:"getstemrepresentationform",children:"GetStemRepresentationForm"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetStemRepresentationForm(pDomainId As %Integer, pStemUniId As %Integer, pLanguage As %String = "en", vSrcId As %Integer = 0) As %Library.String [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the representation form for the given stem and language"}),"\n",(0,n.jsx)(t.h3,{id:"getstemspread",children:"GetStemSpread"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetStemSpread(pDomainId As %Integer, pStemUniId As %Integer, pEntType As %Integer = {$$$ENTTYPEANY}, pFilter As %String(MAXLEN=32767) = "") As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the spread of the stem corresponding to the supplied pStemUniId, occurring in a concept role (if pEntType = $$$ENTTYPECONCEPT), a relationship role (if pEntType = $$$ENTTYPERELATION) or both (pEntType = $$$ENTTYPEANY)."}),"\n",(0,n.jsx)(t.h3,{id:"getstemvalue",children:"GetStemValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetStemValue(pDomainId As %Integer, pStemUniId As %Integer, vSrcId As %Integer = 0) As %Library.String [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the string value of the stem identified by pStemUniId"}),"\n",(0,n.jsx)(t.h3,{id:"gettop",children:"GetTop"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTop(domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, enttype As %Integer = {$$$ENTTYPECONCEPT}, vSrcId As %Integer = 0, skipListIds As %ListOfDataTypes = "", pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method returns the most frequently occurring entities in the specified domain."}),"\n",(0,n.jsx)(t.p,{children:"The scope of this query can be limited through supplying a %iKnow.Filters.Filter object for the filter parameter to restrict the result to those CRCs occurring in any source satisfying the filter criteria. When using a filter, the filtermode parameter will control whether or not the frequency and spread of returned records should be recalculated and whether results should be resorted along these recalculated numbers."}),"\n",(0,n.jsx)(t.p,{children:"Through the enttype parameter, the method can be instructed to return either concepts ($$$ENTTYPECONCEPT) or relations ($$$ENTTYPERELATION). When looking for top concepts, those shorter than 3 characters are skipped."}),"\n",(0,n.jsx)(t.p,{children:"Returned values are either sorted by descending frequency (with sorttype $$$SORTBYFREQUENCY), spread (with sorttype $$$SORTBYSPREAD) or the domain default (with sorttype $$$SORTBYDOMAINDEFAULT)."}),"\n",(0,n.jsx)(t.p,{children:"If a Virtual Source ID is provided, only the entities in that virtual source will be considered, filters are ignored and the sort type will always be $$$SORTBYFREQUENCY."}),"\n",(0,n.jsx)(t.p,{children:"Through the skipListIds parameter, a user can supply one or more lists of (to the user) insignificant terms that should be excluded from the result."}),"\n",(0,n.jsx)(t.h3,{id:"gettopbm25",children:"GetTopBM25"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTopBM25(pDomainId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pEntType As %Integer = {$$$ENTTYPECONCEPT}, pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the top entities for a given domain (optionally filtered through pFilter) calculated using a metric based on the Okapi BM25 standard, which combines an entity's frequency with its Inverse Document Frequency, taking into account document length."}),"\n",(0,n.jsx)(t.h3,{id:"gettopgroups",children:"GetTopGroups"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTopGroups(domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, filter As %String(MAXLEN=32767) = "", skipListIds As %ListOfDataTypes = "", language As %String = "en", entType As %Integer = {$$$ENTTYPECONCEPT}, pUseStems As %Boolean = 0) As %XML.DataSet [ Internal, WebMethod ]\n'})}),"\n",(0,n.jsx)(t.h3,{id:"gettoptfidf",children:"GetTopTFIDF"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTopTFIDF(pDomainId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pEntType As %Integer = {$$$ENTTYPECONCEPT}, pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the top entities for a given domain (optionally filtered through pFilter) by multiplying their Term Frequency with their Inverse Document Frequency: IDF(e) = $zlog( [ SourceCount - spread(e) + 0.5 ] / [ spread(e) + 0.5 ] )"}),"\n",(0,n.jsx)(t.h3,{id:"getvalue",children:"GetValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetValue(domainid As %Integer, entityid As %Integer, vSrcId As %Integer = 0) As %Library.String [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the entity string value corresponding to the specified entity ID, if any."}),"\n",(0,n.jsx)(t.h3,{id:"isattributed",children:"IsAttributed"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod IsAttributed(pDomainId As %Integer, pEntOccId As %Integer, pAttTypeId As %Integer, vSrcId As %Integer = 0) As %Library.Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Checks if a given entity occurrence has the requested attribute pAttTypeId."})]})}function d(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>a,x:()=>l});var n=s(96540);const r={},i=n.createContext(r);function a(e){const t=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),n.createElement(i.Provider,{value:t},e.children)}}}]);