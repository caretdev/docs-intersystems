"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[88821],{94725:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>o,default:()=>a,frontMatter:()=>l,toc:()=>c});var r=s(74848),t=s(28453);const l={pagination_prev:null,pagination_next:null},o="%Installer.FileLogger",c=[{value:"Properties",id:"properties",level:2},{value:"Device",id:"device",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"LogEntry",id:"logentry",level:3}];function i(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"installerfilelogger",children:"%Installer.FileLogger"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Installer.FileLogger Extends %Installer.AbstractLogger [ System = 3 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Implements a file based logger for %Installer."}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"device",children:"Device"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property Device As %String(MAXLEN = "");\n'})}),"\n",(0,r.jsx)(n.p,{children:"IO Device to write to"}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method %OnNew(pCaptureIO As %Boolean, pFilename As %String, pMode As %String = "WNS") As %Status [ Internal, ProcedureBlock = 1, ServerOnly = 1 ]\n'})}),"\n",(0,r.jsx)(n.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Internal, ProcedureBlock = 1, ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(n.h3,{id:"logentry",children:"LogEntry"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method LogEntry(pLevel As %Integer, pTopic As %String, ByRef pArgs)\n"})}),"\n",(0,r.jsx)(n.p,{children:"Log a message to the install log"})]})}function a(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(i,{...e})}):i(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>o,x:()=>c});var r=s(96540);const t={},l=r.createContext(t);function o(e){const n=r.useContext(l);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:o(e.components),r.createElement(l.Provider,{value:n},e.children)}}}]);