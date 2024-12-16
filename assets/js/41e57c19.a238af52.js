"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[19492],{5786:(e,t,a)=>{a.r(t),a.d(t,{contentTitle:()=>i,default:()=>o,frontMatter:()=>r,toc:()=>l});var n=a(74848),s=a(28453);const r={pagination_prev:null,pagination_next:null},i="%Library.DataType",l=[{value:"Parameters",id:"parameters",level:2},{value:"INDEXNULLMARKER;",id:"indexnullmarker",level:3},{value:"Methods",id:"methods",level:2},{value:"IsValid",id:"isvalid",level:3}];function d(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"librarydatatype",children:"%Library.DataType"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Library.DataType [ ClassType = datatype, System = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Datatype superclass."}),"\n",(0,n.jsx)(t.p,{children:"Note that data types do not have to inherit from this class in order to be a data type but this is used by the built in data types."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"indexnullmarker",children:"INDEXNULLMARKER;"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter INDEXNULLMARKER;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Override this parameter value to specify what value should be used as a null marker when a property of the type is used in a subscript of an index map. The default null marker used is -1E14, if none is specfied for the datatype. However %Library.PosixTime and %Library.BigInt datatypes could have values that collate before -1E14, and this means null values would not sort before all non-NULL values."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"isvalid",children:"IsValid"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod IsValid(%val As %RawString) As %Status [ Abstract, ServerOnly = 0 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return $$$OK if the value is valid for the datatype, or an error code otherwise."})]})}function o(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(d,{...e})}):d(e)}},28453:(e,t,a)=>{a.d(t,{R:()=>i,x:()=>l});var n=a(96540);const s={},r=n.createContext(s);function i(e){const t=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),n.createElement(r.Provider,{value:t},e.children)}}}]);