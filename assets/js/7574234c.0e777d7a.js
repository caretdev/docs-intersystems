"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[59596],{24011:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>a,default:()=>l,frontMatter:()=>i,toc:()=>o});var s=t(74848),r=t(28453);const i={pagination_prev:null,pagination_next:null},a="SYS.DataCheck.Source",o=[{value:"Properties",id:"properties",level:2},{value:"DestinationName",id:"destinationname",level:3},{value:"DestinationHost",id:"destinationhost",level:3},{value:"Methods",id:"methods",level:2},{value:"StartJobFromServer",id:"startjobfromserver",level:3},{value:"AuthenticationError",id:"authenticationerror",level:3},{value:"Manager",id:"manager",level:3},{value:"Sender",id:"sender",level:3},{value:"Utility",id:"utility",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"sysdatachecksource",children:"SYS.DataCheck.Source"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class SYS.DataCheck.Source Extends SYS.DataCheck.System\n"})}),"\n",(0,s.jsx)(n.p,{children:"The source system receives queries from the destination via TCP and sends answers. Objects of this class are maintained automatically by the system and should not be modified. This class can be queried to obtain the running state of any DataCheck configurations for which this system is acting as a source."}),"\n",(0,s.jsx)(n.p,{children:"See System for overview."}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"destinationname",children:"DestinationName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property DestinationName As SystemName;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Name of the DataCheck destination system initiating the connection"}),"\n",(0,s.jsx)(n.h3,{id:"destinationhost",children:"DestinationHost"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property DestinationHost As %String;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Host of the destination system initiating the connection"}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"startjobfromserver",children:"StartJobFromServer"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod StartJobFromServer(sslerr As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"We've inherited a TCP socket from our parent, the Super Server. Get marching orders from our peer. The sslerr is true when Super Server SSL is Required but the incoming connection is non-SSL."}),"\n",(0,s.jsx)(n.h3,{id:"authenticationerror",children:"AuthenticationError"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod AuthenticationError(msg) [ Internal ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"manager",children:"Manager"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Manager() [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"The Source Query Manager"}),"\n",(0,s.jsx)(n.h3,{id:"sender",children:"Sender"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Sender() [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"The Source Sender dequeues query answers from the MainQ and sends them to the destination Receiver"}),"\n",(0,s.jsx)(n.h3,{id:"utility",children:"Utility"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Utility() [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"The Utility job answers requests for information required by the destination. It holds no lock and must not perform any actions that could interfere with the running system."})]})}function l(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>a,x:()=>o});var s=t(96540);const r={},i=s.createContext(r);function a(e){const n=s.useContext(i);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),s.createElement(i.Provider,{value:n},e.children)}}}]);