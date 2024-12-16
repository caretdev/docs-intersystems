"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[96279],{18809:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>c,default:()=>i,frontMatter:()=>r,toc:()=>a});var t=n(74848),l=n(28453);const r={pagination_prev:null,pagination_next:null},c="%SYS.Python.ArrayTraits",a=[{value:"Methods",id:"methods",level:2},{value:"&quot;<strong>len</strong>&quot;",id:"len",level:3},{value:"&quot;<strong>getitem</strong>&quot;",id:"getitem",level:3},{value:"get",id:"get",level:3},{value:"pop",id:"pop",level:3},{value:"popitem",id:"popitem",level:3},{value:"&quot;<strong>contains</strong>&quot;",id:"contains",level:3},{value:"&quot;<strong>setitem</strong>&quot;",id:"setitem",level:3},{value:"&quot;<strong>delitem</strong>&quot;",id:"delitem",level:3},{value:"clear",id:"clear",level:3},{value:"copy",id:"copy",level:3},{value:"&quot;<strong>iter</strong>&quot;",id:"iter",level:3},{value:"items",id:"items",level:3},{value:"keys",id:"keys",level:3},{value:"values",id:"values",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,l.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"syspythonarraytraits",children:"%SYS.Python.ArrayTraits"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYS.Python.ArrayTraits [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Implementation of Array traits for Python"}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsxs)(s.h3,{id:"len",children:['"',(0,t.jsx)(s.strong,{children:"len"}),'"']}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod "__len__"(self As %Collection.AbstractArray) As %Integer [ Internal ]\n'})}),"\n",(0,t.jsxs)(s.h3,{id:"getitem",children:['"',(0,t.jsx)(s.strong,{children:"getitem"}),'"']}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod "__getitem__"(self As %Collection.AbstractArray, key As %Any) As %Any [ Internal ]\n'})}),"\n",(0,t.jsx)(s.h3,{id:"get",children:"get"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod get(self As %Collection.AbstractArray, key As %Any, default As %Any) As %Any [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"pop",children:"pop"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod pop(self As %Collection.AbstractArray, key As %Any, default As %Any = "") As %Any [ Internal ]\n'})}),"\n",(0,t.jsx)(s.h3,{id:"popitem",children:"popitem"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod popitem(self As %Collection.AbstractArray) As %SYS.Python [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.h3,{id:"contains",children:['"',(0,t.jsx)(s.strong,{children:"contains"}),'"']}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod "__contains__"(self As %Collection.AbstractArray, key As %Any) As %Boolean [ Internal ]\n'})}),"\n",(0,t.jsxs)(s.h3,{id:"setitem",children:['"',(0,t.jsx)(s.strong,{children:"setitem"}),'"']}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod "__setitem__"(self As %Collection.AbstractArray, key As %Any, value As %Any) [ Internal ]\n'})}),"\n",(0,t.jsxs)(s.h3,{id:"delitem",children:['"',(0,t.jsx)(s.strong,{children:"delitem"}),'"']}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod "__delitem__"(self As %Collection.AbstractArray, key As %Any) [ Internal ]\n'})}),"\n",(0,t.jsx)(s.h3,{id:"clear",children:"clear"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod clear(self As %Collection.AbstractArray) [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"copy",children:"copy"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod copy(self As %Collection.AbstractArray) As %Collection.AbstractArray [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.h3,{id:"iter",children:['"',(0,t.jsx)(s.strong,{children:"iter"}),'"']}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod "__iter__"(self As %Collection.AbstractArray) [ Internal ]\n'})}),"\n",(0,t.jsx)(s.h3,{id:"items",children:"items"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod items(self As %Collection.AbstractArray) [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"keys",children:"keys"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod keys(self As %Collection.AbstractArray) [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"values",children:"values"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod values(self As %Collection.AbstractArray) [ Internal ]\n"})})]})}function i(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>c,x:()=>a});var t=n(96540);const l={},r=t.createContext(l);function c(e){const s=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:c(e.components),t.createElement(r.Provider,{value:s},e.children)}}}]);