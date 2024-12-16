"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[17799],{33612:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>l,default:()=>o,frontMatter:()=>r,toc:()=>c});var a=s(74848),n=s(28453);const r={pagination_prev:null,pagination_next:null},l="%DeepSee.FactTable",c=[{value:"Parameters",id:"parameters",level:2},{value:"CUBENAME",id:"cubename",level:3},{value:"SOURCECLASS",id:"sourceclass",level:3},{value:"MANAGEDEXTENT",id:"managedextent",level:3},{value:"Methods",id:"methods",level:2},{value:"%Count",id:"count",level:3},{value:"%BuildAllFacts",id:"buildallfacts",level:3},{value:"%UpdateFacts",id:"updatefacts",level:3},{value:"%ProcessFact",id:"processfact",level:3},{value:"%DeleteFact",id:"deletefact",level:3},{value:"%PrecomputeAggregates",id:"precomputeaggregates",level:3},{value:"%LogError",id:"logerror",level:3},{value:"%KillLogFile",id:"killlogfile",level:3}];function i(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"deepseefacttable",children:"%DeepSee.FactTable"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.FactTable Extends (%Persistent, %DeepSee.IndexBuilder) [ Abstract, NoExtent, System = 3 ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Base class for all DeepSee fact tables."}),"\n",(0,a.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(t.h3,{id:"cubename",children:"CUBENAME"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter CUBENAME As STRING;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Name of the cube that created this fact table."}),"\n",(0,a.jsx)(t.h3,{id:"sourceclass",children:"SOURCECLASS"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SOURCECLASS As STRING;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Name of the source table that provides data for this fact table."}),"\n",(0,a.jsx)(t.h3,{id:"managedextent",children:"MANAGEDEXTENT"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter MANAGEDEXTENT = 0;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Turn off extent management for fact tables."}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"count",children:"%Count"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %Count() As %Integer [ Abstract ]\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Return the total number of items within the Fact table.",(0,a.jsx)(t.br,{}),"\nThe actual implementation is generated when the cube is compiled."]}),"\n",(0,a.jsx)(t.h3,{id:"buildallfacts",children:"%BuildAllFacts"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %BuildAllFacts(pVerbose As %Boolean = 0) As %Status [ Abstract, Internal ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Build all facts with data from the source table."}),"\n",(0,a.jsx)(t.h3,{id:"updatefacts",children:"%UpdateFacts"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %UpdateFacts(pStartId As %String, pEndId As %String, pBatchMode As %Boolean = 0, ByRef pChunks As %Integer, pVerbose As %Boolean = 0, pTaskGroup As %String = "", Output pUpdates As %Integer, pRefProp As %String = "", pRefID As %String = "", ByRef pDimTables, pFactList As %String = "") As %Status [ Abstract, Internal ]\n'})}),"\n",(0,a.jsxs)(t.p,{children:["Update a range of Facts with data from the source table row with ids from pStartId to pEndId.",(0,a.jsx)(t.br,{}),"\nThe actual implementation is generated when the cube is compiled.",(0,a.jsx)(t.br,{}),"\nIf pBatchMode is true, then we are building the entire cube from scratch (in parallel)."]}),"\n",(0,a.jsx)(t.h3,{id:"processfact",children:"%ProcessFact"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %ProcessFact(pID As %String, pBatchMode As %Boolean = 0, ByRef %var As %String, Output pFactId As %Integer, Output pErrorMsg As %String, ByRef pDimTables, pDimensionsOnly As %Boolean = 0, pFactList As %String = "") As %Status [ Abstract, Internal ]\n'})}),"\n",(0,a.jsxs)(t.p,{children:["Does the actual work of updating one fact (with source id pID) in the fact table with data in the array %var (which is subscripted by fact name).",(0,a.jsx)(t.br,{}),"\nThe actual implementation is generated when the cube is compiled.",(0,a.jsx)(t.br,{}),"\npDimensionsOnly is a special flag used by dimension-preloading."]}),"\n",(0,a.jsx)(t.h3,{id:"deletefact",children:"%DeleteFact"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %DeleteFact(pID As %String, Output pFactId As %Integer, Output pErrorMsg As %String) As %Status [ Abstract, Internal ]\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Does the actual work of deleting one fact (with source id pID) from the fact table.",(0,a.jsx)(t.br,{}),"\nThe actual implementation is generated when the cube is compiled."]}),"\n",(0,a.jsx)(t.h3,{id:"precomputeaggregates",children:"%PrecomputeAggregates"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %PrecomputeAggregates(pStartChunk As %Integer, pEndChunk As %Integer, pAggGLVN As %String, pVerbose As %Boolean = 0, pTaskGroup As %String = "") As %Status [ Abstract, Internal ]\n'})}),"\n",(0,a.jsxs)(t.p,{children:["Precalculate certain aggregate values when a cube is built (if the cube's precompute property is set) for the specified range of facts.",(0,a.jsx)(t.br,{}),"\nDo not call this method directly.",(0,a.jsx)(t.br,{}),"\nThe actual implementation is generated when the cube is compiled. pAggGLVN is the name of the (private) global in which to put the answers."]}),"\n",(0,a.jsx)(t.h3,{id:"logerror",children:"%LogError"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %LogError(pSC As %Status) As %Status [ Internal ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This is called when there is an error in filing data into this cube. It writes the error message to a log file."}),"\n",(0,a.jsx)(t.h3,{id:"killlogfile",children:"%KillLogFile"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %KillLogFile() As %Status [ Internal ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Kill the update log file."})]})}function o(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(i,{...e})}):i(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>l,x:()=>c});var a=s(96540);const n={},r=a.createContext(n);function l(e){const t=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:l(e.components),a.createElement(r.Provider,{value:t},e.children)}}}]);