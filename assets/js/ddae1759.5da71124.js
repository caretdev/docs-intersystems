"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[58155],{58293:(e,n,r)=>{r.r(n),r.d(n,{contentTitle:()=>i,default:()=>d,frontMatter:()=>l,toc:()=>o});var s=r(74848),t=r(28453);const l={pagination_prev:null,pagination_next:null},i="%iKnow.Filters.SqlFilter",o=[{value:"Properties",id:"properties",level:2},{value:"Mode",id:"mode",level:3},{value:"ColIndex",id:"colindex",level:3},{value:"SqlQuery",id:"sqlquery",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"BuildSourceFilter",id:"buildsourcefilter",level:3},{value:"RestoreFilterFromStringInternal",id:"restorefilterfromstringinternal",level:3},{value:"ToString",id:"tostring",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,t.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"iknowfilterssqlfilter",children:"%iKnow.Filters.SqlFilter"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.Filters.SqlFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Sample filter implementation restricting sources based on a SQL query result. This SQL query can select from any regular SQL table or view accessible from the namespace the filter is instantiated from. The query should select sources through returning either of the following as result columns (case sensitive!):"}),"\n",(0,s.jsxs)(n.ul,{children:["\n",(0,s.jsxs)(n.li,{children:[(0,s.jsx)(n.strong,{children:"IdField"})," and ",(0,s.jsx)(n.strong,{children:"GroupField"}),": the two columns used together as identifiers when adding the sources to the domain: Local Reference (IdField) and Group Name (GroupField). See also %iKnow.Source.SQL.Lister."]}),"\n",(0,s.jsxs)(n.li,{children:[(0,s.jsx)(n.strong,{children:"ExternalId"}),": the full External ID of the sources to be selected."]}),"\n",(0,s.jsxs)(n.li,{children:[(0,s.jsx)(n.strong,{children:"SourceId"}),": the (internal) Source ID of the sources to be selected."]}),"\n"]}),"\n",(0,s.jsxs)(n.p,{children:[(0,s.jsx)(n.strong,{children:"Filter parameters"}),":"]}),"\n",(0,s.jsxs)(n.ol,{children:["\n",(0,s.jsxs)(n.li,{children:[(0,s.jsx)(n.strong,{children:"domainId"})," As %Integer"]}),"\n",(0,s.jsxs)(n.li,{children:[(0,s.jsx)(n.strong,{children:"sqlQuery"})," As %String - query to filter by"]}),"\n"]}),"\n",(0,s.jsxs)(n.p,{children:[(0,s.jsx)(n.strong,{children:"WARNING:"})," these filters are not invalidated automatically if the values in the tables accessed by the supplied SQL query change. It is up to the user to decide, based on the specifics of the environment, whether filter instances of this class can be cached meaningfully (see the useCache parameter of Initialize) and/or should be invalidated explicitly (see Invalidate or ClearCachedFilter)."]}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"mode",children:"Mode"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property Mode As %String(VALUELIST = "SRCID,EXTID,REF") [ Internal, Private ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"colindex",children:"ColIndex"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property ColIndex As %String [ Internal, Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"sqlquery",children:"SqlQuery"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property SqlQuery As %String;\n"})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnNew(pDomainId As %Integer, pSqlQuery As %String) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"buildsourcefilter",children:"BuildSourceFilter"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"restorefilterfromstringinternal",children:"RestoreFilterFromStringInternal"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"tostring",children:"ToString"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ToString() As %String\n"})})]})}function d(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,r)=>{r.d(n,{R:()=>i,x:()=>o});var s=r(96540);const t={},l=s.createContext(t);function i(e){const n=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:i(e.components),s.createElement(l.Provider,{value:n},e.children)}}}]);