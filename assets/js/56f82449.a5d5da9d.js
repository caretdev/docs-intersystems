"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[2603],{59371:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>o,frontMatter:()=>l,toc:()=>c});var r=n(74848),t=n(28453);const l={pagination_prev:null,pagination_next:null},i="%Monitor.System.Servers",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"INDEX",id:"index",level:3},{value:"Properties",id:"properties",level:2},{value:"Data",id:"data",level:3},{value:"Count",id:"count",level:3},{value:"ServerName",id:"servername",level:3},{value:"Buffers",id:"buffers",level:3},{value:"GloKills",id:"glokills",level:3},{value:"GloRefs",id:"glorefs",level:3},{value:"GloSets",id:"glosets",level:3},{value:"IJCw0",id:"ijcw0",level:3},{value:"IJCw1",id:"ijcw1",level:3},{value:"Locks",id:"locks",level:3},{value:"Requests",id:"requests",level:3},{value:"Methods",id:"methods",level:2},{value:"Startup",id:"startup",level:3},{value:"Initialize",id:"initialize",level:3},{value:"GetSample",id:"getsample",level:3}];function a(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"monitorsystemservers",children:"%Monitor.System.Servers"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Monitor.System.Servers Extends (%Monitor.System.Adaptor, %Monitor.System.Abstract) [ Inheritance = right, System = 4 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Monitor system metrics by ECP server."}),"\n",(0,r.jsx)(s.p,{children:"This class, and others that inherit from %Monitor.System.Abstract, provides an object API to the same system metrics as the ^PERFMON utility. Instantiating this class also starts the collection of ^PERFMON system metrics, which can have a significant impact on a busy system. Note that stopping ^PERFMON will also disable the sampling here."}),"\n",(0,r.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(s.h3,{id:"application",children:"APPLICATION"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter APPLICATION [ Internal ] = "CACHE";\n'})}),"\n",(0,r.jsx)(s.h3,{id:"index",children:"INDEX"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter INDEX [ Internal ] = "ServerName";\n'})}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"data",children:"Data"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Data As %String [ Internal, MultiDimensional ];\n"})}),"\n",(0,r.jsx)(s.h3,{id:"count",children:"Count"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Count As %Integer [ Internal ];\n"})}),"\n",(0,r.jsx)(s.h3,{id:"servername",children:"ServerName"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ServerName As %Monitor.String;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Server name"}),"\n",(0,r.jsx)(s.h3,{id:"buffers",children:"Buffers"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Buffers As %Monitor.Integer;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Buffers"}),"\n",(0,r.jsx)(s.h3,{id:"glokills",children:"GloKills"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property GloKills As %Monitor.Integer;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Global kills received"}),"\n",(0,r.jsx)(s.h3,{id:"glorefs",children:"GloRefs"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property GloRefs As %Monitor.Integer;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Global references received"}),"\n",(0,r.jsx)(s.h3,{id:"glosets",children:"GloSets"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property GloSets As %Monitor.Integer;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Global sets received"}),"\n",(0,r.jsx)(s.h3,{id:"ijcw0",children:"IJCw0"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property IJCw0 As %Monitor.Integer(CAPTION = "IJC messages received/written");\n'})}),"\n",(0,r.jsx)(s.p,{children:"Incoming net IJC messages received and written to the IJC device"}),"\n",(0,r.jsx)(s.h3,{id:"ijcw1",children:"IJCw1"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property IJCw1 As %Monitor.Integer(CAPTION = "IJC messages received/not written");\n'})}),"\n",(0,r.jsx)(s.p,{children:"Incoming net IJC messages received and NOT written to the IJC device"}),"\n",(0,r.jsx)(s.h3,{id:"locks",children:"Locks"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Locks As %Monitor.Integer;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Lock commands received"}),"\n",(0,r.jsx)(s.h3,{id:"requests",children:"Requests"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Requests As %Monitor.Integer;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Requests received"}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"startup",children:"Startup"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method Startup() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"On Startup enable PERFMON"}),"\n",(0,r.jsx)(s.h3,{id:"initialize",children:"Initialize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method Initialize() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Initialize server metrics"}),"\n",(0,r.jsx)(s.h3,{id:"getsample",children:"GetSample"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetSample() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Get server metric sample A return code of $$$OK indicates there is a new sample instance. A return code of 0 indicates there is no sample instance."})]})}function o(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(a,{...e})}):a(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>c});var r=n(96540);const t={},l=r.createContext(t);function i(e){const s=r.useContext(l);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:i(e.components),r.createElement(l.Provider,{value:s},e.children)}}}]);