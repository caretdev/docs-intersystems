"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[99425],{82680:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>l,toc:()=>o});var t=n(74848),a=n(28453);const l={pagination_prev:null,pagination_next:null},i="SYS.Monitor.DashboardInstaller",o=[{value:"Methods",id:"methods",level:2},{value:"Install",id:"install",level:3},{value:"MoveKitFiles",id:"movekitfiles",level:3},{value:"CreateWebApplications",id:"createwebapplications",level:3},{value:"SetLibDBReadOnly",id:"setlibdbreadonly",level:3},{value:"AddDashboardSensors",id:"adddashboardsensors",level:3},{value:"RemoveWebApplication",id:"removewebapplication",level:3}];function r(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"sysmonitordashboardinstaller",children:"SYS.Monitor.DashboardInstaller"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class SYS.Monitor.DashboardInstaller Extends %RegisteredObject\n"})}),"\n",(0,t.jsx)(s.p,{children:"This class handles installation of the System Monitor Dashboard."}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"install",children:"Install"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Install(kitPath As %String, dev As %Integer = 0, update As %Boolean = 0) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method is invoked to install the Dashboard kit in a InterSystems IRIS instance. 'kitpath' is the directory of the unzipped Dashboard kit. 'dev' indicates whether the CSP app should cache files. 'update' will force the update of back end with DashboardSupport.xml even if DashboardSensors exists"}),"\n",(0,t.jsx)(s.h3,{id:"movekitfiles",children:"MoveKitFiles"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MoveKitFiles(kitPath As %String, DBSensors As %Boolean) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"createwebapplications",children:"CreateWebApplications"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateWebApplications(dev As %Boolean) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"setlibdbreadonly",children:"SetLibDBReadOnly"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetLibDBReadOnly(readOnly As %Integer, ByRef prevState = 1) As %Boolean\n"})}),"\n",(0,t.jsx)(s.h3,{id:"adddashboardsensors",children:"AddDashboardSensors"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AddDashboardSensors() As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"removewebapplication",children:"RemoveWebApplication"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RemoveWebApplication() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Remove CSP Application and REST API"})]})}function d(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(r,{...e})}):r(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>o});var t=n(96540);const a={},l=t.createContext(a);function i(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function o(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);