"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[70103],{66160:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>o,default:()=>c,frontMatter:()=>r,toc:()=>a});var n=s(74848),i=s(28453);const r={pagination_prev:null,pagination_next:null},o="%iKnow.Semantics.ProximityWSAPI",a=[{value:"Parameters",id:"parameters",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"SERVICENAME",id:"servicename",level:3},{value:"USECLASSNAMESPACES",id:"useclassnamespaces",level:3},{value:"Methods",id:"methods",level:2},{value:"GetClustersBySource",id:"getclustersbysource",level:3},{value:"GetProfile",id:"getprofile",level:3},{value:"GetProfileById",id:"getprofilebyid",level:3},{value:"GetProfileBySource",id:"getprofilebysource",level:3},{value:"GetProfileBySourceId",id:"getprofilebysourceid",level:3},{value:"GetProfileForEntity",id:"getprofileforentity",level:3}];function l(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"iknowsemanticsproximitywsapi",children:"%iKnow.Semantics.ProximityWSAPI"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Semantics.ProximityWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This is an automatically generated class, offering a functionally equivalent set of methods and queries as %iKnow.Semantics.ProximityAPI, exposed as WebMethod methods."}),"\n",(0,n.jsx)(t.p,{children:"See the classdocs for %iKnow.Semantics.ProximityAPI for more information."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Semantics/ProximityWSAPI";\n'})}),"\n",(0,n.jsx)(t.h3,{id:"servicename",children:"SERVICENAME"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter SERVICENAME = "iKnow.Semantics.ProximityWSAPI";\n'})}),"\n",(0,n.jsx)(t.h3,{id:"useclassnamespaces",children:"USECLASSNAMESPACES"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter USECLASSNAMESPACES = 1;\n"})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"getclustersbysource",children:"GetClustersBySource"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetClustersBySource(domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %XML.DataSet [ Internal, WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Clusters a document to a set of proximity terms that best identify the documents content."}),"\n",(0,n.jsx)(t.h3,{id:"getprofile",children:"GetProfile"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetProfile(pDomainId As %Integer, pEntity As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pSkipListIDs As %ListOfDataTypes = "", pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:'Returns the proximity profile for the entity or list of entities supplied through pEntity. This profile is calculated based on the aggregated distance to pEntity entries in all paths in the domain (when pFilter=""), optionally constrained to all paths in a specific set of sources (when pFilter!="").'}),"\n",(0,n.jsx)(t.p,{children:"When setting pUseStems to 1, for a domain that has stemming enabled, the scope of the profile will be expanded to include all actual forms of the supplied pEntity (which has to be provided as a base form (stem)!), and their combined proximity profiles will be grouped to the stem level again."}),"\n",(0,n.jsx)(t.h3,{id:"getprofilebyid",children:"GetProfileById"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetProfileById(pDomainId As %Integer, pEntUniId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pSkipListIDs As %ListOfDataTypes = "", pUseStems As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the proximity profile for the entity represented by pEntUniId. See also GetProfile When setting pUseStems to 1, the value of pEntUniId will be interpreted as a stem ID."}),"\n",(0,n.jsx)(t.h3,{id:"getprofilebysource",children:"GetProfileBySource"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetProfileBySource(pDomainId As %Integer, pEntity As %String, pExternalId As %String, pPage As %Integer = 1, pPageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the proximity profile for a given entity pEntity in source pExtId. See also GetProfile for a broader set of options."}),"\n",(0,n.jsx)(t.h3,{id:"getprofilebysourceid",children:"GetProfileBySourceId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetProfileBySourceId(pDomainId As %Integer, pEntUniId As %Integer, pSrcId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the proximity profile for a given entity identified by pEntUniId in source pSrcId. See also GetProfile for a broader set of options."}),"\n",(0,n.jsx)(t.h3,{id:"getprofileforentity",children:"GetProfileForEntity"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetProfileForEntity(domainid As %Integer, entId As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %XML.DataSet [ Internal, WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the proximity profile for a specified entity."}),"\n",(0,n.jsx)(t.p,{children:"The proximity profile are those elements that most likely occur in close relationship to the provided entity within the sources in a domain."}),"\n",(0,n.jsx)(t.p,{children:"Deprecated: See also GetProfile for a broader set of options."})]})}function c(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>o,x:()=>a});var n=s(96540);const i={},r=n.createContext(i);function o(e){const t=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:o(e.components),n.createElement(r.Provider,{value:t},e.children)}}}]);