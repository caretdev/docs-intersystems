"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[90581],{5771:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>r,default:()=>c,frontMatter:()=>l,toc:()=>a});var t=s(74848),i=s(28453);const l={pagination_prev:null,pagination_next:null},r="%DeepSee.PMML.Definition.Util.NormContinuous",a=[{value:"Properties",id:"properties",level:2},{value:"mapMissingTo",id:"mapmissingto",level:3},{value:"field",id:"field",level:3},{value:"outliers",id:"outliers",level:3},{value:"LinearNorms",id:"linearnorms",level:3},{value:"Methods",id:"methods",level:2},{value:"%ValidateNames",id:"validatenames",level:3},{value:"%GetComputeCode",id:"getcomputecode",level:3},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"%GetInputFields",id:"getinputfields",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"deepseepmmldefinitionutilnormcontinuous",children:"%DeepSee.PMML.Definition.Util.NormContinuous"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.PMML.Definition.Util.NormContinuous Extends (AbstractExpression, %DeepSee.PMML.Definition.extendableNode) [ System = 3 ]\n"})}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"mapmissingto",children:"mapMissingTo"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property mapMissingTo As %DeepSee.PMML.Datatype.Number(XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,t.jsx)(n.h3,{id:"field",children:"field"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property field As %DeepSee.PMML.Datatype.FieldName(XMLPROJECTION = "ATTRIBUTE") [ Required ];\n'})}),"\n",(0,t.jsx)(n.h3,{id:"outliers",children:"outliers"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property outliers As %DeepSee.PMML.Datatype.OutlierTreatmentMethod(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "asIs" ];\n'})}),"\n",(0,t.jsx)(n.h3,{id:"linearnorms",children:"LinearNorms"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property LinearNorms As list Of LinearNorm(XMLNAME = "LinearNorm", XMLPROJECTION = "ELEMENT") [ Required ];\n'})}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"validatenames",children:"%ValidateNames"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ValidateNames(ByRef pDictionary) As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"getcomputecode",children:"%GetComputeCode"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Method %GetComputeCode(Output pInline As %Boolean = 0, pOverrideSource As %String = "", pThis As %String = ".", pArrayFormat As %Boolean = 0) As %String\n'})}),"\n",(0,t.jsx)(n.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Adds node-specific validation checks"}),"\n",(0,t.jsx)(n.h3,{id:"getinputfields",children:"%GetInputFields"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetInputFields(ByRef pFields) As %Status [ Internal ]\n"})})]})}function c(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>r,x:()=>a});var t=s(96540);const i={},l=t.createContext(i);function r(e){const n=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:r(e.components),t.createElement(l.Provider,{value:n},e.children)}}}]);