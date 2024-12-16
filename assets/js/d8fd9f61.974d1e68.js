"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[1091],{22342:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>a,default:()=>d,frontMatter:()=>r,toc:()=>l});var n=s(74848),i=s(28453);const r={pagination_prev:null,pagination_next:null},a="%iKnow.Queries.SourceQAPI",l=[{value:"Methods",id:"methods",level:2},{value:"GetAttributesExecute",id:"getattributesexecute",level:3},{value:"GetAttributesFetch",id:"getattributesfetch",level:3},{value:"GetAttributesClose",id:"getattributesclose",level:3},{value:"GetByCrcIdsExecute",id:"getbycrcidsexecute",level:3},{value:"GetByCrcIdsFetch",id:"getbycrcidsfetch",level:3},{value:"GetByCrcIdsClose",id:"getbycrcidsclose",level:3},{value:"GetByCrcMaskExecute",id:"getbycrcmaskexecute",level:3},{value:"GetByCrcMaskFetch",id:"getbycrcmaskfetch",level:3},{value:"GetByCrcMaskClose",id:"getbycrcmaskclose",level:3},{value:"GetByCrcsExecute",id:"getbycrcsexecute",level:3},{value:"GetByCrcsFetch",id:"getbycrcsfetch",level:3},{value:"GetByCrcsClose",id:"getbycrcsclose",level:3},{value:"GetByDomainExecute",id:"getbydomainexecute",level:3},{value:"GetByDomainFetch",id:"getbydomainfetch",level:3},{value:"GetByDomainClose",id:"getbydomainclose",level:3},{value:"GetByEntitiesExecute",id:"getbyentitiesexecute",level:3},{value:"GetByEntitiesFetch",id:"getbyentitiesfetch",level:3},{value:"GetByEntitiesClose",id:"getbyentitiesclose",level:3},{value:"GetByEntityIdsExecute",id:"getbyentityidsexecute",level:3},{value:"GetByEntityIdsFetch",id:"getbyentityidsfetch",level:3},{value:"GetByEntityIdsClose",id:"getbyentityidsclose",level:3},{value:"GetByEquivalentIdsExecute",id:"getbyequivalentidsexecute",level:3},{value:"GetByEquivalentIdsFetch",id:"getbyequivalentidsfetch",level:3},{value:"GetByEquivalentIdsClose",id:"getbyequivalentidsclose",level:3},{value:"GetByEquivalentsExecute",id:"getbyequivalentsexecute",level:3},{value:"GetByEquivalentsFetch",id:"getbyequivalentsfetch",level:3},{value:"GetByEquivalentsClose",id:"getbyequivalentsclose",level:3},{value:"GetByPathIdsExecute",id:"getbypathidsexecute",level:3},{value:"GetByPathIdsFetch",id:"getbypathidsfetch",level:3},{value:"GetByPathIdsClose",id:"getbypathidsclose",level:3},{value:"GetCountByCrcIds",id:"getcountbycrcids",level:3},{value:"GetCountByCrcMask",id:"getcountbycrcmask",level:3},{value:"GetCountByCrcs",id:"getcountbycrcs",level:3},{value:"GetCountByDomain",id:"getcountbydomain",level:3},{value:"GetCountByEntities",id:"getcountbyentities",level:3},{value:"GetCountByEntityIds",id:"getcountbyentityids",level:3},{value:"GetCountByPathIds",id:"getcountbypathids",level:3},{value:"GetExternalId",id:"getexternalid",level:3},{value:"GetFullReference",id:"getfullreference",level:3},{value:"GetLanguagesExecute",id:"getlanguagesexecute",level:3},{value:"GetLanguagesFetch",id:"getlanguagesfetch",level:3},{value:"GetLanguagesClose",id:"getlanguagesclose",level:3},{value:"GetSimilarExecute",id:"getsimilarexecute",level:3},{value:"GetSimilarFetch",id:"getsimilarfetch",level:3},{value:"GetSimilarClose",id:"getsimilarclose",level:3},{value:"GetSourceId",id:"getsourceid",level:3},{value:"GetSummaryExecute",id:"getsummaryexecute",level:3},{value:"GetSummaryFetch",id:"getsummaryfetch",level:3},{value:"GetSummaryClose",id:"getsummaryclose",level:3},{value:"GetSummaryDirect",id:"getsummarydirect",level:3},{value:"GetSummaryForTextExecute",id:"getsummaryfortextexecute",level:3},{value:"GetSummaryForTextFetch",id:"getsummaryfortextfetch",level:3},{value:"GetSummaryForTextClose",id:"getsummaryfortextclose",level:3},{value:"GetTopLanguage",id:"gettoplanguage",level:3}];function c(e){const t={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,i.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"iknowqueriessourceqapi",children:"%iKnow.Queries.SourceQAPI"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Queries.SourceQAPI Extends %iKnow.Queries.AbstractQAPI [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This is an automatically generated class, offering a functionally equivalent set of methods and queries as %iKnow.Queries.SourceAPI, exposed as SqlProc methods."}),"\n",(0,n.jsx)(t.p,{children:"See the classdocs for %iKnow.Queries.SourceAPI for more information."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"getattributesexecute",children:"GetAttributesExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetAttributesExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pSrcId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pTypes As %String(MAXLEN=32767) = "", pLevel As %Integer = {$$$IKATTLVLANY}) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns all the attributes of the Entity Occurrences, Paths and Sentences enclosed in the specified source, optionally filtered by level through pLevel and/or pType."}),"\n",(0,n.jsxs)(t.p,{children:["Please note the ",(0,n.jsx)(t.em,{children:"startPos"})," and ",(0,n.jsx)(t.em,{children:"span"})," result columns refer to positions within the path for path-level attributes (level=$$$IKATTLVLPATH) and sentence positions for the other attributes (level=$$$IKATTLVLSENT)."]}),"\n",(0,n.jsx)(t.h3,{id:"getattributesfetch",children:"GetAttributesFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetAttributesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetAttributesExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getattributesclose",children:"GetAttributesClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetAttributesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetAttributesExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcidsexecute",children:"GetByCrcIdsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByCrcIdsExecute(ByRef qHandle As %Binary,  domainid As %Integer, crcidlist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, sortByField As %String(MAXLEN=32767) = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all sources containing the given CRC ids."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcidsfetch",children:"GetByCrcIdsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcIdsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByCrcIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcidsclose",children:"GetByCrcIdsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcIdsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByCrcIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcmaskexecute",children:"GetByCrcMaskExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByCrcMaskExecute(ByRef qHandle As %Binary,  domainid As %Integer, head As %String(MAXLEN=32767) = {$$$WILDCARD}, relation As %String(MAXLEN=32767) = {$$$WILDCARD}, tail As %String(MAXLEN=32767) = {$$$WILDCARD}, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", sortByField As %String(MAXLEN=32767) = "", pActualFormOnly As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all sources containing a CRC satisfying the given CRC Mask."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcmaskfetch",children:"GetByCrcMaskFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcMaskFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByCrcMaskExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcmaskclose",children:"GetByCrcMaskClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcMaskClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByCrcMaskExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcsexecute",children:"GetByCrcsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByCrcsExecute(ByRef qHandle As %Binary,  domainid As %Integer, crclist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, sortByField As %String(MAXLEN=32767) = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all sources containing the given CRCs."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcsfetch",children:"GetByCrcsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByCrcsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbycrcsclose",children:"GetByCrcsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByCrcsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByCrcsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbydomainexecute",children:"GetByDomainExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByDomainExecute(ByRef qHandle As %Binary,  domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", sortByField As %String(MAXLEN=32767) = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Returns all sources within a domain, optionally filtered through a %iKnow.Filters.Filter object passed in as ",(0,n.jsx)(t.em,{children:"filter"}),"."]}),"\n",(0,n.jsx)(t.h3,{id:"getbydomainfetch",children:"GetByDomainFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByDomainFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByDomainExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbydomainclose",children:"GetByDomainClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByDomainClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByDomainExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyentitiesexecute",children:"GetByEntitiesExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByEntitiesExecute(ByRef qHandle As %Binary,  domainid As %Integer, entitylist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, attributeFilter As %String(MAXLEN=32767) = "", sortByField As %String(MAXLEN=32767) = "", pActualFormOnly As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method will retrieve all sources containing any (if setop = $$$UNION) or all (if setop = $$$INTERSECT) of the entities supplied through entitylist."}),"\n",(0,n.jsx)(t.p,{children:"The scope of this query can be limited through supplying a %iKnow.Filters.Filter object for the filter parameter to restrict the result to those sources satisfying the filter criteria."}),"\n",(0,n.jsx)(t.p,{children:'By default, results are ordered by decreasing source id. You can override this by setting sortByField to the name of a metadata field (optionally appended with " ASC" or " DESC" for this domain to order by that field\'s value.'}),"\n",(0,n.jsx)(t.p,{children:"The attributeFilter argument can be used to filter the results to only those where the requested entities (entitylist) appear in the context of a particular (set of) attribute(s). By using the negative attribute ID, you can select only those occurrences NOT appearing in the context of that attribute. For example, passing in $lb($$$IKATTNEGATION) will restrict the result to only those entities in a negative context and $lb(-$$$IKATTNEGATION) the ones in an affirmative context. Note that the use of this argument may have a significant performance impact."}),"\n",(0,n.jsx)(t.p,{children:"If stemming is enabled for this domain through $$$IKPSTEMMING, sources containing any actual form of the entities in entityList will be returned. Use pActualFormOnly=1 to retrieve only those sources containing the actual forms in entitylist. This argument is ignored if stemming is not enabled."}),"\n",(0,n.jsx)(t.h3,{id:"getbyentitiesfetch",children:"GetByEntitiesFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEntitiesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByEntitiesExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyentitiesclose",children:"GetByEntitiesClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEntitiesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByEntitiesExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyentityidsexecute",children:"GetByEntityIdsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByEntityIdsExecute(ByRef qHandle As %Binary,  domainid As %Integer, entityidlist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, attributeFilter As %String(MAXLEN=32767) = "", sortByField As %String(MAXLEN=32767) = "", pActualFormOnly As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all sources containing the given entity ids."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getbyentityidsfetch",children:"GetByEntityIdsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEntityIdsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByEntityIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyentityidsclose",children:"GetByEntityIdsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEntityIdsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByEntityIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyequivalentidsexecute",children:"GetByEquivalentIdsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByEquivalentIdsExecute(ByRef qHandle As %Binary,  domainid As %Integer, entityidlist As %String(MAXLEN=32767), setid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Deprecated"}),"\n",(0,n.jsx)(t.h3,{id:"getbyequivalentidsfetch",children:"GetByEquivalentIdsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEquivalentIdsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByEquivalentIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyequivalentidsclose",children:"GetByEquivalentIdsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEquivalentIdsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByEquivalentIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyequivalentsexecute",children:"GetByEquivalentsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByEquivalentsExecute(ByRef qHandle As %Binary,  domainid As %Integer, entitylist As %String(MAXLEN=32767), setid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Deprecated"}),"\n",(0,n.jsx)(t.h3,{id:"getbyequivalentsfetch",children:"GetByEquivalentsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEquivalentsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByEquivalentsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbyequivalentsclose",children:"GetByEquivalentsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByEquivalentsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByEquivalentsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbypathidsexecute",children:"GetByPathIdsExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByPathIdsExecute(ByRef qHandle As %Binary,  domainid As %Integer, pathidlist As %String(MAXLEN=32767), page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", sortByField As %String(MAXLEN=32767) = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves all sources containing the given path ids."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getbypathidsfetch",children:"GetByPathIdsFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByPathIdsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetByPathIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getbypathidsclose",children:"GetByPathIdsClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetByPathIdsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetByPathIdsExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getcountbycrcids",children:"GetCountByCrcIds"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByCrcIds(domainid As %Integer, crcidlist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "") As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sources containing the given CRC ids."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbycrcmask",children:"GetCountByCrcMask"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByCrcMask(domainid As %Integer, head As %String(MAXLEN=32767) = {$$$WILDCARD}, relation As %String(MAXLEN=32767) = {$$$WILDCARD}, tail As %String(MAXLEN=32767) = {$$$WILDCARD}, filter As %String(MAXLEN=32767) = "", Output scText As %String = "", pActualFormOnly As %Boolean = 0) As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sources containing a CRC satisfying the given CRC Mask."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbycrcs",children:"GetCountByCrcs"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByCrcs(domainid As %Integer, crclist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "") As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sources containing the given CRCs."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbydomain",children:"GetCountByDomain"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByDomain(domainid As %Integer, filter As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["This method returns the total number of sources in the specified domain, optionally filtered through a %iKnow.Filters.Filter object passed in as ",(0,n.jsx)(t.em,{children:"filter"}),"."]}),"\n",(0,n.jsx)(t.h3,{id:"getcountbyentities",children:"GetCountByEntities"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByEntities(domainid As %Integer, entitylist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "", pActualFormOnly As %Boolean = 0) As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sources containing the given entities."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbyentityids",children:"GetCountByEntityIds"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByEntityIds(domainid As %Integer, entityidlist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", setop As %Integer = {$$$UNION}, Output scText As %String = "", pActualFormOnly As %Boolean = 0) As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sources containing the given entity ids."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbypathids",children:"GetCountByPathIds"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByPathIds(domainid As %Integer, pathidlist As %String(MAXLEN=32767), filter As %String(MAXLEN=32767) = "", Output scText As %String = "") As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the number of sources containing the given path ids."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getexternalid",children:"GetExternalId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetExternalId(domainid As %Integer, srcId As %Integer, Output scText As %String = "") As %Library.String [ SqlProc ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Retrieves the external ID for the source identified by ",(0,n.jsx)(t.em,{children:"srcId"}),"."]}),"\n",(0,n.jsx)(t.p,{children:"A negative srcId is considered to refer to a Virtual Source."}),"\n",(0,n.jsx)(t.h3,{id:"getfullreference",children:"GetFullReference"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetFullReference(domainId As %Integer, srcId As %Integer, Output scText As %String = "") As %Library.String [ SqlProc ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Retrieves the Full Reference for the source identified by ",(0,n.jsx)(t.em,{children:"srcId"}),"."]}),"\n",(0,n.jsx)(t.p,{children:"A negative srcId is considered to refer to a Virtual Source."}),"\n",(0,n.jsx)(t.h3,{id:"getlanguagesexecute",children:"GetLanguagesExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetLanguagesExecute(ByRef qHandle As %Binary,  domainid As %Integer, sourceid As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This method returns, for a given source, all languages the iKnow Automatic Language Identification algorithm has identified for the sentences it contains. For each language, it will list the sum of ALI confidence ratings when assigning the language to a sentence, plus the total number of sentences the language was assigned to. If ALI was disabled when indexing this source, confidence ratings will be set to 0."}),"\n",(0,n.jsx)(t.p,{children:"A negative Source ID is interpreted as a Virtual Source."}),"\n",(0,n.jsx)(t.h3,{id:"getlanguagesfetch",children:"GetLanguagesFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetLanguagesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetLanguagesExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getlanguagesclose",children:"GetLanguagesClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetLanguagesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetLanguagesExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getsimilarexecute",children:"GetSimilarExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetSimilarExecute(ByRef qHandle As %Binary,  domainid As %Integer, sourceid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", algorithm As %String(MAXLEN=32767) = {$$$SIMSRCSIMPLE}, algorithmParams As %String(MAXLEN=32767) = "", skipListIds As %String(MAXLEN=32767) = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Retrieves those sources that have similar content to the one specified through the ",(0,n.jsx)(t.em,{children:"sourceId"})," parameter. Similarity is expressed by the (approximated) ratio between the length of the source and the overlap with the starting source, based on the chosen ",(0,n.jsx)(t.em,{children:"algorithm"})," (according to the algorithm-specific ",(0,n.jsx)(t.em,{children:"algorithmParams"}),")."]}),"\n",(0,n.jsxs)(t.p,{children:[(0,n.jsx)(t.strong,{children:"Note:"})," whenever possible, use a filter object to limit the search space for this query to perform adequately."]}),"\n",(0,n.jsx)(t.p,{children:"If the supplied Source ID is negative, it is treated as a Virtual Source. While this allows looking for sources similar to a Virtual Source, the query will not verify against other Virtual Sources and they will therefore not appear in the results of this query."}),"\n",(0,n.jsxs)(t.p,{children:["The ",(0,n.jsx)(t.em,{children:"skipListIds"})," parameter allows a user to select one or more SkipLists of which the elements should be completely ignored in the similarity algorithm. Skiplisted elements will be ignored both for selecting similar candidates AND the calculation of their similarity score."]}),"\n",(0,n.jsx)(t.p,{children:"The following algorithms are currently available:"}),"\n",(0,n.jsxs)(t.ul,{children:["\n",(0,n.jsxs)(t.li,{children:["$$$SIMSRCSIMPLE: basic algorithm simply looking at entities (or CRCs or CCs) present in the reference source.",(0,n.jsx)(t.br,{}),"\nParameters:\n",(0,n.jsxs)(t.ol,{children:["\n",(0,n.jsx)(t.li,{children:'targetType As %String - either "ent", "crc" or "cc" (case insensitive, defaults to "ent"). Please note this implies the result columns will represent the corresponding targets, despite being named "nbOf_Ent_***"'}),"\n"]}),"\n"]}),"\n",(0,n.jsxs)(t.li,{children:["$$$SIMSRCDOMENTS starts looking for similar sources based on dominant terms in the reference source.",(0,n.jsx)(t.br,{}),"\nParameters:\n",(0,n.jsxs)(t.ol,{children:["\n",(0,n.jsx)(t.li,{children:"strict As %Boolean - whether or not to select only sources for which at least one of the reference source's dominant concepts are also dominant in a similar source. (defaults to 1)"}),"\n"]}),"\n"]}),"\n"]}),"\n",(0,n.jsx)(t.h3,{id:"getsimilarfetch",children:"GetSimilarFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSimilarFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetSimilarExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getsimilarclose",children:"GetSimilarClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSimilarClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetSimilarExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getsourceid",children:"GetSourceId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetSourceId(domainid As %Integer, externalId As %String(MAXLEN=32767), Output scText As %String = "") As %Library.Integer [ SqlProc ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Retrieves the source ID for the source identified by ",(0,n.jsx)(t.em,{children:"externalId"}),"."]}),"\n",(0,n.jsx)(t.h3,{id:"getsummaryexecute",children:"GetSummaryExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetSummaryExecute(ByRef qHandle As %Binary,  domainId As %Integer, srcId As %Integer, length As %Integer = 5, summaryConfig As %String(MAXLEN=32767) = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method returns the most relevant sentences of the requested source, in their original order. The number of sentences returned is controlled by the length parameter."}),"\n",(0,n.jsx)(t.p,{children:"A negative Source ID is interpreted as a Virtual Source."}),"\n",(0,n.jsx)(t.h3,{id:"getsummaryfetch",children:"GetSummaryFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSummaryFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetSummaryExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getsummaryclose",children:"GetSummaryClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSummaryClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetSummaryExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getsummarydirect",children:"GetSummaryDirect"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetSummaryDirect(domainId As %Integer, sourceId As %Integer, length As %Integer = 5, Output isTruncated As %Boolean = 0, Output scText As %String = "", separator As %String(MAXLEN=32767) = " ... ", summaryConfig As %String(MAXLEN=32767) = "") As %Library.String [ SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This is a utility wrapper method around GetSummary, returning the summary sentences as a single concatenated string."}),"\n",(0,n.jsxs)(t.p,{children:["The ",(0,n.jsx)(t.em,{children:"isTruncated"})," output parameter indicates whether or not the returned string is complete or was truncated to avoid MAXSTRING errors. This can happen when either an individual sentence surpassed the maximum string length or when the concatenation of these sentences surpassed it."]}),"\n",(0,n.jsx)(t.h3,{id:"getsummaryfortextexecute",children:"GetSummaryForTextExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetSummaryForTextExecute(ByRef qHandle As %Binary,  pDomainId As %Integer = 0, pText As %String(MAXLEN=32000), pLength As %Integer = 5, pSummaryConfig As %String(MAXLEN=32767) = "", pLanguage As %String(MAXLEN=32767) = "en", pUserDict As %String(MAXLEN=32767) = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method returns the most relevant sentences of the supplied text, in their original order. The number of sentences returned is controlled by the length parameter."}),"\n",(0,n.jsx)(t.p,{children:"Note: the value of pDomainId is ignored since 2013.2"}),"\n",(0,n.jsx)(t.h3,{id:"getsummaryfortextfetch",children:"GetSummaryForTextFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSummaryForTextFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetSummaryForTextExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getsummaryfortextclose",children:"GetSummaryForTextClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSummaryForTextClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetSummaryForTextExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"gettoplanguage",children:"GetTopLanguage"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTopLanguage(domainid As %Integer, sourceid As %Integer, Output totalConfidence As %Numeric = "", Output numberOfSentences As %Integer = "", Output scText As %String = "") As %Library.String [ SqlProc ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["This method returns the language of a given source, calculated as the one with the highest total confidence rating for the individual sentences in the source. This total confidence, as well as the number of sentences to which this language was assigned is provided through output variables ",(0,n.jsx)(t.em,{children:"totalConfidence"})," and ",(0,n.jsx)(t.em,{children:"numberOfSentences"}),"."]}),"\n",(0,n.jsxs)(t.p,{children:["A ",(0,n.jsx)(t.em,{children:"totalConfidence"})," of 0 indicates ALI was switched off when indexing this source."]}),"\n",(0,n.jsx)(t.p,{children:"A negative Source ID is interpreted as a Virtual Source."})]})}function d(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>a,x:()=>l});var n=s(96540);const i={},r=n.createContext(i);function a(e){const t=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),n.createElement(r.Provider,{value:t},e.children)}}}]);