"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[43531],{82364:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>l,default:()=>d,frontMatter:()=>a,toc:()=>i});var t=s(74848),r=s(28453);const a={pagination_prev:null,pagination_next:null},l="%DeepSee.ListingTable",i=[{value:"Parameters",id:"parameters",level:2},{value:"CUBENAME",id:"cubename",level:3},{value:"MANAGEDEXTENT",id:"managedextent",level:3},{value:"Properties",id:"properties",level:2},{value:"queryKey",id:"querykey",level:3},{value:"sourceId",id:"sourceid",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"deepseelistingtable",children:"%DeepSee.ListingTable"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.ListingTable Extends %Persistent [ Abstract, NoExtent, SqlRowIdName = _DSListingId, System = 3 ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Base class for all DeepSee listing tables.",(0,t.jsx)(n.br,{}),"\nListing tables are used to hold the set of fact IDs when drilling through a cube to generate a listing."]}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"cubename",children:"CUBENAME"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter CUBENAME As STRING;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Name of the cube that created this listing table."}),"\n",(0,t.jsx)(n.h3,{id:"managedextent",children:"MANAGEDEXTENT"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter MANAGEDEXTENT = 0;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Turn off extent management for listing tables."}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"querykey",children:"queryKey"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property queryKey As %String(MAXLEN = 255) [ SqlFieldName = _DSqueryKey ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"Key for the DRILLTHROUGH query that populated this record."}),"\n",(0,t.jsx)(n.h3,{id:"sourceid",children:"sourceId"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property sourceId As %String(MAXLEN = 255) [ SqlFieldName = _DSsourceId ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"Id in the source data table."})]})}function d(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>l,x:()=>i});var t=s(96540);const r={},a=t.createContext(r);function l(e){const n=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),t.createElement(a.Provider,{value:n},e.children)}}}]);