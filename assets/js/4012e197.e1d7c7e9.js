"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[74076],{50398:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>o,default:()=>d,frontMatter:()=>c,toc:()=>i});var r=s(74848),t=s(28453);const c={pagination_prev:null,pagination_next:null},o="%DeepSee.Query.group",i=[{value:"Properties",id:"properties",level:2},{value:"children",id:"children",level:3},{value:"Methods",id:"methods",level:2},{value:"%PrintNode",id:"printnode",level:3},{value:"%PreProcess",id:"preprocess",level:3},{value:"%ProcessFilter",id:"processfilter",level:3},{value:"%IsEnabled",id:"isenabled",level:3}];function l(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"deepseequerygroup",children:"%DeepSee.Query.group"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.Query.group Extends node [ Abstract, System = 3 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Base class for DeepSee RunTime nodes that contain children."}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"children",children:"children"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship children As %DeepSee.Query.node(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = parent ];\n'})}),"\n",(0,r.jsxs)(n.p,{children:["Children of this group.",(0,r.jsx)(n.br,{}),"\nThe type of the children depends on context."]}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"printnode",children:"%PrintNode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %PrintNode(pLevel As %Integer = 0)\n"})}),"\n",(0,r.jsx)(n.p,{children:"Diagnostic. Print value of this node to the console."}),"\n",(0,r.jsx)(n.h3,{id:"preprocess",children:"%PreProcess"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %PreProcess(pIsSlicer As %Boolean = 0) As %Status\n"})}),"\n",(0,r.jsx)(n.p,{children:"Execute the pre-processing logic for this node."}),"\n",(0,r.jsx)(n.h3,{id:"processfilter",children:"%ProcessFilter"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ProcessFilter(ByRef pFilterTree As %List, pCube As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Process this node within the context of the filter section of a query"}),"\n",(0,r.jsx)(n.h3,{id:"isenabled",children:"%IsEnabled"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method %IsEnabled(pCube As %String = "", Output pStatus As %Status = {$$$OK}, Output pReason As %String = "") As %Boolean\n'})}),"\n",(0,r.jsx)(n.p,{children:"Test this node to make sure all data references are currently marked enabled in the cube."})]})}function d(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>o,x:()=>i});var r=s(96540);const t={},c=r.createContext(t);function o(e){const n=r.useContext(c);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:o(e.components),r.createElement(c.Provider,{value:n},e.children)}}}]);