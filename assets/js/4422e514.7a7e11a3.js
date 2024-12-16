"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[83390],{41922:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>t,default:()=>d,frontMatter:()=>r,toc:()=>i});var a=s(74848),l=s(28453);const r={pagination_prev:null,pagination_next:null},t="%Library.SmallInt",i=[{value:"Parameters",id:"parameters",level:2},{value:"MAXVAL",id:"maxval",level:3},{value:"MINVAL",id:"minval",level:3},{value:"XSDTYPE",id:"xsdtype",level:3},{value:"Methods",id:"methods",level:2},{value:"XSDToLogical",id:"xsdtological",level:3},{value:"Normalize",id:"normalize",level:3},{value:"IsValid",id:"isvalid",level:3}];function c(e){const n={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"librarysmallint",children:"%Library.SmallInt"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Library.SmallInt Extends %Integer [ OdbcType = SMALLINT, System = 2 ]\n"})}),"\n",(0,a.jsxs)(n.p,{children:["The ",(0,a.jsx)(n.strong,{children:"%SmallInt"})," represents a small integer value. This implements the SmallInt ODBC datatype"]}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"maxval",children:"MAXVAL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter MAXVAL As INTEGER = 32767;\n"})}),"\n",(0,a.jsx)(n.p,{children:"The maximum allowed logical value for the data type."}),"\n",(0,a.jsx)(n.h3,{id:"minval",children:"MINVAL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter MINVAL As INTEGER = -32768;\n"})}),"\n",(0,a.jsx)(n.p,{children:"The minimum allowed logical value for the data type."}),"\n",(0,a.jsx)(n.h3,{id:"xsdtype",children:"XSDTYPE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XSDTYPE = "short";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Declares the XSD type used when projecting XML Schemas."}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"xsdtological",children:"XSDToLogical"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod XSDToLogical(%val As %String) As %SmallInt [ CodeMode = generator ]\n"})}),"\n",(0,a.jsx)(n.p,{children:'Converts the SOAP encoded input decimal value into a %SmallInt value. Returns "" for error.'}),"\n",(0,a.jsx)(n.h3,{id:"normalize",children:"Normalize"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Normalize(%val As %RawString) As %Integer [ CodeMode = expression, ServerOnly = 1 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Converts %val to a normalized value."}),"\n",(0,a.jsx)(n.h3,{id:"isvalid",children:"IsValid"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]\n"})}),"\n",(0,a.jsxs)(n.p,{children:["Tests if the logical value %val, which is an integer value, is valid. The validation is based on the class parameter settings used for the class attribute this data type is associated with. In this case, ",(0,a.jsx)(n.a,{href:"#MAXVAL",children:"MAXVAL"})," and ",(0,a.jsx)(n.a,{href:"#MINVAL",children:"MINVAL"}),"."]})]})}function d(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>t,x:()=>i});var a=s(96540);const l={},r=a.createContext(l);function t(e){const n=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:t(e.components),a.createElement(r.Provider,{value:n},e.children)}}}]);