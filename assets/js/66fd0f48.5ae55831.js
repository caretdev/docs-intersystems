"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[34223],{32377:(e,n,l)=>{l.r(n),l.d(n,{contentTitle:()=>s,default:()=>o,frontMatter:()=>r,toc:()=>i});var a=l(74848),t=l(28453);const r={pagination_prev:null,pagination_next:null},s="INFORMATION.SCHEMA.REFERENTIALCONSTRAINTS",i=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"SchemaExact",id:"schemaexact",level:3},{value:"TableExact",id:"tableexact",level:3},{value:"ConstraintExact",id:"constraintexact",level:3},{value:"SystemTable",id:"systemtable",level:3},{value:"CONSTRAINTCATALOG",id:"constraintcatalog",level:3},{value:"CONSTRAINTSCHEMA",id:"constraintschema",level:3},{value:"CONSTRAINTTABLENAME",id:"constrainttablename",level:3},{value:"CONSTRAINTNAME",id:"constraintname",level:3},{value:"UNIQUECONSTRAINTCATALOG",id:"uniqueconstraintcatalog",level:3},{value:"UNIQUECONSTRAINTSCHEMA",id:"uniqueconstraintschema",level:3},{value:"UNIQUECONSTRAINTTABLE",id:"uniqueconstrainttable",level:3},{value:"UNIQUECONSTRAINTNAME",id:"uniqueconstraintname",level:3},{value:"MATCHOPTION",id:"matchoption",level:3},{value:"UPDATERULE",id:"updaterule",level:3},{value:"DELETERULE",id:"deleterule",level:3},{value:"Methods",id:"methods",level:2},{value:"UPDATERULELogicalToStorage",id:"updaterulelogicaltostorage",level:3},{value:"UPDATERULEStorageToLogical",id:"updaterulestoragetological",level:3},{value:"DELETERULELogicalToStorage",id:"deleterulelogicaltostorage",level:3},{value:"DELETERULEStorageToLogical",id:"deleterulestoragetological",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,t.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"informationschemareferentialconstraints",children:"INFORMATION.SCHEMA.REFERENTIALCONSTRAINTS"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class INFORMATION.SCHEMA.REFERENTIALCONSTRAINTS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = REFERENTIAL_CONSTRAINTS, StorageStrategy = SQLStorage, System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:'Returns one row for each FOREIGN KEY table constraint in the current namespace for tables that can be accessed by the current user in the current namespace. The REFERENTIAL_CONSTRAINTS table has one row for each row in the TABLE_CONSTRAINTS table that has a CONSTRAINT_TYPE value of "FOREIGN KEY".'}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"readonly",children:"READONLY"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"schemaexact",children:"SchemaExact"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 20 ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"tableexact",children:"TableExact"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 21 ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"constraintexact",children:"ConstraintExact"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property ConstraintExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 22 ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"systemtable",children:"SystemTable"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property SystemTable As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 23, SqlComputeCode = { set {*}=$s($e({SchemaExact})="%"||({SchemaExact}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Is the table a system table (1 or 0)"}),"\n",(0,a.jsx)(n.h3,{id:"constraintcatalog",children:"CONSTRAINTCATALOG"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CONSTRAINTCATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = CONSTRAINT_CATALOG ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Catalog qualifier - always NULL in InterSystems IRIS."}),"\n",(0,a.jsx)(n.h3,{id:"constraintschema",children:"CONSTRAINTSCHEMA"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CONSTRAINTSCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 3, SqlFieldName = CONSTRAINT_SCHEMA ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Name of schema that contains the foreign key constraint."}),"\n",(0,a.jsx)(n.h3,{id:"constrainttablename",children:"CONSTRAINTTABLENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CONSTRAINTTABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = CONSTRAINT_TABLE_NAME ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Name of the table that contains the foreign key constraint."}),"\n",(0,a.jsx)(n.h3,{id:"constraintname",children:"CONSTRAINTNAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CONSTRAINTNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 5, SqlFieldName = CONSTRAINT_NAME ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Foreign key constraint name."}),"\n",(0,a.jsx)(n.h3,{id:"uniqueconstraintcatalog",children:"UNIQUECONSTRAINTCATALOG"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property UNIQUECONSTRAINTCATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 6, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = UNIQUE_CONSTRAINT_CATALOG ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Unique Constraint qualifier - always NULL in InterSystems IRIS."}),"\n",(0,a.jsx)(n.h3,{id:"uniqueconstraintschema",children:"UNIQUECONSTRAINTSCHEMA"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property UNIQUECONSTRAINTSCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 7, SqlFieldName = UNIQUE_CONSTRAINT_SCHEMA ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Name of the schema that contains the unique constraint the foreign key references."}),"\n",(0,a.jsx)(n.h3,{id:"uniqueconstrainttable",children:"UNIQUECONSTRAINTTABLE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property UNIQUECONSTRAINTTABLE As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 8, SqlFieldName = UNIQUE_CONSTRAINT_TABLE ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Name of the table that contains the unique constraint the foreign key references."}),"\n",(0,a.jsx)(n.h3,{id:"uniqueconstraintname",children:"UNIQUECONSTRAINTNAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property UNIQUECONSTRAINTNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 9, SqlFieldName = UNIQUE_CONSTRAINT_NAME ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Name of the unique constraint the foreign key constraint references."}),"\n",(0,a.jsx)(n.h3,{id:"matchoption",children:"MATCHOPTION"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property MATCHOPTION As %String(MAXLEN = 7, VALUELIST = ",NONE,PARTIAL,FULL") [ Calculated, SqlColumnNumber = 10, SqlComputeCode = { set {*}="NONE" }, SqlComputed, SqlFieldName = MATCH_OPTION ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"The values of MATCH_OPTION have the following meanings:"}),"\n",(0,a.jsxs)(n.ul,{children:["\n",(0,a.jsx)(n.li,{children:"NONE - No match type was specified."}),"\n",(0,a.jsx)(n.li,{children:"PARTIAL - A match type of partial was specified."}),"\n",(0,a.jsx)(n.li,{children:"FULL - A match type of full was specified.\nFor InterSystems IRIS MATCH_OPTION is always NONE."}),"\n"]}),"\n",(0,a.jsx)(n.h3,{id:"updaterule",children:"UPDATERULE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property UPDATERULE As %String(MAXLEN = 11, VALUELIST = ",CASCADE,SET NULL,SET DEFAULT,RESTRICT,NO ACTION") [ Required, SqlColumnNumber = 11, SqlFieldName = UPDATE_RULE ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"The values of UPDATE_RULE have the following meanings for foreign keys constraints:"}),"\n",(0,a.jsxs)(n.ul,{children:["\n",(0,a.jsx)(n.li,{children:"NO ACTION - A referential action of NO ACTION was specified."}),"\n",(0,a.jsx)(n.li,{children:"SET NULL - A referential action of SET NULL was specified."}),"\n",(0,a.jsx)(n.li,{children:"SET DEFAULT - A referential action of SET DEFAULT was specified."}),"\n",(0,a.jsx)(n.li,{children:"RESTRICT - A referential action of RESTRICT was specified."}),"\n",(0,a.jsx)(n.li,{children:"CASCADE - A referential action of CASCADE was specified."}),"\n"]}),"\n",(0,a.jsx)(n.h3,{id:"deleterule",children:"DELETERULE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property DELETERULE As %String(MAXLEN = 11, VALUELIST = ",CASCADE,SET NULL,SET DEFAULT,RESTRICT,NO ACTION") [ Required, SqlColumnNumber = 12, SqlFieldName = DELETE_RULE ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"The values of DELETE_RULE have the following meanings for foreign keys constraints:"}),"\n",(0,a.jsxs)(n.ul,{children:["\n",(0,a.jsx)(n.li,{children:"NO ACTION - A referential action of NO ACTION was specified."}),"\n",(0,a.jsx)(n.li,{children:"SET NULL - A referential action of SET NULL was specified."}),"\n",(0,a.jsx)(n.li,{children:"SET DEFAULT - A referential action of SET DEFAULT was specified."}),"\n",(0,a.jsx)(n.li,{children:"RESTRICT - A referential action of RESTRICT was specified."}),"\n",(0,a.jsx)(n.li,{children:"CASCADE - A referential action of CASCADE was specified."}),"\n"]}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"updaterulelogicaltostorage",children:"UPDATERULELogicalToStorage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod UPDATERULELogicalToStorage(%val As %String) As %Integer [ Internal ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"0 = KeyCascade, 1 = KeyRestrict, 2 = SetNull, 3 = NoAction, 4 = SetDefault"}),"\n",(0,a.jsx)(n.h3,{id:"updaterulestoragetological",children:"UPDATERULEStorageToLogical"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod UPDATERULEStorageToLogical(%val As %String) As %Integer [ Internal ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"0 = KeyCascade, 1 = KeyRestrict, 2 = SetNull, 3 = NoAction, 4 = SetDefault"}),"\n",(0,a.jsx)(n.h3,{id:"deleterulelogicaltostorage",children:"DELETERULELogicalToStorage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DELETERULELogicalToStorage(%val As %String) As %Integer [ Internal ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"0 = KeyCascade, 1 = KeyRestrict, 2 = SetNull, 3 = NoAction, 4 = SetDefault"}),"\n",(0,a.jsx)(n.h3,{id:"deleterulestoragetological",children:"DELETERULEStorageToLogical"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DELETERULEStorageToLogical(%val As %String) As %Integer [ Internal ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"0 = KeyCascade, 1 = KeyRestrict, 2 = SetNull, 3 = NoAction, 4 = SetDefault"})]})}function o(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,l)=>{l.d(n,{R:()=>s,x:()=>i});var a=l(96540);const t={},r=a.createContext(t);function s(e){const n=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:s(e.components),a.createElement(r.Provider,{value:n},e.children)}}}]);