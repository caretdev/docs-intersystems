"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[16793],{77342:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>a,default:()=>l,frontMatter:()=>i,toc:()=>o});var s=t(74848),r=t(28453);const i={pagination_prev:null,pagination_next:null},a="%DeepSee.Time.HijriObserved.MinuteNumber",o=[{value:"Parameters",id:"parameters",level:2},{value:"CALENDAR",id:"calendar",level:3},{value:"Methods",id:"methods",level:2},{value:"%Convert",id:"convert",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"deepseetimehijriobservedminutenumber",children:"%DeepSee.Time.HijriObserved.MinuteNumber"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.Time.HijriObserved.MinuteNumber Extends %DeepSee.Time.MinuteNumber\n"})}),"\n",(0,s.jsx)(n.p,{children:"This class exposes the functionality of a Minute number level within a time dimension using the hijri (observed) calendar. This is the minute of the date independent of the actual day. Keys are 0 through 1339; displayed values are 00:00 through 23:59"}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"calendar",children:"CALENDAR"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CALENDAR = "hijriObserved";\n'})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"convert",children:"%Convert"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod %Convert(pTime As %DeepSee.Datatype.dateTime, pTimeOffset As %String = "") As %Integer [ CodeMode = expression ]\n'})}),"\n",(0,s.jsxs)(n.p,{children:["Convert a $H value to the logical value used for this level. This is used within the computed field logic for properties within a fact table based on this level.",(0,s.jsx)(n.br,{}),"\n. In this case, we convert $H to a minute:"]})]})}function l(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>a,x:()=>o});var s=t(96540);const r={},i=s.createContext(r);function a(e){const n=s.useContext(i);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),s.createElement(i.Provider,{value:n},e.children)}}}]);