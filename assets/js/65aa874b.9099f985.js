"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[5871],{43640:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>c,frontMatter:()=>i,toc:()=>a});var l=s(74848),n=s(28453);const i={pagination_prev:null,pagination_next:null},r="%DeepSee.PMML.Model.NaiveBayes",a=[{value:"Parameters",id:"parameters",level:2},{value:"SUPPORTSSIMPLEMODE",id:"supportssimplemode",level:3},{value:"THRESHOLD",id:"threshold",level:3},{value:"TRACEWEIGHTTYPE",id:"traceweighttype",level:3},{value:"Properties",id:"properties",level:2},{value:"Counts",id:"counts",level:3},{value:"TraceWeights",id:"traceweights",level:3},{value:"Distribution",id:"distribution",level:3},{value:"Methods",id:"methods",level:2},{value:"%GetPredictedFieldFromDef",id:"getpredictedfieldfromdef",level:3},{value:"%CreateModelClass",id:"createmodelclass",level:3},{value:"%OnGetOutputFeature",id:"ongetoutputfeature",level:3},{value:"%Factorial",id:"factorial",level:3},{value:"GetLikelihoods",id:"getlikelihoods",level:3}];function o(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(t.header,{children:(0,l.jsx)(t.h1,{id:"deepseepmmlmodelnaivebayes",children:"%DeepSee.PMML.Model.NaiveBayes"})}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.PMML.Model.NaiveBayes Extends AbstractModel [ Abstract, System = 4 ]\n"})}),"\n",(0,l.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(t.h3,{id:"supportssimplemode",children:"SUPPORTSSIMPLEMODE"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SUPPORTSSIMPLEMODE As BOOLEAN [ Internal ] = 1;\n"})}),"\n",(0,l.jsx)(t.h3,{id:"threshold",children:"THRESHOLD"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter THRESHOLD As INTEGER;\n"})}),"\n",(0,l.jsx)(t.h3,{id:"traceweighttype",children:"TRACEWEIGHTTYPE"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter TRACEWEIGHTTYPE = "multiply";\n'})}),"\n",(0,l.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(t.h3,{id:"counts",children:"Counts"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Property Counts [ Internal, MultiDimensional, Private ];\n"})}),"\n",(0,l.jsx)(t.p,{children:'..Counts("targetValue") = total count for [targetValue] ..Counts("targetValue","fieldName") = total non-missing count for [field] with [targetValue] ..Counts("targetValue","fieldName","fieldValue") = count for [field]=[fieldValue] with [targetValue]'}),"\n",(0,l.jsx)(t.h3,{id:"traceweights",children:"TraceWeights"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Property TraceWeights [ Internal, MultiDimensional ];\n"})}),"\n",(0,l.jsx)(t.h3,{id:"distribution",children:"Distribution"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Property Distribution [ Internal, MultiDimensional, Private ];\n"})}),"\n",(0,l.jsx)(t.p,{children:'..Distribution("targetValue", "fieldName", "mean" or "variance)'}),"\n",(0,l.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(t.h3,{id:"getpredictedfieldfromdef",children:"%GetPredictedFieldFromDef"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetPredictedFieldFromDef(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %String [ Internal ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"createmodelclass",children:"%CreateModelClass"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %CreateModelClass(pClass As %Dictionary.ClassDefinition, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"ongetoutputfeature",children:"%OnGetOutputFeature"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %OnGetOutputFeature(pMethod As %Stream.Object, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pOutputField As %DeepSee.PMML.Definition.OutputField, ByRef pFeatureValueVar As %String, Output pSupported As %Boolean) As %Status [ Internal, Private ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"factorial",children:"%Factorial"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %Factorial(input As %Integer) As %Integer\n"})}),"\n",(0,l.jsx)(t.h3,{id:"getlikelihoods",children:"GetLikelihoods"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetLikelihoods(ByRef pObservation, Output pLikelihoods) As %Status\n"})}),"\n",(0,l.jsx)(t.p,{children:"Output: pLikelihoods(tOutputValue) = likelihood"})]})}function c(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,l.jsx)(t,{...e,children:(0,l.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>a});var l=s(96540);const n={},i=l.createContext(n);function r(e){const t=l.useContext(i);return l.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:r(e.components),l.createElement(i.Provider,{value:t},e.children)}}}]);