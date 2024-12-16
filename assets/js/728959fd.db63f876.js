"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[74069],{33971:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>l,default:()=>c,frontMatter:()=>s,toc:()=>r});var a=n(74848),o=n(28453);const s={pagination_prev:null,pagination_next:null},l="SYS.Compatibility",r=[{value:"Methods",id:"methods",level:2},{value:"SetGlobalNameTruncated",id:"setglobalnametruncated",level:3}];function i(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,o.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"syscompatibility",children:"SYS.Compatibility"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class SYS.Compatibility Extends %SYSTEM.Help [ Abstract, System = 4 ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This class contains methods which are used to maintain compatibility with previous versions."}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"setglobalnametruncated",children:"SetGlobalNameTruncated"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetGlobalNameTruncated(Value As %Boolean = 0) As %Status\n"})}),"\n",(0,a.jsxs)(t.p,{children:['Enable access of a global with a name which is truncated by the compiler and ends with a "." (DEPRECATED)',(0,a.jsx)(t.br,{}),'\nWhen a global name is larger than 31 characters, the compiler truncates it to the first 31 characters. If the truncation results in the final character being a period ("."), the name is illegal and should cause an error. But previous versions of the compiler did not detect the illegal name and could create an invalid global or LOCK entry.',(0,a.jsx)(t.br,{}),"\nThis method allows you to continue to access an invalid global that was created under the old version, or to continue using LOCK operations on an invalid name.",(0,a.jsx)(t.br,{}),"\nYou should call this method at system startup only if you have invalid globals that need to be accessed. It is meant for compatibility only, until you can migrate your global structure to use a valid global name, or convert your LOCK code to use a valid name.",(0,a.jsx)(t.br,{}),"\nIf you do need to use this method, edit your SYSTEM^%ZSTART or ZSTU code and call it from there."]}),"\n",(0,a.jsxs)(t.p,{children:["s Status=##Class(SYS.Compatibility).SetGlobalNameTruncated(1) Parameters:",(0,a.jsx)(t.br,{}),'\nValue = 0 - (Default) Do not allow a 31 character global name to end in "."',(0,a.jsx)(t.br,{}),'\nValue = 1 - Allow a 31 character global name to end in "."']})]})}function c(e={}){const{wrapper:t}={...(0,o.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(i,{...e})}):i(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>l,x:()=>r});var a=n(96540);const o={},s=a.createContext(o);function l(e){const t=a.useContext(s);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function r(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:l(e.components),a.createElement(s.Provider,{value:t},e.children)}}}]);