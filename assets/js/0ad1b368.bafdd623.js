"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[27600],{95346:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>i,default:()=>o,frontMatter:()=>l,toc:()=>r});var n=a(74848),t=a(28453);const l={pagination_prev:null,pagination_next:null},i="SYS.Monitor.SAM.Config",r=[{value:"Parameters",id:"parameters",level:2},{value:"METRICGROUPS",id:"metricgroups",level:3},{value:"Properties",id:"properties",level:2},{value:"Key",id:"key",level:3},{value:"ExcludeMetrics",id:"excludemetrics",level:3},{value:"ApplicationClasses",id:"applicationclasses",level:3},{value:"Methods",id:"methods",level:2},{value:"AddApplicationClass",id:"addapplicationclass",level:3},{value:"DeleteApplicationClass",id:"deleteapplicationclass",level:3},{value:"Open",id:"open",level:3},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"ExportAPI",id:"exportapi",level:3},{value:"CreateWebApp",id:"createwebapp",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"sysmonitorsamconfig",children:"SYS.Monitor.SAM.Config"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class SYS.Monitor.SAM.Config Extends %Persistent\n"})}),"\n",(0,n.jsx)(s.p,{children:"Configuration parameters for SAM (System Alerting and Monitoring)."}),"\n",(0,n.jsx)(s.p,{children:"This controls behavior of the SYS.Monitor.SAM.Sensors collector class."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"metricgroups",children:"METRICGROUPS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter METRICGROUPS = "Performance,Mirrors,Database,CPU,CSPGateway,Journal,License,Memory,Process,Shadows,Transactions,SharedMemory,WriteDemon,Diagnostic";\n'})}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"key",children:"Key"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property Key As %String [ InitialExpression = "SAM" ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"excludemetrics",children:"ExcludeMetrics"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property ExcludeMetrics As %List;\n"})}),"\n",(0,n.jsx)(s.p,{children:"A list of Sensor Groups to omit from each collection."}),"\n",(0,n.jsx)(s.p,{children:"Valid values are Performance, Mirrors, Database, CPU, CSPGateway, Journal, License, Memory, Process, Shadows, Transactions, SharedMemory, WriteDemon and Diagnostic"}),"\n",(0,n.jsx)(s.p,{children:'To update: set sam=##class(SYS.Monitor.SAM.Config).Open(),sam.ExcludeMetrics=$lb("Shadows","Transactions") do sam.%Save()'}),"\n",(0,n.jsx)(s.h3,{id:"applicationclasses",children:"ApplicationClasses"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property ApplicationClasses As array Of %String [ Internal ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"An array of Application Classes/Namespaces to include with each collection. Each class must inherit from %SYS.Monitor.SAM.Abstract and implement the GetSensors() method. Classname is used as the key, and the value may be a single Namespace or a comma-delimited list."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"addapplicationclass",children:"AddApplicationClass"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AddApplicationClass(ClassName As %String, Namespace As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Add an Application class name to be called during each SAM collection. The class must inherit from %SYS.Monitor.SAM.Abstract and implement the GetSensors() method."}),"\n",(0,n.jsx)(s.p,{children:"Note that the 'Namespace' argument is typically a single Namespace, but may be a comma-delimited list. Calling this method for an existing ApplicationClass will replace the Namespace(s) for this Class. For multiple Namespaces, the ApplicationClass must differentiate Sensor names for each Namespace."}),"\n",(0,n.jsx)(s.h3,{id:"deleteapplicationclass",children:"DeleteApplicationClass"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteApplicationClass(ClassName As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Remove an Application class name from the list to be called during each SAM collection."}),"\n",(0,n.jsx)(s.h3,{id:"open",children:"Open"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Open() As SYS.Monitor.SAM.Config [ Internal ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnValidateObject() As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"exportapi",children:"ExportAPI"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ExportAPI(errors As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:'Export all source code to enable Prometheus API on older versions Creates SAM.XML in current directory. Returns status a list of \'errors\'. Use Do $System.OBJ.Load("SAM.xml","ck") to import.'}),"\n",(0,n.jsx)(s.h3,{id:"createwebapp",children:"CreateWebApp"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateWebApp() As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Create /api/monitor REST API"})]})}function o(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>i,x:()=>r});var n=a(96540);const t={},l=n.createContext(t);function i(e){const s=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:i(e.components),n.createElement(l.Provider,{value:s},e.children)}}}]);