"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[93563],{93538:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>d,frontMatter:()=>a,toc:()=>i});var r=t(74848),s=t(28453);const a={pagination_prev:null,pagination_next:null},l="%Installer.Default",i=[{value:"Properties",id:"properties",level:2},{value:"Target",id:"target",level:3},{value:"Value",id:"value",level:3},{value:"Dir",id:"dir",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGenerateCode",id:"ongeneratecode",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"installerdefault",children:"%Installer.Default"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Installer.Default Extends %Installer.Var [ ServerOnly = 1, System = 3 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:'This is a "Default" activity within a Manifest document. It sets the variable value if it hasn\'t been set.'}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"target",children:"Target"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property Target As %String(MAXLEN = 128, XMLNAME = "Name") [ Required ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"Variable name to define"}),"\n",(0,r.jsx)(n.h3,{id:"value",children:"Value"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Value As %String(MAXLEN = 32000);\n"})}),"\n",(0,r.jsx)(n.p,{children:"Variable value if not already defined"}),"\n",(0,r.jsx)(n.h3,{id:"dir",children:"Dir"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Dir As %String(MAXLEN = 1024);\n"})}),"\n",(0,r.jsx)(n.p,{children:"Directory property (if the value is a filename). Overrides Value if set."}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"ongeneratecode",children:"%OnGenerateCode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Generate code for this document."})]})}function d(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>i});var r=t(96540);const s={},a=r.createContext(s);function l(e){const n=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),r.createElement(a.Provider,{value:n},e.children)}}}]);