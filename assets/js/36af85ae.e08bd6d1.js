"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[96914],{36384:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>a,default:()=>c,frontMatter:()=>l,toc:()=>o});var i=s(74848),t=s(28453);const l={pagination_prev:null,pagination_next:null},a="%DeepSee.PMML.Definition.Models.SupportVectorMachineModel",o=[{value:"Properties",id:"properties",level:2},{value:"threshold",id:"threshold",level:3},{value:"svmRepresentation",id:"svmrepresentation",level:3},{value:"classificationMethod",id:"classificationmethod",level:3},{value:"MiningSchema",id:"miningschema",level:3},{value:"Output",id:"output",level:3},{value:"ModelStats",id:"modelstats",level:3},{value:"ModelExplanation",id:"modelexplanation",level:3},{value:"Targets",id:"targets",level:3},{value:"LocalTransformations",id:"localtransformations",level:3},{value:"KernelType",id:"kerneltype",level:3},{value:"VectorDictionary",id:"vectordictionary",level:3},{value:"SVMs",id:"svms",level:3},{value:"ModelVerification",id:"modelverification",level:3},{value:"Extension",id:"extension",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"%GetModelClass",id:"getmodelclass",level:3},{value:"%OnValidateNames",id:"onvalidatenames",level:3}];function r(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"deepseepmmldefinitionmodelssupportvectormachinemodel",children:"%DeepSee.PMML.Definition.Models.SupportVectorMachineModel"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.PMML.Definition.Models.SupportVectorMachineModel Extends AbstractModel [ System = 4 ]\n"})}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"threshold",children:"threshold"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property threshold As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 0 ];\n'})}),"\n",(0,i.jsx)(n.h3,{id:"svmrepresentation",children:"svmRepresentation"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property svmRepresentation As %DeepSee.PMML.Datatype.String(VALUELIST = ",Coefficients,SupportVectors", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "SupportVectors" ];\n'})}),"\n",(0,i.jsx)(n.h3,{id:"classificationmethod",children:"classificationMethod"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property classificationMethod As %DeepSee.PMML.Datatype.String(VALUELIST = ",OneAgainstAll,OneAgainstOne", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "OneAgainstAll" ];\n'})}),"\n",(0,i.jsx)(n.h3,{id:"miningschema",children:"MiningSchema"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property MiningSchema As %DeepSee.PMML.Definition.MiningSchema(XMLPROJECTION = "ELEMENT") [ Required ];\n'})}),"\n",(0,i.jsx)(n.h3,{id:"output",children:"Output"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property Output As %DeepSee.PMML.Definition.Output(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"modelstats",children:"ModelStats"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property ModelStats As %DeepSee.PMML.Definition.ModelStats(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"modelexplanation",children:"ModelExplanation"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property ModelExplanation As %DeepSee.PMML.Definition.ModelExplanation(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"targets",children:"Targets"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property Targets As %DeepSee.PMML.Definition.Targets(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"localtransformations",children:"LocalTransformations"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property LocalTransformations As %DeepSee.PMML.Definition.LocalTransformations(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"kerneltype",children:"KernelType"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property KernelType As %DeepSee.PMML.Definition.Models.SVM.KernelType(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"vectordictionary",children:"VectorDictionary"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property VectorDictionary As %DeepSee.PMML.Definition.Models.SVM.VectorDictionary(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"svms",children:"SVMs"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property SVMs As list Of %DeepSee.PMML.Definition.Models.SVM.SupportVectorMachine(XMLNAME = "SupportVectorMachine", XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"modelverification",children:"ModelVerification"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property ModelVerification As %DeepSee.PMML.Definition.ModelVerification(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"extension",children:"Extension"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Adds node-specific validation checks"}),"\n",(0,i.jsx)(n.h3,{id:"getmodelclass",children:"%GetModelClass"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %GetModelClass() As %String [ Internal ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"onvalidatenames",children:"%OnValidateNames"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnValidateNames(ByRef pDictionary) As %Status\n"})})]})}function c(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(r,{...e})}):r(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>a,x:()=>o});var i=s(96540);const t={},l=i.createContext(t);function a(e){const n=i.useContext(l);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),i.createElement(l.Provider,{value:n},e.children)}}}]);