"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[48627],{37414:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>c,default:()=>i,frontMatter:()=>o,toc:()=>l});var t=s(74848),r=s(28453);const o={pagination_prev:null,pagination_next:null},c="%Library.ConstraintForeignKey",l=[{value:"Methods",id:"methods",level:2},{value:"Delete",id:"delete",level:3},{value:"Update",id:"update",level:3},{value:"Check",id:"check",level:3},{value:"SQLFKeyExists",id:"sqlfkeyexists",level:3},{value:"SQLFKeyRefAction",id:"sqlfkeyrefaction",level:3}];function a(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"libraryconstraintforeignkey",children:"%Library.ConstraintForeignKey"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Library.ConstraintForeignKey Extends %ConstraintAbstract [ System = 2 ]\n"})}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"delete",children:"Delete"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Delete() As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"update",children:"Update"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Update() As %Status [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"check",children:"Check"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Check(lockonly As %Boolean = 0) As %Status [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Method to Check foreign key for existence. If lock is TRUE then the object referenced by the key value is also locked. If the reference does not exist or, if locking is requested and the lock fails then an error message is returned."}),"\n",(0,t.jsx)(n.h3,{id:"sqlfkeyexists",children:"SQLFKeyExists"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SQLFKeyExists(%p... As %String) As %Status [ CodeMode = generator, Internal, ProcedureBlock = 0, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"sqlfkeyrefaction",children:"SQLFKeyRefAction"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SQLFKeyRefAction(pSameTable As %Boolean = 0, k As %Integer, pNoLock As %Boolean = 0, %p... As %String) As %Status [ CodeMode = generator, Internal, ProcedureBlock = 0, ServerOnly = 1 ]\n"})})]})}function i(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(a,{...e})}):a(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>c,x:()=>l});var t=s(96540);const r={},o=t.createContext(r);function c(e){const n=t.useContext(o);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:c(e.components),t.createElement(o.Provider,{value:n},e.children)}}}]);