"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[79950],{57885:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>i,default:()=>c,frontMatter:()=>r,toc:()=>o});var t=s(74848),a=s(28453);const r={pagination_prev:null,pagination_next:null},i="%SYS.Task.CheckLogging",o=[{value:"Parameters",id:"parameters",level:2},{value:"TaskName",id:"taskname",level:3},{value:"Properties",id:"properties",level:2},{value:"DaysForAlert",id:"daysforalert",level:3},{value:"DaysForShutoff",id:"daysforshutoff",level:3},{value:"Methods",id:"methods",level:2},{value:"OnTask",id:"ontask",level:3}];function l(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"systaskchecklogging",children:"%SYS.Task.CheckLogging"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SYS.Task.CheckLogging Extends %SYS.Task.Definition [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:'This Task will check that no logging mechanisms (either ^%ISCLOG or ISCSOAP) have been left on unintentionally. You may specify how many consecutive days of activity will create an alert, and how many will result in automatically shutting off the logging. Entering "0" for either DaysForAlert or DaysForShutoff will disable that action.'}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"taskname",children:"TaskName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter TaskName = "CheckLogging";\n'})}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"daysforalert",children:"DaysForAlert"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property DaysForAlert As %Integer [ InitialExpression = 2 ];\n"})}),"\n",(0,t.jsx)(n.p,{children:'The number of consecutive days of active logging which will create an alert. A value of "0" will disable the check.'}),"\n",(0,t.jsx)(n.h3,{id:"daysforshutoff",children:"DaysForShutoff"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property DaysForShutoff As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(n.p,{children:'The number of consecutive days of active logging which will cause the logging to be shut off. A value of "0" will disable the check.'}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"ontask",children:"OnTask"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnTask() As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Check activity for ^%ISCLOG and ISCSOAP"})]})}function c(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(l,{...e})}):l(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>i,x:()=>o});var t=s(96540);const a={},r=t.createContext(a);function i(e){const n=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),t.createElement(r.Provider,{value:n},e.children)}}}]);