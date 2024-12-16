"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[45293],{27432:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>c,toc:()=>r});var l=t(74848),n=t(28453);const c={pagination_prev:null,pagination_next:null},i="%CSP.DwxQuery",r=[{value:"Methods",id:"methods",level:2},{value:"Exists",id:"exists",level:3},{value:"ClassListExecute",id:"classlistexecute",level:3},{value:"ClassListClose",id:"classlistclose",level:3},{value:"ClassListFetch",id:"classlistfetch",level:3},{value:"ClassQueryListExecute",id:"classquerylistexecute",level:3},{value:"ClassQueryListClose",id:"classquerylistclose",level:3},{value:"ClassQueryListFetch",id:"classquerylistfetch",level:3},{value:"MemberListExecute",id:"memberlistexecute",level:3},{value:"MemberListClose",id:"memberlistclose",level:3},{value:"MemberListFetch",id:"memberlistfetch",level:3},{value:"QueryColumnListExecute",id:"querycolumnlistexecute",level:3},{value:"QueryColumnListClose",id:"querycolumnlistclose",level:3},{value:"QueryColumnListFetch",id:"querycolumnlistfetch",level:3},{value:"CSPListExecute",id:"csplistexecute",level:3},{value:"CSPListDoDir",id:"csplistdodir",level:3},{value:"CSPListClose",id:"csplistclose",level:3},{value:"CSPListFetch",id:"csplistfetch",level:3}];function a(e){const s={code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(s.header,{children:(0,l.jsx)(s.h1,{id:"cspdwxquery",children:"%CSP.DwxQuery"})}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.DwxQuery Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,l.jsxs)(s.p,{children:["This class works in conjunction with the ",(0,l.jsx)(s.em,{children:"CacheDWX.dll"})," and provides server-side DreamWeaver integration."]}),"\n",(0,l.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(s.h3,{id:"exists",children:"Exists"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Exists() As %Boolean [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Return 1 to indicate presence of this class."}),"\n",(0,l.jsx)(s.h3,{id:"classlistexecute",children:"ClassListExecute"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ClassListExecute(ByRef QHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get list of classes. Execute method for ClassList"}),"\n",(0,l.jsx)(s.h3,{id:"classlistclose",children:"ClassListClose"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ClassListClose(QHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Close method for ClassList"}),"\n",(0,l.jsx)(s.h3,{id:"classlistfetch",children:"ClassListFetch"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ClassListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Fetch method for ClassList"}),"\n",(0,l.jsx)(s.h3,{id:"classquerylistexecute",children:"ClassQueryListExecute"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ClassQueryListExecute(ByRef QHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get list of classes. Execute method for ClassQueryList"}),"\n",(0,l.jsx)(s.h3,{id:"classquerylistclose",children:"ClassQueryListClose"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ClassQueryListClose(QHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Close method for ClassQueryList"}),"\n",(0,l.jsx)(s.h3,{id:"classquerylistfetch",children:"ClassQueryListFetch"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ClassQueryListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Fetch method for ClassQueryList"}),"\n",(0,l.jsx)(s.h3,{id:"memberlistexecute",children:"MemberListExecute"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MemberListExecute(ByRef QHandle As %Binary, class As %String) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get list of members that can be used by Wizard for a specific class. Execute method for MemberList"}),"\n",(0,l.jsx)(s.h3,{id:"memberlistclose",children:"MemberListClose"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MemberListClose(QHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Close method for MemberList"}),"\n",(0,l.jsx)(s.h3,{id:"memberlistfetch",children:"MemberListFetch"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MemberListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Fetch method for MemberList"}),"\n",(0,l.jsx)(s.h3,{id:"querycolumnlistexecute",children:"QueryColumnListExecute"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod QueryColumnListExecute(ByRef QHandle As %Binary, query As %String) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get list of columns that can be used by Wizard for a specific query. Execute method for QueryColumnList"}),"\n",(0,l.jsx)(s.h3,{id:"querycolumnlistclose",children:"QueryColumnListClose"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod QueryColumnListClose(QHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Close method for QueryColumnList"}),"\n",(0,l.jsx)(s.h3,{id:"querycolumnlistfetch",children:"QueryColumnListFetch"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod QueryColumnListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Fetch method for QueryColumnList"}),"\n",(0,l.jsx)(s.h3,{id:"csplistexecute",children:"CSPListExecute"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CSPListExecute(ByRef QHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get list of CSP pages. Execute method for CSPList"}),"\n",(0,l.jsx)(s.h3,{id:"csplistdodir",children:"CSPListDoDir"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CSPListDoDir(files As %ArrayOfDataTypes, url As %String, path As %String, recurse As %Boolean) [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get list of files for CSP path"}),"\n",(0,l.jsx)(s.h3,{id:"csplistclose",children:"CSPListClose"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CSPListClose(QHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Close method for CSPList"}),"\n",(0,l.jsx)(s.h3,{id:"csplistfetch",children:"CSPListFetch"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CSPListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Fetch method for CSPList"})]})}function d(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,l.jsx)(s,{...e,children:(0,l.jsx)(a,{...e})}):a(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>i,x:()=>r});var l=t(96540);const n={},c=l.createContext(n);function i(e){const s=l.useContext(c);return l.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),l.createElement(c.Provider,{value:s},e.children)}}}]);