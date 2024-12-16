"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[13858],{58499:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>r,default:()=>o,frontMatter:()=>t,toc:()=>i});var a=s(74848),l=s(28453);const t={pagination_prev:null,pagination_next:null},r="%DeepSee.PMML.Definition.Util.Matrix",i=[{value:"Properties",id:"properties",level:2},{value:"kind",id:"kind",level:3},{value:"nbRows",id:"nbrows",level:3},{value:"nbCols",id:"nbcols",level:3},{value:"Arrays",id:"arrays",level:3},{value:"diagDefault",id:"diagdefault",level:3},{value:"offDiagDefault",id:"offdiagdefault",level:3},{value:"Cells",id:"cells",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"ValuesAsArray",id:"valuesasarray",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"deepseepmmldefinitionutilmatrix",children:"%DeepSee.PMML.Definition.Util.Matrix"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.PMML.Definition.Util.Matrix Extends %DeepSee.PMML.Definition.node [ System = 3 ]\n"})}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"kind",children:"kind"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property kind As %DeepSee.PMML.Datatype.String(VALUELIST = ",diagnoal,symmetric,any", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "any" ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"nbrows",children:"nbRows"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property nbRows As %DeepSee.PMML.Datatype.IntNumber(XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,a.jsx)(n.h3,{id:"nbcols",children:"nbCols"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property nbCols As %DeepSee.PMML.Datatype.IntNumber(XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,a.jsx)(n.h3,{id:"arrays",children:"Arrays"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property Arrays As list Of Array(XMLNAME = "Array", XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,a.jsx)(n.h3,{id:"diagdefault",children:"diagDefault"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property diagDefault As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,a.jsx)(n.h3,{id:"offdiagdefault",children:"offDiagDefault"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property offDiagDefault As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,a.jsx)(n.h3,{id:"cells",children:"Cells"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property Cells As list Of MatCell(XMLNAME = "MatCell", XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Adds node-specific validation checks"}),"\n",(0,a.jsx)(n.h3,{id:"valuesasarray",children:"ValuesAsArray"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method ValuesAsArray(Output pArray) As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Returns the values of this matrix as a two-dimensional array, where pArray(i,j) contains the value of the j'th column on the i'th row of the matrix. the top node of pArray contains $lb(nbOfRows, nbOfColumns)"})]})}function o(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>r,x:()=>i});var a=s(96540);const l={},t=a.createContext(l);function r(e){const n=a.useContext(t);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),a.createElement(t.Provider,{value:n},e.children)}}}]);