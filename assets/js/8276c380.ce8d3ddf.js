"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[94304],{1835:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>o,default:()=>d,frontMatter:()=>c,toc:()=>i});var s=n(74848),r=n(28453);const c={pagination_prev:null,pagination_next:null},o="%Document.Persistent",i=[{value:"Properties",id:"properties",level:2},{value:"%Document",id:"document",level:3},{value:"Methods",id:"methods",level:2},{value:"%DocumentGetObject",id:"documentgetobject",level:3},{value:"%DocumentGetObjectId",id:"documentgetobjectid",level:3},{value:"%Get",id:"get",level:3},{value:"%OnNew",id:"onnew",level:3}];function a(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"documentpersistent",children:"%Document.Persistent"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Document.Persistent Extends %Persistent [ Abstract, NoExtent, PropertyClass = %Document.Property, StorageStrategy = EDoc, System = 3 ]\n"})}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"document",children:"%Document"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property %Document As %Document.Object;\n"})}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"documentgetobject",children:"%DocumentGetObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DocumentGetObject(force As %Integer = 0) As %Library.ObjectIdentity\n"})}),"\n",(0,s.jsx)(t.h3,{id:"documentgetobjectid",children:"%DocumentGetObjectId"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DocumentGetObjectId(force As %Integer = 0) As %Library.String\n"})}),"\n",(0,s.jsx)(t.h3,{id:"get",children:"%Get"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %Get(id As %Integer = "", pDocument As %Binary = "", pFieldExpr As %String(MAXLEN="") = "") As %Binary [ CodeMode = generator, SqlName = Get, SqlProc ]\n'})}),"\n",(0,s.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method %OnNew(pDocument As %String(MAXLEN="") = "") As %Status [ Private, ServerOnly = 1 ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %New method to provide notification that a new instance of an object is being created."}),"\n",(0,s.jsx)(t.p,{children:"If this method returns an error then the object will not be created."}),"\n",(0,s.jsx)(t.p,{children:"It is passed the arguments provided in the %New call. When customizing this method, override the arguments with whatever variables and types you expect to receive from %New(). For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:"}),"\n",(0,s.jsx)(t.p,{children:'Method %OnNew(dob as %Date = "", name as %Name = "") as %Status If instead of returning a %Status code this returns an oref and this oref is a subclass of the current class then this oref will be the one returned to the caller of %New method.'})]})}function d(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(a,{...e})}):a(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>o,x:()=>i});var s=n(96540);const r={},c=s.createContext(r);function o(e){const t=s.useContext(c);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:o(e.components),s.createElement(c.Provider,{value:t},e.children)}}}]);