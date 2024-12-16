"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[42788],{80419:(e,n,i)=>{i.r(n),i.d(n,{contentTitle:()=>a,default:()=>o,frontMatter:()=>l,toc:()=>r});var s=i(74848),t=i(28453);const l={pagination_prev:null,pagination_next:null},a="%DeepSee.PMML.Definition.Models.TreeModel",r=[{value:"Properties",id:"properties",level:2},{value:"missingValueStrategy",id:"missingvaluestrategy",level:3},{value:"missingValuePenalty",id:"missingvaluepenalty",level:3},{value:"noTrueChildStrategy",id:"notruechildstrategy",level:3},{value:"splitCharacteristic",id:"splitcharacteristic",level:3},{value:"MiningSchema",id:"miningschema",level:3},{value:"Output",id:"output",level:3},{value:"ModelStats",id:"modelstats",level:3},{value:"ModelExplanation",id:"modelexplanation",level:3},{value:"Targets",id:"targets",level:3},{value:"LocalTransformations",id:"localtransformations",level:3},{value:"Node",id:"node",level:3},{value:"ModelVerification",id:"modelverification",level:3},{value:"Extension",id:"extension",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"%OnValidateNames",id:"onvalidatenames",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"deepseepmmldefinitionmodelstreemodel",children:"%DeepSee.PMML.Definition.Models.TreeModel"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.PMML.Definition.Models.TreeModel Extends AbstractModel [ System = 3 ]\n"})}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"missingvaluestrategy",children:"missingValueStrategy"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property missingValueStrategy As %DeepSee.PMML.Datatype.String(VALUELIST = ",lastPrediction,nullPrediction,defaultChild,weightedConfidence,aggregateNodes,none", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "none" ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"missingvaluepenalty",children:"missingValuePenalty"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property missingValuePenalty As %DeepSee.PMML.Datatype.ProbNumber(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 1.0 ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"notruechildstrategy",children:"noTrueChildStrategy"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property noTrueChildStrategy As %DeepSee.PMML.Datatype.String(VALUELIST = ",returnNullPrediction,returnLastPrediction", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "returnNullPrediction" ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"splitcharacteristic",children:"splitCharacteristic"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property splitCharacteristic As %DeepSee.PMML.Datatype.String(VALUELIST = ",binarySplit,multiSplit", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "multiSplit" ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"miningschema",children:"MiningSchema"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property MiningSchema As %DeepSee.PMML.Definition.MiningSchema(XMLPROJECTION = "ELEMENT") [ Required ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"output",children:"Output"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property Output As %DeepSee.PMML.Definition.Output(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"modelstats",children:"ModelStats"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property ModelStats As %DeepSee.PMML.Definition.ModelStats(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"modelexplanation",children:"ModelExplanation"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property ModelExplanation As %DeepSee.PMML.Definition.ModelExplanation(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"targets",children:"Targets"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property Targets As %DeepSee.PMML.Definition.Targets(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"localtransformations",children:"LocalTransformations"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property LocalTransformations As %DeepSee.PMML.Definition.LocalTransformations(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"node",children:"Node"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property Node As %DeepSee.PMML.Definition.Models.Trees.TreeNode(XMLPROJECTION = "ELEMENT") [ Required ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"modelverification",children:"ModelVerification"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property ModelVerification As %DeepSee.PMML.Definition.ModelVerification(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,s.jsx)(n.h3,{id:"extension",children:"Extension"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Adds node-specific validation checks"}),"\n",(0,s.jsx)(n.h3,{id:"onvalidatenames",children:"%OnValidateNames"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnValidateNames(ByRef pDictionary) As %Status\n"})})]})}function o(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,i)=>{i.d(n,{R:()=>a,x:()=>r});var s=i(96540);const t={},l=s.createContext(t);function a(e){const n=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),s.createElement(l.Provider,{value:n},e.children)}}}]);