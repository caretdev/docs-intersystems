"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[87413],{62537:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>d,frontMatter:()=>i,toc:()=>c});var n=s(74848),a=s(28453);const i={pagination_prev:null,pagination_next:null},r="%SYS.OAuth2.Request",c=[{value:"Properties",id:"properties",level:2},{value:"ApplicationName",id:"applicationname",level:3},{value:"RequestName",id:"requestname",level:3},{value:"State",id:"state",level:3},{value:"JWT",id:"jwt",level:3},{value:"UpdateTime",id:"updatetime",level:3},{value:"Methods",id:"methods",level:2},{value:"MakeRequestJWT",id:"makerequestjwt",level:3},{value:"SetAudClaim",id:"setaudclaim",level:3},{value:"UpdateRequestObject",id:"updaterequestobject",level:3},{value:"OpenRequestObject",id:"openrequestobject",level:3},{value:"DeleteRequestObject",id:"deleterequestobject",level:3},{value:"CleanupRequestObjects",id:"cleanuprequestobjects",level:3},{value:"GetJWT",id:"getjwt",level:3},{value:"GetURL",id:"geturl",level:3}];function l(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"sysoauth2request",children:"%SYS.OAuth2.Request"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %SYS.OAuth2.Request Extends %Persistent [ System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"%SYS.OAuth2.Request creates and manages the request JWT needed to support the request and request_uri parameters that are defined in section 6 of OpenID Connect Core document."}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"applicationname",children:"ApplicationName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ApplicationName As %String(MAXLEN = 128) [ Required ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"The IDKEY for the request object class. The name of the client application associated with this request."}),"\n",(0,n.jsx)(t.h3,{id:"requestname",children:"RequestName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property RequestName As %String [ Required ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"The name of this request object."}),"\n",(0,n.jsx)(t.h3,{id:"state",children:"State"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property State As %String(MAXLEN = 1024);\n"})}),"\n",(0,n.jsx)(t.p,{children:"The base64 encoded random state associated with the request. The state is included as a fragment of in the URL in order to ensure cached requests are retrieved."}),"\n",(0,n.jsx)(t.h3,{id:"jwt",children:"JWT"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property JWT As %String(MAXLEN = "");\n'})}),"\n",(0,n.jsx)(t.p,{children:"The JWT created from the request object."}),"\n",(0,n.jsx)(t.h3,{id:"updatetime",children:"UpdateTime"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property UpdateTime As %Integer;\n"})}),"\n",(0,n.jsx)(t.p,{children:"The time when the request object was last updated."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"makerequestjwt",children:"MakeRequestJWT"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod MakeRequestJWT(applicationName As %String, ByRef properties As %String, Output sc As %Status) As %String\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Create and return a JWT based on the specified properties.",(0,n.jsx)(t.br,{}),"\nThe JWT may be signed or encoded by the client configuration that is specified by applicationName.",(0,n.jsx)(t.br,{}),"\nTo add a request parameter which is a JSON object, you must create a properties element which is a %DynamicObject. For example the claims parameter that is defined by OpenID Connect."]}),"\n",(0,n.jsx)(t.h3,{id:"setaudclaim",children:"SetAudClaim"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetAudClaim(json As %DynamicObject, issuer As %String) [ Internal, Private ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Set the aud claim for the JSON object"}),"\n",(0,n.jsx)(t.h3,{id:"updaterequestobject",children:"UpdateRequestObject"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod UpdateRequestObject(applicationName As %String, requestName As %String, ByRef properties As %String, Output sc As %Status) As %SYS.OAuth2.Request\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Create or update a persistent %SYS.OAuth2.Request object which contains a JWT based on the specified properties. The new request object is both saved and returned by this method.",(0,n.jsx)(t.br,{}),"\nThe JWT may be signed or encoded by the client configuration that is specified by applicationName.",(0,n.jsx)(t.br,{}),"\nTo add a request parameter which is a JSON object, you must create a properties element which is a %DynamicObject. For example the claims parameter that is defined by OpenID Connect."]}),"\n",(0,n.jsx)(t.h3,{id:"openrequestobject",children:"OpenRequestObject"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OpenRequestObject(applicationName As %String, requestName As %String, Output sc As %Status) As %SYS.OAuth2.Request\n"})}),"\n",(0,n.jsx)(t.p,{children:"Open a persistent %SYS.OAuth2.Request object which contains a JWT identified by applicationName and requestName."}),"\n",(0,n.jsx)(t.h3,{id:"deleterequestobject",children:"DeleteRequestObject"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DeleteRequestObject(applicationName As %String, requestName As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Delete the request object that is specified by applicationName and requestName."}),"\n",(0,n.jsx)(t.h3,{id:"cleanuprequestobjects",children:"CleanupRequestObjects"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CleanupRequestObjects(applicationName As %String, interval As %Integer) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Clean up the request object list by deleting any request object that has not been updated for the specified client in interval seconds"}),"\n",(0,n.jsx)(t.h3,{id:"getjwt",children:"GetJWT"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetJWT() As %String [ CodeMode = expression ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Get the JWT associated with this request object"}),"\n",(0,n.jsx)(t.h3,{id:"geturl",children:"GetURL"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetURL(Output sc As %Status) As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Get the URL associated with this persistent request object."})]})}function d(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>c});var n=s(96540);const a={},i=n.createContext(a);function r(e){const t=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),n.createElement(i.Provider,{value:t},e.children)}}}]);