"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[47021],{47803:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>i,default:()=>a,frontMatter:()=>o,toc:()=>l});var r=t(74848),s=t(28453);const o={pagination_prev:null,pagination_next:null},i="%SYS.Python.IteratorHelper",l=[{value:"Properties",id:"properties",level:2},{value:"%Iterator",id:"iterator",level:3},{value:"%Mode",id:"mode",level:3},{value:"%Key",id:"key",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"&quot;<strong>next</strong>&quot;",id:"next",level:3},{value:"&quot;<strong>iter</strong>&quot;",id:"iter",level:3},{value:"&quot;<strong>len</strong>&quot;",id:"len",level:3},{value:"&quot;<strong>contains</strong>&quot;",id:"contains",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"syspythoniteratorhelper",children:"%SYS.Python.IteratorHelper"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SYS.Python.IteratorHelper Extends %RegisteredObject [ System = 4 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Implementation of an iterator helper for Python"}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"iterator",children:"%Iterator"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property %Iterator As %Collection.AbstractIterator [ Transient ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Abstract iterator that we are iterating on"}),"\n",(0,r.jsx)(n.h3,{id:"mode",children:"%Mode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property %Mode As %String(VALUELIST = ",values,keys,both") [ InitialExpression = "values", Required, Transient ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"Mode flag"}),"\n",(0,r.jsx)(n.h3,{id:"key",children:"%Key"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property %Key As %String;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Current iterator key"}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method %OnNew(iter As %Collection.AbstractIterator, mode As %String = "") As %Status\n'})}),"\n",(0,r.jsx)(n.p,{children:"Initialize this iterator helper"}),"\n",(0,r.jsxs)(n.h3,{id:"next",children:['"',(0,r.jsx)(n.strong,{children:"next"}),'"']}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method "__next__"() As %String\n'})}),"\n",(0,r.jsx)(n.p,{children:"Python iterator implementation"}),"\n",(0,r.jsxs)(n.h3,{id:"iter",children:['"',(0,r.jsx)(n.strong,{children:"iter"}),'"']}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method "__iter__"() As IteratorHelper\n'})}),"\n",(0,r.jsx)(n.p,{children:'Allows an "iterator on an iterator", note that it does NOT reset then "index" it just continues on and this doesn not "clone", it\'s a reference as per Python behavior'}),"\n",(0,r.jsxs)(n.h3,{id:"len",children:['"',(0,r.jsx)(n.strong,{children:"len"}),'"']}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method "__len__"() As %Integer\n'})}),"\n",(0,r.jsx)(n.p,{children:"Return the length of the iterable collection (if known)"}),"\n",(0,r.jsxs)(n.h3,{id:"contains",children:['"',(0,r.jsx)(n.strong,{children:"contains"}),'"']}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method "__contains__"(item As %Any) As %Boolean\n'})}),"\n",(0,r.jsx)(n.p,{children:"Check to see if this iterator contains the following"})]})}function a(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>i,x:()=>l});var r=t(96540);const s={},o=r.createContext(s);function i(e){const n=r.useContext(o);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),r.createElement(o.Provider,{value:n},e.children)}}}]);