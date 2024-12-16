"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[22274],{30673:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>d,frontMatter:()=>r,toc:()=>a});var s=t(74848),i=t(28453);const r={pagination_prev:null,pagination_next:null},l="%DeepSee.Model.QualityMeasure.group",a=[{value:"Properties",id:"properties",level:2},{value:"qualityMeasure",id:"qualitymeasure",level:3},{value:"description",id:"description",level:3},{value:"elements",id:"elements",level:3},{value:"Methods",id:"methods",level:2},{value:"%Validate",id:"validate",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"deepseemodelqualitymeasuregroup",children:"%DeepSee.Model.QualityMeasure.group"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.Model.QualityMeasure.group Extends node [ System = 3 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Meta-data for a group definition within a DeepSee Quality Measure."}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"qualitymeasure",children:"qualityMeasure"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship qualityMeasure As %DeepSee.Model.QualityMeasure.qualityMeasure(XMLPROJECTION = "none") [ Cardinality = one, Inverse = groups ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Quality measure that this group belongs to."}),"\n",(0,s.jsx)(n.h3,{id:"description",children:"description"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property description As %DeepSee.Datatype.string(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"Additional descriptive text."}),"\n",(0,s.jsx)(n.h3,{id:"elements",children:"elements"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship elements As %DeepSee.Model.QualityMeasure.element(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = group ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Set of elements defined for this group. These define what is in and out of the group."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"validate",children:"%Validate"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %Validate() As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Test if this element's definition is valid."})]})}function d(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(o,{...e})}):o(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>a});var s=t(96540);const i={},r=s.createContext(i);function l(e){const n=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),s.createElement(r.Provider,{value:n},e.children)}}}]);