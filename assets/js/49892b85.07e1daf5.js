"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[59486],{63583:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>a,default:()=>c,frontMatter:()=>r,toc:()=>i});var t=n(74848),l=n(28453);const r={pagination_prev:null,pagination_next:null},a="%SOAP.ClientTest",i=[{value:"Methods",id:"methods",level:2},{value:"OnPreHTTP",id:"onprehttp",level:3},{value:"OnPage",id:"onpage",level:3},{value:"InvokeMethod",id:"invokemethod",level:3},{value:"BuildInputArgs",id:"buildinputargs",level:3},{value:"GetArgValue",id:"getargvalue",level:3},{value:"ShowMethods",id:"showmethods",level:3},{value:"ShowMethodDetails",id:"showmethoddetails",level:3},{value:"ShowArgument",id:"showargument",level:3},{value:"ShowClasses",id:"showclasses",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"soapclienttest",children:"%SOAP.ClientTest"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SOAP.ClientTest Extends %CSP.StudioTemplateSuper [ System = 3 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"HTTP page that tests a SOAP client class."}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"onprehttp",children:"OnPreHTTP"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPreHTTP() As %Boolean\n"})}),"\n",(0,t.jsx)(s.h3,{id:"onpage",children:"OnPage"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPage() As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"invokemethod",children:"InvokeMethod"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod InvokeMethod(pCls As %String, pMethod As %String) As %Status [ PublicList = (tExec, tArgs, tResp) ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Invoke a SOAP client method"}),"\n",(0,t.jsx)(s.h3,{id:"buildinputargs",children:"BuildInputArgs"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod BuildInputArgs(pCls As %String, pMethod As %String, ByRef pArgs, ByRef pHasReturn)\n"})}),"\n",(0,t.jsx)(s.p,{children:"Get list of input arguments for the given method"}),"\n",(0,t.jsx)(s.h3,{id:"getargvalue",children:"GetArgValue"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetArgValue(Output pValue As %String, pName As %String, pType As %String, pOwner As %String = "") As %String\n'})}),"\n",(0,t.jsx)(s.p,{children:"find the value for this argument (from the %request parms)"}),"\n",(0,t.jsx)(s.h3,{id:"showmethods",children:"ShowMethods"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ShowMethods(pCls As %String, pType As %String)\n"})}),"\n",(0,t.jsx)(s.p,{children:"Display the WebMethods of a SOAP client class"}),"\n",(0,t.jsx)(s.h3,{id:"showmethoddetails",children:"ShowMethodDetails"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ShowMethodDetails(pCls As %String, pMethod As %String)\n"})}),"\n",(0,t.jsx)(s.p,{children:"Display the details page for a specific Web Method"}),"\n",(0,t.jsx)(s.h3,{id:"showargument",children:"ShowArgument"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ShowArgument(pName As %String, pType As %String, pValue As %String, pOwner As %String = "")\n'})}),"\n",(0,t.jsx)(s.h3,{id:"showclasses",children:"ShowClasses"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ShowClasses()\n"})}),"\n",(0,t.jsx)(s.p,{children:"Display the list of SOAP client classes"})]})}function c(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>a,x:()=>i});var t=n(96540);const l={},r=t.createContext(l);function a(e){const s=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:a(e.components),t.createElement(r.Provider,{value:s},e.children)}}}]);