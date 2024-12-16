"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[5874],{28069:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>d,frontMatter:()=>r,toc:()=>c});var s=n(74848),o=n(28453);const r={pagination_prev:null,pagination_next:null},a="%XGEN.AbstractNode",c=[{value:"Methods",id:"methods",level:2},{value:"%GenerateCode",id:"generatecode",level:3},{value:"%OnGenerateCode",id:"ongeneratecode",level:3}];function i(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,o.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"xgenabstractnode",children:"%XGEN.AbstractNode"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %XGEN.AbstractNode Extends AbstractElement [ System = 3 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"Note:"})," This class is included because it is needed by other parts of the library. You should not use this or any other class within this package within your applications as a future version will be incompatible. If you are interested in this functionality please contact InterSystems."]}),"\n",(0,s.jsxs)(t.p,{children:["This is the base class for nodes within an XGEN document.",(0,s.jsx)(t.br,{}),"\nA node represents a specific action within an XGEN document.",(0,s.jsx)(t.br,{}),"\nSee %XGEN.AbstractDocument for an overview of XGEN."]}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"generatecode",children:"%GenerateCode"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %XGEN.AbstractDocument) As %Status [ Final, Internal ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Generate code for this node.",(0,s.jsx)(t.br,{}),"\nUser classes should not override this method, instead they should override the %OnGenerateCode method."]}),"\n",(0,s.jsx)(t.h3,{id:"ongeneratecode",children:"%OnGenerateCode"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %XGEN.AbstractDocument) As %Status\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Generate code for this node.",(0,s.jsx)(t.br,{}),"\nThis method is called when a class containing an XGEN document is compiled.",(0,s.jsx)(t.br,{}),"\npTargetClass is the class that contains the XGEN document.",(0,s.jsx)(t.br,{}),"\npCode is a stream containing the generated code.",(0,s.jsx)(t.br,{}),"\npDocument is the top-level XGEN document object that contains this node.",(0,s.jsx)(t.br,{}),"\nA subclass will provide an implementation of this method that will generate specific lines of code.",(0,s.jsx)(t.br,{}),"\nFor example: ",(0,s.jsx)(t.code,{children:'Do pCode.WriteLine(..%Indent()_"Set " _ ..target _ "=" _ $$$quote(..value))'})]})]})}function d(e={}){const{wrapper:t}={...(0,o.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>c});var s=n(96540);const o={},r=s.createContext(o);function a(e){const t=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:a(e.components),s.createElement(r.Provider,{value:t},e.children)}}}]);