"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[42195],{95784:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>d,default:()=>l,frontMatter:()=>r,toc:()=>c});var s=t(74848),i=t(28453);const r={pagination_prev:null,pagination_next:null},d="%DeepSee.Model.index",c=[{value:"Properties",id:"properties",level:2},{value:"cube",id:"cube",level:3},{value:"properties",id:"properties-1",level:3},{value:"type",id:"type",level:3},{value:"Methods",id:"methods",level:2},{value:"%Validate",id:"validate",level:3}];function a(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"deepseemodelindex",children:"%DeepSee.Model.index"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.Model.index Extends %DeepSee.Model.node [ System = 3 ]\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Meta-data object that represents an additional index within the fact table for a DeepSee cube.",(0,s.jsx)(n.br,{}),"\nThe DeepSee engine does not make use of such indices, but an application may have need of extra indices."]}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"cube",children:"cube"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship cube As %DeepSee.Model.cube(XMLPROJECTION = "none") [ Cardinality = one, Inverse = indices ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Cube that this index belongs to."}),"\n",(0,s.jsx)(n.h3,{id:"properties-1",children:"properties"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property properties As %DeepSee.Datatype.string(MAXLEN = 500, XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Property list for the index."}),"\n",(0,s.jsx)(n.h3,{id:"type",children:"type"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property type As %DeepSee.Datatype.string(VALUELIST = ",bitmap,bitslice,index,key", XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Type of index."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"validate",children:"%Validate"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %Validate() As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Test if this index's definition is valid."})]})}function l(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(a,{...e})}):a(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>d,x:()=>c});var s=t(96540);const i={},r=s.createContext(i);function d(e){const n=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:d(e.components),s.createElement(r.Provider,{value:n},e.children)}}}]);