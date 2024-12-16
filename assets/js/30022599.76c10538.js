"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[76113],{50452:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>a,default:()=>d,frontMatter:()=>c,toc:()=>i});var r=t(74848),s=t(28453);const c={pagination_prev:null,pagination_next:null},a="%XML.Security.DataReference",i=[{value:"Parameters",id:"parameters",level:2},{value:"XMLFORMAT",id:"xmlformat",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"ELEMENTQUALIFIED",id:"elementqualified",level:3},{value:"Properties",id:"properties",level:2},{value:"content",id:"content",level:3},{value:"URI",id:"uri",level:3},{value:"EncryptedData",id:"encrypteddata",level:3},{value:"SecurityPosition",id:"securityposition",level:3},{value:"ElementType",id:"elementtype",level:3},{value:"DoNotReuse",id:"donotreuse",level:3},{value:"Methods",id:"methods",level:2},{value:"Create",id:"create",level:3}];function l(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"xmlsecuritydatareference",children:"%XML.Security.DataReference"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %XML.Security.DataReference Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"XML Encryption element."}),"\n",(0,r.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(n.h3,{id:"xmlformat",children:"XMLFORMAT"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLFORMAT = "literal";\n'})}),"\n",(0,r.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.w3.org/2001/04/xmlenc#";\n'})}),"\n",(0,r.jsx)(n.h3,{id:"elementqualified",children:"ELEMENTQUALIFIED"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter ELEMENTQUALIFIED = 1;\n"})}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"content",children:"content"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property content As %XML.String(XMLPROJECTION = "content");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"uri",children:"URI"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property URI As %xsd.anyURI(XMLPROJECTION = "attribute") [ Required ];\n'})}),"\n",(0,r.jsx)(n.h3,{id:"encrypteddata",children:"EncryptedData"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property EncryptedData As %XML.Security.EncryptedData(XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"EncryptedData element for data that is to be encrypted."}),"\n",(0,r.jsx)(n.h3,{id:"securityposition",children:"SecurityPosition"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property SecurityPosition As %Integer(XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"The position in the Security header, if referenced EncryptedData is child of the Security header."}),"\n",(0,r.jsx)(n.h3,{id:"elementtype",children:"ElementType"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property ElementType As %String(XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,r.jsx)(n.p,{children:'The type of element referenced: "Body", "Header", "Element" or "". Used only when validating received SOAP messages.'}),"\n",(0,r.jsx)(n.h3,{id:"donotreuse",children:"DoNotReuse"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property DoNotReuse As %Boolean(XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"If DoNotReuse is true, then this reference was created by InitializeForService and should be removed during Reset."}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"create",children:"Create"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Create(data As %XML.Security.EncryptedData)\n"})}),"\n",(0,r.jsx)(n.p,{children:"Create a new Reference based on the specified EncryptedData."})]})}function d(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>a,x:()=>i});var r=t(96540);const s={},c=r.createContext(s);function a(e){const n=r.useContext(c);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:a(e.components),r.createElement(c.Provider,{value:n},e.children)}}}]);