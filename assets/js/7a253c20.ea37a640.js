"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[20852],{53260:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>c,default:()=>d,frontMatter:()=>l,toc:()=>t});var r=s(74848),a=s(28453);const l={pagination_prev:null,pagination_next:null},c="%Installer.User",t=[{value:"Properties",id:"properties",level:2},{value:"Username",id:"username",level:3},{value:"Roles",id:"roles",level:3},{value:"PasswordVar",id:"passwordvar",level:3},{value:"Fullname",id:"fullname",level:3},{value:"Namespace",id:"namespace",level:3},{value:"Routine",id:"routine",level:3},{value:"ExpirationDate",id:"expirationdate",level:3},{value:"ChangePassword",id:"changepassword",level:3},{value:"Enabled",id:"enabled",level:3},{value:"Comment",id:"comment",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGenerateCode",id:"ongeneratecode",level:3}];function i(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"installeruser",children:"%Installer.User"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Installer.User Extends %Installer.Activity [ ServerOnly = 1, System = 3 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:'This is a "User" activity within a Manifest document'}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"username",children:"Username"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Username As %Library.Username [ Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Username"}),"\n",(0,r.jsx)(n.h3,{id:"roles",children:"Roles"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Roles As %String [ Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Roles"}),"\n",(0,r.jsx)(n.h3,{id:"passwordvar",children:"PasswordVar"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property PasswordVar As %String [ Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Password variable name (passwords must come from a %Installer var for security reasons)"}),"\n",(0,r.jsx)(n.h3,{id:"fullname",children:"Fullname"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Fullname As %String [ Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"User's full name"}),"\n",(0,r.jsx)(n.h3,{id:"namespace",children:"Namespace"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Namespace As %String;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Namespace"}),"\n",(0,r.jsx)(n.h3,{id:"routine",children:"Routine"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Routine As %String;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Routine"}),"\n",(0,r.jsx)(n.h3,{id:"expirationdate",children:"ExpirationDate"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property ExpirationDate As %String;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Expiration date"}),"\n",(0,r.jsx)(n.h3,{id:"changepassword",children:"ChangePassword"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property ChangePassword As %Installer.Boolean;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Force user to change password"}),"\n",(0,r.jsx)(n.h3,{id:"enabled",children:"Enabled"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Enabled As %Installer.Boolean;\n"})}),"\n",(0,r.jsx)(n.p,{children:"User Enabled"}),"\n",(0,r.jsx)(n.h3,{id:"comment",children:"Comment"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Comment As %String;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Comment"}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"ongeneratecode",children:"%OnGenerateCode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Generate code for this document."})]})}function d(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(i,{...e})}):i(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>c,x:()=>t});var r=s(96540);const a={},l=r.createContext(a);function c(e){const n=r.useContext(l);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function t(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:c(e.components),r.createElement(l.Provider,{value:n},e.children)}}}]);