"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[36387],{22492:(e,a,r)=>{r.r(a),r.d(a,{contentTitle:()=>s,default:()=>o,frontMatter:()=>l,toc:()=>i});var t=r(74848),n=r(28453);const l={pagination_prev:null,pagination_next:null},s="%Studio.WatchVariable",i=[{value:"Properties",id:"properties",level:2},{value:"Project",id:"project",level:3},{value:"Variable",id:"variable",level:3},{value:"VariableESC",id:"variableesc",level:3},{value:"Pane",id:"pane",level:3},{value:"Methods",id:"methods",level:2},{value:"VariableGet",id:"variableget",level:3},{value:"VariableSet",id:"variableset",level:3},{value:"VariableESCGet",id:"variableescget",level:3}];function c(e){const a={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(a.header,{children:(0,t.jsx)(a.h1,{id:"studiowatchvariable",children:"%Studio.WatchVariable"})}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Class %Studio.WatchVariable Extends (%Persistent, %XML.Adaptor) [ System = 3 ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Represents a specific variable to put in the watch list for debugging."}),"\n",(0,t.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(a.h3,{id:"project",children:"Project"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Relationship Project As Project [ Cardinality = parent, Inverse = WatchVariables ];\n"})}),"\n",(0,t.jsx)(a.h3,{id:"variable",children:"Variable"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Property Variable As %String(MAXLEN = 256, XMLPROJECTION = "attribute") [ SqlComputeCode = {set {*}=$replace({VariableESC},"__","||")}, SqlComputed, SqlComputeOnChange = VariableESC ];\n'})}),"\n",(0,t.jsx)(a.h3,{id:"variableesc",children:"VariableESC"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Property VariableESC As %String(MAXLEN = 256) [ Private, SqlComputeCode = {set {*}=$replace({Variable},"||","__")}, SqlComputed, SqlComputeOnChange = Variable ];\n'})}),"\n",(0,t.jsx)(a.h3,{id:"pane",children:"Pane"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Property Pane As %Integer(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(a.h3,{id:"variableget",children:"VariableGet"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Method VariableGet() As %String\n"})}),"\n",(0,t.jsx)(a.h3,{id:"variableset",children:"VariableSet"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Method VariableSet(val As %String) As %Status\n"})}),"\n",(0,t.jsx)(a.h3,{id:"variableescget",children:"VariableESCGet"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Method VariableESCGet() As %String [ Private ]\n"})})]})}function o(e={}){const{wrapper:a}={...(0,n.R)(),...e.components};return a?(0,t.jsx)(a,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,a,r)=>{r.d(a,{R:()=>s,x:()=>i});var t=r(96540);const n={},l=t.createContext(n);function s(e){const a=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function i(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:s(e.components),t.createElement(l.Provider,{value:a},e.children)}}}]);