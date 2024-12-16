"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[97935],{40447:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>t,default:()=>d,frontMatter:()=>n,toc:()=>i});var l=r(74848),a=r(28453);const n={pagination_prev:null,pagination_next:null},t="%DeepSee.UserLibrary.PivotVariable",i=[{value:"Parameters",id:"parameters",level:2},{value:"XMLNAME",id:"xmlname",level:3},{value:"Properties",id:"properties",level:2},{value:"FullName",id:"fullname",level:3},{value:"Name",id:"name",level:3},{value:"DisplayName",id:"displayname",level:3},{value:"Description",id:"description",level:3},{value:"DefaultValue",id:"defaultvalue",level:3},{value:"Context",id:"context",level:3},{value:"Type",id:"type",level:3},{value:"SourceType",id:"sourcetype",level:3},{value:"SourceName",id:"sourcename",level:3},{value:"ValueList",id:"valuelist",level:3},{value:"DisplayList",id:"displaylist",level:3},{value:"CubeName",id:"cubename",level:3},{value:"UpperCaseName",id:"uppercasename",level:3},{value:"Methods",id:"methods",level:2},{value:"getIdentifier",id:"getidentifier",level:3},{value:"getFullName",id:"getfullname",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",pre:"pre",...(0,a.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(s.header,{children:(0,l.jsx)(s.h1,{id:"deepseeuserlibrarypivotvariable",children:"%DeepSee.UserLibrary.PivotVariable"})}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.UserLibrary.PivotVariable Extends (%Persistent, %DeepSee.UserLibrary.UserData)\n"})}),"\n",(0,l.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(s.h3,{id:"xmlname",children:"XMLNAME"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter XMLNAME = "pivotVariable";\n'})}),"\n",(0,l.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(s.h3,{id:"fullname",children:"FullName"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property FullName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute") [ SqlComputeCode = { Set {FullName} = {CubeName}_"||"_{UpperCaseName}_"."_$$$DSPVExt }, SqlComputed, Transient ];\n'})}),"\n",(0,l.jsx)(s.h3,{id:"name",children:"Name"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property Name As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"displayname",children:"DisplayName"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property DisplayName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"description",children:"Description"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property Description As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"defaultvalue",children:"DefaultValue"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property DefaultValue As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"context",children:"Context"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property Context As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"type",children:"Type"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property Type As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"sourcetype",children:"SourceType"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property SourceType As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"sourcename",children:"SourceName"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property SourceName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"valuelist",children:"ValueList"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property ValueList As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"displaylist",children:"DisplayList"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property DisplayList As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"cubename",children:"CubeName"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property CubeName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h3,{id:"uppercasename",children:"UpperCaseName"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property UpperCaseName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,l.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(s.h3,{id:"getidentifier",children:"getIdentifier"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method getIdentifier() As %String\n"})}),"\n",(0,l.jsx)(s.h3,{id:"getfullname",children:"getFullName"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method getFullName() As %String\n"})})]})}function d(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,l.jsx)(s,{...e,children:(0,l.jsx)(c,{...e})}):c(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>t,x:()=>i});var l=r(96540);const a={},n=l.createContext(a);function t(e){const s=l.useContext(n);return l.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:t(e.components),l.createElement(n.Provider,{value:s},e.children)}}}]);