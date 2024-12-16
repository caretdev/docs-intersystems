"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[54645],{73597:(e,l,n)=>{n.r(l),n.d(l,{contentTitle:()=>a,default:()=>d,frontMatter:()=>r,toc:()=>i});var t=n(74848),s=n(28453);const r={pagination_prev:null,pagination_next:null},a="INFORMATION.SCHEMA.TABLES",i=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"SchemaExact",id:"schemaexact",level:3},{value:"TableExact",id:"tableexact",level:3},{value:"SystemTable",id:"systemtable",level:3},{value:"TABLECATALOG",id:"tablecatalog",level:3},{value:"TABLESCHEMA",id:"tableschema",level:3},{value:"TABLENAME",id:"tablename",level:3},{value:"TABLETYPE",id:"tabletype",level:3},{value:"SELFREFERENCINGCOLUMNNAME",id:"selfreferencingcolumnname",level:3},{value:"REFERENCEGENERATION",id:"referencegeneration",level:3},{value:"USERDEFINEDTYPECATALOG",id:"userdefinedtypecatalog",level:3},{value:"USERDEFINEDTYPESCHEMA",id:"userdefinedtypeschema",level:3},{value:"USERDEFINEDTYPENAME",id:"userdefinedtypename",level:3},{value:"ISINSERTABLEINTO",id:"isinsertableinto",level:3},{value:"ISTYPED",id:"istyped",level:3},{value:"Classname",id:"classname",level:3},{value:"Description",id:"description",level:3},{value:"Owner",id:"owner",level:3},{value:"ISSHARDED",id:"issharded",level:3}];function c(e){const l={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,s.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(l.header,{children:(0,t.jsx)(l.h1,{id:"informationschematables",children:"INFORMATION.SCHEMA.TABLES"})}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Class INFORMATION.SCHEMA.TABLES Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = TABLES, StorageStrategy = SQLStorage, System = 4 ]\n"})}),"\n",(0,t.jsx)(l.p,{children:"Returns one row for each table in the current namespace for which the current user has privileges."}),"\n",(0,t.jsx)(l.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(l.h3,{id:"readonly",children:"READONLY"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,t.jsx)(l.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(l.h3,{id:"schemaexact",children:"SchemaExact"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 20 ];\n"})}),"\n",(0,t.jsx)(l.h3,{id:"tableexact",children:"TableExact"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 21 ];\n"})}),"\n",(0,t.jsx)(l.h3,{id:"systemtable",children:"SystemTable"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property SystemTable As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 22, SqlComputeCode = { set {*}=$s($e({TABLE_SCHEMA})="%"||({TABLE_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Is the table a system table (1 or 0)"}),"\n",(0,t.jsx)(l.h3,{id:"tablecatalog",children:"TABLECATALOG"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLECATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = TABLE_CATALOG ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Table qualifier - always NULL in InterSystems IRIS."}),"\n",(0,t.jsx)(l.h3,{id:"tableschema",children:"TABLESCHEMA"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = TABLE_SCHEMA ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Name of schema that contains the table."}),"\n",(0,t.jsx)(l.h3,{id:"tablename",children:"TABLENAME"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = TABLE_NAME ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Name of the table."}),"\n",(0,t.jsx)(l.h3,{id:"tabletype",children:"TABLETYPE"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLETYPE As %String(COLLATION = "SqlUpper", MAXLEN = 16, VALUELIST = ",BASE TABLE,VIEW,GLOBAL TEMPORARY,LOCAL TEMPORARY,SYSTEM TABLE,SYSTEM VIEW,FOREIGN TABLE") [ Required, SqlColumnNumber = 5, SqlFieldName = TABLE_TYPE ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"The values of TABLE_TYPE have the following meanings:"}),"\n",(0,t.jsxs)(l.ul,{children:["\n",(0,t.jsx)(l.li,{children:"BASE TABLE - The table being described is a persistent base table."}),"\n",(0,t.jsx)(l.li,{children:"SYSTEM TABLE - The table being described is a system persistent base table."}),"\n",(0,t.jsx)(l.li,{children:"FOREIGN TABLE - The table being described is a foreign table, projecting data external to IRIS."}),"\n",(0,t.jsx)(l.li,{children:"VIEW - The table being described is a viewed table."}),"\n",(0,t.jsx)(l.li,{children:"SYSTEM VIEW - The table being described is a viewed table."}),"\n",(0,t.jsx)(l.li,{children:"GLOBAL TEMPORARY - The table being described is a global temporary table."}),"\n",(0,t.jsx)(l.li,{children:"LOCAL TEMPORARY - The table being described is a created local temporary table."}),"\n"]}),"\n",(0,t.jsx)(l.h3,{id:"selfreferencingcolumnname",children:"SELFREFERENCINGCOLUMNNAME"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property SELFREFERENCINGCOLUMNNAME As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 6, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = SELF_REFERENCING_COLUMN_NAME ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"From the standard:"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{children:"_The value of SELFREFERENCINGCOLUMNNAME is the name of the self-referencing column of the table, if the table is a typed table. \t\tOtherwise, the value of SELFREFERENCINGCOLUMNNAME is the null value._\n"})}),"\n",(0,t.jsx)(l.p,{children:"Since InterSystems IRIS does not currently support typed table (see IS_TYPED), SELF_REFERENCING_COLUMN_NAME is always NULL"}),"\n",(0,t.jsx)(l.h3,{id:"referencegeneration",children:"REFERENCEGENERATION"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property REFERENCEGENERATION As %String(MAXLEN = 16, VALUELIST = ",SYSTEM GENERATED,USER GENERATED,DERIVED") [ Calculated, SqlColumnNumber = 7, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = REFERENCE_GENERATION ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"From the Standard:"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{children:"_The values of REFERENCEGENERATION have the following meanings: \t\tSYSTEM GENERATED - The values of the self-referencing column of the table are generated by the SQL-server. \t\tUSER GENERATED   - The values of the self-referencing column of the table are generated by the user. \t\tDERIVED          - The values of the self-referencing column of the table are generated from columns of the table. \t\tnull             - The table being described does not have a self-referencing column._\n"})}),"\n",(0,t.jsx)(l.p,{children:"Since InterSystems IRIS does not support self-referencing columns, REFERENCE_GENERATION is always null."}),"\n",(0,t.jsx)(l.h3,{id:"userdefinedtypecatalog",children:"USERDEFINEDTYPECATALOG"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property USERDEFINEDTYPECATALOG As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 8, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = USER_DEFINED_TYPE_CATALOG ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"From the standard:"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{children:"_If the table being described is a table of a structured type TY, then the values of USERDEFINEDTYPECATALOG, USERDEFINEDTYPESCHEMA, and USERDEFINEDTYPENAME \tare the fully qualified name of TY; otherwise, the values of USERDEFINEDTYPECATALOG, USERDEFINEDTYPESCHEMA, and USERDEFINEDTYPENAME are the null value._\n"})}),"\n",(0,t.jsx)(l.p,{children:"For InterSystems IRIS, USER_DEFINED_TYPE_CATALOG is always NULL."}),"\n",(0,t.jsx)(l.h3,{id:"userdefinedtypeschema",children:"USERDEFINEDTYPESCHEMA"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property USERDEFINEDTYPESCHEMA As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 9, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = USER_DEFINED_TYPE_SCHEMA ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"For InterSystems IRIS, USER_DEFINED_TYPE_SCHEMA is always NULL."}),"\n",(0,t.jsx)(l.h3,{id:"userdefinedtypename",children:"USERDEFINEDTYPENAME"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property USERDEFINEDTYPENAME As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 10, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = USER_DEFINED_TYPE_NAME ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"For InterSystems IRIS, USER_DEFINED_TYPE_NAME is always NULL."}),"\n",(0,t.jsx)(l.h3,{id:"isinsertableinto",children:"ISINSERTABLEINTO"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Property ISINSERTABLEINTO As %String(MAXLEN = 3) [ Calculated, Required, SqlColumnNumber = 11, SqlComputeCode = {new tExtent\n"})}),"\n",(0,t.jsx)(l.p,{children:"The values of IS_INSERTABLE_INTO have the following meanings:"}),"\n",(0,t.jsxs)(l.ul,{children:["\n",(0,t.jsx)(l.li,{children:"YES - The table being described is insertable-into."}),"\n",(0,t.jsx)(l.li,{children:"NO - The table being described is not insertable-into."}),"\n"]}),"\n",(0,t.jsx)(l.h3,{id:"istyped",children:"ISTYPED"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property ISTYPED As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 12, SqlComputeCode = { set {*}="NO" }, SqlComputed, SqlFieldName = IS_TYPED ];\n'})}),"\n",(0,t.jsxs)(l.p,{children:["From the standard:",(0,t.jsx)(l.br,{}),"\n",(0,t.jsx)(l.em,{children:'A table RT whose row type is derived from a structured type ST is called a typed table. Only a base table or a view can be a typed table. A typed table has columns corresponding, in name and declared type, to every attribute of ST and one other column REFC that is the self-referencing column of RT; let REFCN be the  of REFC. The declared type of REFC is necessarily REF(ST) and the nullability characteristic of REFC is known not nullable. If RT is a base table, then the table constraint "UNIQUE(REFCN)" is implicit in the definition of RT. A typed table is called a referenceable table. A self-referencing column cannot be updated. Its value is determined during the insertion of a row into the referenceable table. The value of a system-generated self-referencing column and a derived self-referencing column is automatically generated when the row is inserted into the referenceable table. The value of a user-generated self-referencing column is supplied as part of the candidate row to be inserted into the referenceable table. InterSystems IRIS does not currently support typed tables, therefore IS_TYPED is always NO.'})]}),"\n",(0,t.jsx)(l.h3,{id:"classname",children:"Classname"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property Classname As %String(MAXLEN = 254) [ Calculated, SqlColumnNumber = 13, SqlComputeCode = { set {*}=$lg($g(^rINDEXSQL("rv",$zconvert({TABLE_SCHEMA},"U"),$zconvert({TABLE_NAME},"U"))),1) }, SqlComputed, SqlFieldName = CLASSNAME ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Name of the class that projected this table"}),"\n",(0,t.jsx)(l.h3,{id:"description",children:"Description"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property Description As %String(MAXLEN = 254) [ Calculated, SqlColumnNumber = 14, SqlComputeCode = { set {*}=$lg($g(^rINDEXSQL("TABLE",{SchemaExact},{TableExact})),5) }, SqlComputed, SqlFieldName = DESCRIPTION ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Table's description"}),"\n",(0,t.jsx)(l.h3,{id:"owner",children:"Owner"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property Owner As %String(MAXLEN = 254) [ Calculated, SqlColumnNumber = 15, SqlComputeCode = { set {*}=$lg($g(^rINDEXSQL("rv",$zconvert({TABLE_SCHEMA},"U"),$zconvert({TABLE_NAME},"U"))),6) }, SqlComputed, SqlFieldName = OWNER ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Table's owner"}),"\n",(0,t.jsx)(l.h3,{id:"issharded",children:"ISSHARDED"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Property ISSHARDED As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 16, SqlComputeCode = { new tExtent\n"})})]})}function d(e={}){const{wrapper:l}={...(0,s.R)(),...e.components};return l?(0,t.jsx)(l,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,l,n)=>{n.d(l,{R:()=>a,x:()=>i});var t=n(96540);const s={},r=t.createContext(s);function a(e){const l=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(l):{...l,...e}}),[l,e])}function i(e){let l;return l=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:a(e.components),t.createElement(r.Provider,{value:l},e.children)}}}]);