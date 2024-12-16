"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[20020],{66691:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>i,toc:()=>a});var s=t(74848),r=t(28453);const i={pagination_prev:null,pagination_next:null},l="%XML.Exchange.Reader",a=[{value:"Properties",id:"properties",level:2},{value:"Filename",id:"filename",level:3},{value:"Methods",id:"methods",level:2},{value:"ResolveElement",id:"resolveelement",level:3},{value:"Next",id:"next",level:3},{value:"OpenFile",id:"openfile",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"xmlexchangereader",children:"%XML.Exchange.Reader"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %XML.Exchange.Reader Extends %XML.Reader [ System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Configuration Management XML Reader This class is used while importing Configuration Items. Do not use this class directly."}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"filename",children:"Filename"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property Filename As %String;\n"})}),"\n",(0,s.jsx)(n.p,{children:"The filename used as an XML source."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"resolveelement",children:"ResolveElement"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ResolveElement(element As %String, defaultNamespace As %String) As %String [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"ResolveElement() returns the class name corresponding to an element name within the current XMLReader context."}),"\n",(0,s.jsx)(n.h3,{id:"next",children:"Next"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method Next(ByRef oref As %ObjectHandle, ByRef sc As %Status, namespace As %String = "", ByRef qstruct As %String) As %Integer\n'})}),"\n",(0,s.jsx)(n.p,{children:"Get and return the next object."}),"\n",(0,s.jsxs)(n.p,{children:["Next returns 1 (true), if the next object matching one of the Correlate criteria is found and successfully imported.",(0,s.jsx)(n.br,{}),"\nNext returns 0 (false) and a %Status of $$$OK in sc after all objects have been imported.",(0,s.jsx)(n.br,{}),"\nNext returns 0 (false) and an error %Status in sc, if an error has occurred importing this object."]}),"\n",(0,s.jsx)(n.p,{children:"The namespace argument indicates the default namespace for this XML file."}),"\n",(0,s.jsx)(n.h3,{id:"openfile",children:"OpenFile"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method OpenFile(xmlsource As %String, format As %String) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Import XML source from a file using %XML.Document."})]})}function o(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>a});var s=t(96540);const r={},i=s.createContext(r);function l(e){const n=s.useContext(i);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),s.createElement(i.Provider,{value:n},e.children)}}}]);