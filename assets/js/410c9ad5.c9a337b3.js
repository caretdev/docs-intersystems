"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[398],{44992:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>c,default:()=>r,frontMatter:()=>l,toc:()=>i});var t=s(74848),a=s(28453);const l={pagination_prev:null,pagination_next:null},c="SYS.DataCheck.RangeState",i=[{value:"Methods",id:"methods",level:2},{value:"LogicalToDisplay",id:"logicaltodisplay",level:3},{value:"DisplayToLogical",id:"displaytological",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,a.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"sysdatacheckrangestate",children:"SYS.DataCheck.RangeState"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class SYS.DataCheck.RangeState Extends %Integer\n"})}),"\n",(0,t.jsx)(n.p,{children:"Defines the possible states for global ranges recorded in the RangeList objects. The logical value is one of the following constants, defined for convenience in %syDataCheck.inc:"}),"\n",(0,t.jsxs)(n.ul,{children:["\n",(0,t.jsx)(n.li,{children:"0 - $$$RangeStateUnknown - system has not checked this range yet"}),"\n",(0,t.jsx)(n.li,{children:"1 - $$$RangeStateMatched - system has found this range to be matched"}),"\n",(0,t.jsx)(n.li,{children:"2 - $$$RangeStateExcluded - this range is excluded from the check"}),"\n",(0,t.jsx)(n.li,{children:"3 - $$$RangeStateIncluded - used only by the global selection set of RangeLists, this range is to be included in the check"}),"\n",(0,t.jsx)(n.li,{children:"-1 - $$$RangeStateUnmatched - system has found a discrepancy in this range"}),"\n",(0,t.jsx)(n.li,{children:"-2 - $$$RangeStateColDis - system has found a collation discrepancy"}),"\n"]}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"logicaltodisplay",children:"LogicalToDisplay"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod LogicalToDisplay(%val As %Integer) As %String\n"})}),"\n",(0,t.jsx)(n.h3,{id:"displaytological",children:"DisplayToLogical"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DisplayToLogical(%val As %String) As %Integer\n"})})]})}function r(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>c,x:()=>i});var t=s(96540);const a={},l=t.createContext(a);function c(e){const n=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:c(e.components),t.createElement(l.Provider,{value:n},e.children)}}}]);