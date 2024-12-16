"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[42752],{22795:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>c,frontMatter:()=>a,toc:()=>o});var s=n(74848),r=n(28453);const a={pagination_prev:null,pagination_next:null},i="%Atelier.v2.Utils.TextServices",o=[{value:"Methods",id:"methods",level:2},{value:"GetTextAsArray",id:"gettextasarray",level:3},{value:"SetTextFromArray",id:"settextfromarray",level:3}];function l(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"atelierv2utilstextservices",children:"%Atelier.v2.Utils.TextServices"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Atelier.v2.Utils.TextServices Extends %RegisteredObject\n"})}),"\n",(0,s.jsx)(t.p,{children:"This class provides the external interface for retrieving, storing, and compiling documents representing classes, routines, and include files (amongst others)."}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"gettextasarray",children:"GetTextAsArray"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTextAsArray(pFullName As %String, pFlags As %Integer = 0, Output pTextArray As %String, pBinary As %Boolean = 0) As %Status\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Given a name, return an array of strings representing the document. On success the returned pTextArray will have the 0 subscript set to the number of lines and the subscripts 1-n will contain the actual text.",(0,s.jsx)(t.br,{}),'\nOr, if the pBinary flag is set, the returned pTextArray will contain chunks of Base64-encoded data and the node pTextArray("bin") will be set to 1.',(0,s.jsx)(t.br,{}),"\nThe pFlags parameter contains bit flags defined as:",(0,s.jsx)(t.br,{}),"\nSource format: 0 = UDL, 1 = XML, 2 = %RO",(0,s.jsx)(t.br,{}),"\nClass storage section only: 8",(0,s.jsx)(t.br,{}),"\nSplit method arguments one per line: 16"]}),"\n",(0,s.jsx)(t.h3,{id:"settextfromarray",children:"SetTextFromArray"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetTextFromArray(ByRef pDocumentArray As %String, pFlags As %Integer = 0, pDocName As %String, pCategory As %String, pBinary As %Boolean = 0, Output pKeywords) As %Status [ Internal ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["This method requires an integer subscripted array containing lines of text which represent an InterSystems IRIS source document (class, include, routine, etc). array(0) should contain a count of lines of text which are defined as array(1) ... array(n).",(0,s.jsx)(t.br,{}),"\nThe method will parse the representation and if it is syntactically valid will attempt to save the resultant document. It returns $$$OK on success and a (possibly composite) error status on failure. Note: a syntactically valid represention may fail to save due to failure to obtain a lock.",(0,s.jsx)(t.br,{}),"\nIt is important to realize that this method will replace the existing document if present and therefore must contain a full representation of the document. Also note that the name of the document and its type will be derived from within the text, unless pCategory is CSP or OTH.",(0,s.jsx)(t.br,{}),"\nThe pFlags parameter is unused.",(0,s.jsx)(t.br,{}),"\nIf pBinary is specified, the document array contains Base64-encoded chunks of data."]})]})}function c(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>o});var s=n(96540);const r={},a=s.createContext(r);function i(e){const t=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),s.createElement(a.Provider,{value:t},e.children)}}}]);