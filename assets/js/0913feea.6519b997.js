"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[84847],{76512:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>s,toc:()=>c});var a=t(74848),r=t(28453);const s={pagination_prev:null,pagination_next:null},l="INFORMATION.SCHEMA.CHECKCONSTRAINTS",c=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"SchemaExact",id:"schemaexact",level:3},{value:"TableExact",id:"tableexact",level:3},{value:"TableName",id:"tablename",level:3},{value:"ConstraintExact",id:"constraintexact",level:3},{value:"SystemTable",id:"systemtable",level:3},{value:"CONSTRAINTCATALOG",id:"constraintcatalog",level:3},{value:"CONSTRAINTSCHEMA",id:"constraintschema",level:3},{value:"CONSTRAINTNAME",id:"constraintname",level:3},{value:"CHECKCLAUSE",id:"checkclause",level:3}];function i(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"informationschemacheckconstraints",children:"INFORMATION.SCHEMA.CHECKCONSTRAINTS"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class INFORMATION.SCHEMA.CHECKCONSTRAINTS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = CHECK_CONSTRAINTS, StorageStrategy = SQLStorage, System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Returns one row for each check constraint in the current namespace for tables that can be accessed by the current user in the current namespace. Note that InterSystems IRIS does not currently support check constraints, this table exists for future use."}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"readonly",children:"READONLY"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"schemaexact",children:"SchemaExact"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 10 ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"tableexact",children:"TableExact"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 11 ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"tablename",children:"TableName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property TableName As %String(COLLATION = "Upper", MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 12 ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"constraintexact",children:"ConstraintExact"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property ConstraintExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 13 ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"systemtable",children:"SystemTable"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property SystemTable As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 14, SqlComputeCode = { set {*}=$s($e({CONSTRAINT_SCHEMA})="%"||({CONSTRAINT_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Is the table a system table (1 or 0)"}),"\n",(0,a.jsx)(n.h3,{id:"constraintcatalog",children:"CONSTRAINTCATALOG"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CONSTRAINTCATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = CONSTRAINT_CATALOG ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Constraint qualifier - always NULL in InterSystems IRIS."}),"\n",(0,a.jsx)(n.h3,{id:"constraintschema",children:"CONSTRAINTSCHEMA"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CONSTRAINTSCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 3, SqlFieldName = CONSTRAINT_SCHEMA ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Name of schema that contains the constraint. Always the same as the TABLE_SCHEMA."}),"\n",(0,a.jsx)(n.h3,{id:"constraintname",children:"CONSTRAINTNAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CONSTRAINTNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 4, SqlFieldName = CONSTRAINT_NAME ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Name of the constraint."}),"\n",(0,a.jsx)(n.h3,{id:"checkclause",children:"CHECKCLAUSE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CHECKCLAUSE As %String(MAXLEN = 2048) [ Calculated, SqlColumnNumber = 5, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = CHECK_CLAUSE ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"The search condition contained in the check constraint definition."})]})}function o(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(i,{...e})}):i(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>c});var a=t(96540);const r={},s=a.createContext(r);function l(e){const n=a.useContext(s);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),a.createElement(s.Provider,{value:n},e.children)}}}]);