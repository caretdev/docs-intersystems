"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[50889],{4213:(e,n,r)=>{r.r(n),r.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>t,toc:()=>c});var s=r(74848),i=r(28453);const t={pagination_prev:null,pagination_next:null},l="%DeepSee.Model.SubjectArea.hierarchy",c=[{value:"Properties",id:"properties",level:2},{value:"dimension",id:"dimension",level:3},{value:"hidden",id:"hidden",level:3},{value:"levels",id:"levels",level:3}];function a(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"deepseemodelsubjectareahierarchy",children:"%DeepSee.Model.SubjectArea.hierarchy"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.Model.SubjectArea.hierarchy Extends %DeepSee.Model.SubjectArea.node [ System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Meta-data for a hierarchy within a DeepSee subject area."}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"dimension",children:"dimension"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship dimension As %DeepSee.Model.SubjectArea.dimension(XMLPROJECTION = "none") [ Cardinality = one, Inverse = hierarchies ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Dimension that this hierarchy belongs to."}),"\n",(0,s.jsx)(n.h3,{id:"hidden",children:"hidden"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property hidden As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Hidden flag. If true, then this hierarchy will be hidden (not part of the subject area model)."}),"\n",(0,s.jsx)(n.h3,{id:"levels",children:"levels"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship levels As %DeepSee.Model.SubjectArea.level(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = hierarchy ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Set of levels defined for this hierarchy."})]})}function o(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(a,{...e})}):a(e)}},28453:(e,n,r)=>{r.d(n,{R:()=>l,x:()=>c});var s=r(96540);const i={},t=s.createContext(i);function l(e){const n=s.useContext(t);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),s.createElement(t.Provider,{value:n},e.children)}}}]);