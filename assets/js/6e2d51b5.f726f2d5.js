"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[99543],{77257:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>l,default:()=>i,frontMatter:()=>o,toc:()=>a});var t=s(74848),r=s(28453);const o={pagination_prev:null,pagination_next:null},l="%Library.DynamicSQLQuery",a=[{value:"Methods",id:"methods",level:2},{value:"Close",id:"close",level:3},{value:"Execute",id:"execute",level:3},{value:"FetchRows",id:"fetchrows",level:3},{value:"Fetch",id:"fetch",level:3},{value:"GetInfo",id:"getinfo",level:3},{value:"GetODBCInfo",id:"getodbcinfo",level:3},{value:"Prepare",id:"prepare",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"librarydynamicsqlquery",children:"%Library.DynamicSQLQuery"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Library.DynamicSQLQuery Extends %Query [ Not ProcedureBlock, System = 2 ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["The ",(0,t.jsx)(n.strong,{children:"%DynamicSQLQuery"})," class is used for defining class queries based on runtime SQL statements."]}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"close",children:"Close"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Close(qHandle As %Binary) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Close the query associated with the handle"}),"\n",(0,t.jsx)(n.h3,{id:"execute",children:"Execute"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Execute(ByRef qHandle As %Binary) As %Status [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Execute is passed parameters for Query. Returns handle for subsequent operations."}),"\n",(0,t.jsx)(n.h3,{id:"fetchrows",children:"FetchRows"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod FetchRows(ByRef qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"fetch",children:"Fetch"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Fetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Fetch the next row of data from the query."}),"\n",(0,t.jsxs)(n.p,{children:["qHandle is query-defined data and is typically updated by ",(0,t.jsx)(n.strong,{children:"Fetch"}),"."]}),"\n",(0,t.jsxs)(n.p,{children:["The ",(0,t.jsx)(n.strong,{children:"Fetch"}),' method should set Row to be a $List of values corresponding to the columns of the query. If we are past the end of the data and no row is returned, Row should be set to null string (""). If the non-empty row being returned is the last one, AtEnd could be optionally set to 1, indicating that an additional call to ',(0,t.jsx)(n.strong,{children:"Fetch"})," may be avoided."]}),"\n",(0,t.jsx)(n.p,{children:"Row may also be subscripted. If any of the columns in the row are stream orefs then the oref type information is lost in the Row $list encoded value. To retain the oref type, place the oref into Row(columnNumber). %Library.ResultSet recognizes this form and will extract the column value as the subscripted value."}),"\n",(0,t.jsx)(n.h3,{id:"getinfo",children:"GetInfo"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef idinfo As %List, ByRef qHandle As %Binary, extoption As %Integer = 0, extinfo As %List) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"getodbcinfo",children:"GetODBCInfo"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetODBCInfo(ByRef colinfo As %List, ByRef parminfo As %List, ByRef qHandle As %Binary) As %Status [ ProcedureBlock = 0, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"prepare",children:"Prepare"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod Prepare(ByRef qHandle As %Binary, sqltext As %String = "", containid As %Integer = 0, selectmode As %String = "RUNTIME") As %Status [ CodeMode = generator, ServerOnly = 1 ]\n'})})]})}function i(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>l,x:()=>a});var t=s(96540);const r={},o=t.createContext(r);function l(e){const n=t.useContext(o);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),t.createElement(o.Provider,{value:n},e.children)}}}]);