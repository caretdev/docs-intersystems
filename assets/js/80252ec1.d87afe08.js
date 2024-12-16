"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[1127],{85180:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>c,toc:()=>r});var s=t(74848),i=t(28453);const c={pagination_prev:null,pagination_next:null},l="%Document.Model.Schema.index",r=[{value:"Properties",id:"properties",level:2},{value:"collection",id:"collection",level:3},{value:"key",id:"key",level:3},{value:"constraint",id:"constraint",level:3},{value:"data",id:"data",level:3},{value:"type",id:"type",level:3},{value:"Methods",id:"methods",level:2},{value:"%Validate",id:"validate",level:3}];function a(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"documentmodelschemaindex",children:"%Document.Model.Schema.index"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Document.Model.Schema.index Extends node [ System = 3 ]\n"})}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"collection",children:"collection"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship collection As collection(XMLPROJECTION = "none") [ Cardinality = one, Inverse = indexes ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Thing that this property belongs to."}),"\n",(0,s.jsx)(n.h3,{id:"key",children:"key"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property key As %String(MAXLEN = 500, XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"constraint",children:"constraint"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property constraint As %String(MAXLEN = 10, XMLCHOICELIST = "idkey,primarykey,unique", XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"data",children:"data"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property data As %String(MAXLEN = 500, XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Specifies a list of properties whose values are to be stored within this index."}),"\n",(0,s.jsx)(n.h3,{id:"type",children:"type"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property type As %String(MAXLEN = 500, XMLCHOICELIST = "standard,bitmap,bitmapextent,bitslice", XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Specifies the type of the index."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"validate",children:"%Validate"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %Validate() As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Test if this definition is valid."})]})}function o(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(a,{...e})}):a(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>r});var s=t(96540);const i={},c=s.createContext(i);function l(e){const n=s.useContext(c);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),s.createElement(c.Provider,{value:n},e.children)}}}]);