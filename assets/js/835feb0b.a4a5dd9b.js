"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[98630],{19710:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>c,frontMatter:()=>a,toc:()=>l});var r=n(74848),s=n(28453);const a={pagination_prev:null,pagination_next:null},i="INFORMATION.SCHEMA.STATEMENTRELATIONS",l=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"Statement",id:"statement",level:3},{value:"Relation",id:"relation",level:3}];function o(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"informationschemastatementrelations",children:"INFORMATION.SCHEMA.STATEMENTRELATIONS"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class INFORMATION.SCHEMA.STATEMENTRELATIONS Extends (%Library.Persistent, %XML.Adaptor) [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = STATEMENT_RELATIONS, StorageStrategy = SQLStorage, System = 4 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Child table of INFORMATION_SCHEMA.STATEMENTS which contains each table or view entry use by the statement"}),"\n",(0,r.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(t.h3,{id:"readonly",children:"READONLY"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,r.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(t.h3,{id:"statement",children:"Statement"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Relationship Statement As INFORMATION.SCHEMA.STATEMENTS [ Cardinality = parent, Inverse = Relations ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"Reference to the INFORMATION_SCHEMA.STATEMENTS row this is a child of"}),"\n",(0,r.jsx)(t.h3,{id:"relation",children:"Relation"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property Relation As %String(MAXLEN = 128) [ Required ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"name of the table or view the statement references. Note, the name of the relation is always stored in uppercase."})]})}function c(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>l});var r=n(96540);const s={},a=r.createContext(s);function i(e){const t=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),r.createElement(a.Provider,{value:t},e.children)}}}]);