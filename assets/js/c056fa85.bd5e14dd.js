"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[78117],{64827:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>a,default:()=>o,frontMatter:()=>i,toc:()=>l});var r=n(74848),t=n(28453);const i={pagination_prev:null,pagination_next:null},a="%Library.SysLogTable",l=[{value:"Properties",id:"properties",level:2},{value:"Category",id:"category",level:3},{value:"LogLevel",id:"loglevel",level:3},{value:"Message",id:"message",level:3},{value:"Pid",id:"pid",level:3},{value:"Namespace",id:"namespace",level:3},{value:"Routine",id:"routine",level:3},{value:"TimeAdded",id:"timeadded",level:3},{value:"Tag",id:"tag",level:3},{value:"SessionId",id:"sessionid",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"librarysyslogtable",children:"%Library.SysLogTable"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Library.SysLogTable Extends %Library.Persistent [ Not ProcedureBlock, System = 3 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Having this class that maps onto the data structure for the system log entries allows us to use the SQL projection to query the log. The log entries are inserted without using this class in case objects are not available at that time."}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"category",children:"Category"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Category As %String(MAXLEN = 24);\n"})}),"\n",(0,r.jsx)(s.h3,{id:"loglevel",children:"LogLevel"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property LogLevel As %Integer;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"message",children:"Message"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Message As %String(MAXLEN = 256);\n"})}),"\n",(0,r.jsx)(s.h3,{id:"pid",children:"Pid"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Pid As %String(MAXLEN = 16);\n"})}),"\n",(0,r.jsx)(s.h3,{id:"namespace",children:"Namespace"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Namespace As %String(MAXLEN = 32);\n"})}),"\n",(0,r.jsx)(s.h3,{id:"routine",children:"Routine"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Routine As %String(MAXLEN = 32);\n"})}),"\n",(0,r.jsx)(s.h3,{id:"timeadded",children:"TimeAdded"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property TimeAdded As %TimeStamp;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"tag",children:"Tag"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Tag As %String(MAXLEN = 16);\n"})}),"\n",(0,r.jsx)(s.h3,{id:"sessionid",children:"SessionId"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property SessionId As %String(MAXLEN = 16);\n"})})]})}function o(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>a,x:()=>l});var r=n(96540);const t={},i=r.createContext(t);function a(e){const s=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),r.createElement(i.Provider,{value:s},e.children)}}}]);