"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[72093],{10142:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>o,default:()=>d,frontMatter:()=>a,toc:()=>r});var s=n(74848),i=n(28453);const a={pagination_prev:null,pagination_next:null},o="%DeepSee.PMML.Definition.Util.AbstractExpression",r=[{value:"Methods",id:"methods",level:2},{value:"%ValidateNames",id:"validatenames",level:3},{value:"%GetComputeCode",id:"getcomputecode",level:3},{value:"%GetInputFields",id:"getinputfields",level:3}];function l(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"deepseepmmldefinitionutilabstractexpression",children:"%DeepSee.PMML.Definition.Util.AbstractExpression"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.PMML.Definition.Util.AbstractExpression Extends %DeepSee.PMML.Definition.node [ Abstract, System = 3 ]\n"})}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"validatenames",children:"%ValidateNames"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ValidateNames(ByRef pDictionary) As %Status\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getcomputecode",children:"%GetComputeCode"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method %GetComputeCode(Output pInline As %Boolean = 0, pOverrideSource As %String = "", pThis As %String = ".", pArrayFormat As %Boolean = 0) As %String [ Abstract ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returns the COS code to compute this expression. Sets pInline to 1 if the returned string can simply be nested in an enclosing expression. If pInline = 0, the code returned is assumed to populate a variable tValue, with each line prepended with appropriate whitespace to allow simple compilation."}),"\n",(0,s.jsx)(t.p,{children:"If the expression can evaluate to anything other than valid values, an additional variable tStatus should be populated with the appropriate status (which will likely result in pInline being 0)"}),"\n",(0,s.jsx)(t.p,{children:'If pOverrideSource is set, it should be used rather than the expected "input" for this expression (ie: ..field)'}),"\n",(0,s.jsx)(t.h3,{id:"getinputfields",children:"%GetInputFields"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetInputFields(ByRef pFields) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns the names of the fields used by this expression. This method is called recursively on nested expressions so that all fields are appended."})]})}function d(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>o,x:()=>r});var s=n(96540);const i={},a=s.createContext(i);function o(e){const t=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function r(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:o(e.components),s.createElement(a.Provider,{value:t},e.children)}}}]);