"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[97439],{93816:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>a,default:()=>o,frontMatter:()=>l,toc:()=>i});var t=n(74848),r=n(28453);const l={pagination_prev:null,pagination_next:null},a="%Api.Atelier.v8",i=[{value:"XDatas",id:"xdatas",level:2},{value:"UrlMap",id:"urlmap",level:3},{value:"Methods",id:"methods",level:2},{value:"QueueAsync",id:"queueasync",level:3},{value:"PollAsync",id:"pollasync",level:3},{value:"CancelAsync",id:"cancelasync",level:3},{value:"ExecuteAsyncRequest",id:"executeasyncrequest",level:3},{value:"CleanUpAfterUnitTestRequest",id:"cleanupafterunittestrequest",level:3},{value:"UnitTestResultToJSON",id:"unittestresulttojson",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"apiatelierv8",children:"%Api.Atelier.v8"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Api.Atelier.v8 Extends %Api.Atelier.v7\n"})}),"\n",(0,t.jsx)(s.p,{children:"%Api.Atelier.v8 provides version 8 APIs for Atelier"}),"\n",(0,t.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(s.h3,{id:"urlmap",children:"UrlMap"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]\n'})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"queueasync",children:"QueueAsync"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod QueueAsync(pNameSpace As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["This call queues an item for work. On success it returns 202 and sets the 'Location' header",(0,t.jsx)(s.br,{}),"\nto indicate where the results can be retrieved from with an HTTP GET."]}),"\n",(0,t.jsx)(s.p,{children:"HTTP Codes returned:-"}),"\n",(0,t.jsxs)(s.p,{children:["HTTP 202 if Accepted",(0,t.jsx)(s.br,{}),"\nHTTP 404 if the request type does not exist",(0,t.jsx)(s.br,{}),"\nHTTP 500 if an error occurs (details will be in status error array)"]}),"\n",(0,t.jsx)(s.h3,{id:"pollasync",children:"PollAsync"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod PollAsync(pNameSpace As %String, pID As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["This call polls a queued item for console output and results. On success it returns 200.",(0,t.jsx)(s.br,{}),"\nConsole output and results are found in the standard locations for Atelier REST APIs.",(0,t.jsx)(s.br,{}),"\nIf there is more output expected the server will set the 'Retry-After' header. The client",(0,t.jsx)(s.br,{}),"\nshould read this header to determine if another call should be made.",(0,t.jsx)(s.br,{}),"\nWhen the result of processing is available (or the work is finished) a GET to this API",(0,t.jsx)(s.br,{}),"\nwill return any results in the 'content' field and (crucially) will NOT set the 'Retry-After'",(0,t.jsx)(s.br,{}),"\nheader. This is an indication that processing is finished."]}),"\n",(0,t.jsx)(s.p,{children:"HTTP Codes returned:-"}),"\n",(0,t.jsxs)(s.p,{children:["HTTP 200 if Accepted",(0,t.jsx)(s.br,{}),"\nHTTP 404 if the request ID does not exist",(0,t.jsx)(s.br,{}),"\nHTTP 423 if the global node is locked",(0,t.jsx)(s.br,{}),"\nHTTP 500 if an error occurs (details will be in status error array)"]}),"\n",(0,t.jsx)(s.h3,{id:"cancelasync",children:"CancelAsync"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CancelAsync(pNameSpace As %String, pID As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This call cancels a work request that has been previously queued."}),"\n",(0,t.jsx)(s.p,{children:"HTTP Codes returned:-"}),"\n",(0,t.jsxs)(s.p,{children:["HTTP 200 if Cancelled",(0,t.jsx)(s.br,{}),"\nHTTP 404 if the request ID does not exist",(0,t.jsx)(s.br,{}),"\nHTTP 423 if the global node is locked",(0,t.jsx)(s.br,{}),"\nHTTP 500 if an error occurs (details will be in status error array)"]}),"\n",(0,t.jsx)(s.h3,{id:"executeasyncrequest",children:"ExecuteAsyncRequest"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ExecuteAsyncRequest(pID As %Integer) [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method performs the long-running work that was queued by the POST /work (QueueAsync) endpoint"}),"\n",(0,t.jsx)(s.h3,{id:"cleanupafterunittestrequest",children:"CleanUpAfterUnitTestRequest"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CleanUpAfterUnitTestRequest(pID As %Integer) [ Internal, Private ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Delete any files created for unit test request ",(0,t.jsx)(s.strong,{children:"pID"})," and restore the value of ",(0,t.jsx)(s.strong,{children:"^UnitTestRoot"}),"."]}),"\n",(0,t.jsx)(s.h3,{id:"unittestresulttojson",children:"UnitTestResultToJSON"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod UnitTestResultToJSON(pID As %Integer, ByRef pResult As %DynamicArray) As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Convert unit test result global data into a JSON array."})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>a,x:()=>i});var t=n(96540);const r={},l=t.createContext(r);function a(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);