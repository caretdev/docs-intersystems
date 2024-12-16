"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[84541],{77665:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>c,frontMatter:()=>i,toc:()=>l});var a=s(74848),n=s(28453);const i={pagination_prev:null,pagination_next:null},r="%Compiler.UDL.TextServices",l=[{value:"Methods",id:"methods",level:2},{value:"GetTextAsFile",id:"gettextasfile",level:3},{value:"SetTextFromFile",id:"settextfromfile",level:3},{value:"GetTextAsStream",id:"gettextasstream",level:3},{value:"SetTextFromStream",id:"settextfromstream",level:3},{value:"GetTextAsString",id:"gettextasstring",level:3},{value:"SetTextFromString",id:"settextfromstring",level:3},{value:"GetTextAsArray",id:"gettextasarray",level:3},{value:"SetTextFromArray",id:"settextfromarray",level:3}];function o(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"compilerudltextservices",children:"%Compiler.UDL.TextServices"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Compiler.UDL.TextServices Extends %RegisteredObject\n"})}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"gettextasfile",children:"GetTextAsFile"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTextAsFile(pNamespace As %String = {$namespace}, pClassName As %String, pFileName As %String) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method takes a namespace, classname and a file name. On success writes it to the named file the text which represents a class definition in the UDL class definition language."}),"\n",(0,a.jsx)(t.h3,{id:"settextfromfile",children:"SetTextFromFile"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetTextFromFile(pNamespace As %String = {$namespace}, pClassName As %String, pFileName As %String) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method takes the namespace and a name of a file which contains text representing a class definition in the UDL class definition language. The method will parse the class representation and if it is syntactically valid will attempt to save the class definition. It returns $$$OK on success and a (possibly composite) error status on failure. Note: a syntactically valid class represention may fail to save due to failure to obtain a lock. It is important to realize that this method will replace the existing class definition if present and therefore must contain a full representation of the class as can be obtained by calling the GetTextXXX() method(s) in this class. Note: The name of the class is derived from the name of the class defined within the text"}),"\n",(0,a.jsx)(t.h3,{id:"gettextasstream",children:"GetTextAsStream"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTextAsStream(pNamespace As %String = {$namespace}, pClassName As %String, ByRef pTextStream As %Stream.Object) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method takes namespace and a classname and returns a character stream containing text which represents a class definition in the UDL class definition language. Note: you should supply your own instance of a character stream to write to. If you don't supply one then a new instance of a %Stream.GlobalCharacter will be created and used"}),"\n",(0,a.jsx)(t.h3,{id:"settextfromstream",children:"SetTextFromStream"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetTextFromStream(pNamespace As %String = {$namespace}, pClassname As %String, pTextStream As %Library.CharacterStream) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method takes a namespace and a stream of text which represents a class definition in the UDL class definition language. The method will parse the class representation and if it is syntactically valid will attempt to save the class definition. It returns $$$OK on success and a (possibly composite) error status on failure. Note: a syntactically valid class represention may fail to save due to failure to obtain a lock. It is important to realize that this method will replace the existing class definition if present and therefore must contain a full representation of the class as can be obtained by calling the GetClassXXX() method(s) in this class. Note: The name of the class is derived from the name of the class defined within the text"}),"\n",(0,a.jsx)(t.h3,{id:"gettextasstring",children:"GetTextAsString"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTextAsString(pNamespace As %String = {$namespace}, pClassName As %String, Output pTextString As %String, pDelimiter As %String = {$Char(13,10)}) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method takes a namespace and a classname and returns a string which represnts the class definition in the UDL class definition language"}),"\n",(0,a.jsx)(t.h3,{id:"settextfromstring",children:"SetTextFromString"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetTextFromString(pNamespace As %String = {$namespace}, pClassname As %String, pTextString As %String, pDelimiter As %String = {$Char(13,10)}) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method takes a namespace and a string of text which represents a class definition in the UDL class definition language. The method will parse the class representation and if it is syntactically valid will attempt to save the class definition. It returns $$$OK on success and a (possibly composite) error status on failure. Note: a syntactically valid class represention may fail to save due to failure to obtain a lock. It is important to realize that this method will replace the existing class definition if present and therefore must contain a full representation of the class as can be obtained by calling the GetClassXXX() method(s) in this class. Note: The name of the class is derived from the name of the class defined within the text"}),"\n",(0,a.jsx)(t.h3,{id:"gettextasarray",children:"GetTextAsArray"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTextAsArray(pNamespace As %String = {$namespace}, pClassName As %String, Output pDocumentText As %String) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method takes a namespace and the name of a class and on success returns an integer subscripted array of text representing the class definition. The 0 node contains the number of lines of text (n) and each line of source is stored at the nodes 1 .. n."}),"\n",(0,a.jsx)(t.h3,{id:"settextfromarray",children:"SetTextFromArray"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetTextFromArray(pNamespace As %String = {$namespace}, pClassname As %String, ByRef pDocumentArray As %String) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method takes a namespace an integer subscripted array containing lines of text which represent a class definition in the UDL class definition language. Subscript value 0 should contain a count of lines of text which are defined as subscript value 1 ... n in the array The method will parse the class representation and if it is syntactically valid will attempt to save the class definition. It returns $$$OK on success and a (possibly composite) error status on failure. Note: a syntactically valid class represention may fail to save due to failure to obtain a lock. It is important to realize that this method will replace the existing class definition if present and therefore must contain a full representation of the class as can be obtained by calling the GetClassXXX() method(s) in this class. Note: The name of the class is derived from the name of the class defined within the text"})]})}function c(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>l});var a=s(96540);const n={},i=a.createContext(n);function r(e){const t=a.useContext(i);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:r(e.components),a.createElement(i.Provider,{value:t},e.children)}}}]);