"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[59167],{29880:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>l,default:()=>c,frontMatter:()=>a,toc:()=>o});var s=n(74848),r=n(28453);const a={pagination_prev:null,pagination_next:null},l="%WebStress.Comms.Client",o=[{value:"Parameters",id:"parameters",level:2},{value:"LOCATION",id:"location",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"SERVICENAME",id:"servicename",level:3},{value:"Methods",id:"methods",level:2},{value:"DownloadData",id:"downloaddata",level:3},{value:"DownloadCode",id:"downloadcode",level:3},{value:"StartProcs",id:"startprocs",level:3},{value:"StartMonitor",id:"startmonitor",level:3},{value:"CheckDataValid",id:"checkdatavalid",level:3},{value:"CheckGeneratorRunStatus",id:"checkgeneratorrunstatus",level:3},{value:"CheckGeneratorIsRunning",id:"checkgeneratorisrunning",level:3},{value:"GetMaxRunNumber",id:"getmaxrunnumber",level:3},{value:"TestStart",id:"teststart",level:3},{value:"TestStop",id:"teststop",level:3},{value:"GetRunData",id:"getrundata",level:3},{value:"GetIterationData",id:"getiterationdata",level:3},{value:"StartDataTransfer",id:"startdatatransfer",level:3},{value:"ResetControlData",id:"resetcontroldata",level:3},{value:"AnyTestsRunning",id:"anytestsrunning",level:3},{value:"GetErrors",id:"geterrors",level:3},{value:"GetGenID",id:"getgenid",level:3},{value:"TestAuthenticate",id:"testauthenticate",level:3},{value:"%OnNew",id:"onnew",level:3}];function i(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"webstresscommsclient",children:"%WebStress.Comms.Client"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %WebStress.Comms.Client Extends %SOAP.WebClient [ Not ProcedureBlock, System = 4 ]\n"})}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"location",children:"LOCATION"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter LOCATION = "http://localhost/csp/webdeploy/%WebStress.Comms.Server.cls";\n'})}),"\n",(0,s.jsx)(t.p,{children:"This is the URL used to access the web service."}),"\n",(0,s.jsx)(t.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://tempuri.org";\n'})}),"\n",(0,s.jsx)(t.p,{children:"This is the namespace used by the Service"}),"\n",(0,s.jsx)(t.h3,{id:"servicename",children:"SERVICENAME"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter SERVICENAME = "%WebStress";\n'})}),"\n",(0,s.jsx)(t.p,{children:"This is the name of the Service"}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"downloaddata",children:"DownloadData"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method DownloadData(stream As %GlobalBinaryStream, senderID As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"downloadcode",children:"DownloadCode"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method DownloadCode(stream As %GlobalBinaryStream, senderID As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"startprocs",children:"StartProcs"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method StartProcs(testID As %String, runNumber As %Integer, param As %Integer, senderID As %String, senderTime As %Integer) As %WebStress.Control [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"startmonitor",children:"StartMonitor"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method StartMonitor(runNumber As %Integer, testID As %String, senderID As %String, runDescription As %String) As %Status [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"checkdatavalid",children:"CheckDataValid"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method CheckDataValid(request As %WebStress.Control.ValidData.Request) As %WebStress.Control.ValidData.Response.Generators [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"checkgeneratorrunstatus",children:"CheckGeneratorRunStatus"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method CheckGeneratorRunStatus(testID As %String, senderID As %String) As %WebStress.Control.GeneratorStatus [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"checkgeneratorisrunning",children:"CheckGeneratorIsRunning"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method CheckGeneratorIsRunning(testID As %String, senderID As %String) As %WebStress.Control.GeneratorStatus [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getmaxrunnumber",children:"GetMaxRunNumber"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetMaxRunNumber(testID As %String) As %Integer [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"teststart",children:"TestStart"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method TestStart(testID As %String) As %Integer [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"teststop",children:"TestStop"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method TestStop(testID As %String) As %Integer [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getrundata",children:"GetRunData"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetRunData(testID As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getiterationdata",children:"GetIterationData"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetIterationData(testID As %String, run As %Integer) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"startdatatransfer",children:"StartDataTransfer"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method StartDataTransfer(runID As %Integer, testID As %String, serverPort As %Integer, senderID As %String, generator As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"resetcontroldata",children:"ResetControlData"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method ResetControlData(testID As %String, senderID As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"anytestsrunning",children:"AnyTestsRunning"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method AnyTestsRunning() As %Integer [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"geterrors",children:"GetErrors"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetErrors(testID As %String, runID As %Integer, scriptID As %String) As %GlobalCharacterStream [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getgenid",children:"GetGenID"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetGenID() As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"testauthenticate",children:"TestAuthenticate"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method TestAuthenticate() As %Status [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnNew(generator As %String, location As %String) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %New method to provide notification that a new instance of an object is being created."}),"\n",(0,s.jsx)(t.p,{children:"If this method returns an error then the object will not be created."}),"\n",(0,s.jsx)(t.p,{children:"It is passed the arguments provided in the %New call. When customizing this method, override the arguments with whatever variables and types you expect to receive from %New(). For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:"}),"\n",(0,s.jsx)(t.p,{children:'Method %OnNew(dob as %Date = "", name as %Name = "") as %Status If instead of returning a %Status code this returns an oref and this oref is a subclass of the current class then this oref will be the one returned to the caller of %New method.'})]})}function c(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>l,x:()=>o});var s=n(96540);const r={},a=s.createContext(r);function l(e){const t=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),s.createElement(a.Provider,{value:t},e.children)}}}]);