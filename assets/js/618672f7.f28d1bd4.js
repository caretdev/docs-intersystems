"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[49124],{43817:(e,t,r)=>{r.r(t),r.d(t,{contentTitle:()=>i,default:()=>o,frontMatter:()=>a,toc:()=>l});var s=r(74848),n=r(28453);const a={pagination_prev:null,pagination_next:null},i="%iKnow.Semantics.DominanceAPI",l=[{value:"Parameters",id:"parameters",level:2},{value:"GetTopRT",id:"gettoprt",level:3},{value:"GetBySourceRT",id:"getbysourcert",level:3},{value:"GetProfileBySourceRT",id:"getprofilebysourcert",level:3},{value:"GetProfileByDomainRT",id:"getprofilebydomainrt",level:3},{value:"GetOverlapRT",id:"getoverlaprt",level:3},{value:"GetOverlapDetailsRT",id:"getoverlapdetailsrt",level:3},{value:"FindMostTypicalSourcesExp",id:"findmosttypicalsourcesexp",level:3},{value:"GetTypicalSourcesRT",id:"gettypicalsourcesrt",level:3},{value:"FindBreakingSourcesExp",id:"findbreakingsourcesexp",level:3},{value:"GetBreakingSourcesRT",id:"getbreakingsourcesrt",level:3},{value:"GetAggregateOverlapsRT",id:"getaggregateoverlapsrt",level:3},{value:"GetSourcesByCorrelationRT",id:"getsourcesbycorrelationrt",level:3},{value:"Methods",id:"methods",level:2},{value:"GetTop",id:"gettop",level:3},{value:"GetTopJob",id:"gettopjob",level:3},{value:"GetBySource",id:"getbysource",level:3},{value:"GetProfileBySource",id:"getprofilebysource",level:3},{value:"GetBySourceArray",id:"getbysourcearray",level:3},{value:"GetBySourceInternal",id:"getbysourceinternal",level:3},{value:"GetCountBySource",id:"getcountbysource",level:3},{value:"GetProfileCountBySource",id:"getprofilecountbysource",level:3},{value:"GetCountBySourceInternal",id:"getcountbysourceinternal",level:3},{value:"GetProfileByDomain",id:"getprofilebydomain",level:3},{value:"GetProfileCountByDomain",id:"getprofilecountbydomain",level:3},{value:"GetSourceValue",id:"getsourcevalue",level:3},{value:"GetDomainValue",id:"getdomainvalue",level:3},{value:"BuildOverlap",id:"buildoverlap",level:3},{value:"GetOverlap",id:"getoverlap",level:3},{value:"GetOverlapDetails",id:"getoverlapdetails",level:3},{value:"FindMostTypicalSources",id:"findmosttypicalsources",level:3},{value:"FindMostTypicalSourcesInternal",id:"findmosttypicalsourcesinternal",level:3},{value:"GetTypicalSources",id:"gettypicalsources",level:3},{value:"FindBreakingSources",id:"findbreakingsources",level:3},{value:"FindBreakingSourcesInternal",id:"findbreakingsourcesinternal",level:3},{value:"GetBreakingSources",id:"getbreakingsources",level:3},{value:"GetAggregateOverlaps",id:"getaggregateoverlaps",level:3},{value:"CalcSetOverlap",id:"calcsetoverlap",level:3},{value:"GetSourcesByCorrelation",id:"getsourcesbycorrelation",level:3}];function c(e){const t={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,n.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"iknowsemanticsdominanceapi",children:"%iKnow.Semantics.DominanceAPI"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Semantics.DominanceAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the ",(0,s.jsx)(t.a,{href:"https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW",children:"product documentation"})," for more detail."]}),"\n",(0,s.jsx)(t.p,{children:"Main class for retrieving dominant terms from sources."}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"gettoprt",children:"GetTopRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetTopRT = "entUniId:%Integer,entity:%String,score:%Numeric";\n'})}),"\n",(0,s.jsx)(t.h3,{id:"getbysourcert",children:"GetBySourceRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetBySourceRT = "id:%Integer,values:%List,type:%Integer,dominance:%Numeric";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returned column summary for GetBySource."}),"\n",(0,s.jsx)(t.h3,{id:"getprofilebysourcert",children:"GetProfileBySourceRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetProfileBySourceRT [ Deprecated ] = "id:%Integer,values:%List,type:%Integer,dominance:%Numeric";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returned column summary for GetProfileBySource."}),"\n",(0,s.jsx)(t.h3,{id:"getprofilebydomainrt",children:"GetProfileByDomainRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetProfileByDomainRT [ Deprecated ] = "id:%Integer,values:%List,type:%Integer,dominance:%Numeric";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returned column summary for GetProfileByDomain."}),"\n",(0,s.jsx)(t.h3,{id:"getoverlaprt",children:"GetOverlapRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetOverlapRT [ Deprecated ] = "id:%Integer,values:%Integer,type:%Integer,overlap:%Integer";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returned column summary for GetOverlap."}),"\n",(0,s.jsx)(t.h3,{id:"getoverlapdetailsrt",children:"GetOverlapDetailsRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetOverlapDetailsRT [ Deprecated ] = "srcid:%Integer,dominance:%Numeric,sentences:%List";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returned column summary for GetOverlapDetails."}),"\n",(0,s.jsx)(t.h3,{id:"findmosttypicalsourcesexp",children:"FindMostTypicalSourcesExp"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter FindMostTypicalSourcesExp [ Deprecated, Internal ] = 1;\n"})}),"\n",(0,s.jsx)(t.h3,{id:"gettypicalsourcesrt",children:"GetTypicalSourcesRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetTypicalSourcesRT [ Deprecated ] = "srcid:%Integer,extid:%String,coverage:%Numeric";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returned column summary for GetTypicalSources."}),"\n",(0,s.jsx)(t.h3,{id:"findbreakingsourcesexp",children:"FindBreakingSourcesExp"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter FindBreakingSourcesExp [ Deprecated, Internal ] = 1;\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getbreakingsourcesrt",children:"GetBreakingSourcesRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetBreakingSourcesRT [ Deprecated ] = "srcid:%Integer,extid:%String,uniqueness:%Numeric";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returned column summary for GetBreakingSources."}),"\n",(0,s.jsx)(t.h3,{id:"getaggregateoverlapsrt",children:"GetAggregateOverlapsRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetAggregateOverlapsRT [ Deprecated ] = "id:%Integer,overlapSet1:%Integer,pctSet1:%Numeric,overlapSet2:%Integer,pctSet2:%Numeric,aggPct:%Numeric";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returned column summary for GetAggregateOverlaps."}),"\n",(0,s.jsx)(t.h3,{id:"getsourcesbycorrelationrt",children:"GetSourcesByCorrelationRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetSourcesByCorrelationRT [ Deprecated ] = "srcid:%Integer,extid:%String,correlation:%Numeric";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returned column summary for GetAggregateOverlaps."}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"gettop",children:"GetTop"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTop(ByRef pResult, pDomainId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pAggregation As %String = "AVG", pEntRole As %Integer = {$$$SDCONCEPT}, pSkipLists As %List = "") As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returns the top entities for this domain, sorted by their aggregated dominance values."}),"\n",(0,s.jsx)(t.p,{children:'pAggregation defines how to aggregate the source-level values. Currently the only supported value is "AVG", which just calculates a regular average as a fast approximation. Future versions will offer more advanced aggregation modes (which may be slower to calculate).'}),"\n",(0,s.jsx)(t.h3,{id:"gettopjob",children:"GetTopJob"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTopJob(pDomainId As %Integer, pOffset As %Integer, pBits As %RawString, pJobID As %Integer, pLP As %Integer, pUseStemming As %Boolean) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getbysource",children:"GetBySource"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetBySource(ByRef result, domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns all dominant elements for a specific source. The type of elements returned can be set by the type parameter. Available types are $$$SDCONCEPT, $$$SDRELATION, $$$SDENTITY, $$$SDCRC, $$$SDPATH and $$$SDAGGREGATE."}),"\n",(0,s.jsx)(t.p,{children:"The elements returned can be limited to those with a dominance value above average by setting the cutoff parameter to $$$SDABOVEAVERAGE."}),"\n",(0,s.jsx)(t.h3,{id:"getprofilebysource",children:"GetProfileBySource"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetProfileBySource(ByRef result, domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}) As %Status [ Deprecated ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns the dominance profile for a specific source. The type of elements returned can be set by the type parameter. Available types are $$$SDCONCEPT, $$$SDRELATION, $$$SDENTITY, $$$SDCRC, $$$SDPATH and $$$SDAGGREGATE."}),"\n",(0,s.jsx)(t.p,{children:"The elements returned can be limited to those with a dominance value above average by setting the cutoff parameter to $$$SDABOVEAVERAGE."}),"\n",(0,s.jsx)(t.h3,{id:"getbysourcearray",children:"GetBySourceArray"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetBySourceArray(Output pArray, pDomainId As %Integer, pSrcId As %Integer, pType As %Integer = {$$$SDCONCEPT}, pByType As %Boolean = 0, pUseProfile As %Boolean = 1) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:'Returns the dominance profile of a particular source as an array: pArray(type, -dom, id) = "" or pArray(-dom, -length, id) = ""'}),"\n",(0,s.jsx)(t.h3,{id:"getbysourceinternal",children:"GetBySourceInternal"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetBySourceInternal(ByRef result, domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, pUseProfile As %Boolean = 0) As %Status [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getcountbysource",children:"GetCountBySource"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetCountBySource(domainid As %Integer, srcid As %Integer, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, ByRef sc As %Status) As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns the number of dominant terms found in a specific source. The type of elements counted can be set by the type parameter. Available types are $$$SDCONCEPT, $$$SDRELATION, $$$SDENTITY, $$$SDCRC, $$$SDPATH and $$$SDAGGREGATE."}),"\n",(0,s.jsx)(t.p,{children:"The number of elements counted can be limited to those with a dominance value above average by setting the cutoff parameter to $$$SDABOVEAVERAGE."}),"\n",(0,s.jsx)(t.h3,{id:"getprofilecountbysource",children:"GetProfileCountBySource"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetProfileCountBySource(domainid As %Integer, srcid As %Integer, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, ByRef sc As %Status) As %Integer [ Deprecated ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns the number of dominant terms in the profile of a specific source. The type of elements counted can be set by the type parameter. Available types are $$$SDCONCEPT, $$$SDRELATION, $$$SDENTITY, $$$SDCRC, $$$SDPATH and $$$SDAGGREGATE."}),"\n",(0,s.jsx)(t.p,{children:"The number of elements counted can be limited to those with a dominance value above average by setting the cutoff parameter to $$$SDABOVEAVERAGE."}),"\n",(0,s.jsx)(t.h3,{id:"getcountbysourceinternal",children:"GetCountBySourceInternal"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetCountBySourceInternal(domainid As %Integer, srcid As %Integer, type As %Integer = {$$$SDCONCEPT}, cutoff As %Integer = {$$$SDALL}, pUseProfile As %Boolean = 1, ByRef sc As %Status) As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getprofilebydomain",children:"GetProfileByDomain"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetProfileByDomain(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}) As %Status [ Deprecated ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns the dominance profile for a complete domain. The type of elements returned can be set by the type parameter. Available types are $$$SDCONCEPT, $$$SDRELATION, $$$SDENTITY, $$$SDCRC and $$$SDAGGREGATE."}),"\n",(0,s.jsx)(t.h3,{id:"getprofilecountbydomain",children:"GetProfileCountByDomain"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetProfileCountByDomain(domainid As %Integer, type As %Integer = {$$$SDCONCEPT}, ByRef sc As %Status) As %Integer [ Deprecated ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns the number of dominant terms in the profile of a complete domain. The type of elements counted can be set by the type parameter. Available types are $$$SDCONCEPT, $$$SDRELATION, $$$SDENTITY, $$$SDCRC and $$$SDAGGREGATE."}),"\n",(0,s.jsx)(t.h3,{id:"getsourcevalue",children:"GetSourceValue"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSourceValue(domainid As %Integer, srcid As %Integer, id As %Integer, type As %Integer = {$$$SDCONCEPT}, ByRef sc As %Status) As %Numeric\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns the dominance value of an element within a specified source. The id parameter takes either an entityId, crcId or pathId and the type parameter defines of what type the id parameter is. Thus valid types are $$$SDCONCEPT, $$$SDRELATIONM, $$$SDENTITY, $$$SDCRC and $$$SDPATH."}),"\n",(0,s.jsx)(t.h3,{id:"getdomainvalue",children:"GetDomainValue"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDomainValue(domainid As %Integer, id As %Integer, type As %Integer = {$$$SDCONCEPT}, ByRef sc As %Status) As %Numeric\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns the dominance value of an element within a specified domain. The id parameter takes either an entityId, crcId or pathId and the type parameter defines of what type the id parameter is. Thus valid types are $$$SDCONCEPT, $$$SDCRC and $$$SDPATH."}),"\n",(0,s.jsx)(t.h3,{id:"buildoverlap",children:"BuildOverlap"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod BuildOverlap(domainid As %Integer, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Builds overlap information of the dominant terms in all profiles of the sources in a domain. This can be restricted by using a filter."}),"\n",(0,s.jsx)(t.p,{children:"Overlap information is needed for the following methods:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"GetOverlap"}),"\n",(0,s.jsx)(t.li,{children:"GetOverlapDetails"}),"\n",(0,s.jsx)(t.li,{children:"FindMostTypicalSources"}),"\n",(0,s.jsx)(t.li,{children:"FindBreakingSources"}),"\n",(0,s.jsx)(t.li,{children:"GetAggregateOverlaps"}),"\n",(0,s.jsx)(t.li,{children:"GetSourcesByCorrelation"}),"\n"]}),"\n",(0,s.jsx)(t.h3,{id:"getoverlap",children:"GetOverlap"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetOverlap(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returns the most overlapping elements in a domain. This can be restricted by type by setting the type parameter to any of those values:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"$$$SDCONCEPT"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDRELATION"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDENTITY"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDCRC\n."}),"\n"]}),"\n",(0,s.jsx)(t.h3,{id:"getoverlapdetails",children:"GetOverlapDetails"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetOverlapDetails(ByRef result, domainid As %Integer, id As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returns the overlap details of an element in a domain. The type of the element must be specified through the type parameter to any of those values:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"$$$SDCONCEPT"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDRELATION"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDENTITY"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDCRC\n."}),"\n"]}),"\n",(0,s.jsx)(t.h3,{id:"findmosttypicalsources",children:"FindMostTypicalSources"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod FindMostTypicalSources(domainid As %Integer) As %Status [ Deprecated ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Uses the overlap information generated by BuildOverlap to calculate typical sources in a domain."}),"\n",(0,s.jsx)(t.p,{children:"You can call GetTypicalSources to get the list of most typical sources."}),"\n",(0,s.jsx)(t.h3,{id:"findmosttypicalsourcesinternal",children:"FindMostTypicalSourcesInternal"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod FindMostTypicalSourcesInternal(domainid As %Integer, filter As %iKnow.Filters.Filter = "") As %Status [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(t.h3,{id:"gettypicalsources",children:"GetTypicalSources"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTypicalSources(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returns the list of most typical sources in a domain. The type parameter defines on which type of element you want the list of typical documents to be based. This can be:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"$$$SDCONCEPT"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDRELATION"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDENTITY"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDCRC\n."}),"\n"]}),"\n",(0,s.jsx)(t.h3,{id:"findbreakingsources",children:"FindBreakingSources"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod FindBreakingSources(domainid As %Integer) As %Status [ Deprecated ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Uses the overlap information generated by BuildOverlap to calculate breaking sources in a domain."}),"\n",(0,s.jsx)(t.p,{children:"You can call GetBreakingSources to get the list of most breaking sources."}),"\n",(0,s.jsx)(t.h3,{id:"findbreakingsourcesinternal",children:"FindBreakingSourcesInternal"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod FindBreakingSourcesInternal(domainid As %Integer, filter As %iKnow.Filters.Filter = "") As %Status [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(t.h3,{id:"getbreakingsources",children:"GetBreakingSources"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetBreakingSources(ByRef result, domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, type As %Integer = {$$$SDCONCEPT}, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returns the list of most breaking sources in a domain. The type parameter defines on which type of element you want the list of breaking documents to be based. This can be:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"$$$SDCONCEPT"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDRELATION"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDENTITY"}),"\n",(0,s.jsx)(t.li,{children:"$$$SDCRC\n."}),"\n"]}),"\n",(0,s.jsx)(t.h3,{id:"getaggregateoverlaps",children:"GetAggregateOverlaps"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetAggregateOverlaps(ByRef result, domainid As %Integer, type As %Integer, set1 As %iKnow.Filters.Filter, set2 As %iKnow.Filters.Filter, page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Deprecated ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Calculates the overlapping overlap of two sets of documents. First the overlap within set1 is calculated, then the overlap within set2. Finally those are compared and the most overlapping elements within those 2 sets are returned."}),"\n",(0,s.jsx)(t.h3,{id:"calcsetoverlap",children:"CalcSetOverlap"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CalcSetOverlap(domainid As %Integer, type As %Integer, set As %iKnow.Filters.Filter = "", glob As %String) As %Status [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(t.h3,{id:"getsourcesbycorrelation",children:"GetSourcesByCorrelation"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetSourcesByCorrelation(ByRef result, domainid As %Integer, entids As %List = "", page As %Integer = 1, pagesize As %Integer = 10, filter As %iKnow.Filters.Filter = "") As %Status [ Deprecated ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returns a set of documents wich correlate closely to the input set (entids) of entities based on the dominance values of those entities within the documents."})]})}function o(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,t,r)=>{r.d(t,{R:()=>i,x:()=>l});var s=r(96540);const n={},a=s.createContext(n);function i(e){const t=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),s.createElement(a.Provider,{value:t},e.children)}}}]);