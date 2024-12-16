"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[13783],{85509:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>a,default:()=>d,frontMatter:()=>i,toc:()=>c});var t=s(74848),l=s(28453);const i={pagination_prev:null,pagination_next:null},a="%DeepSee.PlugIn.Percentile",c=[{value:"Parameters",id:"parameters",level:2},{value:"BASECUBE",id:"basecube",level:3},{value:"LISTINGSOURCE",id:"listingsource",level:3},{value:"PLUGINTYPE",id:"plugintype",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"KPI",id:"kpi",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetMDX",id:"ongetmdx",level:3},{value:"%OnGetListingFields",id:"ongetlistingfields",level:3},{value:"%OnCompute",id:"oncompute",level:3},{value:"%OnGetAnalysisResultSet",id:"ongetanalysisresultset",level:3}];function r(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"deepseepluginpercentile",children:"%DeepSee.PlugIn.Percentile"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.PlugIn.Percentile Extends %DeepSee.KPIPlugIn [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"This Analytic plug-in computes the PERCENTILE on a given measure for a given cube."}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"basecube",children:"BASECUBE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter BASECUBE = "*";\n'})}),"\n",(0,t.jsx)(n.p,{children:"Cube(s) that this plug-in is based on."}),"\n",(0,t.jsx)(n.h3,{id:"listingsource",children:"LISTINGSOURCE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter LISTINGSOURCE = "FactTable";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"plugintype",children:"PLUGINTYPE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PLUGINTYPE = "Aggregate";\n'})}),"\n",(0,t.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(n.h3,{id:"kpi",children:"KPI"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'XData KPI [ XMLNamespace = "http://www.intersystems.com/deepsee/kpi" ]\n'})}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"ongetmdx",children:"%OnGetMDX"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetMDX(ByRef pMDX As %String) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get the base query for this plug-in."}),"\n",(0,t.jsx)(n.h3,{id:"ongetlistingfields",children:"%OnGetListingFields"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetListingFields() As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Returns the field list (RETURN clause) of the listing used to supply data for this plug-in. In this case, determine which measure we need."}),"\n",(0,t.jsx)(n.h3,{id:"oncompute",children:"%OnCompute"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnCompute(pSQLRS As %SQL.StatementResult, pFactCount As %Integer) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Compute the median of values within the result set."}),"\n",(0,t.jsx)(n.h3,{id:"ongetanalysisresultset",children:"%OnGetAnalysisResultSet"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetAnalysisResultSet(Output pRS As %SQL.StatementResult, pSQL As %String) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Return an %SQL.StatementResult object that will iterate over the facts used for analysis."})]})}function d(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(r,{...e})}):r(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>a,x:()=>c});var t=s(96540);const l={},i=t.createContext(l);function a(e){const n=t.useContext(i);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:a(e.components),t.createElement(i.Provider,{value:n},e.children)}}}]);