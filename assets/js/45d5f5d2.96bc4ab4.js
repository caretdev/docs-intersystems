"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[6258],{52808:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>r,default:()=>d,frontMatter:()=>a,toc:()=>o});var n=t(74848),l=t(28453);const a={pagination_prev:null,pagination_next:null},r="%Library.ScrollableResultSet",o=[{value:"Properties",id:"properties",level:2},{value:"TempIndex",id:"tempindex",level:3},{value:"CurrRow",id:"currrow",level:3},{value:"MaxRows",id:"maxrows",level:3},{value:"IsSaved",id:"issaved",level:3},{value:"Methods",id:"methods",level:2},{value:"CurrRowSet",id:"currrowset",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"PopulateData",id:"populatedata",level:3},{value:"Next",id:"next",level:3},{value:"Previous",id:"previous",level:3},{value:"Count",id:"count",level:3},{value:"%OpenId",id:"openid",level:3},{value:"Load",id:"load",level:3},{value:"%Save",id:"save",level:3},{value:"%DeleteId",id:"deleteid",level:3},{value:"%Id",id:"id",level:3},{value:"GetObject",id:"getobject",level:3}];function i(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"libraryscrollableresultset",children:"%Library.ScrollableResultSet"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Library.ScrollableResultSet Extends %Library.ResultSet [ System = 3 ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["This provides a scrollable resultset object that can also be saved and loaded It works by running the entire query when the first item of data is requested and storing the results in a global. Then you can move around the results by setting the CurrRow and you may also call Previous as well as the standard Next. In addition you may save this resultset and then load it potentially in a different process at a later date and continue reading from it, for example: ",(0,n.jsx)(s.code,{children:'Set results=##class(%ScrollableResultSet).%New("Classname:QueryName") Do results.Execute() Do results.Next() Write results.Data("fieldname") Do results.%Save() Set id=results.%Id() Kill results Set results=##class(%ScrollableResultSet).%OpenId(id) Do results.Next() Write results.Data("fieldname")'})," Note that if you open a %ScrollableResultSet and do not call %Save on it then when you close this object the data stored in the global will be removed and so you will not be able to open this resultset again. So if you open a scrollable resultset and you wish to use this again call %Save on it, but you must always make sure that when you are finished with it you do not call %Save so the temporary global used is cleaned up when you are done. Alterntively you can call %DeleteId passing the id to remove the saved data."]}),"\n",(0,n.jsx)(s.p,{children:"There is also a Count to find the total number of entries in this resultset. This will not work if running with a query against a remote linked table which returns stream data for a column because the remote linked table returns the stream as an oref and this class does not support persisting this oref."}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"tempindex",children:"TempIndex"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property TempIndex As %Integer [ Private ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"Index into temp global used to hold results"}),"\n",(0,n.jsx)(s.h3,{id:"currrow",children:"CurrRow"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property CurrRow As %Integer;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Number of current row in the temp table, you can set this property to move to a new location and also use this to check the current position. If you specify a value that is out of bounds then the row will not be moved. The first row is at CurrRow=1, so it is 1 based and not 0 based."}),"\n",(0,n.jsx)(s.h3,{id:"maxrows",children:"MaxRows"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property MaxRows As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"This determines how many rows this query will load, the default '0' will load all the results, if you set it to 10,000 then it will only load the first 10,000 rows, which will mean you can not access any data beyond the 10,000th element. Also the actual stopping point may be slightly larger than MaxRows because of the way the data is imported, but it will be around this figure."}),"\n",(0,n.jsx)(s.h3,{id:"issaved",children:"IsSaved"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property IsSaved As %Boolean [ InitialExpression = 0, Private ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"If true, the temp table has been saved and should not be automatically deleted."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"currrowset",children:"CurrRowSet"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method CurrRowSet(val As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Private ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"populatedata",children:"PopulateData"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method PopulateData() As %Status [ Private, ProcedureBlock = 0 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Executes the current query."}),"\n",(0,n.jsx)(s.p,{children:"The arguments p1... supply the value of any parameters the query may have."}),"\n",(0,n.jsx)(s.h3,{id:"next",children:"Next"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method Next(ByRef sc As %Status) As %Integer\n"})}),"\n",(0,n.jsx)(s.p,{children:"Advance the result set cursor to the next row. Returns 0 if the cursor is at the end of the result set."}),"\n",(0,n.jsx)(s.h3,{id:"previous",children:"Previous"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method Previous(ByRef sc As %Status) As %Integer\n"})}),"\n",(0,n.jsx)(s.p,{children:"Advance the result set cursor to the previous row. Returns 0 if the cursor is at the end of the result set."}),"\n",(0,n.jsx)(s.h3,{id:"count",children:"Count"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method Count() As %Integer\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns the number of rows contained in this ResultSet."}),"\n",(0,n.jsx)(s.h3,{id:"openid",children:"%OpenId"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OpenId(id As %String, concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle\n"})}),"\n",(0,n.jsx)(s.h3,{id:"load",children:"Load"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method Load(id As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"save",children:"%Save"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %Save() As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"deleteid",children:"%DeleteId"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DeleteId(id As %String, concurrency As %Integer = -1) As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"id",children:"%Id"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %Id() As %String [ CodeMode = expression, Final ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"getobject",children:"GetObject"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetObject() As %RegisteredObject [ ProcedureBlock = 1 ]\n"})})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(i,{...e})}):i(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>r,x:()=>o});var n=t(96540);const l={},a=n.createContext(l);function r(e){const s=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function o(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),n.createElement(a.Provider,{value:s},e.children)}}}]);