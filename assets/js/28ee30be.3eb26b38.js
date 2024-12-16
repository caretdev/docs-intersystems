"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[16645],{69447:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>l,default:()=>o,frontMatter:()=>r,toc:()=>i});var n=t(74848),a=t(28453);const r={pagination_prev:null,pagination_next:null},l="%ZEN.Report.Aggregate.Median",i=[{value:"Properties",id:"properties",level:2},{value:"Values",id:"values",level:3},{value:"Count",id:"count",level:3},{value:"Methods",id:"methods",level:2},{value:"ProcessValue",id:"processvalue",level:3},{value:"GetResult",id:"getresult",level:3},{value:"select",id:"select",level:3},{value:"partition",id:"partition",level:3},{value:"swap",id:"swap",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"zenreportaggregatemedian",children:"%ZEN.Report.Aggregate.Median"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Aggregate.Median Extends %ZEN.Report.CustomAggregate [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Aggregate for the median of a set of numerical data. The median is a number with half of the data set of greater value than it, and half of lesser value. For a data set with an odd size, the median is a member of the data set. For a data set with an even size, the median is half-way between two members of the data set."}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"values",children:"Values"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property Values As array Of %Integer;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Array of processed values"}),"\n",(0,n.jsx)(s.h3,{id:"count",children:"Count"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property Count As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"Number of values processed"}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"processvalue",children:"ProcessValue"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProcessValue(pValue As %Float) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Processes each new value."}),"\n",(0,n.jsx)(s.h3,{id:"getresult",children:"GetResult"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetResult() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:'Returns the median. Returns "" for an empty data set. Uses a divide and conquer selection algorithm.'}),"\n",(0,n.jsx)(s.h3,{id:"select",children:"select"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method select(k, left, right) [ Private ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Select's the kth smallest element in Values"}),"\n",(0,n.jsx)(s.h3,{id:"partition",children:"partition"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method partition(left, right, pivotIndex) [ Private ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Finds the partition point"}),"\n",(0,n.jsx)(s.h3,{id:"swap",children:"swap"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method swap(x, y) [ Private ]\n"})})]})}function o(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>l,x:()=>i});var n=t(96540);const a={},r=n.createContext(a);function l(e){const s=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:l(e.components),n.createElement(r.Provider,{value:s},e.children)}}}]);