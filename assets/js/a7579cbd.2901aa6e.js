"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[12565],{68769:(e,l,r)=>{r.r(l),r.d(l,{contentTitle:()=>a,default:()=>d,frontMatter:()=>s,toc:()=>c});var n=r(74848),t=r(28453);const s={pagination_prev:null,pagination_next:null},a="INFORMATION.SCHEMA.TRIGGERS",c=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"SchemaExact",id:"schemaexact",level:3},{value:"TableExact",id:"tableexact",level:3},{value:"TriggerObjName",id:"triggerobjname",level:3},{value:"SystemTable",id:"systemtable",level:3},{value:"TABLECATALOG",id:"tablecatalog",level:3},{value:"TABLESCHEMA",id:"tableschema",level:3},{value:"TABLENAME",id:"tablename",level:3},{value:"TRIGGERNAME",id:"triggername",level:3},{value:"EVENTMANIPULATION",id:"eventmanipulation",level:3},{value:"EVENTOBJECTCATALOG",id:"eventobjectcatalog",level:3},{value:"EVENTOBJECTSCHEMA",id:"eventobjectschema",level:3},{value:"EVENTOBJECTTABLE",id:"eventobjecttable",level:3},{value:"ACTIONORDER",id:"actionorder",level:3},{value:"ACTIONCONDITION",id:"actioncondition",level:3},{value:"ACTIONSTATEMENT",id:"actionstatement",level:3},{value:"ACTIONORIENTATION",id:"actionorientation",level:3},{value:"ACTIONTIMING",id:"actiontiming",level:3},{value:"ACTIONREFERENCEOLDTABLE",id:"actionreferenceoldtable",level:3},{value:"ACTIONREFERENCENEWTABLE",id:"actionreferencenewtable",level:3},{value:"ACTIONREFERENCEOLDROW",id:"actionreferenceoldrow",level:3},{value:"ACTIONREFERENCENEWROW",id:"actionreferencenewrow",level:3},{value:"CREATED",id:"created",level:3}];function i(e){const l={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(l.header,{children:(0,n.jsx)(l.h1,{id:"informationschematriggers",children:"INFORMATION.SCHEMA.TRIGGERS"})}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Class INFORMATION.SCHEMA.TRIGGERS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = TRIGGERS, StorageStrategy = SQLStorage, System = 4 ]\n"})}),"\n",(0,n.jsx)(l.p,{children:"Returns one row for each trigger for tables that can be accessed by the current user in the current namespace."}),"\n",(0,n.jsx)(l.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(l.h3,{id:"readonly",children:"READONLY"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,n.jsx)(l.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(l.h3,{id:"schemaexact",children:"SchemaExact"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 20 ];\n"})}),"\n",(0,n.jsx)(l.h3,{id:"tableexact",children:"TableExact"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 21 ];\n"})}),"\n",(0,n.jsx)(l.h3,{id:"triggerobjname",children:"TriggerObjName"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property TriggerObjName As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 22 ];\n"})}),"\n",(0,n.jsx)(l.h3,{id:"systemtable",children:"SystemTable"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property SystemTable As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 23, SqlComputeCode = { set {*}=$s($e({TABLE_SCHEMA})="%"||({TABLE_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Is the table a system table (1 or 0)"}),"\n",(0,n.jsx)(l.h3,{id:"tablecatalog",children:"TABLECATALOG"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLECATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = TABLE_CATALOG ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Table qualifier - always NULL in InterSystems IRIS"}),"\n",(0,n.jsx)(l.h3,{id:"tableschema",children:"TABLESCHEMA"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Calculated, Required, SqlColumnNumber = 3, SqlComputeCode = { set {*}={SchemaExact} }, SqlComputed, SqlFieldName = TABLE_SCHEMA ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Name of schema that contains the table."}),"\n",(0,n.jsx)(l.h3,{id:"tablename",children:"TABLENAME"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Calculated, Required, SqlColumnNumber = 4, SqlComputeCode = { set {*}={TableExact} }, SqlComputed, SqlFieldName = TABLE_NAME ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Name of the table."}),"\n",(0,n.jsx)(l.h3,{id:"triggername",children:"TRIGGERNAME"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property TRIGGERNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = TRIGGER_NAME ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Name of the trigger."}),"\n",(0,n.jsx)(l.h3,{id:"eventmanipulation",children:"EVENTMANIPULATION"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property EVENTMANIPULATION As %String(MAXLEN = 48) [ SqlColumnNumber = 6, SqlFieldName = EVENT_MANIPULATION ];\n"})}),"\n",(0,n.jsx)(l.p,{children:"Event for this trigger, typically INSERT, UPDATE, or DELETE"}),"\n",(0,n.jsx)(l.h3,{id:"eventobjectcatalog",children:"EVENTOBJECTCATALOG"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property EVENTOBJECTCATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 7, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = EVENT_OBJECT_CATALOG ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"EVENT_OBJECT_CATALOG is not currently used by InterSystems IRIS, reserved for future use."}),"\n",(0,n.jsx)(l.h3,{id:"eventobjectschema",children:"EVENTOBJECTSCHEMA"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property EVENTOBJECTSCHEMA As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 8, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = EVENT_OBJECT_SCHEMA ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"EVENT_OBJECT_SCHEMA is not currently used by InterSystems IRIS, reserved for future use."}),"\n",(0,n.jsx)(l.h3,{id:"eventobjecttable",children:"EVENTOBJECTTABLE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property EVENTOBJECTTABLE As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 9, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = EVENT_OBJECT_TABLE ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"EVENT_OBJECT_TABLE is not currently used by InterSystems IRIS, reserved for future use."}),"\n",(0,n.jsx)(l.h3,{id:"actionorder",children:"ACTIONORDER"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property ACTIONORDER As %Integer [ SqlColumnNumber = 10, SqlFieldName = ACTION_ORDER ];\n"})}),"\n",(0,n.jsx)(l.p,{children:"Column's ordinal position within the table."}),"\n",(0,n.jsx)(l.h3,{id:"actioncondition",children:"ACTIONCONDITION"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ACTIONCONDITION As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 11, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = ACTION_CONDITION ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"ACTION_CONDITION is not currently used by InterSystems IRIS, reserved for future use."}),"\n",(0,n.jsx)(l.h3,{id:"actionstatement",children:"ACTIONSTATEMENT"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ACTIONSTATEMENT As %String(MAXLEN = "") [ SqlColumnNumber = 12, SqlFieldName = ACTION_STATEMENT ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"ACTION_STATEMENT is not currently used by InterSystems IRIS, reserved for future use."}),"\n",(0,n.jsx)(l.h3,{id:"actionorientation",children:"ACTIONORIENTATION"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ACTIONORIENTATION As %String(MAXLEN = 10, VALUELIST = ",ROW,ROW/OBJECT,STATEMENT") [ SqlColumnNumber = 13, SqlFieldName = ACTION_ORIENTATION ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Foreach specification, ROW, ROW/OBJECT, or STATEMENT"}),"\n",(0,n.jsx)(l.h3,{id:"actiontiming",children:"ACTIONTIMING"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ACTIONTIMING As %String(MAXLEN = 6, VALUELIST = ",BEFORE,AFTER") [ SqlColumnNumber = 14, SqlFieldName = ACTION_TIMING ];\n'})}),"\n",(0,n.jsxs)(l.p,{children:["Time, BEFORE or AFTER",(0,n.jsx)(l.br,{}),"\nBEFORE - the trigger's Time is BEFORE",(0,n.jsx)(l.br,{}),"\nAFTER - the trigger's Time is AFTER"]}),"\n",(0,n.jsx)(l.h3,{id:"actionreferenceoldtable",children:"ACTIONREFERENCEOLDTABLE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property ACTIONREFERENCEOLDTABLE As %String(MAXLEN = 128) [ SqlColumnNumber = 15, SqlFieldName = ACTION_REFERENCE_OLD_TABLE ];\n"})}),"\n",(0,n.jsx)(l.p,{children:"Trigger's old table name"}),"\n",(0,n.jsx)(l.h3,{id:"actionreferencenewtable",children:"ACTIONREFERENCENEWTABLE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property ACTIONREFERENCENEWTABLE As %String(MAXLEN = 128) [ SqlColumnNumber = 16, SqlFieldName = ACTION_REFERENCE_NEW_TABLE ];\n"})}),"\n",(0,n.jsx)(l.p,{children:"Trigger's new table name"}),"\n",(0,n.jsx)(l.h3,{id:"actionreferenceoldrow",children:"ACTIONREFERENCEOLDROW"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ACTIONREFERENCEOLDROW As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 17, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = ACTION_REFERENCE_OLD_ROW ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"ACTION_REFERENCE_OLD_ROW is not currently used by InterSystems IRIS, reserved for future use."}),"\n",(0,n.jsx)(l.h3,{id:"actionreferencenewrow",children:"ACTIONREFERENCENEWROW"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ACTIONREFERENCENEWROW As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 18, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = ACTION_REFERENCE_NEW_ROW ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"ACTION_REFERENCE_NEW_ROW is not currently used by InterSystems IRIS, reserved for future use."}),"\n",(0,n.jsx)(l.h3,{id:"created",children:"CREATED"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property CREATED As %TimeStamp [ SqlColumnNumber = 19, SqlFieldName = CREATED ];\n"})}),"\n",(0,n.jsx)(l.p,{children:"Time trigger was created This is actually the time the class that defines the table was last changed as the IRIS class metadata cannot account for when the trigger was actually created"})]})}function d(e={}){const{wrapper:l}={...(0,t.R)(),...e.components};return l?(0,n.jsx)(l,{...e,children:(0,n.jsx)(i,{...e})}):i(e)}},28453:(e,l,r)=>{r.d(l,{R:()=>a,x:()=>c});var n=r(96540);const t={},s=n.createContext(t);function a(e){const l=n.useContext(s);return n.useMemo((function(){return"function"==typeof e?e(l):{...l,...e}}),[l,e])}function c(e){let l;return l=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),n.createElement(s.Provider,{value:l},e.children)}}}]);