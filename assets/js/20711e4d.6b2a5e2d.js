"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[25635],{25841:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>a,default:()=>o,frontMatter:()=>i,toc:()=>c});var n=t(74848),r=t(28453);const i={pagination_prev:null,pagination_next:null},a="%Studio.SourceControl.ItemSetWS",c=[{value:"Parameters",id:"parameters",level:2},{value:"SrcVer",id:"srcver",level:3},{value:"Version",id:"version",level:3},{value:"LOCATION",id:"location",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"OUTPUTTYPEATTRIBUTE",id:"outputtypeattribute",level:3},{value:"SERVICENAME",id:"servicename",level:3},{value:"USEPPGHANDLER",id:"useppghandler",level:3},{value:"Properties",id:"properties",level:2},{value:"APIKey",id:"apikey",level:3},{value:"APISecret",id:"apisecret",level:3},{value:"Methods",id:"methods",level:2},{value:"GetAPICredentials",id:"getapicredentials",level:3},{value:"SetAPICredentials",id:"setapicredentials",level:3},{value:"InvokeWebMethod",id:"invokewebmethod",level:3},{value:"CalcLocation",id:"calclocation",level:3},{value:"OnToolsCompile",id:"ontoolscompile",level:3},{value:"GetDate",id:"getdate",level:3},{value:"%OnSOAPRequest",id:"onsoaprequest",level:3}];function l(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"studiosourcecontrolitemsetws",children:"%Studio.SourceControl.ItemSetWS"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Studio.SourceControl.ItemSetWS Extends %SOAP.WebClient [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"srcver",children:"SrcVer"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SrcVer = "$Id: //iris/2024.3.0/databases/sys/cls/Studio/SourceControl/ItemSetWS.xml#1 $";\n'})}),"\n",(0,n.jsx)(s.p,{children:"This Parameter should be updated when synced from Perforce"}),"\n",(0,n.jsx)(s.h3,{id:"version",children:"Version"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter Version = 17;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Revision number of this class when compiled as part of the //custom_ccrs/_common/config/... branch. This version will not be updated (by design) when the class is integrated to other branches. This allows the user to tell what version of the Studio client tools are in use."}),"\n",(0,n.jsx)(s.h3,{id:"location",children:"LOCATION"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter LOCATION = "https://ccr.intersystems.com/ccr/CCR.ItemSet.WebService.cls";\n'})}),"\n",(0,n.jsx)(s.p,{children:"This is the URL used to access the web service."}),"\n",(0,n.jsx)(s.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/ccr/v1";\n'})}),"\n",(0,n.jsx)(s.p,{children:"This is the namespace used by the Service"}),"\n",(0,n.jsx)(s.h3,{id:"outputtypeattribute",children:"OUTPUTTYPEATTRIBUTE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter OUTPUTTYPEATTRIBUTE = 1;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Use xsi:type attribute for literal types."}),"\n",(0,n.jsx)(s.h3,{id:"servicename",children:"SERVICENAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SERVICENAME = "CCRItemSetWS";\n'})}),"\n",(0,n.jsx)(s.p,{children:"This is the name of the Service"}),"\n",(0,n.jsx)(s.h3,{id:"useppghandler",children:"USEPPGHANDLER"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter USEPPGHANDLER = 1;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Use PPG Memory as opposed to process memory for XML reader"}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"apikey",children:"APIKey"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property APIKey As %String(TRUNCATE = 1) [ Private ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"apisecret",children:"APISecret"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property APISecret As %String(TRUNCATE = 1) [ Private ];\n"})}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"getapicredentials",children:"GetAPICredentials"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetAPICredentials(ByRef pAPIKey As %String)\n"})}),"\n",(0,n.jsx)(s.h3,{id:"setapicredentials",children:"SetAPICredentials"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetAPICredentials(pUsername As %String, pAPIKey As %String, pSecret As %String)\n"})}),"\n",(0,n.jsx)(s.h3,{id:"invokewebmethod",children:"InvokeWebMethod"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method InvokeWebMethod(pAction As %String = "", pJob As %String = "", pEnv As %String = "", pToken As %String = "", ByRef pStr1 As %String = "", ByRef pStr2 As %String = "", ByRef pFile As %FileCharacterStream = "", ByRef pDataSet As %XML.DataSet = "") As %xsd.base64Binary [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]\n'})}),"\n",(0,n.jsx)(s.h3,{id:"calclocation",children:"CalcLocation"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method CalcLocation() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Handles fetching the override Location if it exists"}),"\n",(0,n.jsx)(s.h3,{id:"ontoolscompile",children:"OnToolsCompile"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnToolsCompile() [ CodeMode = objectgenerator, Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Handles all compile-time logic for this class [Previously private]"}),"\n",(0,n.jsx)(s.h3,{id:"getdate",children:"GetDate"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetDate() As %String [ Private ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"onsoaprequest",children:"%OnSOAPRequest"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnSOAPRequest(mode As %String, client As %SOAP.WebClient, action As %String, oneWay As %Boolean, method As %String, requestStream As %BinaryStream)\n"})}),"\n",(0,n.jsx)(s.p,{children:"This method is a callback which will be invoked before invoking transport.DoSOAPRequest() method to make the actual SOAP request. This method may be override by the user's web client class. DoSOAPRequest is the transport method which is responsible for sending the SOAP request and receiving the response. The default DoSOAPRequest is included in %SOAP.WebClient and uses HTTP for request/response."}),"\n",(0,n.jsxs)(s.p,{children:['The mode argument specifies the type of SOAP request "SOAP" or "binary".',(0,n.jsx)(s.br,{}),"\nThe client argument is the oref of the web client class.",(0,n.jsx)(s.br,{}),"\nThe action argument contains the value of the SOAPAction.",(0,n.jsx)(s.br,{}),"\nThe oneWay argument is true if no body is to be sent. The method argument is the name of the WebMethod that is being invoked",(0,n.jsx)(s.br,{}),"\nThe requestStream argument contains the SOAP request message in a stream. requestStream may =0 as an optimization to improve SOAP performance. requestStream=0 means that the stream is kept in memory as much as possible with overflow to a global. requestStream may be accessed by using $$$XMLRewind and $$$XMLRead macros."]})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>a,x:()=>c});var n=t(96540);const r={},i=n.createContext(r);function a(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);