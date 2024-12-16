"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[33123],{43662:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>c,default:()=>a,frontMatter:()=>r,toc:()=>l});var s=n(74848),o=n(28453);const r={pagination_prev:null,pagination_next:null},c="%SYSTEM.Context.XDBCServer",l=[{value:"Properties",id:"properties",level:2},{value:"Device",id:"device",level:3},{value:"ServerOptions",id:"serveroptions",level:3},{value:"contextStack",id:"contextstack",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"pushState",id:"pushstate",level:3},{value:"popState",id:"popstate",level:3}];function i(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,o.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"systemcontextxdbcserver",children:"%SYSTEM.Context.XDBCServer"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %SYSTEM.Context.XDBCServer Extends %SystemBase\n"})}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"device",children:"Device"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Device As %RawString;\n"})}),"\n",(0,s.jsx)(t.p,{children:"TCP/Shared Memory device for the connection - Used to be help in %qdev"}),"\n",(0,s.jsx)(t.h3,{id:"serveroptions",children:"ServerOptions"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property ServerOptions As %String(MAXLEN = "") [ MultiDimensional ];\n'})}),"\n",(0,s.jsx)(t.h3,{id:"contextstack",children:"contextStack"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property contextStack As %String(MAXLEN = "") [ MultiDimensional ];\n'})}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnNew() As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"pushstate",children:"pushState"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method pushState() As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"pushState will push the current state of the Context.XDBCServer singleton onto the contextStack. This method is not normally invoked directly. It is normally called by a utility class method to push a context."}),"\n",(0,s.jsx)(t.h3,{id:"popstate",children:"popState"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method popState() As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"popState will restore the state of the Context.SQL singleton from the top of the contextStack and remove the top stack element. This method is not normally invoked directly. It is normally called by a utility class method to pop a context."})]})}function a(e={}){const{wrapper:t}={...(0,o.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>c,x:()=>l});var s=n(96540);const o={},r=s.createContext(o);function c(e){const t=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:c(e.components),s.createElement(r.Provider,{value:t},e.children)}}}]);