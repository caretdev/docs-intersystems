"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[57251],{40679:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>l,default:()=>i,frontMatter:()=>c,toc:()=>a});var t=n(74848),r=n(28453);const c={pagination_prev:null,pagination_next:null},l="%ZEN.Report.Aggregate.StDev",a=[{value:"Properties",id:"properties",level:2},{value:"Count",id:"count",level:3},{value:"data",id:"data",level:3},{value:"preprocessValue",id:"preprocessvalue",level:3},{value:"postprocessResult",id:"postprocessresult",level:3},{value:"Methods",id:"methods",level:2},{value:"ProcessValue",id:"processvalue",level:3},{value:"GetResult",id:"getresult",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"zenreportaggregatestdev",children:"%ZEN.Report.Aggregate.StDev"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Aggregate.StDev Extends %ZEN.Report.CustomAggregate [ Deprecated, System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:'Standard deviation ("sub population") Aggregate'}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"count",children:"Count"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Count As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Keeps a running count of values processed"}),"\n",(0,t.jsx)(s.h3,{id:"data",children:"data"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property data As array Of %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Array of processed values"}),"\n",(0,t.jsx)(s.h3,{id:"preprocessvalue",children:"preprocessValue"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property preprocessValue As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"postprocessresult",children:"postprocessResult"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property postprocessResult As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"processvalue",children:"ProcessValue"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProcessValue(pValue As %Double) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Processes each new value"}),"\n",(0,t.jsx)(s.h3,{id:"getresult",children:"GetResult"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetResult() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the variance of the values processed Note we divide by n-1 since this is unbiased variance"})]})}function i(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>l,x:()=>a});var t=n(96540);const r={},c=t.createContext(r);function l(e){const s=t.useContext(c);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),t.createElement(c.Provider,{value:s},e.children)}}}]);