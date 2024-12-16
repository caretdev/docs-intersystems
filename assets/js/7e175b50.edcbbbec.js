"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[68217],{96015:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>a,default:()=>c,frontMatter:()=>o,toc:()=>l});var t=r(74848),n=r(28453);const o={pagination_prev:null,pagination_next:null},a="SYS.Monitor.DashboardExporter",l=[{value:"Methods",id:"methods",level:2},{value:"GenerateRelease",id:"generaterelease",level:3},{value:"ExportSrc",id:"exportsrc",level:3},{value:"ExportKit",id:"exportkit",level:3},{value:"ExportSupport",id:"exportsupport",level:3},{value:"ExportInstaller",id:"exportinstaller",level:3},{value:"GetLatest",id:"getlatest",level:3}];function i(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"sysmonitordashboardexporter",children:"SYS.Monitor.DashboardExporter"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class SYS.Monitor.DashboardExporter Extends %RegisteredObject\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"generaterelease",children:"GenerateRelease"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GenerateRelease(exportLocation As %String, exportName As %String = "unversioned-release", dashboardLocation As %String = "../CSP/sys/app", dashboardName As %String = "dashboard", ByRef errors As %String) As %Status\n'})}),"\n",(0,t.jsx)(s.h3,{id:"exportsrc",children:"ExportSrc"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ExportSrc(exportLocation As %String, exportName As %String = "uversioned-source-code", dashboardLocation As %String = "../CSP/sys", dashboardName As %String = "dashboard", ByRef errors As %String) As %Status\n'})}),"\n",(0,t.jsx)(s.h3,{id:"exportkit",children:"ExportKit"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ExportKit(exportLocation As %String, exportName As %String = "uversioned-quick-start-kit", dashboardLocation As %String = "../CSP/sys", dashboardName As %String = "dashboard", ByRef errors As %String) As %Status\n'})}),"\n",(0,t.jsx)(s.h3,{id:"exportsupport",children:"ExportSupport"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ExportSupport(exportLocation As %String = "", exportName As %String = "DashboardSupport.xml", ByRef errors As %String) As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Export all necessary support classes, routine and CSP pages for Dashboard add-on installation"}),"\n",(0,t.jsx)(s.h3,{id:"exportinstaller",children:"ExportInstaller"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ExportInstaller(exportLocation As %String = "", exportName As %String = "DashboardInstaller.xml", ByRef errors As %String) As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Export the Dashboard Installer class"}),"\n",(0,t.jsx)(s.h3,{id:"getlatest",children:"GetLatest"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetLatest(ByRef list) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Checks the SourceRoot for newer versions of files"})]})}function c(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(i,{...e})}):i(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>a,x:()=>l});var t=r(96540);const n={},o=t.createContext(n);function a(e){const s=t.useContext(o);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:a(e.components),t.createElement(o.Provider,{value:s},e.children)}}}]);