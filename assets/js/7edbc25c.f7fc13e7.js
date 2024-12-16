"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[18486],{1123:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>c,frontMatter:()=>a,toc:()=>o});var s=t(74848),r=t(28453);const a={pagination_prev:null,pagination_next:null},l="%DeepSee.Dashboard.CalculatedMember",o=[{value:"Parameters",id:"parameters",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"XMLNAME",id:"xmlname",level:3},{value:"XMLIGNORENULL",id:"xmlignorenull",level:3},{value:"Properties",id:"properties",level:2},{value:"dimension",id:"dimension",level:3},{value:"memberName",id:"membername",level:3},{value:"valueExpression",id:"valueexpression",level:3},{value:"formatString",id:"formatstring",level:3},{value:"solveOrder",id:"solveorder",level:3},{value:"Methods",id:"methods",level:2},{value:"%CopyToComponent",id:"copytocomponent",level:3},{value:"%CopyFromComponent",id:"copyfromcomponent",level:3}];function i(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"deepseedashboardcalculatedmember",children:"%DeepSee.Dashboard.CalculatedMember"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.Dashboard.CalculatedMember Extends (%SerialObject, %XML.Adaptor) [ System = 4 ]\n"})}),"\n",(0,s.jsxs)(n.p,{children:["This class defines a CalculatedMember within a DeepSee saved pivot.",(0,s.jsx)(n.br,{}),"\nThis defines a calculated member that is local to the saved pivot (it is automatically added to the MDX query used for the pivot)."]}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/deepsee/library";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"xmlname",children:"XMLNAME"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLNAME = "calculatedMember";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"xmlignorenull",children:"XMLIGNORENULL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter XMLIGNORENULL = 1;\n"})}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"dimension",children:"dimension"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property dimension As %DeepSee.Datatype.entityName(XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Name of the dimension this calculated member belongs to. This does not have to be an existing dimension."}),"\n",(0,s.jsx)(n.h3,{id:"membername",children:"memberName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property memberName As %DeepSee.Datatype.entityName(XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Name of the calculated member."}),"\n",(0,s.jsx)(n.h3,{id:"valueexpression",children:"valueExpression"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property valueExpression As %DeepSee.Datatype.string(MAXLEN = 32000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"MDX expression that defines the value of this calculated member."}),"\n",(0,s.jsx)(n.h3,{id:"formatstring",children:"formatString"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property formatString As %DeepSee.Datatype.string(MAXLEN = 100, XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Optional format string to apply to this member."}),"\n",(0,s.jsx)(n.h3,{id:"solveorder",children:"solveOrder"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property solveOrder As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Optional solveOrder to apply to this member."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"copytocomponent",children:"%CopyToComponent"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %CopyToComponent(pCalcMbr As %DeepSee.Component.calculatedMember) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Copy the contents of this pivot level definition to pivot table level pLevel."}),"\n",(0,s.jsx)(n.h3,{id:"copyfromcomponent",children:"%CopyFromComponent"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %CopyFromComponent(pCalcMbr As %DeepSee.Component.calculatedMember) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Set the contents of this pivot level definition from pivot table level pLevel."})]})}function c(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>o});var s=t(96540);const r={},a=s.createContext(r);function l(e){const n=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),s.createElement(a.Provider,{value:n},e.children)}}}]);