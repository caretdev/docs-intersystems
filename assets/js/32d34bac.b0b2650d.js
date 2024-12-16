"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[32853],{50184:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>s,default:()=>o,frontMatter:()=>a,toc:()=>c});var r=t(74848),i=t(28453);const a={pagination_prev:null,pagination_next:null},s="%SAML.Subject",c=[{value:"Parameters",id:"parameters",level:2},{value:"XMLFORMAT",id:"xmlformat",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"ELEMENTQUALIFIED",id:"elementqualified",level:3},{value:"Properties",id:"properties",level:2},{value:"NameID",id:"nameid",level:3},{value:"SubjectConfirmation",id:"subjectconfirmation",level:3},{value:"Methods",id:"methods",level:2},{value:"AddConfirmation",id:"addconfirmation",level:3},{value:"AddX509Confirmation",id:"addx509confirmation",level:3},{value:"AddEncryptedKeyConfirmation",id:"addencryptedkeyconfirmation",level:3},{value:"AddBinarySecretConfirmation",id:"addbinarysecretconfirmation",level:3}];function d(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"samlsubject",children:"%SAML.Subject"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SAML.Subject Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"A SAML Subject"}),"\n",(0,r.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(n.h3,{id:"xmlformat",children:"XMLFORMAT"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLFORMAT = "literal";\n'})}),"\n",(0,r.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "urn:oasis:names:tc:SAML:2.0:assertion";\n'})}),"\n",(0,r.jsx)(n.h3,{id:"elementqualified",children:"ELEMENTQUALIFIED"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter ELEMENTQUALIFIED = 0;\n"})}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"nameid",children:"NameID"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property NameID As %SAML.BaseID(XMLREF = 1, XMLTYPECONSTRAINT = "choice");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"subjectconfirmation",children:"SubjectConfirmation"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property SubjectConfirmation As list Of %SAML.SubjectConfirmation(XMLPROJECTION = "element", XMLREF = 1);\n'})}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"addconfirmation",children:"AddConfirmation"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method AddConfirmation(method As %String) As %Status\n"})}),"\n",(0,r.jsx)(n.p,{children:"Create SubjectConfirmation with specified SubjectConfirmation method. The method argument should be $$$SAMLSenderVouches, $$$SAMLHolderOfKey or $$$SAMLBearer. The NameID field must still be set for the Subject."}),"\n",(0,r.jsx)(n.h3,{id:"addx509confirmation",children:"AddX509Confirmation"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method AddX509Confirmation(credentials As %SYS.X509Credentials, referenceOption As %Integer) As %Status\n"})}),"\n",(0,r.jsx)(n.p,{children:"Create SubjectConfirmation and associated KeyInfo for holder-of-key SubjectConfirmation based X.509 credentials. The NameID field must still be set for the Subject."}),"\n",(0,r.jsx)(n.h3,{id:"addencryptedkeyconfirmation",children:"AddEncryptedKeyConfirmation"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method AddEncryptedKeyConfirmation(encryptedKey As %XML.Security.EncryptedKey) As %Status\n"})}),"\n",(0,r.jsx)(n.p,{children:"Create SubjectConfirmation and associated KeyInfo for holder-of-key SubjectConfirmation based on EncryptedKey. The NameID field must still be set for the Subject."}),"\n",(0,r.jsx)(n.h3,{id:"addbinarysecretconfirmation",children:"AddBinarySecretConfirmation"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method AddBinarySecretConfirmation(binarySecret As %SOAP.WST.BinarySecret) As %Status\n"})}),"\n",(0,r.jsx)(n.p,{children:"Create SubjectConfirmation and associated KeyInfo for holder-of-key SubjectConfirmation based on BinarySecret. The NameID field must still be set for the Subject."})]})}function o(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(d,{...e})}):d(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>s,x:()=>c});var r=t(96540);const i={},a=r.createContext(i);function s(e){const n=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:s(e.components),r.createElement(a.Provider,{value:n},e.children)}}}]);