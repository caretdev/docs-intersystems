"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[75490],{87204:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>c,default:()=>i,frontMatter:()=>a,toc:()=>o});var r=t(74848),s=t(28453);const a={pagination_prev:null,pagination_next:null},c="%Exception.EMAPI",o=[{value:"Methods",id:"methods",level:2},{value:"Create",id:"create",level:3},{value:"CreateFromFault",id:"createfromfault",level:3},{value:"ClientError",id:"clienterror",level:3},{value:"EMError",id:"emerror",level:3},{value:"OnAsStatus",id:"onasstatus",level:3}];function l(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"exceptionemapi",children:"%Exception.EMAPI"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Exception.EMAPI Extends %Exception.AbstractException\n"})}),"\n",(0,r.jsx)(n.p,{children:"An EMAPI exception is instantiated and thrown when the Enterprise Manager remote API wishes to return an error."}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"create",children:"Create"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod Create(name As %String = "", data As %String = "") As %Exception.EMAPI [ Internal ]\n'})}),"\n",(0,r.jsx)(n.h3,{id:"createfromfault",children:"CreateFromFault"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod CreateFromFault(fault As %SOAP.Fault) As %Exception.EMAPI [ Internal ]\n"})}),"\n",(0,r.jsx)(n.h3,{id:"clienterror",children:"ClientError"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ClientError(text As %String) As %Exception.EMAPI [ Internal ]\n"})}),"\n",(0,r.jsx)(n.h3,{id:"emerror",children:"EMError"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod EMError(text As %String) As %Exception.EMAPI [ Internal ]\n"})}),"\n",(0,r.jsx)(n.h3,{id:"onasstatus",children:"OnAsStatus"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnAsStatus() As %Status [ CodeMode = expression, Private ]\n"})})]})}function i(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>c,x:()=>o});var r=t(96540);const s={},a=r.createContext(s);function c(e){const n=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:c(e.components),r.createElement(a.Provider,{value:n},e.children)}}}]);