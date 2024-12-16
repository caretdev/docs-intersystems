"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[58130],{24545:(e,l,s)=>{s.r(l),s.d(l,{contentTitle:()=>t,default:()=>d,frontMatter:()=>a,toc:()=>i});var n=s(74848),r=s(28453);const a={pagination_prev:null,pagination_next:null},t="INFORMATION.SCHEMA.ROUTINES",i=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"SchemaUpper",id:"schemaupper",level:3},{value:"TableUpper",id:"tableupper",level:3},{value:"SystemRoutine",id:"systemroutine",level:3},{value:"ExtentQuery",id:"extentquery",level:3},{value:"SPECIFICCATALOG",id:"specificcatalog",level:3},{value:"SPECIFICSCHEMA",id:"specificschema",level:3},{value:"SPECIFICNAME",id:"specificname",level:3},{value:"ROUTINECATALOG",id:"routinecatalog",level:3},{value:"ROUTINESCHEMA",id:"routineschema",level:3},{value:"ROUTINENAME",id:"routinename",level:3},{value:"MODULECATALOG",id:"modulecatalog",level:3},{value:"MODULESCHEMA",id:"moduleschema",level:3},{value:"MODULENAME",id:"modulename",level:3},{value:"USERDEFINEDTYPECATALOG",id:"userdefinedtypecatalog",level:3},{value:"USERDEFINEDTYPESCHEMA",id:"userdefinedtypeschema",level:3},{value:"USERDEFINEDTYPENAME",id:"userdefinedtypename",level:3},{value:"ROUTINETYPE",id:"routinetype",level:3},{value:"DTDIDENTIFIER",id:"dtdidentifier",level:3},{value:"ROUTINEBODY",id:"routinebody",level:3},{value:"ROUTINEDEFINITION",id:"routinedefinition",level:3},{value:"EXTERNALNAME",id:"externalname",level:3},{value:"EXTERNALLANGUAGE",id:"externallanguage",level:3},{value:"PARAMETERSTYLE",id:"parameterstyle",level:3},{value:"ISDETERMINISTIC",id:"isdeterministic",level:3},{value:"SQLDATAACCESS",id:"sqldataaccess",level:3},{value:"ISNULLCALL",id:"isnullcall",level:3},{value:"SQLPATH",id:"sqlpath",level:3},{value:"SCHEMALEVELROUTINE",id:"schemalevelroutine",level:3},{value:"MAXDYNAMICRESULTSETS",id:"maxdynamicresultsets",level:3},{value:"ISUSERDEFINEDCAST",id:"isuserdefinedcast",level:3},{value:"ISIMPLICITLYINVOCABLE",id:"isimplicitlyinvocable",level:3},{value:"SECURITYTYPE",id:"securitytype",level:3},{value:"TOSQLSPECIFICCATALOG",id:"tosqlspecificcatalog",level:3},{value:"TOSQLSPECIFICSCHEMA",id:"tosqlspecificschema",level:3},{value:"TOSQLSPECIFICNAME",id:"tosqlspecificname",level:3},{value:"ASLOCATOR",id:"aslocator",level:3},{value:"CREATED",id:"created",level:3},{value:"LASTALTERED",id:"lastaltered",level:3},{value:"NEWSAVEPOINTLEVEL",id:"newsavepointlevel",level:3},{value:"ISUDTDEPENDENT",id:"isudtdependent",level:3},{value:"RESULTCASTFROMDTDIDENTIFIER",id:"resultcastfromdtdidentifier",level:3},{value:"RESULTCASTASLOCATOR",id:"resultcastaslocator",level:3},{value:"DATATYPE",id:"datatype",level:3},{value:"CHARACTERMAXIMUMLENGTH",id:"charactermaximumlength",level:3},{value:"CHARACTEROCTETLENGTH",id:"characteroctetlength",level:3},{value:"NUMERICPRECISION",id:"numericprecision",level:3},{value:"NUMERICPRECISIONRADIX",id:"numericprecisionradix",level:3},{value:"NUMERICSCALE",id:"numericscale",level:3},{value:"DATETIMEPRECISION",id:"datetimeprecision",level:3},{value:"COLLATIONCATALOG",id:"collationcatalog",level:3},{value:"COLLATIONSCHEMA",id:"collationschema",level:3},{value:"COLLATIONNAME",id:"collationname",level:3},{value:"CHARACTERSETCATALOG",id:"charactersetcatalog",level:3},{value:"CHARACTERSETSCHEMA",id:"charactersetschema",level:3},{value:"CHARACTERSETNAME",id:"charactersetname",level:3},{value:"Classname",id:"classname",level:3},{value:"MethodQueryName",id:"methodqueryname",level:3}];function c(e){const l={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(l.header,{children:(0,n.jsx)(l.h1,{id:"informationschemaroutines",children:"INFORMATION.SCHEMA.ROUTINES"})}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Class INFORMATION.SCHEMA.ROUTINES Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = ROUTINES, StorageStrategy = SQLStorage, System = 4 ]\n"})}),"\n",(0,n.jsx)(l.p,{children:"Returns one row for each stored procedure and function that can be accessed by the current user in the current namespace."}),"\n",(0,n.jsx)(l.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(l.h3,{id:"readonly",children:"READONLY"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,n.jsx)(l.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(l.h3,{id:"schemaupper",children:"SchemaUpper"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property SchemaUpper As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 60 ];\n"})}),"\n",(0,n.jsx)(l.h3,{id:"tableupper",children:"TableUpper"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property TableUpper As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 61 ];\n"})}),"\n",(0,n.jsx)(l.h3,{id:"systemroutine",children:"SystemRoutine"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property SystemRoutine As %Boolean [ Calculated, Internal, Private, Required, SqlColumnNumber = 62, SqlComputeCode = { set {*}=$s($e({ROUTINE_SCHEMA})="%"||({ROUTINE_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Is the table a system routine (1 or 0)"}),"\n",(0,n.jsx)(l.h3,{id:"extentquery",children:"ExtentQuery"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ExtentQuery As %Boolean [ Calculated, Internal, Private, Required, SqlColumnNumber = 63, SqlComputeCode = { set {*}=$s($$$PROCprocedure($$$pPROC,{SchemaUpper},{TableUpper})="Extent":1,1:0) }, SqlComputed ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Is the routine an Extent Query(1 or 0)"}),"\n",(0,n.jsx)(l.h3,{id:"specificcatalog",children:"SPECIFICCATALOG"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property SPECIFICCATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = SPECIFIC_CATALOG ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. Specific qualifier - always NULL in InterSystems IRIS."}),"\n",(0,n.jsx)(l.h3,{id:"specificschema",children:"SPECIFICSCHEMA"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property SPECIFICSCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = SPECIFIC_SCHEMA ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Name of schema that contains the routine."}),"\n",(0,n.jsx)(l.h3,{id:"specificname",children:"SPECIFICNAME"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property SPECIFICNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = SPECIFIC_NAME ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Specific name."}),"\n",(0,n.jsx)(l.h3,{id:"routinecatalog",children:"ROUTINECATALOG"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ROUTINECATALOG As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 5, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = ROUTINE_CATALOG ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. Routine qualifier - always NULL in InterSystems IRIS."}),"\n",(0,n.jsx)(l.h3,{id:"routineschema",children:"ROUTINESCHEMA"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ROUTINESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 6, SqlFieldName = ROUTINE_SCHEMA ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Name of schema that contains the routine, same as SPECIFIC_SCHEMA."}),"\n",(0,n.jsx)(l.h3,{id:"routinename",children:"ROUTINENAME"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ROUTINENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 7, SqlFieldName = ROUTINE_NAME ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Routine name, same as SPECIFIC_NAME."}),"\n",(0,n.jsx)(l.h3,{id:"modulecatalog",children:"MODULECATALOG"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property MODULECATALOG As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 8, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = MODULE_CATALOG ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, MODULE_CATALOG is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"moduleschema",children:"MODULESCHEMA"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property MODULESCHEMA As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 9, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = MODULE_SCHEMA ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, MODULE_SCHEMA is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"modulename",children:"MODULENAME"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property MODULENAME As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 10, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = MODULE_NAME ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, MODULE_NAME is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"userdefinedtypecatalog",children:"USERDEFINEDTYPECATALOG"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property USERDEFINEDTYPECATALOG As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 11, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = USER_DEFINED_TYPE_CATALOG ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, USER_DEFINED_TYPE_CATALOG is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"userdefinedtypeschema",children:"USERDEFINEDTYPESCHEMA"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property USERDEFINEDTYPESCHEMA As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 12, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = USER_DEFINED_TYPE_SCHEMA ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, USER_DEFINED_TYPE_SCHEMA is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"userdefinedtypename",children:"USERDEFINEDTYPENAME"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property USERDEFINEDTYPENAME As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 13, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = USER_DEFINED_TYPE_NAME ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, USER_DEFINED_TYPE_NAME is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"routinetype",children:"ROUTINETYPE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ROUTINETYPE As %String(MAXLEN = 9, VALUELIST = ",PROCEDURE,FUNCTION") [ SqlColumnNumber = 14, SqlFieldName = ROUTINE_TYPE ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"The values of ROUTINE_TYPE have the following meanings:"}),"\n",(0,n.jsxs)(l.ul,{children:["\n",(0,n.jsx)(l.li,{children:"PROCEDURE - The SQL-invoked routine is a query projected as a procedure."}),"\n",(0,n.jsx)(l.li,{children:"FUNCTION - The SQL-invoked routine is a function (method) projected as a procedure."}),"\n"]}),"\n",(0,n.jsx)(l.h3,{id:"dtdidentifier",children:"DTDIDENTIFIER"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property DTDIDENTIFIER As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 15, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = DTD_IDENTIFIER ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, DTD_IDENTIFIER is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"routinebody",children:"ROUTINEBODY"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ROUTINEBODY As %String(MAXLEN = 8, VALUELIST = ",SQL,EXTERNAL") [ Calculated, SqlColumnNumber = 16, SqlComputeCode = {\n'})}),"\n",(0,n.jsx)(l.p,{children:"The values of ROUTINE_BODY have the following meanings:"}),"\n",(0,n.jsxs)(l.ul,{children:["\n",(0,n.jsx)(l.li,{children:"SQL - Means this routine is a class query with language SQL."}),"\n",(0,n.jsx)(l.li,{children:"EXTERNAL - Means this is not a class query with language SQL."}),"\n"]}),"\n",(0,n.jsx)(l.h3,{id:"routinedefinition",children:"ROUTINEDEFINITION"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property ROUTINEDEFINITION As %String(MAXLEN = 8192) [ Calculated, SqlColumnNumber = 17, SqlComputeCode = {\n"})}),"\n",(0,n.jsx)(l.p,{children:"/// The routine's query expression. If longer than 8192 characters, or the routine is not an SQL class query, NULL is returned."}),"\n",(0,n.jsx)(l.h3,{id:"externalname",children:"EXTERNALNAME"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property EXTERNALNAME As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 18, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = EXTERNAL_NAME ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, EXTERNAL_NAME is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"externallanguage",children:"EXTERNALLANGUAGE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property EXTERNALLANGUAGE As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 19, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = EXTERNAL_LANGUAGE ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, EXTERNAL_LANGUAGE is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"parameterstyle",children:"PARAMETERSTYLE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property PARAMETERSTYLE As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 20, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = PARAMETER_STYLE ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, PARAMETER_STYLE is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"isdeterministic",children:"ISDETERMINISTIC"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ISDETERMINISTIC As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 21, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = IS_DETERMINISTIC ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, IS_DETERMINISTIC is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"sqldataaccess",children:"SQLDATAACCESS"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property SQLDATAACCESS As %String(MAXLEN = 17, VALUELIST = ",NO SQL,CONTAINS SQL,READS SQL DATA,MODIFIES SQL DATA") [ Calculated, SqlColumnNumber = 22, SqlComputeCode = {\n'})}),"\n",(0,n.jsx)(l.p,{children:"SQL_DATA_ACCESS Returns one of the following values:"}),"\n",(0,n.jsxs)(l.ul,{children:["\n",(0,n.jsx)(l.li,{children:"NO SQL = Function does not contain SQL."}),"\n",(0,n.jsx)(l.li,{children:"CONTAINS SQL = Function possibly contains SQL."}),"\n",(0,n.jsx)(l.li,{children:"READS SQL DATA = Function possibly reads SQL data."}),"\n",(0,n.jsx)(l.li,{children:"MODIFIES SQL DATA = Function possibly modifies SQL data.\nReturns CONTAINS SQL for all functions, and READS SQL DATA for all class query procedure."}),"\n"]}),"\n",(0,n.jsx)(l.h3,{id:"isnullcall",children:"ISNULLCALL"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ISNULLCALL As %String(MAXLEN = 3, VALUELIST = ",YES,NO") [ Calculated, SqlColumnNumber = 23, SqlComputeCode = { set {*}=$s({ROUTINE_BODY}="SQL":"",1:"NO") }, SqlComputed, SqlFieldName = IS_NULL_CALL ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"The values of IS_NULL_CALL have the following meanings:"}),"\n",(0,n.jsxs)(l.ul,{children:["\n",(0,n.jsx)(l.li,{children:"YES - The routine is a function and returns null if any of its parameters are null."}),"\n",(0,n.jsx)(l.li,{children:"NO - The routine is a function and its return value is determined by invoking the routine."}),"\n",(0,n.jsx)(l.li,{children:"null - The routine being described is a class query procedure.\nFor InterSystems IRIS, if the routine is a function IS_NULL_CALL is always NO."}),"\n"]}),"\n",(0,n.jsx)(l.h3,{id:"sqlpath",children:"SQLPATH"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property SQLPATH As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 24, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = SQL_PATH ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, SQL_PATH is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"schemalevelroutine",children:"SCHEMALEVELROUTINE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property SCHEMALEVELROUTINE As %String(MAXLEN = 3, VALUELIST = ",YES,NO") [ Calculated, Required, SqlColumnNumber = 25, SqlComputeCode = { set {*}="YES" }, SqlComputed, SqlFieldName = SCHEMA_LEVEL_ROUTINE ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"The values of SCHEMA_LEVEL_ROUTINE have the following meanings:"}),"\n",(0,n.jsxs)(l.ul,{children:["\n",(0,n.jsx)(l.li,{children:"YES - If the routine is a schema-level routine."}),"\n",(0,n.jsx)(l.li,{children:"NO - If the routine is not a schema-level routine.\nFor InterSystems IRIS, SCHEMA_LEVEL_ROUTINE is always YES."}),"\n"]}),"\n",(0,n.jsx)(l.h3,{id:"maxdynamicresultsets",children:"MAXDYNAMICRESULTSETS"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property MAXDYNAMICRESULTSETS As %SmallInt [ Calculated, SqlColumnNumber = 26, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = MAX_DYNAMIC_RESULT_SETS ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, MAX_DYNAMIC_RESULT_SETS is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"isuserdefinedcast",children:"ISUSERDEFINEDCAST"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ISUSERDEFINEDCAST As %String(MAXLEN = 3, VALUELIST = ",YES,NO") [ Calculated, SqlColumnNumber = 27, SqlComputeCode = { set {*}=$s({ROUTINE_BODY}="SQL":"",1:"NO") }, SqlComputed, SqlFieldName = IS_USER_DEFINED_CAST ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"The values of IS_USER_DEFINED_CAST have the following meanings:"}),"\n",(0,n.jsxs)(l.ul,{children:["\n",(0,n.jsx)(l.li,{children:"YES - The routine is a function that is a user-defined cast function."}),"\n",(0,n.jsx)(l.li,{children:"NO - The routine is a function that is not a user-defined cast function."}),"\n",(0,n.jsx)(l.li,{children:"null - The routine being described is a class query procedure.\nFor InterSystems IRIS, if the routine is a function IS_USER_DEFINED_CAST is always NO."}),"\n"]}),"\n",(0,n.jsx)(l.h3,{id:"isimplicitlyinvocable",children:"ISIMPLICITLYINVOCABLE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ISIMPLICITLYINVOCABLE As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 28, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = IS_IMPLICITLY_INVOCABLE ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"The values of IS_IMPLICITLY_INVOCABLE have the following meanings:"}),"\n",(0,n.jsxs)(l.ul,{children:["\n",(0,n.jsx)(l.li,{children:"YES - The user-defined cast function is implicitly invocable."}),"\n",(0,n.jsx)(l.li,{children:"NO - The user-defined cast function is not implicitly invocable."}),"\n",(0,n.jsx)(l.li,{children:"null - The routine is not a user-defined cast function.\nReserved for future use. For InterSystems IRIS, IS_IMPLICITLY_INVOCABLE is always null."}),"\n"]}),"\n",(0,n.jsx)(l.h3,{id:"securitytype",children:"SECURITYTYPE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property SECURITYTYPE As %String(MAXLEN = 22, VALUELIST = ",DEFINER,INVOKER,IMPLEMENTATION DEFINED") [ Calculated, SqlColumnNumber = 29, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = SECURITY_TYPE ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"The values of SECURITY_TYPE have the following meanings:"}),"\n",(0,n.jsxs)(l.ul,{children:["\n",(0,n.jsx)(l.li,{children:"DEFINER - The routine has the security characteristic DEFINER."}),"\n",(0,n.jsx)(l.li,{children:"INVOKER - The routine has the security characteristic INVOKER."}),"\n",(0,n.jsx)(l.li,{children:"IMPLEMENTATION DEFINED - The external routine has the security characteristic IMPLEMENTATION DEFINED."}),"\n",(0,n.jsx)(l.li,{children:"null - Unknown security type.\nFor InterSystems IRIS, SECURITY_TYPE is always null."}),"\n"]}),"\n",(0,n.jsx)(l.h3,{id:"tosqlspecificcatalog",children:"TOSQLSPECIFICCATALOG"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property TOSQLSPECIFICCATALOG As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 30, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = TO_SQL_SPECIFIC_CATALOG ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, TO_SQL_SPECIFIC_CATALOG is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"tosqlspecificschema",children:"TOSQLSPECIFICSCHEMA"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property TOSQLSPECIFICSCHEMA As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 31, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = TO_SQL_SPECIFIC_SCHEMA ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, TO_SQL_SPECIFIC_SCHEMA is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"tosqlspecificname",children:"TOSQLSPECIFICNAME"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property TOSQLSPECIFICNAME As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 32, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = TO_SQL_SPECIFIC_NAME ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, TO_SQL_SPECIFIC_NAME is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"aslocator",children:"ASLOCATOR"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ASLOCATOR As %String(MAXLEN = 3, VALUELIST = ",YES,NO") [ Calculated, SqlColumnNumber = 33, SqlComputeCode = {\n'})}),"\n",(0,n.jsxs)(l.p,{children:["Returns YES or NO based on if the return value of the function is a LOB oref value and not the actual data value of the LOB.",(0,n.jsx)(l.br,{}),"\nAS_LOCATOR have the following meanings:"]}),"\n",(0,n.jsxs)(l.ul,{children:["\n",(0,n.jsx)(l.li,{children:"YES - The return value of the routine being described is an stream oref."}),"\n",(0,n.jsx)(l.li,{children:"NO - The return value of the routine being described is not an stream oref."}),"\n",(0,n.jsx)(l.li,{children:"null - The routine is a class query procedure.\nFor InterSystems IRIS, AS_LOCATOR is always null unless the return value is a stream, then it is YES."}),"\n"]}),"\n",(0,n.jsx)(l.h3,{id:"created",children:"CREATED"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property CREATED As %TimeStamp [ Calculated, SqlColumnNumber = 34, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = CREATED ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"For InterSystems IRIS, CREATED is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"lastaltered",children:"LASTALTERED"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property LASTALTERED As %TimeStamp [ Calculated, SqlColumnNumber = 35, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = LAST_ALTERED ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"For InterSystems IRIS, LAST_ALTERED is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"newsavepointlevel",children:"NEWSAVEPOINTLEVEL"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property NEWSAVEPOINTLEVEL As %String(MAXLEN = 3, VALUELIST = ",YES,NO") [ Calculated, SqlColumnNumber = 36, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = NEW_SAVEPOINT_LEVEL ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, NEW_SAVEPOINT_LEVEL is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"isudtdependent",children:"ISUDTDEPENDENT"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property ISUDTDEPENDENT As %String(MAXLEN = 3, VALUELIST = ",YES,NO") [ Calculated, SqlColumnNumber = 37, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = IS_UDT_DEPENDENT ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, IS_UDT_DEPENDENT is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"resultcastfromdtdidentifier",children:"RESULTCASTFROMDTDIDENTIFIER"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property RESULTCASTFROMDTDIDENTIFIER As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 38, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = RESULT_CAST_FROM_DTD_IDENTIFIER ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, RESULT_CAST_FROM_DTD_IDENTIFIER is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"resultcastaslocator",children:"RESULTCASTASLOCATOR"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property RESULTCASTASLOCATOR As %String(MAXLEN = 3, VALUELIST = ",YES,NO") [ Calculated, SqlColumnNumber = 39, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = RESULT_CAST_AS_LOCATOR ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, RESULT_CAST_AS_LOCATOR is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"datatype",children:"DATATYPE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property DATATYPE As %String(MAXLEN = 30) [ Calculated, SqlColumnNumber = 40, SqlComputeCode = {\n"})}),"\n",(0,n.jsx)(l.p,{children:"Data type of the return value of the function. Returns null if the procedure has no return value."}),"\n",(0,n.jsx)(l.h3,{id:"charactermaximumlength",children:"CHARACTERMAXIMUMLENGTH"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property CHARACTERMAXIMUMLENGTH As %Integer [ Calculated, SqlColumnNumber = 41, SqlComputeCode = {\n"})}),"\n",(0,n.jsx)(l.p,{children:"Maximum length in characters, if the return type is a character type. If not a character type, returns null."}),"\n",(0,n.jsx)(l.h3,{id:"characteroctetlength",children:"CHARACTEROCTETLENGTH"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property CHARACTEROCTETLENGTH As %Integer [ Calculated, SqlColumnNumber = 42, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = CHARACTER_OCTET_LENGTH ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, CHARACTER_OCTET_LENGTH is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"numericprecision",children:"NUMERICPRECISION"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property NUMERICPRECISION As %SmallInt [ Calculated, SqlColumnNumber = 43, SqlComputeCode = {\n"})}),"\n",(0,n.jsx)(l.p,{children:"Numeric precision of the return value. For the nonnumeric types, returns NULL."}),"\n",(0,n.jsx)(l.h3,{id:"numericprecisionradix",children:"NUMERICPRECISIONRADIX"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property NUMERICPRECISIONRADIX As %Integer [ Calculated, SqlColumnNumber = 44, SqlComputeCode = {\n"})}),"\n",(0,n.jsx)(l.p,{children:"Numeric precision radix of the return value. For nonnumeric types, returns NULL."}),"\n",(0,n.jsx)(l.h3,{id:"numericscale",children:"NUMERICSCALE"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property NUMERICSCALE As %Integer [ Calculated, SqlColumnNumber = 45, SqlComputeCode = {\n"})}),"\n",(0,n.jsx)(l.p,{children:"Scale of the return value. For nonnumeric types, returns NULL."}),"\n",(0,n.jsx)(l.h3,{id:"datetimeprecision",children:"DATETIMEPRECISION"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property DATETIMEPRECISION As %Integer [ Calculated, SqlColumnNumber = 46, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = DATETIME_PRECISION ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, DATETIME_PRECISION is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"collationcatalog",children:"COLLATIONCATALOG"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property COLLATIONCATALOG As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 47, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = COLLATION_CATALOG ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, COLLATION_CATALOG is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"collationschema",children:"COLLATIONSCHEMA"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property COLLATIONSCHEMA As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 48, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = COLLATION_SCHEMA ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, COLLATION_SCHEMA is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"collationname",children:"COLLATIONNAME"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property COLLATIONNAME As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 49, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = COLLATION_NAME ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, COLLATION_NAME is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"charactersetcatalog",children:"CHARACTERSETCATALOG"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property CHARACTERSETCATALOG As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 50, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = CHARACTER_SET_CATALOG ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, CHARACTER_SET_CATALOG is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"charactersetschema",children:"CHARACTERSETSCHEMA"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property CHARACTERSETSCHEMA As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 51, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = CHARACTER_SET_SCHEMA ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, CHARACTER_SET_SCHEMA is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"charactersetname",children:"CHARACTERSETNAME"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'Property CHARACTERSETNAME As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 52, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = CHARACTER_SET_NAME ];\n'})}),"\n",(0,n.jsx)(l.p,{children:"Reserved for future use. For InterSystems IRIS, CHARACTER_SET_NAME is always NULL."}),"\n",(0,n.jsx)(l.h3,{id:"classname",children:"Classname"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property Classname As %String(MAXLEN = 255) [ SqlColumnNumber = 53, SqlFieldName = CLASSNAME ];\n"})}),"\n",(0,n.jsx)(l.p,{children:"Name of the class that projected the Stored Procedure"}),"\n",(0,n.jsx)(l.h3,{id:"methodqueryname",children:"MethodQueryName"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Property MethodQueryName As %String(MAXLEN = 255) [ SqlColumnNumber = 54, SqlFieldName = METHOD_OR_QUERY_NAME ];\n"})}),"\n",(0,n.jsx)(l.p,{children:"Name of the class method or class query that projected this procedure"})]})}function d(e={}){const{wrapper:l}={...(0,r.R)(),...e.components};return l?(0,n.jsx)(l,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,l,s)=>{s.d(l,{R:()=>t,x:()=>i});var n=s(96540);const r={},a=n.createContext(r);function t(e){const l=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(l):{...l,...e}}),[l,e])}function i(e){let l;return l=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:t(e.components),n.createElement(a.Provider,{value:l},e.children)}}}]);