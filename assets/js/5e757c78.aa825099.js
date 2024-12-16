"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[17538],{56365:(e,l,n)=>{n.r(l),n.d(l,{contentTitle:()=>c,default:()=>d,frontMatter:()=>a,toc:()=>t});var r=n(74848),s=n(28453);const a={pagination_prev:null,pagination_next:null},c="INFORMATION.SCHEMA.COLUMNHISTOGRAMS",t=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"SchemaExact",id:"schemaexact",level:3},{value:"TableExact",id:"tableexact",level:3},{value:"TABLECATALOG",id:"tablecatalog",level:3},{value:"TABLESCHEMA",id:"tableschema",level:3},{value:"TABLENAME",id:"tablename",level:3},{value:"COLUMNNAME",id:"columnname",level:3},{value:"ORDINALPOSITION",id:"ordinalposition",level:3},{value:"BUCKETPOSITION",id:"bucketposition",level:3},{value:"BUCKETWIDTH",id:"bucketwidth",level:3},{value:"INTERPOLATABLE",id:"interpolatable",level:3},{value:"NULLBUCKETS",id:"nullbuckets",level:3},{value:"PERCENTILE",id:"percentile",level:3},{value:"VALUE",id:"value",level:3}];function i(e){const l={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(l.header,{children:(0,r.jsx)(l.h1,{id:"informationschemacolumnhistograms",children:"INFORMATION.SCHEMA.COLUMNHISTOGRAMS"})}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Class INFORMATION.SCHEMA.COLUMNHISTOGRAMS Extends %Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = COLUMN_HISTOGRAMS, StorageStrategy = SQLStorage, System = 4 ]\n"})}),"\n",(0,r.jsx)(l.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(l.h3,{id:"readonly",children:"READONLY"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,r.jsx)(l.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(l.h3,{id:"schemaexact",children:"SchemaExact"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 45 ];\n"})}),"\n",(0,r.jsx)(l.h3,{id:"tableexact",children:"TableExact"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 46 ];\n"})}),"\n",(0,r.jsx)(l.h3,{id:"tablecatalog",children:"TABLECATALOG"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLECATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = TABLE_CATALOG ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Table qualifier - always NULL in InterSystems IRIS"}),"\n",(0,r.jsx)(l.h3,{id:"tableschema",children:"TABLESCHEMA"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = TABLE_SCHEMA ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Name of schema that contains the table."}),"\n",(0,r.jsx)(l.h3,{id:"tablename",children:"TABLENAME"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = TABLE_NAME ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Name of the table."}),"\n",(0,r.jsx)(l.h3,{id:"columnname",children:"COLUMNNAME"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property COLUMNNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = COLUMN_NAME ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Name of the column."}),"\n",(0,r.jsx)(l.h3,{id:"ordinalposition",children:"ORDINALPOSITION"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property ORDINALPOSITION As %Integer [ Required, SqlColumnNumber = 6, SqlFieldName = ORDINAL_POSITION ];\n"})}),"\n",(0,r.jsx)(l.p,{children:"Column's ordinal position within the table."}),"\n",(0,r.jsx)(l.h3,{id:"bucketposition",children:"BUCKETPOSITION"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property BUCKETPOSITION As %Integer [ Required, SqlColumnNumber = 7, SqlFieldName = BUCKET_POSITION ];\n"})}),"\n",(0,r.jsx)(l.h3,{id:"bucketwidth",children:"BUCKETWIDTH"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property BUCKETWIDTH As %Float [ SqlColumnNumber = 8, SqlFieldName = BUCKET_WIDTH ];\n"})}),"\n",(0,r.jsx)(l.h3,{id:"interpolatable",children:"INTERPOLATABLE"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property INTERPOLATABLE As %Boolean [ SqlColumnNumber = 9 ];\n"})}),"\n",(0,r.jsx)(l.h3,{id:"nullbuckets",children:"NULLBUCKETS"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property NULLBUCKETS As %Integer [ SqlColumnNumber = 10, SqlFieldName = NULL_BUCKETS ];\n"})}),"\n",(0,r.jsx)(l.h3,{id:"percentile",children:"PERCENTILE"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property PERCENTILE As %Float [ SqlColumnNumber = 11 ];\n"})}),"\n",(0,r.jsx)(l.h3,{id:"value",children:"VALUE"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property VALUE As %String [ SqlColumnNumber = 12 ];\n"})})]})}function d(e={}){const{wrapper:l}={...(0,s.R)(),...e.components};return l?(0,r.jsx)(l,{...e,children:(0,r.jsx)(i,{...e})}):i(e)}},28453:(e,l,n)=>{n.d(l,{R:()=>c,x:()=>t});var r=n(96540);const s={},a=r.createContext(s);function c(e){const l=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(l):{...l,...e}}),[l,e])}function t(e){let l;return l=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:c(e.components),r.createElement(a.Provider,{value:l},e.children)}}}]);