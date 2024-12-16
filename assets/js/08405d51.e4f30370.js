"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[19390],{25492:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>l,default:()=>o,frontMatter:()=>a,toc:()=>i});var t=r(74848),n=r(28453);const a={pagination_prev:null,pagination_next:null},l="%WebStress.Tests",i=[{value:"Properties",id:"properties",level:2},{value:"Name",id:"name",level:3},{value:"DelayType",id:"delaytype",level:3},{value:"Parameters",id:"parameters",level:3},{value:"RandomDelayMin",id:"randomdelaymin",level:3},{value:"RandomDelayMax",id:"randomdelaymax",level:3},{value:"StartDate",id:"startdate",level:3},{value:"StopDate",id:"stopdate",level:3},{value:"StartTime",id:"starttime",level:3},{value:"StopTime",id:"stoptime",level:3},{value:"RunMinutes",id:"runminutes",level:3},{value:"WarmUpMinutes",id:"warmupminutes",level:3},{value:"CoolDownMinutes",id:"cooldownminutes",level:3},{value:"ProxyAddress",id:"proxyaddress",level:3},{value:"ProxyPort",id:"proxyport",level:3},{value:"SetAppEncrypt",id:"setappencrypt",level:3},{value:"SendData",id:"senddata",level:3},{value:"TransferResults",id:"transferresults",level:3},{value:"CollectAppServerStats",id:"collectappserverstats",level:3},{value:"CollectAppServerPeriod",id:"collectappserverperiod",level:3},{value:"SavePageSource",id:"savepagesource",level:3},{value:"SavePageSourceDir",id:"savepagesourcedir",level:3},{value:"SSLConfig",id:"sslconfig",level:3},{value:"Timeout",id:"timeout",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAddToSaveSet",id:"onaddtosaveset",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"webstresstests",children:"%WebStress.Tests"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %WebStress.Tests Extends (%Persistent, %XML.Adaptor, %ZEN.DataModel.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]\n"})}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"name",children:"Name"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Name As %String(TRUNCATE = 1);\n"})}),"\n",(0,t.jsx)(s.p,{children:"A unique name that identifies this test"}),"\n",(0,t.jsx)(s.h3,{id:"delaytype",children:"DelayType"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property DelayType As %String(DISPLAYLIST = ",No Delay,Random,User Recorded");\n'})}),"\n",(0,t.jsx)(s.h3,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Relationship Parameters As %WebStress.Tests.Parameters [ Cardinality = children, Inverse = Test ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"A list of the scripts that will be used in this test along with the associated generators, webservers etc"}),"\n",(0,t.jsx)(s.h3,{id:"randomdelaymin",children:"RandomDelayMin"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property RandomDelayMin As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The lower limit in seconds for a random delay period"}),"\n",(0,t.jsx)(s.h3,{id:"randomdelaymax",children:"RandomDelayMax"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property RandomDelayMax As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The upper limit in seconds for a random delay period"}),"\n",(0,t.jsx)(s.h3,{id:"startdate",children:"StartDate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property StartDate As %Date(FORMAT = 3);\n"})}),"\n",(0,t.jsx)(s.p,{children:"The date when the test should start. Used for non-interactive starts. (YYYY-MM-DD)"}),"\n",(0,t.jsx)(s.h3,{id:"stopdate",children:"StopDate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property StopDate As %Date(FORMAT = 3);\n"})}),"\n",(0,t.jsx)(s.p,{children:"The date when the test should stop. Used for non-interactive starts (YYYY-MM-DD)"}),"\n",(0,t.jsx)(s.h3,{id:"starttime",children:"StartTime"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property StartTime As %Time(FORMAT = 2);\n"})}),"\n",(0,t.jsx)(s.p,{children:"The time when the test should start. Used for non-interactive starts (HH:MM)"}),"\n",(0,t.jsx)(s.h3,{id:"stoptime",children:"StopTime"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property StopTime As %Time(FORMAT = 2);\n"})}),"\n",(0,t.jsx)(s.p,{children:"The time when the test should stop. Used for non-interactive starts (HH:MM)"}),"\n",(0,t.jsx)(s.h3,{id:"runminutes",children:"RunMinutes"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property RunMinutes As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The number of minutes that the test should run for (in record mode, not warm up or cool down)."}),"\n",(0,t.jsx)(s.h3,{id:"warmupminutes",children:"WarmUpMinutes"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property WarmUpMinutes As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The number of minutes that the test should run for before result recording starts"}),"\n",(0,t.jsx)(s.h3,{id:"cooldownminutes",children:"CoolDownMinutes"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property CoolDownMinutes As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The number of minutes that the test should run for after result recording stops"}),"\n",(0,t.jsx)(s.h3,{id:"proxyaddress",children:"ProxyAddress"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ProxyAddress As %String(TRUNCATE = 1);\n"})}),"\n",(0,t.jsx)(s.p,{children:"The address of the proxy server that should be used"}),"\n",(0,t.jsx)(s.h3,{id:"proxyport",children:"ProxyPort"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ProxyPort As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The port on the proxy server that should be used"}),"\n",(0,t.jsx)(s.h3,{id:"setappencrypt",children:"SetAppEncrypt"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SetAppEncrypt As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Indicates whether the encryption flag should be changed on the application servers"}),"\n",(0,t.jsx)(s.h3,{id:"senddata",children:"SendData"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SendData As %Boolean;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Indicates whether the data and code should be sent to the remote generators"}),"\n",(0,t.jsx)(s.h3,{id:"transferresults",children:"TransferResults"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property TransferResults As %Boolean;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Indicates whether the results should be transferred back from the other generators at the end of the run"}),"\n",(0,t.jsx)(s.h3,{id:"collectappserverstats",children:"CollectAppServerStats"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property CollectAppServerStats As %Boolean;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Indicates whether the application server statistics should be collected during the playback The stats include license usage as well as global/routine references/seizes etc"}),"\n",(0,t.jsx)(s.h3,{id:"collectappserverperiod",children:"CollectAppServerPeriod"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property CollectAppServerPeriod As %Integer [ InitialExpression = 5 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"The period in seconds at which to collect the statistics from the application servers"}),"\n",(0,t.jsx)(s.h3,{id:"savepagesource",children:"SavePageSource"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SavePageSource As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"savepagesourcedir",children:"SavePageSourceDir"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SavePageSourceDir As %String(MAXLEN = 255);\n"})}),"\n",(0,t.jsx)(s.h3,{id:"sslconfig",children:"SSLConfig"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SSLConfig As %String(MAXLEN = 255);\n"})}),"\n",(0,t.jsx)(s.h3,{id:"timeout",children:"Timeout"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Timeout As %String [ InitialExpression = 30 ];\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"onaddtosaveset",children:"%OnAddToSaveSet"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Private, ServerOnly = 1 ]\n"})})]})}function o(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>l,x:()=>i});var t=r(96540);const n={},a=t.createContext(n);function l(e){const s=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:l(e.components),t.createElement(a.Provider,{value:s},e.children)}}}]);