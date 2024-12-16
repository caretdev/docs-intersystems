"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[72140],{55541:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>t,default:()=>d,frontMatter:()=>r,toc:()=>c});var l=s(74848),a=s(28453);const r={pagination_prev:null,pagination_next:null},t="%SOAP.RM.SequenceAcknowledgement",c=[{value:"Parameters",id:"parameters",level:2},{value:"XMLFORMAT",id:"xmlformat",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"ELEMENTQUALIFIED",id:"elementqualified",level:3},{value:"XMLPREFIX",id:"xmlprefix",level:3},{value:"XMLIGNOREINVALIDTAG",id:"xmlignoreinvalidtag",level:3},{value:"OUTPUTTYPEATTRIBUTE",id:"outputtypeattribute",level:3},{value:"Properties",id:"properties",level:2},{value:"Identifier",id:"identifier",level:3},{value:"AcknowledgementRange",id:"acknowledgementrange",level:3},{value:"None",id:"none",level:3},{value:"Final",id:"final",level:3},{value:"Nack",id:"nack",level:3},{value:"Methods",id:"methods",level:2},{value:"CreateHeader",id:"createheader",level:3},{value:"UpdateSession",id:"updatesession",level:3}];function i(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(n.header,{children:(0,l.jsx)(n.h1,{id:"soaprmsequenceacknowledgement",children:"%SOAP.RM.SequenceAcknowledgement"})}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SOAP.RM.SequenceAcknowledgement Extends %SOAP.Header [ System = 4 ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"SequenceAcknowledgement SOAP header as defined in WS-ReliableMessaging 1.2."}),"\n",(0,l.jsx)(n.p,{children:"xs:anyURI  [ [ [  + |            ]      ?   ] |    wsrm:MessageNumberType  + ] ..."}),"\n",(0,l.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(n.h3,{id:"xmlformat",children:"XMLFORMAT"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLFORMAT = "literal";\n'})}),"\n",(0,l.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://docs.oasis-open.org/ws-rx/wsrm/200702";\n'})}),"\n",(0,l.jsx)(n.h3,{id:"elementqualified",children:"ELEMENTQUALIFIED"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter ELEMENTQUALIFIED = 1;\n"})}),"\n",(0,l.jsx)(n.h3,{id:"xmlprefix",children:"XMLPREFIX"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLPREFIX = "wsrm";\n'})}),"\n",(0,l.jsx)(n.h3,{id:"xmlignoreinvalidtag",children:"XMLIGNOREINVALIDTAG"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter XMLIGNOREINVALIDTAG = 1;\n"})}),"\n",(0,l.jsx)(n.h3,{id:"outputtypeattribute",children:"OUTPUTTYPEATTRIBUTE"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter OUTPUTTYPEATTRIBUTE = 0;\n"})}),"\n",(0,l.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(n.h3,{id:"identifier",children:"Identifier"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property Identifier As %xsd.anyURI;\n"})}),"\n",(0,l.jsx)(n.h3,{id:"acknowledgementrange",children:"AcknowledgementRange"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property AcknowledgementRange As list Of %SOAP.RM.AcknowledgementRange(XMLPROJECTION = "element");\n'})}),"\n",(0,l.jsx)(n.h3,{id:"none",children:"None"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property None As %String;\n"})}),"\n",(0,l.jsx)(n.p,{children:'Should never have a value except empty string. Set to $c(0) to show element and "" to not show element.'}),"\n",(0,l.jsx)(n.h3,{id:"final",children:"Final"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property Final As %String;\n"})}),"\n",(0,l.jsx)(n.p,{children:'Should never have a value except empty string. Set to $c(0) to show element and "" to not show element.'}),"\n",(0,l.jsx)(n.h3,{id:"nack",children:"Nack"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property Nack As list Of %SOAP.RM.MessageNumberType(XMLPROJECTION = "element");\n'})}),"\n",(0,l.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(n.h3,{id:"createheader",children:"CreateHeader"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod CreateHeader(session As %SYS.RMSession, request As %Boolean) As %SOAP.RM.SequenceAcknowledgement [ Internal ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Create SequenceAcknowledgement header based on WS-ReliableMessaging session"}),"\n",(0,l.jsx)(n.h3,{id:"updatesession",children:"UpdateSession"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method UpdateSession(session As %SYS.RMSession) [ Internal ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Update session based on acknowledgement"})]})}function d(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,l.jsx)(n,{...e,children:(0,l.jsx)(i,{...e})}):i(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>t,x:()=>c});var l=s(96540);const a={},r=l.createContext(a);function t(e){const n=l.useContext(r);return l.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:t(e.components),l.createElement(r.Provider,{value:n},e.children)}}}]);