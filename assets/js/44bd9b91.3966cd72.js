"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[71862],{19510:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>a,default:()=>d,frontMatter:()=>r,toc:()=>c});var t=n(74848),i=n(28453);const r={pagination_prev:null,pagination_next:null},a="%Monitor.System.Diskspace",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"INDEX",id:"index",level:3},{value:"Properties",id:"properties",level:2},{value:"Directory",id:"directory",level:3},{value:"Database",id:"database",level:3},{value:"Diskspace",id:"diskspace",level:3},{value:"Diskstatus",id:"diskstatus",level:3},{value:"sfn",id:"sfn",level:3},{value:"Methods",id:"methods",level:2},{value:"Initialize",id:"initialize",level:3},{value:"GetSample",id:"getsample",level:3}];function l(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"monitorsystemdiskspace",children:"%Monitor.System.Diskspace"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Monitor.System.Diskspace Extends %Monitor.System.Adaptor [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"application",children:"APPLICATION"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter APPLICATION [ Internal ] = "CACHE";\n'})}),"\n",(0,t.jsx)(s.h3,{id:"index",children:"INDEX"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter INDEX [ Internal ] = "Directory";\n'})}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"directory",children:"Directory"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Directory As %Monitor.String(MAXLEN = 255);\n"})}),"\n",(0,t.jsx)(s.p,{children:"Name of directory"}),"\n",(0,t.jsx)(s.h3,{id:"database",children:"Database"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Database As %Monitor.String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Name of database"}),"\n",(0,t.jsx)(s.h3,{id:"diskspace",children:"Diskspace"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Diskspace As %Monitor.Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Disk space available (MB)"}),"\n",(0,t.jsx)(s.h3,{id:"diskstatus",children:"Diskstatus"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Diskstatus As %Monitor.Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Disk status"}),"\n",(0,t.jsx)(s.h3,{id:"sfn",children:"sfn"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property sfn As %Integer [ Internal ];\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"initialize",children:"Initialize"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method Initialize() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Initialize routine metrics."}),"\n",(0,t.jsx)(s.h3,{id:"getsample",children:"GetSample"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetSample() As %Status\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Get routine metric sample.",(0,t.jsx)(s.br,{}),"\nA return code of $$$OK indicates there is a new sample instance.",(0,t.jsx)(s.br,{}),"\nA return code of 0 indicates there is no sample instance."]})]})}function d(e={}){const{wrapper:s}={...(0,i.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(l,{...e})}):l(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>a,x:()=>c});var t=n(96540);const i={},r=t.createContext(i);function a(e){const s=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),t.createElement(r.Provider,{value:s},e.children)}}}]);