"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[47821],{77772:(e,r,n)=>{n.r(r),n.d(r,{contentTitle:()=>a,default:()=>i,frontMatter:()=>c,toc:()=>o});var s=n(74848),t=n(28453);const c={pagination_prev:null,pagination_next:null},a="%SOAP.WST.RequestedProofToken",o=[{value:"Parameters",id:"parameters",level:2},{value:"XMLFORMAT",id:"xmlformat",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"ELEMENTQUALIFIED",id:"elementqualified",level:3},{value:"XMLPREFIX",id:"xmlprefix",level:3},{value:"Properties",id:"properties",level:2},{value:"BinarySecret",id:"binarysecret",level:3},{value:"EncryptedKey",id:"encryptedkey",level:3},{value:"ComputedKey",id:"computedkey",level:3}];function l(e){const r={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(r.header,{children:(0,s.jsx)(r.h1,{id:"soapwstrequestedprooftoken",children:"%SOAP.WST.RequestedProofToken"})}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Class %SOAP.WST.RequestedProofToken Extends (%RegisteredObject, %XML.Adaptor) [ System = 4 ]\n"})}),"\n",(0,s.jsx)(r.p,{children:"RequestedProofToken contents from WS-Trust 1.3. Either BinarySecret, EncryptedKey or ComputedKey may be specified, but not both."}),"\n",(0,s.jsx)(r.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(r.h3,{id:"xmlformat",children:"XMLFORMAT"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:'Parameter XMLFORMAT = "literal";\n'})}),"\n",(0,s.jsx)(r.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-trust/200512";\n'})}),"\n",(0,s.jsx)(r.h3,{id:"elementqualified",children:"ELEMENTQUALIFIED"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Parameter ELEMENTQUALIFIED = 1;\n"})}),"\n",(0,s.jsx)(r.h3,{id:"xmlprefix",children:"XMLPREFIX"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:'Parameter XMLPREFIX = "wst";\n'})}),"\n",(0,s.jsx)(r.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(r.h3,{id:"binarysecret",children:"BinarySecret"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:'Property BinarySecret As %SOAP.WST.BinarySecret(REFNAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-trust/200512", XMLREF = 1);\n'})}),"\n",(0,s.jsx)(r.h3,{id:"encryptedkey",children:"EncryptedKey"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:'Property EncryptedKey As %XML.Security.EncryptedKey(REFNAMESPACE = "http://www.w3.org/2001/04/xmlenc#", XMLREF = 1);\n'})}),"\n",(0,s.jsx)(r.h3,{id:"computedkey",children:"ComputedKey"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:'Property ComputedKey As %xsd.anyURI(REFNAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-trust/200512", XMLREF = 1);\n'})}),"\n",(0,s.jsx)(r.p,{children:"Algorithm for computing key -- $$$SOAPWSTPSHA1"})]})}function i(e={}){const{wrapper:r}={...(0,t.R)(),...e.components};return r?(0,s.jsx)(r,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,r,n)=>{n.d(r,{R:()=>a,x:()=>o});var s=n(96540);const t={},c=s.createContext(t);function a(e){const r=s.useContext(c);return s.useMemo((function(){return"function"==typeof e?e(r):{...r,...e}}),[r,e])}function o(e){let r;return r=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),s.createElement(c.Provider,{value:r},e.children)}}}]);