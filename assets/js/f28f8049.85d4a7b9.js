"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[95984],{70868:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>r,default:()=>d,frontMatter:()=>i,toc:()=>o});var s=n(74848),a=n(28453);const i={pagination_prev:null,pagination_next:null},r="%XGEN.AbstractDocument",o=[{value:"Methods",id:"methods",level:2},{value:"%Generate",id:"generate",level:3},{value:"%GenerateDefaultCode",id:"generatedefaultcode",level:3}];function c(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,a.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"xgenabstractdocument",children:"%XGEN.AbstractDocument"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %XGEN.AbstractDocument Extends (%XGEN.AbstractNode, %XGEN.AbstractGroup, %Studio.SASchemaClass) [ Abstract, Inheritance = right, System = 3 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"Note:"})," This class is included because it is needed by other parts of the library. You should not use this or any other class within this package within your applications as a future version will be incompatible. If you are interested in this functionality please contact InterSystems."]}),"\n",(0,s.jsx)(t.p,{children:"This is the base class for XGEN documents."}),"\n",(0,s.jsx)(t.h1,{id:"xgen-xml-based-code-generation-language",children:"XGEN: XML-based Code Generation Language"}),"\n",(0,s.jsx)(t.p,{children:"XGEN is a framework for creating specialized code generators that are driven by an XML-based specification."}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"Overview:"}),(0,s.jsx)(t.br,{}),"\nXGEN contains a set of base classes from which a user can implement an XML-based code generator."]}),"\n",(0,s.jsxs)(t.p,{children:["An XGEN document is an XML document that can be compiled into executable code. Every activity within an XGEN document is implemented as a class.",(0,s.jsx)(t.br,{}),"\nWithin an XGEN document, each XGEN class provides the following:"]}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"The XML representation of the activity (i.e., its name and attributes)."}),"\n",(0,s.jsx)(t.li,{children:"Generation of code for the activity."}),"\n",(0,s.jsx)(t.li,{children:"Generation of Studio Assist schema information."}),"\n"]}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"generate",children:"%Generate"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %Generate(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pXDataName As %String) As %Status\n"})}),"\n",(0,s.jsxs)(t.p,{children:["This method is called from a method generator within a target class. It generates code for the method.",(0,s.jsx)(t.br,{}),"\npTargetClass is the compiled class definition for the target class.",(0,s.jsx)(t.br,{}),"\npCode is a character stream that contains the generated code.",(0,s.jsx)(t.br,{}),"\npXDataName is the name of the XData block containing the XGEN document definition."]}),"\n",(0,s.jsx)(t.h3,{id:"generatedefaultcode",children:"%GenerateDefaultCode"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GenerateDefaultCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pXDataName As %String) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method is invoked when there is no XDATA block defined in the target class."})]})}function d(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>r,x:()=>o});var s=n(96540);const a={},i=s.createContext(a);function r(e){const t=s.useContext(i);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),s.createElement(i.Provider,{value:t},e.children)}}}]);