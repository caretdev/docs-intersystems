"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[51109],{43035:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>c,default:()=>a,frontMatter:()=>i,toc:()=>l});var r=s(74848),t=s(28453);const i={pagination_prev:null,pagination_next:null},c="%Installer.Resource",l=[{value:"Properties",id:"properties",level:2},{value:"Target",id:"target",level:3},{value:"Description",id:"description",level:3},{value:"Permission",id:"permission",level:3},{value:"Type",id:"type",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGenerateCode",id:"ongeneratecode",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"installerresource",children:"%Installer.Resource"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Installer.Resource Extends %Installer.Activity [ ServerOnly = 1, System = 3 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:'This is a "Resource" activity within a Manifest document'}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"target",children:"Target"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property Target As %String(XMLNAME = "Name") [ Required ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"Namespace name"}),"\n",(0,r.jsx)(n.h3,{id:"description",children:"Description"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Description As %String(MAXLEN = 32000) [ Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Description"}),"\n",(0,r.jsx)(n.h3,{id:"permission",children:"Permission"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Permission As %String(MAXLEN = 16) [ Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Permission"}),"\n",(0,r.jsx)(n.h3,{id:"type",children:"Type"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Type As %String(MAXLEN = 16) [ InitialExpression = 0 ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Type (Internal Use Only)"}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"ongeneratecode",children:"%OnGenerateCode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Generate code for this document."})]})}function a(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>c,x:()=>l});var r=s(96540);const t={},i=r.createContext(t);function c(e){const n=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:c(e.components),r.createElement(i.Provider,{value:n},e.children)}}}]);