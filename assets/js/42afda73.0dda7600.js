"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[51387],{40691:(e,a,l)=>{l.r(a),l.d(a,{contentTitle:()=>r,default:()=>c,frontMatter:()=>s,toc:()=>o});var i=l(74848),n=l(28453);const s={pagination_prev:null,pagination_next:null},r="%Library.FilemanTime",o=[{value:"Parameters",id:"parameters",level:2},{value:"COLLATION",id:"collation",level:3},{value:"XSDTYPE",id:"xsdtype",level:3},{value:"JSONTYPE",id:"jsontype",level:3},{value:"Methods",id:"methods",level:2},{value:"XSDToLogical",id:"xsdtological",level:3},{value:"LogicalToXSD",id:"logicaltoxsd",level:3},{value:"IsValid",id:"isvalid",level:3},{value:"LogicalToDisplay",id:"logicaltodisplay",level:3},{value:"LogicalToOdbc",id:"logicaltoodbc",level:3},{value:"DisplayToLogical",id:"displaytological",level:3},{value:"OdbcToLogical",id:"odbctological",level:3}];function t(e){const a={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(a.header,{children:(0,i.jsx)(a.h1,{id:"libraryfilemantime",children:"%Library.FilemanTime"})}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:"Class %Library.FilemanTime [ ClassType = datatype, ClientDataType = TIME, OdbcType = TIME, SqlCategory = STRING ]\n"})}),"\n",(0,i.jsx)(a.p,{children:"Custom Time datatype designed to handle internal FILEMAN format Time (HHMMSS). A field defined as a TIME data type can accept many of the date/time entries, but only stores the TIME portion. Example: External: 15:09:43 Internal: 150943 It does not require any extra routines to function"}),"\n",(0,i.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(a.h3,{id:"collation",children:"COLLATION"}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter COLLATION = "STRING";\n'})}),"\n",(0,i.jsx)(a.p,{children:"The default collation value used for this data type."}),"\n",(0,i.jsx)(a.h3,{id:"xsdtype",children:"XSDTYPE"}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter XSDTYPE = "Time";\n'})}),"\n",(0,i.jsx)(a.h3,{id:"jsontype",children:"JSONTYPE"}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter JSONTYPE = "string";\n'})}),"\n",(0,i.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(a.h3,{id:"xsdtological",children:"XSDToLogical"}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod XSDToLogical(%val As %String) As %Library.FilemanTime [ CodeMode = generator ]\n"})}),"\n",(0,i.jsx)(a.h3,{id:"logicaltoxsd",children:"LogicalToXSD"}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod LogicalToXSD(%val As %Library.FilemanTime) As %String [ CodeMode = generator ]\n"})}),"\n",(0,i.jsx)(a.p,{children:"Converts the %FilemanTime value to the canonical SOAP encoded value."}),"\n",(0,i.jsx)(a.h3,{id:"isvalid",children:"IsValid"}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]\n"})}),"\n",(0,i.jsx)(a.p,{children:"Checks for Invalid Format, expects FILEMAN format Time (HHMMSS, 00:00:01 through 24:00:00)."}),"\n",(0,i.jsx)(a.h3,{id:"logicaltodisplay",children:"LogicalToDisplay"}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:'ClassMethod LogicalToDisplay(Arg1 As %Library.FilemanTime = "") As %Library.String [ CodeMode = generator, ServerOnly = 0 ]\n'})}),"\n",(0,i.jsx)(a.p,{children:"Converts FILEMAN format TimeStamp (HHMMSS) to DISPLAY format TIME HH:MM:SS)."}),"\n",(0,i.jsx)(a.h3,{id:"logicaltoodbc",children:"LogicalToOdbc"}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod LogicalToOdbc(Arg1 As %Library.FilemanTime) As %Library.String [ CodeMode = generator ]\n"})}),"\n",(0,i.jsx)(a.p,{children:"Converts FILEMAN format Time (HHMMSS) to ODBC format TIME (HH:MM:SS)"}),"\n",(0,i.jsx)(a.h3,{id:"displaytological",children:"DisplayToLogical"}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DisplayToLogical(Arg1 As %Library.String) As %Library.FilemanTime [ ServerOnly = 0 ]\n"})}),"\n",(0,i.jsx)(a.p,{children:"Converts DISPLAY format TIME ([MM/DD/YYYY ]HH:MM:SS) to FILEMAN format Time (HHMMSS)."}),"\n",(0,i.jsx)(a.h3,{id:"odbctological",children:"OdbcToLogical"}),"\n",(0,i.jsx)(a.pre,{children:(0,i.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod OdbcToLogical(Arg1 As %Library.String) As %Library.FilemanTimeStamp\n"})}),"\n",(0,i.jsx)(a.p,{children:"Converts ODBC format TIMESTAMP (YYYY-MM-DD HH:MM:SS) to FILEMAN format TimeStamp (CYYMMDD.HHMMSS)"})]})}function c(e={}){const{wrapper:a}={...(0,n.R)(),...e.components};return a?(0,i.jsx)(a,{...e,children:(0,i.jsx)(t,{...e})}):t(e)}},28453:(e,a,l)=>{l.d(a,{R:()=>r,x:()=>o});var i=l(96540);const n={},s=i.createContext(n);function r(e){const a=i.useContext(s);return i.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function o(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:r(e.components),i.createElement(s.Provider,{value:a},e.children)}}}]);