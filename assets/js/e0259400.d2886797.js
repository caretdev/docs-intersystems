"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[39700],{64562:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>c,default:()=>o,frontMatter:()=>r,toc:()=>l});var n=s(74848),i=s(28453);const r={pagination_prev:null,pagination_next:null},c="%iKnow.Queries.SentenceQAPI",l=[{value:"Methods",id:"methods",level:2},{value:"GetAttributesExecute",id:"getattributesexecute",level:3},{value:"GetAttributesFetch",id:"getattributesfetch",level:3},{value:"GetAttributesClose",id:"getattributesclose",level:3},{value:"GetByCrcIdsExecute",id:"getbycrcidsexecute",level:3},{value:"GetByCrcIdsFetch",id:"getbycrcidsfetch",level:3},{value:"GetByCrcIdsClose",id:"getbycrcidsclose",level:3},{value:"GetByCrcMaskExecute",id:"getbycrcmaskexecute",level:3},{value:"GetByCrcMaskFetch",id:"getbycrcmaskfetch",level:3},{value:"GetByCrcMaskClose",id:"getbycrcmaskclose",level:3},{value:"GetByCrcsExecute",id:"getbycrcsexecute",level:3},{value:"GetByCrcsFetch",id:"getbycrcsfetch",level:3},{value:"GetByCrcsClose",id:"getbycrcsclose",level:3},{value:"GetByEntitiesExecute",id:"getbyentitiesexecute",level:3},{value:"GetByEntitiesFetch",id:"getbyentitiesfetch",level:3},{value:"GetByEntitiesClose",id:"getbyentitiesclose",level:3},{value:"GetByEntityIdsExecute",id:"getbyentityidsexecute",level:3},{value:"GetByEntityIdsFetch",id:"getbyentityidsfetch",level:3},{value:"GetByEntityIdsClose",id:"getbyentityidsclose",level:3},{value:"GetByPathIdsExecute",id:"getbypathidsexecute",level:3},{value:"GetByPathIdsFetch",id:"getbypathidsfetch",level:3},{value:"GetByPathIdsClose",id:"getbypathidsclose",level:3},{value:"GetBySourceExecute",id:"getbysourceexecute",level:3},{value:"GetBySourceFetch",id:"getbysourcefetch",level:3},{value:"GetBySourceClose",id:"getbysourceclose",level:3},{value:"GetCountByCrcIds",id:"getcountbycrcids",level:3},{value:"GetCountByCrcMask",id:"getcountbycrcmask",level:3},{value:"GetCountByCrcs",id:"getcountbycrcs",level:3},{value:"GetCountByDomain",id:"getcountbydomain",level:3},{value:"GetCountByEntities",id:"getcountbyentities",level:3},{value:"GetCountByEntityIds",id:"getcountbyentityids",level:3},{value:"GetCountByPathIds",id:"getcountbypathids",level:3},{value:"GetCountBySource",id:"getcountbysource",level:3},{value:"GetLanguage",id:"getlanguage",level:3},{value:"GetNewBySourceExecute",id:"getnewbysourceexecute",level:3},{value:"GetNewBySourceFetch",id:"getnewbysourcefetch",level:3},{value:"GetNewBySourceClose",id:"getnewbysourceclose",level:3},{value:"GetPartLiteral",id:"getpartliteral",level:3},{value:"GetPartsExecute",id:"getpartsexecute",level:3},{value:"GetPartsFetch",id:"getpartsfetch",level:3},{value:"GetPartsClose",id:"getpartsclose",level:3},{value:"GetPosition",id:"getposition",level:3},{value:"GetSourceId",id:"getsourceid",level:3},{value:"GetValue",id:"getvalue",level:3}];function a(e){const t={blockquote:"blockquote",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"iknowqueriessentenceqapi",children:"%iKnow.Queries.SentenceQAPI"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Queries.SentenceQAPI Extends %iKnow.Queries.AbstractQAPI [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This is an automatically generated class, offering a functionally equivalent set of methods and queries as %iKnow.Queries.SentenceAPI, exposed as SqlProc methods."}),"\n",(0,n.jsx)(t.p,{children:"See the classdocs for %iKnow.Queries.SentenceAPI for more information."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"getattributesexecute",children:"GetAttributesExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetAttributesExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pSentId As %Integer, vSrcId As %Integer = 0, pIncludePathAttributes As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Returns all attributes for a given sentence. By default, only entity-level attributes are returned, with the ",(0,n.jsx)(t.em,{children:"wordPositions"})," result column referring which words within the affected entities are actually attributed. Using pIncludePathAttributes, also path-level attributes (such as implied negation) can be returned, but these will have no values for the ",(0,n.jsx)(t.em,{children:"wordPositions"})," column. Also note that the ",(0,n.jsx)(t.em,{children:"start"})," and ",(0,n.jsx)(t.em,{children:"span"})," columns for path-level results will refer to positions within those paths and not entity positions within the sentence. See also GetAttributes in %iKnow.Queries.PathAPI and GetOccurrenceAttributes in %iKnow.Queries.EntityAPI."]}),"\n",(0,n.jsx)(t.p,{children:"Any named attribute properties are also included through sub-nodes (not available through SQL or SOAP):"}),"\n",(0,n.jsxs)(t.blockquote,{children:["\n",(0,n.jsxs)(t.p,{children:["pResult(",(0,n.jsx)(t.em,{children:"rowNumber"}),", ",(0,n.jsx)(t.em,{children:"propertyName"}),") = ",(0,n.jsx)(t.em,{children:"propertyValue"})]}),"\n"]}),"\n",(0,n.jsx)(t.p,{children:"The returned wordPositions apply to the entities starting from start up to offset and only extend to the last attributed word position (there might be more words within the entity)."}),"\n",(0,n.jsx)(t.h3,{id:"getattributesfetch",children:"GetAttributesFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetAttributesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetAttributesExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getattributesclose",children:"GetAttributesClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetAttributesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetAttributesExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcidsexecute",children:"GetByCrcIdsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByCrcIdsExecute(ByRef qHandle As %Binary,  domainid As %Integer, crcidlist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", page As %Integer = 1, pagesize As %Integer = 10, setop As %Integer = {$$$UNION}) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all sentences containing the given CRC ids, optionally limited to all sentences in records satisfying filter. For querying Virtual Sources, set filter to a single, negative integer. In this case, crcidlist is expected to contain virtual Entity IDs."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcidsfetch",children:"GetByCrcIdsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcIdsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByCrcIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcidsclose",children:"GetByCrcIdsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcIdsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByCrcIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcmaskexecute",children:"GetByCrcMaskExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByCrcMaskExecute(ByRef qHandle As %Binary,  domainid As %Integer, head As %String(MAXLEN=32767) = {$$$WILDCARD}, relation As %String(MAXLEN=32767) = {$$$WILDCARD}, tail As %String(MAXLEN=32767) = {$$$WILDCARD}, filter As %String(MAXLEN=32767) = "", page As %Integer = 1, pagesize As %Integer = 10, setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all sentences containing a CRC satisfying the given CRC Mask, optionally limited to all sentences in records satisfying filter. For querying Virtual Sources, set filter to a single, negative integer."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcmaskfetch",children:"GetByCrcMaskFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcMaskFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByCrcMaskExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcmaskclose",children:"GetByCrcMaskClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcMaskClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByCrcMaskExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcsexecute",children:"GetByCrcsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByCrcsExecute(ByRef qHandle As %Binary,  domainid As %Integer, crclist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", page As %Integer = 1, pagesize As %Integer = 10, setop As %Integer = {$$$UNION}) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all sentences containing the given CRCs, optionally limited to all sentences in records satisfying filter. For querying Virtual Sources, set filter to a single, negative integer."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcsfetch",children:"GetByCrcsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByCrcsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcsclose",children:"GetByCrcsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByCrcsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyentitiesexecute",children:"GetByEntitiesExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByEntitiesExecute(ByRef qHandle As %Binary,  domainid As %Integer, entitylist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", page As %Integer = 1, pagesize As %Integer = 10, setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["This method will retrieve all sentences containing any (if ",(0,n.jsx)(t.em,{children:"setop"})," = $$$UNION) or all (if ",(0,n.jsx)(t.em,{children:"setop"})," = $$$INTERSECT) of the entities supplied through ",(0,n.jsx)(t.em,{children:"entitylist"}),", optionally limited to all sentences in records satisfying filter. For querying Virtual Sources, set filter to a single, negative integer."]}),"\n",(0,n.jsx)(t.p,{children:"If stemming is enabled for this domain through $$$IKPSTEMMING, sentences containing any actual form of the entities in entityList will be returned. Use pActualFormOnly=1 to retrieve only those sentences containing the actual forms in entitylist. This argument is ignored if stemming is not enabled."}),"\n",(0,n.jsx)(t.h3,{id:"getbyentitiesfetch",children:"GetByEntitiesFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEntitiesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByEntitiesExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyentitiesclose",children:"GetByEntitiesClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEntitiesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByEntitiesExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyentityidsexecute",children:"GetByEntityIdsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByEntityIdsExecute(ByRef qHandle As %Binary,  domainid As %Integer, entityidlist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", page As %Integer = 1, pagesize As %Integer = 10, setop As %Integer = {$$$UNION}, pActualFormOnly As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all sentences containing the given entity IDs., optionally limited to all sentences in records satisfying filter. For querying Virtual Sources, set filter to a single, negative integer. In this case, entityidlist is expected to contain virtual Entity IDs."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getbyentityidsfetch",children:"GetByEntityIdsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEntityIdsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByEntityIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyentityidsclose",children:"GetByEntityIdsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEntityIdsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByEntityIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbypathidsexecute",children:"GetByPathIdsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByPathIdsExecute(ByRef qHandle As %Binary,  domainid As %Integer, pathidlist As %String(MAXLEN=32767), sourceidlist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all sentences containing the given path IDs."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getbypathidsfetch",children:"GetByPathIdsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByPathIdsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByPathIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbypathidsclose",children:"GetByPathIdsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByPathIdsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByPathIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbysourceexecute",children:"GetBySourceExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetBySourceExecute(ByRef qHandle As %Binary,  domainid As %Integer, sourceid As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the sentences for the given source. A negative source ID is interpreted as a Virtual Source."}),"\n",(0,n.jsx)(t.h3,{id:"getbysourcefetch",children:"GetBySourceFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetBySourceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetBySourceExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbysourceclose",children:"GetBySourceClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetBySourceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetBySourceExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getcountbycrcids",children:"GetCountByCrcIds"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByCrcIds(domainid As %Integer, crcidlist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "") As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sentences containing the given CRC ids, optionally limited to all sentences in records satisfying filter. For querying Virtual Sources, set filter to a single, negative integer. In this case, crcidlist is expected to contain virtual Entity IDs."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbycrcmask",children:"GetCountByCrcMask"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByCrcMask(domainid As %Integer, head As %String(MAXLEN=32767) = {$$$WILDCARD}, relation As %String(MAXLEN=32767) = {$$$WILDCARD}, tail As %String(MAXLEN=32767) = {$$$WILDCARD}, filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "", pActualFormOnly As %Boolean = 0) As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sentences containing a CRC satisfying the given CRC Mask, optionally limited to all sentences in records satisfying filter. For querying Virtual Sources, set filter to a single, negative integer."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbycrcs",children:"GetCountByCrcs"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByCrcs(domainid As %Integer, crclist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "") As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sentences containing the given CRCs, optionally limited to all sentences in records satisfying filter. For querying Virtual Sources, set filter to a single, negative integer."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbydomain",children:"GetCountByDomain"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByDomain(domainid As %Integer, filter As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Returns the total number of sentences for a given domain, optionally filtered to those sources satisfying a %iKnow.Filters.Filter object passed in through ",(0,n.jsx)(t.em,{children:"filter"}),"."]}),"\n",(0,n.jsx)(t.h3,{id:"getcountbyentities",children:"GetCountByEntities"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByEntities(domainid As %Integer, entitylist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "", pActualFormOnly As %Boolean = 0) As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sentences containing the given entities, optionally limited to all sentences in records satisfying filter. For querying Virtual Sources, set filter to a single, negative integer."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbyentityids",children:"GetCountByEntityIds"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByEntityIds(domainid As %Integer, entityidlist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "", pActualFormOnly As %Boolean = 0) As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the nubmer of sentences containing the given entity ids. For querying Virtual Sources, set filter to a single, negative integer. In this case, entityidlist is expected to contain virtual Entity IDs."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.p,{children:"If stemming is enabled for this domain through $$$IKPSTEMMING, sources containing any actual form of the entities in entityidlist will be returned. Use pActualFormOnly=1 to retrieve only those sources containing the actual forms in entityidlist. This argument is ignored if stemming is not enabled."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbypathids",children:"GetCountByPathIds"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByPathIds(domainid As %Integer, pathidlist As %String(MAXLEN=32767), sourceidlist As %String(MAXLEN=32767), Output scText As %String = "") As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sentences containing the given path IDs."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbysource",children:"GetCountBySource"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %String(MAXLEN=32767), Output scText As %String = "") As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the total number of sentences for the given sources. Negative Source IDs are interpreted as referring to Virtual Sources."}),"\n",(0,n.jsx)(t.h3,{id:"getlanguage",children:"GetLanguage"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetLanguage(domainid As %Integer, sentenceid As %Integer, Output confidence As %Numeric = "", vSrcId As %Integer = 0) As %Library.String [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the language of the given sentence, as derived by the Automatic Language Identification algorithm or, if ALI was disabled, the language specified when indexing this sentence."}),"\n",(0,n.jsx)(t.p,{children:"The confidence level is returned as well through an output parameter. If the confidence level is 0, this means ALI was not used and the language was defined by the user loading the source."}),"\n",(0,n.jsx)(t.p,{children:"If a Virtual Source ID is specified, the sentence ID is treated as a virtual one, in the context of the supplied vSrcId."}),"\n",(0,n.jsx)(t.h3,{id:"getnewbysourceexecute",children:"GetNewBySourceExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetNewBySourceExecute(ByRef qHandle As %Binary,  domainid As %Integer, sourceid As %Integer, length As %Integer = 5, filter As %String(MAXLEN=32767) = "", algorithm As %String(MAXLEN=32767) = {$$$NEWENTSIMPLE}, algorithmParams As %String(MAXLEN=32767) = "", newEntitiesWindow As %Integer = 100, skipListIds As %String(MAXLEN=32767) = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Retrieves the sentences with the most significant concepts compared to the rest of the domain (or optionally a subset thereof as filtered through ",(0,n.jsx)(t.em,{children:"filter"}),"). This array of sentences is based on results of the GetNewBySource query in %iKnow.Queries.EntityAPI, using the supplied algorithm and parameter values. The scores of the first [",(0,n.jsx)(t.em,{children:"newEntitiesWindow"}),"] concepts are aggregated across sentences to produce the result of this query."]}),"\n",(0,n.jsx)(t.p,{children:"Please refer to the documentation of the GetNewBySource query in %iKnow.Queries.EntityAPI for more details on the parameters and available algorithms."}),"\n",(0,n.jsx)(t.h3,{id:"getnewbysourcefetch",children:"GetNewBySourceFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetNewBySourceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetNewBySourceExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getnewbysourceclose",children:"GetNewBySourceClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetNewBySourceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetNewBySourceExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getpartliteral",children:"GetPartLiteral"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetPartLiteral(domainId As %Integer, sentenceId As %Integer, position As %Integer, vSrcId As %Integer = 0) As %Library.String [ SqlProc ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the literal of the entity or nonrelevant at the specified position."}),"\n",(0,n.jsx)(t.h3,{id:"getpartsexecute",children:"GetPartsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetPartsExecute(ByRef qHandle As %Binary,  domainid As %Integer, sentenceid As %Integer, includeCRCMarkers As %Boolean = 0, includePathMarkers As %Boolean = 0, vSrcId As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the elements (concepts, relations and nonrelevants) that make up the sentence, optional including markers for the beginning and end of any CRCs or Paths in the sentence. This information can be used to display the sentence value (see also GetValue) and/or highlight specific elements of interest."}),"\n",(0,n.jsxs)(t.blockquote,{children:["\n",(0,n.jsx)(t.p,{children:"Output structure:"}),"\n",(0,n.jsx)(t.p,{children:"result(pos) = $lb(entOccId, entUniId, entity, role)"}),"\n",(0,n.jsx)(t.p,{children:"when includeCRCMarkers = 1, adds"}),"\n",(0,n.jsx)(t.p,{children:"result(pos, [CRCHEAD | CRCRELATION | CRCTAIL]) = $lb(crcOccId, crcUniId)"}),"\n",(0,n.jsx)(t.p,{children:"when includePathMarkers = 1, adds"}),"\n",(0,n.jsx)(t.p,{children:"result(pos, [PATHBEGIN | PATHEND]) = $lb(pathId)"}),"\n"]}),"\n",(0,n.jsx)(t.p,{children:"Note: the subscript levels for CRC and Path markers are not available in the QAPI and WSAPI versions of this query."}),"\n",(0,n.jsx)(t.p,{children:"If a Virtual Source ID is specified, the sentence ID is treated as a virtual one, in the context of the supplied vSrcId."}),"\n",(0,n.jsx)(t.h3,{id:"getpartsfetch",children:"GetPartsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetPartsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetPartsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getpartsclose",children:"GetPartsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetPartsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetPartsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getposition",children:"GetPosition"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetPosition(domainId As %Integer, sentenceId As %Integer, vSrcId As %Integer = 0) As %Library.Integer [ SqlProc ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the position within the source this sentence occurs at (1-based)."}),"\n",(0,n.jsx)(t.h3,{id:"getsourceid",children:"GetSourceId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSourceId(domainId As %Integer, sentenceId As %Integer) As %Library.Integer [ SqlProc ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the source ID in which the supplied sentence ID occurs"}),"\n",(0,n.jsx)(t.h3,{id:"getvalue",children:"GetValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetValue(domainid As %Integer, sentenceid As %Integer, Output fullSentence As %Boolean = 1, vSrcId As %Integer = 0) As %Library.String [ SqlProc ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This method rebuilds a sentence based on the literals and entities it is composed of."}),"\n",(0,n.jsxs)(t.p,{children:["The string returned is the first part, up to the maximum string length, whereas the output parameter ",(0,n.jsx)(t.em,{children:"fullSentence"})," is an array containing all the parts in the right order, containing a %Boolean value at the top level indicating whether the returned string is the full sentence (1) or (if 0) the user should have to look into this array to learn the full sentence."]}),"\n",(0,n.jsx)(t.p,{children:"If a Virtual Source ID is specified, the sentence ID is treated as a virtual one, in the context of the supplied vSrcId."})]})}function o(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(a,{...e})}):a(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>c,x:()=>l});var n=s(96540);const i={},r=n.createContext(i);function c(e){const t=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:c(e.components),n.createElement(r.Provider,{value:t},e.children)}}}]);