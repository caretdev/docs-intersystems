"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[13590],{59934:(e,t,r)=>{r.r(t),r.d(t,{contentTitle:()=>c,default:()=>o,frontMatter:()=>a,toc:()=>l});var n=r(74848),s=r(28453);const a={pagination_prev:null,pagination_next:null},c="%Net.Remote.ActivityLog",l=[{value:"Properties",id:"properties",level:2},{value:"DateTime",id:"datetime",level:3},{value:"RecordType",id:"recordtype",level:3},{value:"GatewayName",id:"gatewayname",level:3},{value:"GatewayType",id:"gatewaytype",level:3},{value:"Server",id:"server",level:3},{value:"Port",id:"port",level:3},{value:"Text",id:"text",level:3},{value:"Job",id:"job",level:3},{value:"Methods",id:"methods",level:2},{value:"Purge",id:"purge",level:3}];function i(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"netremoteactivitylog",children:"%Net.Remote.ActivityLog"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Net.Remote.ActivityLog Extends %Persistent [ System = 3 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Recent activity log for Object Gateway Servers."}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"datetime",children:"DateTime"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property DateTime As %TimeStamp;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"recordtype",children:"RecordType"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property RecordType As %String(DISPLAYLIST = ",Debug,Info,Warning,Error", VALUELIST = ",0,1,2,3");\n'})}),"\n",(0,n.jsx)(t.h3,{id:"gatewayname",children:"GatewayName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property GatewayName As %String;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"gatewaytype",children:"GatewayType"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property GatewayType As %String;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"server",children:"Server"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property Server As %String;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"port",children:"Port"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property Port As %String;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"text",children:"Text"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property Text As %String(MAXLEN = "");\n'})}),"\n",(0,n.jsx)(t.h3,{id:"job",children:"Job"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property Job As %String;\n"})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"purge",children:"Purge"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Purge(pDays As %Integer = 7, Output pDeleted As %Integer) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Lookup by Gateway Name. Lookup by Gateway Name and DateTime range. Lookup all Gateways by DateTime range. Purge Gateway activity log records older than a given number of days (default 7 days)."})]})}function o(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(i,{...e})}):i(e)}},28453:(e,t,r)=>{r.d(t,{R:()=>c,x:()=>l});var n=r(96540);const s={},a=n.createContext(s);function c(e){const t=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:c(e.components),n.createElement(a.Provider,{value:t},e.children)}}}]);