"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[8370],{54642:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>a,default:()=>i,frontMatter:()=>n,toc:()=>o});var r=s(74848),l=s(28453);const n={pagination_prev:null,pagination_next:null},a="%Library.ProcedureContext",o=[{value:"Properties",id:"properties",level:2},{value:"%LTT",id:"ltt",level:3},{value:"PTT",id:"ptt",level:3},{value:"TTNI",id:"ttni",level:3},{value:"LTTCleanup",id:"lttcleanup",level:3},{value:"TempGlobalCleanup",id:"tempglobalcleanup",level:3},{value:"Results",id:"results",level:3},{value:"cursors",id:"cursors",level:3},{value:"context",id:"context",level:3},{value:"static",id:"static",level:3},{value:"Methods",id:"methods",level:2},{value:"AddPrivateTable",id:"addprivatetable",level:3},{value:"RemovePrivateTable",id:"removeprivatetable",level:3},{value:"ResolveTableName",id:"resolvetablename",level:3},{value:"Reset",id:"reset",level:3},{value:"AddResultSet",id:"addresultset",level:3},{value:"AddContext",id:"addcontext",level:3},{value:"Prepare",id:"prepare",level:3},{value:"NewResultSet",id:"newresultset",level:3},{value:"ReplaceResultSet",id:"replaceresultset",level:3},{value:"NextResult",id:"nextresult",level:3},{value:"%NextResult",id:"nextresult-1",level:3},{value:"CloseCurrentResult",id:"closecurrentresult",level:3},{value:"DumpResults",id:"dumpresults",level:3},{value:"%OnClose",id:"onclose",level:3}];function c(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"libraryprocedurecontext",children:"%Library.ProcedureContext"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Library.ProcedureContext Extends %Library.IProcedureContext [ System = 2 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Stored procedure context"}),"\n",(0,r.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(t.h3,{id:"ltt",children:"%LTT"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property %LTT As %RawString [ Internal, MultiDimensional ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"%LTT is an array of temporary table storage indexes subscripted by temp table name."}),"\n",(0,r.jsx)(t.h3,{id:"ptt",children:"PTT"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property PTT As %RawString [ Internal, MultiDimensional ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"PTT is an array of private temporary table orefs subscripted by temp table name. Private Temporary Table to OREF index."}),"\n",(0,r.jsx)(t.h3,{id:"ttni",children:"TTNI"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property TTNI As %RawString [ Internal, MultiDimensional ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"TTNI is an array of private temporary table names subscripted by UPPERCASE source language temporary tablename. This property is used to resolve a source language table reference to a private temporary table name. TTNI = temporary table name index"}),"\n",(0,r.jsx)(t.h3,{id:"lttcleanup",children:"LTTCleanup"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property LTTCleanup As %RawString [ Internal, MultiDimensional ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"Same list as TTNI for private temporary tables in a sharded environment where we use a real table and not a LTT. This list is not copied into other contexts, but only set in the main context where a PTT is created This array allows us to clean up (delete) the IRIS_Temp.LTT# tables in %OnClose()"}),"\n",(0,r.jsx)(t.h3,{id:"tempglobalcleanup",children:"TempGlobalCleanup"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property TempGlobalCleanup As %RawString [ Internal, MultiDimensional ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"This array allows us to clean up (delete) globals from temp files we want cleaned up in %OnClose() Only globals that begin with ^IRIS.Temp are deleted"}),"\n",(0,r.jsx)(t.h3,{id:"results",children:"Results"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property Results As %RawString [ Internal, MultiDimensional, Private ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"Results is a MD-style collection of result objects. This repository is private and not meant for direct access. It is exposed through the interface. A result can be added by calling AddResultSet or AddContext. The %CurrentResult property is set to the result currently available to the client. The next result becomes the current result by calling %NextResult()."}),"\n",(0,r.jsx)(t.h3,{id:"cursors",children:"cursors"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Property cursors As %String(MAXLEN = "") [ Internal, MultiDimensional ];\n'})}),"\n",(0,r.jsx)(t.p,{children:"cursors is a multidimensional array of cursor objects, subscripted by cursor name (case sensitive) The value of the cursor is the cursor object reference (oref)."}),"\n",(0,r.jsx)(t.h3,{id:"context",children:"context"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property context As %RawString [ Private ];\n"})}),"\n",(0,r.jsx)(t.h3,{id:"static",children:"static"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property static As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"addprivatetable",children:"AddPrivateTable"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method AddPrivateTable(pTable As %XSQL.DS.TempTable)\n"})}),"\n",(0,r.jsx)(t.p,{children:"AddPrivateTable() This method will register a temporary table object. Only registered table objects are usable by dSQL. The TTNI property is the  to  index and is not set up here since the actual table (referenced by pTable) has no clue as to the source language table name. That must be done by the source language."}),"\n",(0,r.jsx)(t.h3,{id:"removeprivatetable",children:"RemovePrivateTable"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Method RemovePrivateTable(pTableName As %String(MAXLEN=""))\n'})}),"\n",(0,r.jsx)(t.p,{children:"RemovePrivateTable() will remove the private table name from the current context object or the process context object. The storage offset information remains to that any existing result sets will still be valid. However, If another instance of a private table with the same name is created any result sets against the prior private table may become invalid."}),"\n",(0,r.jsx)(t.h3,{id:"resolvetablename",children:"ResolveTableName"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Method ResolveTableName(pTableName As %String(MAXLEN=""), ByRef pContext As %Library.ProcedureContext = "", pDDLFlag As %Integer = 0) As %String\n'})}),"\n",(0,r.jsx)(t.p,{children:"ResolveTableName will locate a temporary table registered in either the current object (usually equates to %sqlcontext) or in the process context object (%processcontext). The temporary table name passed into this method is the host language name such as #my_temp in TSQL or a normal temporary table name in Informix. This name is the one bound to the actual name in the TTNI (temporary table name index) by the host language procedure. If the table name is not found in TTNI, either local(current object) or global (%processcontext) then the name submitted is returned an no context is returned in the byref pContext argument."}),"\n",(0,r.jsx)(t.h3,{id:"reset",children:"Reset"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method Reset() As %Status\n"})}),"\n",(0,r.jsx)(t.h3,{id:"addresultset",children:"AddResultSet"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method AddResultSet(rs As %Library.IResultSet)\n"})}),"\n",(0,r.jsx)(t.p,{children:"AddResultSet() - add a new result object to the context object. Results are accessible by callers of the procedure through the %NextResult/%CurrentResult interface."}),"\n",(0,r.jsx)(t.h3,{id:"addcontext",children:"AddContext"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method AddContext(pContext As %Library.IProcedureContext, propagateerror As %Boolean = 1) As %Library.Status\n"})}),"\n",(0,r.jsx)(t.p,{children:"AddContext() is for nesting procedure context objects. If one procedure invokes another procedure and the results of calling the nested procedure are to be returned to the caller of the outer procedure then simply invoke AddContext on the context object of the outer procedure, passing the context object of the inner procedure as an argument, pContext. If the propagateerror argument is true then any error encountered by the nested procedure will be reported as an error to the caller of the outer procedure."}),"\n",(0,r.jsx)(t.h3,{id:"prepare",children:"Prepare"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Method Prepare(sqlquery As %String(MAXLEN=""), args...) As %Library.IResultSet [ Internal ]\n'})}),"\n",(0,r.jsx)(t.p,{children:"Used internally only, do not call directly."}),"\n",(0,r.jsx)(t.h3,{id:"newresultset",children:"NewResultSet"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method NewResultSet(rs As %Library.IResultSet, error As %SYSTEM.Error) [ Internal ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Used internally only, do not call directly."}),"\n",(0,r.jsx)(t.h3,{id:"replaceresultset",children:"ReplaceResultSet"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Method ReplaceResultSet(pResultSet As %Library.IResultSet = "") [ Internal ]\n'})}),"\n",(0,r.jsx)(t.p,{children:"Used internally only, do not call directly."}),"\n",(0,r.jsx)(t.h3,{id:"nextresult",children:"NextResult"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method NextResult() As %RegisteredObject [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Called to return the next resultset object. This also removes the reference to the existing object so it can cleanup and close itself"}),"\n",(0,r.jsx)(t.h3,{id:"nextresult-1",children:"%NextResult"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method %NextResult() As %RegisteredObject\n"})}),"\n",(0,r.jsx)(t.p,{children:"Called to return the next resultset object. This also removes the reference to the existing object so it can cleanup and close itself"}),"\n",(0,r.jsx)(t.h3,{id:"closecurrentresult",children:"CloseCurrentResult"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method CloseCurrentResult() As %Status\n"})}),"\n",(0,r.jsx)(t.p,{children:"Close the current resultset object, used to allow the cleanup code to run and the cursor to close"}),"\n",(0,r.jsx)(t.h3,{id:"dumpresults",children:"DumpResults"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Method DumpResults(pDelimiter As %String = " ")\n'})}),"\n",(0,r.jsx)(t.p,{children:"DumpResults() This method writes all of the results to the current device. The pDelimiter parameter is passed to the result set's %Print() method."}),"\n",(0,r.jsx)(t.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"This callback method is invoked by the %Close method to provide notification that the current object is being closed."}),"\n",(0,r.jsx)(t.p,{children:"The return value of this method is ignored."})]})}function i(e={}){const{wrapper:t}={...(0,l.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>a,x:()=>o});var r=s(96540);const l={},n=r.createContext(l);function a(e){const t=r.useContext(n);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:a(e.components),r.createElement(n.Provider,{value:t},e.children)}}}]);