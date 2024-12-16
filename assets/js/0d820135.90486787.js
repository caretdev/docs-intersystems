"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[31020],{68828:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>l,default:()=>d,frontMatter:()=>a,toc:()=>c});var n=s(74848),r=s(28453);const a={pagination_prev:null,pagination_next:null},l="%WebStress.Comms.Server",c=[{value:"Parameters",id:"parameters",level:2},{value:"SERVICENAME",id:"servicename",level:3},{value:"LOCATION",id:"location",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"Methods",id:"methods",level:2},{value:"OnPreHTTP",id:"onprehttp",level:3},{value:"StartProcs",id:"startprocs",level:3},{value:"StartMonitor",id:"startmonitor",level:3},{value:"DownloadData",id:"downloaddata",level:3},{value:"BuildCode",id:"buildcode",level:3},{value:"CheckDataValid",id:"checkdatavalid",level:3},{value:"CheckGeneratorRunStatus",id:"checkgeneratorrunstatus",level:3},{value:"CheckGeneratorIsRunning",id:"checkgeneratorisrunning",level:3},{value:"GetMaxRunNumber",id:"getmaxrunnumber",level:3},{value:"TestStart",id:"teststart",level:3},{value:"TestStop",id:"teststop",level:3},{value:"GetRunData",id:"getrundata",level:3},{value:"GetIterationData",id:"getiterationdata",level:3},{value:"StartDataTransfer",id:"startdatatransfer",level:3},{value:"ResetControlData",id:"resetcontroldata",level:3},{value:"AnyTestsRunning",id:"anytestsrunning",level:3},{value:"GetErrors",id:"geterrors",level:3},{value:"GetGenID",id:"getgenid",level:3},{value:"TestAuthenticate",id:"testauthenticate",level:3}];function i(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"webstresscommsserver",children:"%WebStress.Comms.Server"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %WebStress.Comms.Server Extends %SOAP.WebService [ System = 4 ]\n"})}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"servicename",children:"SERVICENAME"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter SERVICENAME = "%WebStress";\n'})}),"\n",(0,n.jsx)(t.p,{children:"Name of the WebService."}),"\n",(0,n.jsx)(t.h3,{id:"location",children:"LOCATION"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter LOCATION = "http://localhost/csp/webdeploy";\n'})}),"\n",(0,n.jsx)(t.p,{children:"TODO: change this to actual network address. URL for invoking the WebService."}),"\n",(0,n.jsx)(t.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://tempuri.org";\n'})}),"\n",(0,n.jsx)(t.p,{children:"TODO: change this to actual SOAP namespace. SOAP Namespace for the WebService"}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"onprehttp",children:"OnPreHTTP"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"startprocs",children:"StartProcs"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod StartProcs(testID As %String, runNumber As %Integer, param As %Integer, senderID As %String, senderTime As %Integer) As %WebStress.Control [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Prepares the processes ready for the test"}),"\n",(0,n.jsx)(t.h3,{id:"startmonitor",children:"StartMonitor"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod StartMonitor(runNumber As %Integer, testID As %String, senderID As %String, runDescription As %String) As %Status [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"downloaddata",children:"DownloadData"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DownloadData(stream As %GlobalBinaryStream, senderID As %String) As %String [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"buildcode",children:"BuildCode"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod BuildCode(stream As %GlobalBinaryStream, senderID As %String) As %String [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"checkdatavalid",children:"CheckDataValid"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CheckDataValid(request As %WebStress.Control.ValidData.Request) As %WebStress.Control.ValidData.Response.Generators [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"checkgeneratorrunstatus",children:"CheckGeneratorRunStatus"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CheckGeneratorRunStatus(testID As %String, senderID As %String) As %WebStress.Control.GeneratorStatus [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"checkgeneratorisrunning",children:"CheckGeneratorIsRunning"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CheckGeneratorIsRunning(testID As %String, senderID As %String) As %WebStress.Control.GeneratorStatus [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getmaxrunnumber",children:"GetMaxRunNumber"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetMaxRunNumber(testID As %String) As %Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"teststart",children:"TestStart"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod TestStart(testID As %String) As %Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"teststop",children:"TestStop"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod TestStop(testID As %String) As %Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getrundata",children:"GetRunData"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetRunData(testID As %String) As %String [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getiterationdata",children:"GetIterationData"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetIterationData(testID As %String, run As %Integer) As %String [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"startdatatransfer",children:"StartDataTransfer"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod StartDataTransfer(runID As %Integer, testID As %String, serverPort As %Integer, senderID As %String, generator As %String) As %String [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"resetcontroldata",children:"ResetControlData"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ResetControlData(testID As %String, senderID As %String) As %String [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"anytestsrunning",children:"AnyTestsRunning"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod AnyTestsRunning() As %Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"geterrors",children:"GetErrors"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetErrors(testID As %String, runID As %Integer, scriptID As %String) As %GlobalCharacterStream [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getgenid",children:"GetGenID"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetGenID() As %String [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"testauthenticate",children:"TestAuthenticate"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod TestAuthenticate() As %Status [ WebMethod ]\n"})})]})}function d(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(i,{...e})}):i(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>l,x:()=>c});var n=s(96540);const r={},a=n.createContext(r);function l(e){const t=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),n.createElement(a.Provider,{value:t},e.children)}}}]);