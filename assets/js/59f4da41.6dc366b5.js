"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[38955],{95324:(e,l,n)=>{n.r(l),n.d(l,{contentTitle:()=>t,default:()=>d,frontMatter:()=>a,toc:()=>i});var r=n(74848),s=n(28453);const a={pagination_prev:null,pagination_next:null},t="INFORMATION.SCHEMA.VIEWS",i=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"SchemaExact",id:"schemaexact",level:3},{value:"TableExact",id:"tableexact",level:3},{value:"SystemView",id:"systemview",level:3},{value:"TABLECATALOG",id:"tablecatalog",level:3},{value:"TABLESCHEMA",id:"tableschema",level:3},{value:"TABLENAME",id:"tablename",level:3},{value:"VIEWDEFINITION",id:"viewdefinition",level:3},{value:"CHECKOPTION",id:"checkoption",level:3},{value:"ISUPDATABLE",id:"isupdatable",level:3},{value:"ISTRIGGERUPDATABLE",id:"istriggerupdatable",level:3},{value:"ISTRIGGERDELETABLE",id:"istriggerdeletable",level:3},{value:"ISTRIGGERINSERTABLEINTO",id:"istriggerinsertableinto",level:3},{value:"DESCRIPTION",id:"description",level:3},{value:"DATECREATED",id:"datecreated",level:3},{value:"DATEMODIFIED",id:"datemodified",level:3},{value:"Classname",id:"classname",level:3},{value:"Owner",id:"owner",level:3},{value:"Queryname",id:"queryname",level:3}];function c(e){const l={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(l.header,{children:(0,r.jsx)(l.h1,{id:"informationschemaviews",children:"INFORMATION.SCHEMA.VIEWS"})}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Class INFORMATION.SCHEMA.VIEWS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = VIEWS, StorageStrategy = SQLStorage, System = 4 ]\n"})}),"\n",(0,r.jsx)(l.p,{children:"Returns one row for each view in the current namespace for which the current user has privileges"}),"\n",(0,r.jsx)(l.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(l.h3,{id:"readonly",children:"READONLY"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,r.jsx)(l.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(l.h3,{id:"schemaexact",children:"SchemaExact"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 20 ];\n"})}),"\n",(0,r.jsx)(l.h3,{id:"tableexact",children:"TableExact"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 21 ];\n"})}),"\n",(0,r.jsx)(l.h3,{id:"systemview",children:"SystemView"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property SystemView As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 22, SqlComputeCode = { set {*}=$s($e({TABLE_SCHEMA})="%"||({TABLE_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Is the table a system table (1 or 0)"}),"\n",(0,r.jsx)(l.h3,{id:"tablecatalog",children:"TABLECATALOG"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLECATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = TABLE_CATALOG ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Table qualifier - always NULL in InterSystems IRIS."}),"\n",(0,r.jsx)(l.h3,{id:"tableschema",children:"TABLESCHEMA"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = TABLE_SCHEMA ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Name of schema that contains the table."}),"\n",(0,r.jsx)(l.h3,{id:"tablename",children:"TABLENAME"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = TABLE_NAME ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Name of the view."}),"\n",(0,r.jsx)(l.h3,{id:"viewdefinition",children:"VIEWDEFINITION"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property VIEWDEFINITION As %String(MAXLEN = 1048576) [ SqlColumnNumber = 5, SqlFieldName = VIEW_DEFINITION ];\n"})}),"\n",(0,r.jsx)(l.p,{children:'The view\'s query expression. If longer than 1048576 characters, only the first 1048573 characters of the query are returned followed by "...".'}),"\n",(0,r.jsx)(l.h3,{id:"checkoption",children:"CHECKOPTION"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property CHECKOPTION As %String(MAXLEN = 8, VALUELIST = ",CASCADED,LOCAL,NONE") [ Calculated, SqlColumnNumber = 6, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = CHECK_OPTION ];\n'})}),"\n",(0,r.jsxs)(l.p,{children:["The view's check option setting.",(0,r.jsx)(l.br,{}),"\nValues of CHECK_OPTION have the following meanings:"]}),"\n",(0,r.jsxs)(l.ul,{children:["\n",(0,r.jsx)(l.li,{children:"CASCADED - The view has the CASCADED check option specified."}),"\n",(0,r.jsx)(l.li,{children:"LOCAL - The view has the LOCAL check option specified."}),"\n",(0,r.jsx)(l.li,{children:"NONE - The view has no check option specified."}),"\n"]}),"\n",(0,r.jsx)(l.h3,{id:"isupdatable",children:"ISUPDATABLE"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property ISUPDATABLE As %String(MAXLEN = 3) [ SqlColumnNumber = 7, SqlFieldName = IS_UPDATABLE ];\n"})}),"\n",(0,r.jsx)(l.p,{children:"Returns YES if the view is updatable, otherwise NO."}),"\n",(0,r.jsx)(l.h3,{id:"istriggerupdatable",children:"ISTRIGGERUPDATABLE"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property ISTRIGGERUPDATABLE As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 8, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = IS_TRIGGER_UPDATABLE ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, IS_TRIGGER_UPDATABLE is always NULL."}),"\n",(0,r.jsx)(l.h3,{id:"istriggerdeletable",children:"ISTRIGGERDELETABLE"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property ISTRIGGERDELETABLE As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 9, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = IS_TRIGGER_DELETABLE ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, IS_TRIGGER_DELETABLE is always NULL."}),"\n",(0,r.jsx)(l.h3,{id:"istriggerinsertableinto",children:"ISTRIGGERINSERTABLEINTO"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property ISTRIGGERINSERTABLEINTO As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 10, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = IS_TRIGGER_INSERTABLE_INTO ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, IS_TRIGGER_INSERTABLE_INTO is always NULL."}),"\n",(0,r.jsx)(l.h3,{id:"description",children:"DESCRIPTION"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property DESCRIPTION As %String(MAXLEN = 1024) [ Calculated, SqlColumnNumber = 11, SqlComputeCode = {\n"})}),"\n",(0,r.jsx)(l.p,{children:"Description for the class that projects the view definition, or if the view is projected from a class query, the class query description."}),"\n",(0,r.jsx)(l.h3,{id:"datecreated",children:"DATECREATED"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property DATECREATED As %TimeStamp [ Calculated, SqlColumnNumber = 12, SqlComputeCode = {\n"})}),"\n",(0,r.jsx)(l.p,{children:"Timestamp for when the class projecting the view definition was created."}),"\n",(0,r.jsx)(l.h3,{id:"datemodified",children:"DATEMODIFIED"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property DATEMODIFIED As %TimeStamp [ Calculated, SqlColumnNumber = 13, SqlComputeCode = {\n"})}),"\n",(0,r.jsx)(l.p,{children:"Timestamp for when the class projecting the view definition was last modified."}),"\n",(0,r.jsx)(l.h3,{id:"classname",children:"Classname"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property Classname As %String(MAXLEN = 254) [ Calculated, SqlColumnNumber = 14, SqlComputeCode = { set {*}=$lg($g(^rINDEXSQL("rv",$zconvert({TABLE_SCHEMA},"u"),$zconvert({TABLE_NAME},"u"))),1) }, SqlComputed, SqlFieldName = CLASSNAME ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"Name of the class that projected the view definition"}),"\n",(0,r.jsx)(l.h3,{id:"owner",children:"Owner"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:'Property Owner As %String(MAXLEN = 254) [ Calculated, SqlColumnNumber = 15, SqlComputeCode = { set {*}=$lg($g(^rINDEXSQL("rv",$zconvert({TABLE_SCHEMA},"u"),$zconvert({TABLE_NAME},"u"))),6) }, SqlComputed, SqlFieldName = OWNER ];\n'})}),"\n",(0,r.jsx)(l.p,{children:"View's owner"}),"\n",(0,r.jsx)(l.h3,{id:"queryname",children:"Queryname"}),"\n",(0,r.jsx)(l.pre,{children:(0,r.jsx)(l.code,{className:"language-objectscript-class",children:"Property Queryname As %String(MAXLEN = 254) [ Calculated, SqlColumnNumber = 16, SqlComputeCode = {\n"})}),"\n",(0,r.jsx)(l.p,{children:"If projected from a class query, name of the query"})]})}function d(e={}){const{wrapper:l}={...(0,s.R)(),...e.components};return l?(0,r.jsx)(l,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,l,n)=>{n.d(l,{R:()=>t,x:()=>i});var r=n(96540);const s={},a=r.createContext(s);function t(e){const l=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(l):{...l,...e}}),[l,e])}function i(e){let l;return l=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:t(e.components),r.createElement(a.Provider,{value:l},e.children)}}}]);