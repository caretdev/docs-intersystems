"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[26763],{9970:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>c,default:()=>d,frontMatter:()=>o,toc:()=>l});var t=s(74848),r=s(28453);const o={pagination_prev:null,pagination_next:null},c="%Library.SQLQuery",l=[{value:"Parameters",id:"parameters",level:2},{value:"COMPILEMODE",id:"compilemode",level:3},{value:"SQLQUERY;",id:"sqlquery",level:3},{value:"SELECTMODE",id:"selectmode",level:3},{value:"Methods",id:"methods",level:2},{value:"Close",id:"close",level:3},{value:"Func",id:"func",level:3},{value:"Execute",id:"execute",level:3},{value:"FetchRows",id:"fetchrows",level:3},{value:"Fetch",id:"fetch",level:3},{value:"GetInfo",id:"getinfo",level:3},{value:"SendODBC",id:"sendodbc",level:3}];function a(e){const n={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"librarysqlquery",children:"%Library.SQLQuery"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Library.SQLQuery Extends %Query [ Not ProcedureBlock, System = 2 ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:[(0,t.jsx)(n.strong,{children:"For information on this class"}),", see ",(0,t.jsx)(n.a,{href:"/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Library.SQLQuery",children:"Defining and Using Class Queries"}),"."]}),"\n",(0,t.jsxs)(n.p,{children:["The ",(0,t.jsx)(n.strong,{children:"%SQLQuery"})," class is used for defining class queries based on SQL definitions."]}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"compilemode",children:"COMPILEMODE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter COMPILEMODE As STRING [ Constraint = "IMMEDIATE,DYNAMIC", Deprecated, Flags = ENUM ] = "IMMEDIATE";\n'})}),"\n",(0,t.jsx)(n.p,{children:"COMPILEMODE parameter deprecated. No longer used."}),"\n",(0,t.jsx)(n.h3,{id:"sqlquery",children:"SQLQUERY;"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter SQLQUERY;\n"})}),"\n",(0,t.jsx)(n.h3,{id:"selectmode",children:"SELECTMODE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter SELECTMODE = "RUNTIME";\n'})}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"close",children:"Close"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Close(%qHandle As %Binary) As %Status [ ProcedureBlock = 1, PublicList = SQLCODE, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Close the query associated with the handle"}),"\n",(0,t.jsx)(n.h3,{id:"func",children:"Func"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Func() As %SQL.StatementResult [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Func is a method that is used to invoke the query as a function, returning an instance of %SQL.StatementResult."}),"\n",(0,t.jsx)(n.h3,{id:"execute",children:"Execute"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Execute(ByRef %qHandle As %Binary) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Execute is passed parameters for Query Returns handle for subsequent operations"}),"\n",(0,t.jsx)(n.h3,{id:"fetchrows",children:"FetchRows"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod FetchRows(ByRef %qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ CodeMode = generator, GenerateAfter = Fetch, PlaceAfter = Execute, ProcedureBlock = 1, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:'FetchRows returns the next FetchCount rows in the query Updates handle for subsequent operations Returns $list for row or "" if no more rows'}),"\n",(0,t.jsx)(n.h3,{id:"fetch",children:"Fetch"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Fetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = generator, PlaceAfter = Execute, ProcedureBlock = 1, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Fetch the next row of data from the query."}),"\n",(0,t.jsxs)(n.p,{children:["qHandle is query-defined data and is typically updated by ",(0,t.jsx)(n.strong,{children:"Fetch"}),"."]}),"\n",(0,t.jsxs)(n.p,{children:["The ",(0,t.jsx)(n.strong,{children:"Fetch"}),' method should set Row to be a $List of values corresponding to the columns of the query. If we are past the end of the data and no row is returned, Row should be set to null string (""). If the non-empty row being returned is the last one, AtEnd could be optionally set to 1, indicating that an additional call to ',(0,t.jsx)(n.strong,{children:"Fetch"})," may be avoided."]}),"\n",(0,t.jsx)(n.p,{children:"Row may also be subscripted. If any of the columns in the row are stream orefs then the oref type information is lost in the Row $list encoded value. To retain the oref type, place the oref into Row(columnNumber). %Library.ResultSet recognizes this form and will extract the column value as the subscripted value."}),"\n",(0,t.jsx)(n.h3,{id:"getinfo",children:"GetInfo"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef idinfo As %List, ByRef %qHandle As %Binary, extoption As %Integer = 0, extinfo As %List) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Returns information about the query. It is used by the various ",(0,t.jsx)(n.strong,{children:"ResultSet"})," objects."]}),"\n",(0,t.jsx)(n.h3,{id:"sendodbc",children:"SendODBC"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SendODBC(ByRef %qHandle As %Binary, ByRef array As %String, qacn As %Integer, ByRef %qrc As %Integer, ByRef piece As %Boolean, ColumnCount As %Integer) [ CodeMode = generator, GenerateAfter = (FetchODBC, Fetch), PlaceAfter = Execute, ProcedureBlock = 1, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Fetch and send a series of rows for the ODBC/JDBC server. For internal use only."})]})}function d(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(a,{...e})}):a(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>c,x:()=>l});var t=s(96540);const r={},o=t.createContext(r);function c(e){const n=t.useContext(o);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:c(e.components),t.createElement(o.Provider,{value:n},e.children)}}}]);