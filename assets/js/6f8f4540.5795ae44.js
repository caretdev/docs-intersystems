"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[37284],{75767:(e,t,r)=>{r.r(t),r.d(t,{contentTitle:()=>o,default:()=>c,frontMatter:()=>a,toc:()=>i});var n=r(74848),s=r(28453);const a={pagination_prev:null,pagination_next:null},o="%Net.MIMESerialPart",i=[{value:"Properties",id:"properties",level:2},{value:"Body",id:"body",level:3},{value:"Methods",id:"methods",level:2},{value:"BodySet",id:"bodyset",level:3},{value:"CloneFromMIMEPart",id:"clonefrommimepart",level:3}];function l(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"netmimeserialpart",children:"%Net.MIMESerialPart"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Net.MIMESerialPart Extends (%Net.MIMEPart, %SerialObject, %XML.Adaptor) [ ClassType = serial, Inheritance = right, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"A serializable subclass of %Net.MIMEPart"}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"body",children:"Body"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property Body As %Stream.GlobalBinary;\n"})}),"\n",(0,n.jsx)(t.p,{children:"The body of the attachment as a stream. Either Parts must contain MIMEParts or Body must be specified, but not both."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"bodyset",children:"BodySet"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method BodySet(body As %CSP.BinaryStream = "") As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Set the body of the attachment to a stream. If the stream contains a Headers attribute, this attribute is used to initialize the headers of the MIME part. The %CSP.BinaryStream that is returned by the CSP engine is an example of such a stream with Headers attribute."}),"\n",(0,n.jsx)(t.h3,{id:"clonefrommimepart",children:"CloneFromMIMEPart"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CloneFromMIMEPart(pPart As %Net.MIMEPart) As %Net.MIMESerialPart\n"})}),"\n",(0,n.jsx)(t.p,{children:"Clonesa regular %Net.MIMEPart into a serializable %Net.MIMESerialPart"})]})}function c(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,t,r)=>{r.d(t,{R:()=>o,x:()=>i});var n=r(96540);const s={},a=n.createContext(s);function o(e){const t=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:o(e.components),n.createElement(a.Provider,{value:t},e.children)}}}]);