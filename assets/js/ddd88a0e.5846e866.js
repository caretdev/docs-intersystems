"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[45607],{5406:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>r,toc:()=>c});var i=t(74848),s=t(28453);const r={pagination_prev:null,pagination_next:null},l="%DeepSee.PMML.Builder.Text",c=[{value:"Parameters",id:"parameters",level:2},{value:"MODELCLASSNAME",id:"modelclassname",level:3},{value:"Properties",id:"properties",level:2},{value:"EntityCount",id:"entitycount",level:3},{value:"InputLanguages",id:"inputlanguages",level:3},{value:"InputType",id:"inputtype",level:3},{value:"TermWeightsLocal",id:"termweightslocal",level:3},{value:"TermWeightsGlobal",id:"termweightsglobal",level:3},{value:"TermWeightsDocumentNormalization",id:"termweightsdocumentnormalization",level:3},{value:"SimilarityType",id:"similaritytype",level:3},{value:"TermSelectionMetric",id:"termselectionmetric",level:3},{value:"Methods",id:"methods",level:2},{value:"BuildModel",id:"buildmodel",level:3},{value:"GetEntitiesByNBProb",id:"getentitiesbynbprob",level:3},{value:"GetEntitiesByBM25",id:"getentitiesbybm25",level:3}];function a(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"deepseepmmlbuildertext",children:"%DeepSee.PMML.Builder.Text"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.PMML.Builder.Text Extends %DeepSee.PMML.Builder.AbstractBuilder [ System = 4 ]\n"})}),"\n",(0,i.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(n.h3,{id:"modelclassname",children:"MODELCLASSNAME"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter MODELCLASSNAME = "%DeepSee.PMML.Definition.Models.TextModel";\n'})}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"entitycount",children:"EntityCount"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property EntityCount As %String [ InitialExpression = 50 ];\n"})}),"\n",(0,i.jsx)(n.h3,{id:"inputlanguages",children:"InputLanguages"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property InputLanguages As %String;\n"})}),"\n",(0,i.jsx)(n.h3,{id:"inputtype",children:"InputType"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property InputType As %String(VALUELIST = ",text,terms") [ InitialExpression = "text" ];\n'})}),"\n",(0,i.jsx)(n.p,{children:"Whether the model should have separate DataFields for each term or a single containing the whole text"}),"\n",(0,i.jsx)(n.h3,{id:"termweightslocal",children:"TermWeightsLocal"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property TermWeightsLocal As %String(VALUELIST = ",termFrequency,binary,logarithmic,augmentedNormalizedTermFrequency") [ InitialExpression = "termFrequency" ];\n'})}),"\n",(0,i.jsx)(n.h3,{id:"termweightsglobal",children:"TermWeightsGlobal"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property TermWeightsGlobal As %String(VALUELIST = ",inverseDocumentFrequency,none,GFIDF,normal,probabilisticInverse") [ InitialExpression = "inverseDocumentFrequency" ];\n'})}),"\n",(0,i.jsx)(n.h3,{id:"termweightsdocumentnormalization",children:"TermWeightsDocumentNormalization"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property TermWeightsDocumentNormalization As %String(VALUELIST = ",none,cosine") [ InitialExpression = "none" ];\n'})}),"\n",(0,i.jsx)(n.h3,{id:"similaritytype",children:"SimilarityType"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property SimilarityType As %String(VALUELIST = ",euclidian,cosine") [ InitialExpression = "cosine" ];\n'})}),"\n",(0,i.jsx)(n.h3,{id:"termselectionmetric",children:"TermSelectionMetric"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property TermSelectionMetric As %String(VALUELIST = ",NaiveBayes,BM25");\n'})}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"buildmodel",children:"BuildModel"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method BuildModel(ByRef pModel As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"getentitiesbynbprob",children:"GetEntitiesByNBProb"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetEntitiesByNBProb(pDomainId As %Integer, ByRef pFilters) As %Status\n"})}),"\n",(0,i.jsx)(n.h3,{id:"getentitiesbybm25",children:"GetEntitiesByBM25"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetEntitiesByBM25(pDomainId As %Integer, pEntType As %Integer = {$$$ENTTYPECONCEPT}) As %Status\n"})})]})}function o(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(a,{...e})}):a(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>c});var i=t(96540);const s={},r=i.createContext(s);function l(e){const n=i.useContext(r);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),i.createElement(r.Provider,{value:n},e.children)}}}]);