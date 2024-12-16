"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[92666],{94633:(e,n,l)=>{l.r(n),l.d(n,{contentTitle:()=>t,default:()=>d,frontMatter:()=>r,toc:()=>i});var a=l(74848),s=l(28453);const r={pagination_prev:null,pagination_next:null},t="%SOAP.RM.SequenceFault",i=[{value:"Parameters",id:"parameters",level:2},{value:"XMLFORMAT",id:"xmlformat",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"ELEMENTQUALIFIED",id:"elementqualified",level:3},{value:"XMLPREFIX",id:"xmlprefix",level:3},{value:"XMLIGNOREINVALIDTAG",id:"xmlignoreinvalidtag",level:3},{value:"Properties",id:"properties",level:2},{value:"FaultCode",id:"faultcode",level:3},{value:"Detail",id:"detail",level:3},{value:"Methods",id:"methods",level:2},{value:"MakeFault",id:"makefault",level:3},{value:"GetFaultReason",id:"getfaultreason",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"soaprmsequencefault",children:"%SOAP.RM.SequenceFault"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SOAP.RM.SequenceFault Extends %SOAP.Header [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"SequenceFault SOAP header as defined in WS-ReliableMessaging 1.2."}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"xmlformat",children:"XMLFORMAT"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLFORMAT = "literal";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://docs.oasis-open.org/ws-rx/wsrm/200702";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"elementqualified",children:"ELEMENTQUALIFIED"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter ELEMENTQUALIFIED = 1;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"xmlprefix",children:"XMLPREFIX"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLPREFIX = "wsrm";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"xmlignoreinvalidtag",children:"XMLIGNOREINVALIDTAG"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter XMLIGNOREINVALIDTAG = 1;\n"})}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"faultcode",children:"FaultCode"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property FaultCode As %String(MAXLEN = "");\n'})}),"\n",(0,a.jsx)(n.h3,{id:"detail",children:"Detail"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property Detail As %XML.String(MAXLEN = "");\n'})}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"makefault",children:"MakeFault"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod MakeFault(service As %SOAP.WebService, forCreateSequence As %Boolean, faultCode As %String, faultSubCode As %String, identifier As %xsd.anyURI = "") As %SOAP.Fault [ ServerOnly = 1 ]\n'})}),"\n",(0,a.jsx)(n.p,{children:"Make the fault for WS-ReliableMessaging"}),"\n",(0,a.jsx)(n.h3,{id:"getfaultreason",children:"GetFaultReason"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetFaultReason(faultCode As %String) As %String [ ServerOnly = 1 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get WS-ReliableMessaging fault reason."})]})}function d(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,l)=>{l.d(n,{R:()=>t,x:()=>i});var a=l(96540);const s={},r=a.createContext(s);function t(e){const n=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:t(e.components),a.createElement(r.Provider,{value:n},e.children)}}}]);