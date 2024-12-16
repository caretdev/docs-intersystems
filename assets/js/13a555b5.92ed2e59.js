"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[66112],{1104:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>o,default:()=>i,frontMatter:()=>a,toc:()=>c});var r=t(74848),s=t(28453);const a={pagination_prev:null,pagination_next:null},o="%Installer.Production",c=[{value:"Properties",id:"properties",level:2},{value:"Target",id:"target",level:3},{value:"AutoStart",id:"autostart",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnBeforeGenerateCode",id:"onbeforegeneratecode",level:3},{value:"%OnAfterGenerateCode",id:"onaftergeneratecode",level:3}];function l(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"installerproduction",children:"%Installer.Production"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Installer.Production Extends %Installer.Sequence [ ServerOnly = 1, System = 3 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:'This is a "Production" activity within a Manifest document. It configures a production; contains and applies the "Settings" and "Credentials" tags.'}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"target",children:"Target"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property Target As %String(XMLNAME = "Name") [ Required ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"Production name name"}),"\n",(0,r.jsx)(n.h3,{id:"autostart",children:"AutoStart"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property AutoStart As %Installer.Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"AutoStart value"}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"onbeforegeneratecode",children:"%OnBeforeGenerateCode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnBeforeGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Generate code for this document."}),"\n",(0,r.jsx)(n.h3,{id:"onaftergeneratecode",children:"%OnAfterGenerateCode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Generate code for this document."})]})}function i(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>o,x:()=>c});var r=t(96540);const s={},a=r.createContext(s);function o(e){const n=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:o(e.components),r.createElement(a.Provider,{value:n},e.children)}}}]);