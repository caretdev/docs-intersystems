"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[90554],{79114:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>a,default:()=>o,frontMatter:()=>r,toc:()=>c});var n=t(74848),i=t(28453);const r={pagination_prev:null,pagination_next:null},a="%Monitor.System.Processes",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"INDEX",id:"index",level:3},{value:"Properties",id:"properties",level:2},{value:"Data",id:"data",level:3},{value:"Count",id:"count",level:3},{value:"Pid",id:"pid",level:3},{value:"Methods",id:"methods",level:2},{value:"Startup",id:"startup",level:3},{value:"Initialize",id:"initialize",level:3},{value:"GetSample",id:"getsample",level:3}];function l(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"monitorsystemprocesses",children:"%Monitor.System.Processes"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Monitor.System.Processes Extends (%Monitor.System.Adaptor, %Monitor.System.Abstract, %Monitor.System.AbstractGlobals) [ Inheritance = right, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Monitor system metrics by process."}),"\n",(0,n.jsx)(s.p,{children:"This class, and others that inherit from %Monitor.System.Abstract, provides an object API to the same system metrics as the ^PERFMON utility. Instantiating this class also starts the collection of ^PERFMON system metrics, which can have a significant impact on a busy system. Note that stopping ^PERFMON will also disable the sampling here."}),"\n",(0,n.jsx)(s.p,{children:"Properties are inherited from AbstractGlobals."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"application",children:"APPLICATION"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter APPLICATION [ Internal ] = "CACHE";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"index",children:"INDEX"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter INDEX [ Internal ] = "Pid";\n'})}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"data",children:"Data"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property Data As %String [ Internal, MultiDimensional ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"count",children:"Count"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property Count As %Integer [ Internal ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"pid",children:"Pid"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property Pid As %Monitor.Integer;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Process id"}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"startup",children:"Startup"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method Startup() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"On Startup enable PERFMON"}),"\n",(0,n.jsx)(s.h3,{id:"initialize",children:"Initialize"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method Initialize() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Initialize process metrics"}),"\n",(0,n.jsx)(s.h3,{id:"getsample",children:"GetSample"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetSample() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get process metric sample A return code of $$$OK indicates there is a new sample instance. A return code of 0 indicates there is no sample instance."})]})}function o(e={}){const{wrapper:s}={...(0,i.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>a,x:()=>c});var n=t(96540);const i={},r=n.createContext(i);function a(e){const s=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),n.createElement(r.Provider,{value:s},e.children)}}}]);