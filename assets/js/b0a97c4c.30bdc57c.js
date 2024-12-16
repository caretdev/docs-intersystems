"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[67454],{21864:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>l,default:()=>o,frontMatter:()=>a,toc:()=>c});var n=t(74848),r=t(28453);const a={pagination_prev:null,pagination_next:null},l="%ResultSet.Static",c=[{value:"Properties",id:"properties",level:2},{value:"%storageOffset",id:"storageoffset",level:3},{value:"%currentRow",id:"currentrow",level:3},{value:"%columnCount",id:"columncount",level:3},{value:"%Data",id:"data",level:3},{value:"%hasStreams",id:"hasstreams",level:3},{value:"%streams",id:"streams",level:3},{value:"%streamColumns",id:"streamcolumns",level:3},{value:"%lastRow",id:"lastrow",level:3},{value:"Methods",id:"methods",level:2},{value:"%ROWCOUNTGet",id:"rowcountget",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"%SendRows",id:"sendrows",level:3},{value:"%SendODBC",id:"sendodbc",level:3},{value:"%Next",id:"next",level:3},{value:"%Get",id:"get",level:3},{value:"%GetData",id:"getdata",level:3},{value:"%SetIterator",id:"setiterator",level:3}];function i(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"resultsetstatic",children:"%ResultSet.Static"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ResultSet.Static Extends %Library.IResultSet [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"A Static result set is one where the original data source (a result set object) is copied to a process private global upon instantiation. Future data requests then use that snapshot instead of the original data."}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"storageoffset",children:"%storageOffset"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %storageOffset As %Integer [ Private ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"currentrow",children:"%currentRow"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %currentRow As %Integer [ Private ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"columncount",children:"%columnCount"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %columnCount As %Integer [ Private ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"data",children:"%Data"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property %Data As %String(MAXLEN = "") [ MultiDimensional, Private ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"%Data is a multidimensional property of column values for the current row. It is subscripted by column number."}),"\n",(0,n.jsx)(s.h3,{id:"hasstreams",children:"%hasStreams"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %hasStreams As %Integer [ InitialExpression = 0, Private ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"streams",children:"%streams"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %streams As %String [ Internal, MultiDimensional ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"streamcolumns",children:"%streamColumns"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property %streamColumns As %String(MAXLEN = "") [ Internal ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"lastrow",children:"%lastRow"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %lastRow As %Integer [ Private ];\n"})}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"rowcountget",children:"%ROWCOUNTGet"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ROWCOUNTGet() As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"%RowCount for a static result set is always the number of rows in the static set."}),"\n",(0,n.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew(initvalue As %RawString, pRuntimeMode As %Integer = {$zu(115,5)}) As %Status [ Private, ProcedureBlock = 1, PublicList = SQLCODE, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Private ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"sendrows",children:"%SendRows"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %SendRows() As %Integer\n"})}),"\n",(0,n.jsx)(s.h3,{id:"sendodbc",children:"%SendODBC"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %SendODBC() As %Library.Integer\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fetch and send a series of rows for the ODBC/JDBC server. For internal use only."}),"\n",(0,n.jsx)(s.h3,{id:"next",children:"%Next"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %Next(ByRef sc As %Library.Status = {$$$OK}) As %Library.Integer\n"})}),"\n",(0,n.jsx)(s.p,{children:"Advance the result set cursor to the next row. Returns 0 if the cursor is at the end of the result set. The global structure consists of a base $list with individual nodes for columns. The base $list() can contain zero or more column values. Additional column values are stored in the global subscripted by column number and equal to the column value."}),"\n",(0,n.jsx)(s.h3,{id:"get",children:"%Get"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method %Get(colname As %String = "") As %Library.String\n'})}),"\n",(0,n.jsx)(s.p,{children:"Returns the value of the column with the name name in the current row of the result set."}),"\n",(0,n.jsx)(s.p,{children:"If name is not a valid column name, this method returns an empty string."}),"\n",(0,n.jsx)(s.h3,{id:"getdata",children:"%GetData"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetData(colnbr As %Integer = 0) As %Library.String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns the value of column colnbr in the current row of the result set."}),"\n",(0,n.jsx)(s.h3,{id:"setiterator",children:"%SetIterator"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %SetIterator(pRowNumber As %Library.Integer = 0) As %Library.Integer\n"})})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(i,{...e})}):i(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>l,x:()=>c});var n=t(96540);const r={},a=n.createContext(r);function l(e){const s=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),n.createElement(a.Provider,{value:s},e.children)}}}]);