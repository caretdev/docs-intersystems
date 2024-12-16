"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[55469],{64272:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>u,frontMatter:()=>a,toc:()=>o});var r=n(74848),s=n(28453);const a={pagination_prev:null,pagination_next:null},i="%Library.Counter",o=[];function c(e){const t={code:"code",h1:"h1",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"librarycounter",children:"%Library.Counter"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Library.Counter Extends %Library.BigInt [ System = 2 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"%Library.Counter is a datatype class that extends %Library.BigInt. It does not override any inherited behavior."}),"\n",(0,r.jsx)(t.p,{children:'Any property whose type class is %Library.Counter will be assigned a value on insert if no value is specified. The counter value is assigned by incrementing a counter that is defined in the storage definition of the class. The default counter location is the same as the DATALOCATION default but with a "C" suffix instead of a "D". Individual counters are located in the COUNTERLOCATION subscripted by the property name.'}),"\n",(0,r.jsx)(t.p,{children:"The value of a counter property is assigned automatically only when a new object is inserted into the database, either using Objects or an SQL INSERT statement. No value is assigned if a value is specified. If a value is specified and that value is greater than the current counter value then the value of the counter is set to the property's value."})]})}function u(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>o});var r=n(96540);const s={},a=r.createContext(s);function i(e){const t=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),r.createElement(a.Provider,{value:t},e.children)}}}]);