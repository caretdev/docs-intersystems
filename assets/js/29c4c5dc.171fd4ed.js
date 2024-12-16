"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[60178],{29273:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>l,default:()=>i,frontMatter:()=>a,toc:()=>c});var r=t(74848),n=t(28453);const a={pagination_prev:null,pagination_next:null},l="%DeepSee.Aggregate.aggregate",c=[{value:"Properties",id:"properties",level:2},{value:"Count",id:"count",level:3},{value:"data",id:"data",level:3},{value:"Methods",id:"methods",level:2},{value:"ProcessValue",id:"processvalue",level:3},{value:"GetResult",id:"getresult",level:3},{value:"%PreProcessValue",id:"preprocessvalue",level:3},{value:"%PostProcessValue",id:"postprocessvalue",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"deepseeaggregateaggregate",children:"%DeepSee.Aggregate.aggregate"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.Aggregate.aggregate Extends %RegisteredObject [ Abstract, System = 3 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Base class for calculating MDX aggregates. This provides the basic interface for aggregartes as used in the MDX engine."}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"count",children:"Count"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Count As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Keeps a running count of values processed"}),"\n",(0,r.jsx)(s.h3,{id:"data",children:"data"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property data As array Of %Double;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Array of processed values"}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"processvalue",children:"ProcessValue"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProcessValue(pValue As %Double) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"ProcessValue is called sequentially on each value in a target set. The default behavior of this method is to file the value in the data array in order of arrival."}),"\n",(0,r.jsx)(s.h3,{id:"getresult",children:"GetResult"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetResult(Output pStatus As %Status) As %Double\n"})}),"\n",(0,r.jsx)(s.p,{children:"GetResult is invoked after every target value has been processed to return the final value of the aggregate."}),"\n",(0,r.jsx)(s.h3,{id:"preprocessvalue",children:"%PreProcessValue"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %PreProcessValue(value As %Double)\n"})}),"\n",(0,r.jsx)(s.p,{children:"Perform any specific validation or other preprocessing just before adding the value to the set"}),"\n",(0,r.jsx)(s.h3,{id:"postprocessvalue",children:"%PostProcessValue"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %PostProcessValue(result As %Double)\n"})}),"\n",(0,r.jsx)(s.p,{children:"Perform any specific validation or other postprocessing just before returning the final value"})]})}function i(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>l,x:()=>c});var r=t(96540);const n={},a=r.createContext(n);function l(e){const s=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:l(e.components),r.createElement(a.Provider,{value:s},e.children)}}}]);