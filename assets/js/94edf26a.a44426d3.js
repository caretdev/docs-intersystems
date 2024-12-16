"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[8904],{64378:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>o,frontMatter:()=>a,toc:()=>c});var t=n(74848),r=n(28453);const a={pagination_prev:null,pagination_next:null},i="%Api.InteropEditors",c=[{value:"Parameters",id:"parameters",level:2},{value:"CHARSET",id:"charset",level:3},{value:"CONVERTINPUTSTREAM",id:"convertinputstream",level:3},{value:"CONTENTTYPE",id:"contenttype",level:3},{value:"HandleCorsRequest",id:"handlecorsrequest",level:3},{value:"UseSession",id:"usesession",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"UrlMap",id:"urlmap",level:3},{value:"Methods",id:"methods",level:2},{value:"OnPreDispatch",id:"onpredispatch",level:3}];function l(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"apiinteropeditors",children:"%Api.InteropEditors"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Api.InteropEditors Extends %Api.InteropEditors.base.dispParent [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Routing class for the InteropEditors REST services Version can be specified in the end point or not. Currently end points internal."}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"charset",children:"CHARSET"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CHARSET = "utf-8";\n'})}),"\n",(0,t.jsx)(s.h3,{id:"convertinputstream",children:"CONVERTINPUTSTREAM"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter CONVERTINPUTSTREAM = 1;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"contenttype",children:"CONTENTTYPE"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CONTENTTYPE = "application/json";\n'})}),"\n",(0,t.jsx)(s.h3,{id:"handlecorsrequest",children:"HandleCorsRequest"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter HandleCorsRequest = 1;\n"})}),"\n",(0,t.jsx)(s.p,{children:"This parameter influences the CORS support. The default is an empty string meaning 'not specified'. If set to true (1) then CORS processing is ON. If set to false (0) then CORS processing is OFF. If left unset \"\" then the decision to process CORS is delegated to the setting on the URL map route."}),"\n",(0,t.jsx)(s.h3,{id:"usesession",children:"UseSession"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter UseSession As Integer = 0;\n"})}),"\n",(0,t.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(s.h3,{id:"urlmap",children:"UrlMap"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]\n'})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"onpredispatch",children:"OnPreDispatch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPreDispatch(pUrl As %String, pMethod As %String, ByRef pContinue As %Boolean) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"All routes are forwarded - leave OnPreDispatch and hence any namespace adjustment to the OnPreDispatch of the forwarded disp class"})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(l,{...e})}):l(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>c});var t=n(96540);const r={},a=t.createContext(r);function i(e){const s=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),t.createElement(a.Provider,{value:s},e.children)}}}]);