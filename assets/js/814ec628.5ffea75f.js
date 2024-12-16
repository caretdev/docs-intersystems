"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[59010],{59989:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>c,default:()=>o,frontMatter:()=>a,toc:()=>i});var s=t(74848),r=t(28453);const a={pagination_prev:null,pagination_next:null},c="%SAML.SubjectConfirmationData",i=[{value:"Parameters",id:"parameters",level:2},{value:"XMLFORMAT",id:"xmlformat",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"XMLTYPE",id:"xmltype",level:3},{value:"ELEMENTQUALIFIED",id:"elementqualified",level:3},{value:"Properties",id:"properties",level:2},{value:"content",id:"content",level:3},{value:"KeyInfo",id:"keyinfo",level:3},{value:"Address",id:"address",level:3},{value:"InResponseTo",id:"inresponseto",level:3},{value:"NotBefore",id:"notbefore",level:3},{value:"NotOnOrAfter",id:"notonorafter",level:3},{value:"Recipient",id:"recipient",level:3}];function l(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"samlsubjectconfirmationdata",children:"%SAML.SubjectConfirmationData"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SAML.SubjectConfirmationData Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Data for SubjectConfirmation"}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"xmlformat",children:"XMLFORMAT"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLFORMAT = "literal";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "urn:oasis:names:tc:SAML:2.0:assertion";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"xmltype",children:"XMLTYPE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLTYPE = "SubjectConfirmationDataType";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"elementqualified",children:"ELEMENTQUALIFIED"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter ELEMENTQUALIFIED = 0;\n"})}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"content",children:"content"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property content As %XML.String(MAXLEN = "", XMLPROJECTION = "content");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Normal case allow any XML content."}),"\n",(0,s.jsx)(n.h3,{id:"keyinfo",children:"KeyInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property KeyInfo As list Of %XML.Security.KeyInfo(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLPROJECTION = "element", XMLREF = 1);\n'})}),"\n",(0,s.jsx)(n.p,{children:"As a special case allow a list of KeyInfo elements as need for WS-Security."}),"\n",(0,s.jsx)(n.h3,{id:"address",children:"Address"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property Address As %String(MAXLEN = "", XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"inresponseto",children:"InResponseTo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property InResponseTo As %String(MAXLEN = "", XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"notbefore",children:"NotBefore"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property NotBefore As %xsd.dateTime(XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"notonorafter",children:"NotOnOrAfter"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property NotOnOrAfter As %xsd.dateTime(XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"recipient",children:"Recipient"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property Recipient As %xsd.anyURI(XMLPROJECTION = "attribute");\n'})})]})}function o(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>c,x:()=>i});var s=t(96540);const r={},a=s.createContext(r);function c(e){const n=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:c(e.components),s.createElement(a.Provider,{value:n},e.children)}}}]);