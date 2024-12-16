"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[82287],{53789:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>i,default:()=>o,frontMatter:()=>r,toc:()=>a});var t=s(74848),c=s(28453);const r={pagination_prev:null,pagination_next:null},i="%SAML.AuthzDecisionStatement",a=[{value:"Parameters",id:"parameters",level:2},{value:"XMLFORMAT",id:"xmlformat",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"ELEMENTQUALIFIED",id:"elementqualified",level:3},{value:"Properties",id:"properties",level:2},{value:"Action",id:"action",level:3},{value:"Evidence",id:"evidence",level:3},{value:"Decision",id:"decision",level:3},{value:"Resource",id:"resource",level:3}];function l(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,c.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"samlauthzdecisionstatement",children:"%SAML.AuthzDecisionStatement"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SAML.AuthzDecisionStatement Extends %SAML.Statement [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Authorization Decision Statement"}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"xmlformat",children:"XMLFORMAT"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLFORMAT = "literal";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "urn:oasis:names:tc:SAML:2.0:assertion";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"elementqualified",children:"ELEMENTQUALIFIED"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter ELEMENTQUALIFIED = 0;\n"})}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"action",children:"Action"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property Action As list Of %SAML.Action(XMLPROJECTION = "element", XMLREF = 1);\n'})}),"\n",(0,t.jsx)(n.h3,{id:"evidence",children:"Evidence"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property Evidence As %SAML.Evidence(XMLREF = 1);\n"})}),"\n",(0,t.jsx)(n.h3,{id:"decision",children:"Decision"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property Decision As %String(VALUELIST = ",Permit,Deny,Indeterminate", XMLPROJECTION = "attribute") [ Required ];\n'})}),"\n",(0,t.jsx)(n.h3,{id:"resource",children:"Resource"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property Resource As %xsd.anyURI(XMLPROJECTION = "attribute") [ Required ];\n'})})]})}function o(e={}){const{wrapper:n}={...(0,c.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(l,{...e})}):l(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>i,x:()=>a});var t=s(96540);const c={},r=t.createContext(c);function i(e){const n=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(c):e.components||c:i(e.components),t.createElement(r.Provider,{value:n},e.children)}}}]);