"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[51801],{93154:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>a,default:()=>l,frontMatter:()=>r,toc:()=>c});var s=t(74848),i=t(28453);const r={pagination_prev:null,pagination_next:null},a="%Net.SASL.PLAIN",c=[{value:"Properties",id:"properties",level:2},{value:"MechanismName",id:"mechanismname",level:3},{value:"Methods",id:"methods",level:2},{value:"Start",id:"start",level:3},{value:"Next",id:"next",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"netsaslplain",children:"%Net.SASL.PLAIN"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Net.SASL.PLAIN Extends %Net.SASL.Base [ Not ProcedureBlock, System = 3 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"The implementation of the PLAIN SASL security mechanism defined in RFC 2595 to be used with %Net.Authenticator, our implementation of the Simple Authentication and Security Layer (SASL) as defined by RFC 2222."}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"mechanismname",children:"MechanismName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property MechanismName As %String [ InitialExpression = "PLAIN" ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"The name of the security mechanism. This name must be one of SASL mechanism names that is registered with IANA."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"start",children:"Start"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Start(ByRef response As %String) As %Boolean\n"})}),"\n",(0,s.jsx)(n.p,{children:"Start authentication based on UserName and Password using the PLAIN SASL mechanism."}),"\n",(0,s.jsx)(n.h3,{id:"next",children:"Next"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Next(challenge As %String, ByRef response As %String) As %Boolean\n"})}),"\n",(0,s.jsx)(n.p,{children:"Return next response based on challenge using the PLAIN SASL mechanism. Return value is false to indicate abort."})]})}function l(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(o,{...e})}):o(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>a,x:()=>c});var s=t(96540);const i={},r=s.createContext(i);function a(e){const n=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),s.createElement(r.Provider,{value:n},e.children)}}}]);