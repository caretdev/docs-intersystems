"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[22385],{56506:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>l,default:()=>c,frontMatter:()=>a,toc:()=>i});var r=t(74848),n=t(28453);const a={pagination_prev:null,pagination_next:null},l="%Monitor.System.HistorySys",i=[{value:"Properties",id:"properties",level:2},{value:"Day",id:"day",level:3},{value:"Last",id:"last",level:3},{value:"User",id:"user",level:3},{value:"CtrList",id:"ctrlist",level:3},{value:"Length",id:"length",level:3},{value:"Status",id:"status",level:3},{value:"Errors",id:"errors",level:3},{value:"Methods",id:"methods",level:2},{value:"Startup",id:"startup",level:3},{value:"GetSample",id:"getsample",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"monitorsystemhistorysys",children:"%Monitor.System.HistorySys"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Monitor.System.HistorySys Extends %Monitor.System.Adaptor [ System = 4 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"%Monitor class to collect and manage part of the Monitor History Database. This class collects the SYS.History.SysData samples for the System Usage Metrics, as defined in the Usage and Database classes, at somewhat longer intervals than the History class (default of 5 minutes)."}),"\n",(0,r.jsx)(s.p,{children:"By default the SysData collection is kept for 7 days and then purged. The number of days to keep may be modified using SYS.History.PerfData:SetPurge() The SysData samples can be automatically rolled up at the end of each day into Hourly (SYS.History.Hourly) or Daily (SYS.History Daily) summaries, which can be kept for longer periods."}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"day",children:"Day"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Day As %Integer [ Internal ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Keep track of last date to see of it's time to purge/summarize"}),"\n",(0,r.jsx)(s.h3,{id:"last",children:"Last"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Last As SYS.History.SysData [ Internal ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Keep a copy of the last PerfData sample for calculating deltas"}),"\n",(0,r.jsx)(s.h3,{id:"user",children:"User"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property User As %RegisteredObject [ Internal ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Keep a copy of the last UserSys sample for calculating deltas"}),"\n",(0,r.jsx)(s.h3,{id:"ctrlist",children:"CtrList"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property CtrList As array Of %List [ Internal ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Keep a list of properties for 'counter' type user classes"}),"\n",(0,r.jsx)(s.h3,{id:"length",children:"Length"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Length As %Monitor.Integer;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Length of last sample"}),"\n",(0,r.jsx)(s.h3,{id:"status",children:"Status"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Status As %Monitor.String;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Status of last sample"}),"\n",(0,r.jsx)(s.h3,{id:"errors",children:"Errors"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Errors As %Integer [ Internal ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Keep count of consecutive errors"}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"startup",children:"Startup"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method Startup() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Initialize property values"}),"\n",(0,r.jsx)(s.h3,{id:"getsample",children:"GetSample"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetSample() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Get the basic SYS.History.SysData sample for the Monitor History Database. This method also handles purging and accumulation of the Detail metrics into the long term database (SYS.History.Hourly and SYS.History.Daily)."})]})}function c(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>l,x:()=>i});var r=t(96540);const n={},a=r.createContext(n);function l(e){const s=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:l(e.components),r.createElement(a.Provider,{value:s},e.children)}}}]);