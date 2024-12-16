"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[18531],{13430:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>a,default:()=>i,frontMatter:()=>o,toc:()=>l});var n=t(74848),r=t(28453);const o={pagination_prev:null,pagination_next:null},a="%ZEN.Report.Aggregate.Mode",l=[{value:"Properties",id:"properties",level:2},{value:"Counts",id:"counts",level:3},{value:"MaxCount",id:"maxcount",level:3},{value:"MaxCountValues",id:"maxcountvalues",level:3},{value:"Methods",id:"methods",level:2},{value:"ProcessValue",id:"processvalue",level:3},{value:"GetResult",id:"getresult",level:3},{value:"%PostProcessValue",id:"postprocessvalue",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"zenreportaggregatemode",children:"%ZEN.Report.Aggregate.Mode"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Aggregate.Mode Extends %ZEN.Report.CustomAggregate [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Aggregate for computing the statistical mode (most frequent observation) of a set of data"}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"counts",children:"Counts"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property Counts As array Of %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"Number of observations indexed by value"}),"\n",(0,n.jsx)(s.h3,{id:"maxcount",children:"MaxCount"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property MaxCount As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"Largest count seen so far"}),"\n",(0,n.jsx)(s.h3,{id:"maxcountvalues",children:"MaxCountValues"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property MaxCountValues As %String;\n"})}),"\n",(0,n.jsx)(s.p,{children:"List of values that have occured MaxCount times."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"processvalue",children:"ProcessValue"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProcessValue(pValue As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Processes each new value"}),"\n",(0,n.jsx)(s.h3,{id:"getresult",children:"GetResult"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetResult() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:'Returns the mode of the data set. If the data set was empty, "" is returned. If there is no unique mode, the number of values occurring most frequently is returned, as well as how many times these values occurred.'}),"\n",(0,n.jsx)(s.h3,{id:"postprocessvalue",children:"%PostProcessValue"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %PostProcessValue(result As %String, postprocessResult As %Boolean, runtimeMode As %Integer, ignoreNLS As %Boolean)\n"})})]})}function i(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>a,x:()=>l});var n=t(96540);const r={},o=n.createContext(r);function a(e){const s=n.useContext(o);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),n.createElement(o.Provider,{value:s},e.children)}}}]);