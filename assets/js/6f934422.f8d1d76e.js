"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[90583],{67594:(e,n,i)=>{i.r(n),i.d(n,{contentTitle:()=>o,default:()=>d,frontMatter:()=>t,toc:()=>c});var s=i(74848),r=i(28453);const t={pagination_prev:null,pagination_next:null},o="%iKnow.Model.userDictionary",c=[{value:"Properties",id:"properties",level:2},{value:"domain",id:"domain",level:3},{value:"name",id:"name",level:3},{value:"description",id:"description",level:3},{value:"entries",id:"entries",level:3},{value:"Methods",id:"methods",level:2},{value:"%Validate",id:"validate",level:3}];function a(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"iknowmodeluserdictionary",children:"%iKnow.Model.userDictionary"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.Model.userDictionary Extends %iKnow.Model.node [ Deprecated, System = 3 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Model representation of a specific %iKnow.UserDictionary, which can be referred from %iKnow.Model.configuration entries."}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"domain",children:"domain"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship domain As %iKnow.Model.domain(XMLPROJECTION = "none") [ Cardinality = one, Inverse = userDictionaries ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"name",children:"name"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property name As %String(MAXLEN = 150, XMLPROJECTION = "ATTRIBUTE") [ Required ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Name of this User Dictionary"}),"\n",(0,s.jsx)(n.h3,{id:"description",children:"description"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property description As %String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Optional description"}),"\n",(0,s.jsx)(n.h3,{id:"entries",children:"entries"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship entries As list Of %iKnow.Model.userDictionaryEntry(XMLELEMENTREF = 1, XMLNAME = "entry", XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = userDictionary ];\n'})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"validate",children:"%Validate"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status\n"})})]})}function d(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(a,{...e})}):a(e)}},28453:(e,n,i)=>{i.d(n,{R:()=>o,x:()=>c});var s=i(96540);const r={},t=s.createContext(r);function o(e){const n=s.useContext(t);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:o(e.components),s.createElement(t.Provider,{value:n},e.children)}}}]);