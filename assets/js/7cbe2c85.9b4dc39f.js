"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[10666],{72964:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>o,default:()=>d,frontMatter:()=>a,toc:()=>i});var r=s(74848),n=s(28453);const a={pagination_prev:null,pagination_next:null},o="OAuth2.Metadata",i=[{value:"Methods",id:"methods",level:2},{value:"ExportJSON",id:"exportjson",level:3},{value:"ImportJSON",id:"importjson",level:3},{value:"ListPropertiesExecute",id:"listpropertiesexecute",level:3},{value:"ListPropertiesFetch",id:"listpropertiesfetch",level:3},{value:"ListPropertiesClose",id:"listpropertiesclose",level:3}];function l(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"oauth2metadata",children:"OAuth2.Metadata"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class OAuth2.Metadata Extends %RegisteredObject [ Abstract, System = 4 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"OAuth2.Metadata is the base class for OAuth 2.0 client and server metadata classes. The main function of this class is implement an appropriate method to output JSON."}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"exportjson",children:"ExportJSON"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method ExportJSON() As %String [ CodeMode = generator, Internal ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Note that the WriteJSON method will only handle the property types currently used by the OAuth2.Client.Metadata and OAuth2.Server.Metadata methods. The ExportJSON method will need to be extended to support additional types as they are required."}),"\n",(0,r.jsx)(t.h3,{id:"importjson",children:"ImportJSON"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method ImportJSON(obj As %DynamicAbstractObject) [ CodeMode = generator, Internal ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Note that the ImportJSON method will only handle the property types currently used by the OAuth2.Client.Metadata and OAuth2.Server.Metadata methods. The WriteJSON method will need to be extended to support additional types as they are required."}),"\n",(0,r.jsx)(t.h3,{id:"listpropertiesexecute",children:"ListPropertiesExecute"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ListPropertiesExecute(ByRef qHandle As %Binary, id As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Query to return defined name/value pairs for this set of metadata."}),"\n",(0,r.jsx)(t.h3,{id:"listpropertiesfetch",children:"ListPropertiesFetch"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ListPropertiesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListServicesExecute ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"listpropertiesclose",children:"ListPropertiesClose"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ListPropertiesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListServicesExecute ]\n"})})]})}function d(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>o,x:()=>i});var r=s(96540);const n={},a=r.createContext(n);function o(e){const t=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:o(e.components),r.createElement(a.Provider,{value:t},e.children)}}}]);