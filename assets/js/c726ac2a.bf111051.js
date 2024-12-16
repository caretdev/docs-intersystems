"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[51686],{75098:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>o,default:()=>l,frontMatter:()=>a,toc:()=>c});var t=n(74848),r=n(28453);const a={pagination_prev:null,pagination_next:null},o="OAuth2.Response",c=[{value:"Parameters",id:"parameters",level:2},{value:"UseSession",id:"usesession",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"CSRFCookieName",id:"csrfcookiename",level:3},{value:"Methods",id:"methods",level:2},{value:"OnPage",id:"onpage",level:3},{value:"OnPreHTTP",id:"onprehttp",level:3},{value:"HandleOptions",id:"handleoptions",level:3},{value:"HandleRequest",id:"handlerequest",level:3},{value:"ProcessCodeResponse",id:"processcoderesponse",level:3},{value:"ProcessResponse",id:"processresponse",level:3},{value:"ProcessImplicitResponse",id:"processimplicitresponse",level:3},{value:"ProcessParsedResponse",id:"processparsedresponse",level:3},{value:"GetQueryResponse",id:"getqueryresponse",level:3},{value:"GetRedirectURL",id:"getredirecturl",level:3},{value:"GetCurrentApplication",id:"getcurrentapplication",level:3}];function i(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"oauth2response",children:"OAuth2.Response"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class OAuth2.Response Extends %CSP.Page [ Final, System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is the landing page for responses from an OAuth 2.0 authorization server used from InterSystems IRIS OAuth 2.0 client code. The response is processed here and then redirected to the eventual target. This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"usesession",children:"UseSession"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter UseSession = 0;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/oauth2/OAuth2.Response.cls";\n'})}),"\n",(0,t.jsx)(s.h3,{id:"csrfcookiename",children:"CSRFCookieName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSRFCookieName = "CSPCSRF";\n'})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"onpage",children:"OnPage"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPage() As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Should never get here. The work is done in OnPreHttp and then redirect back to real target."}),"\n",(0,t.jsx)(s.h3,{id:"onprehttp",children:"OnPreHTTP"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPreHTTP() As %Boolean [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Event handler for ",(0,t.jsx)(s.strong,{children:"PreHTTP"})," event: this is invoked before the HTTP headers for a CSP page have been sent."]}),"\n",(0,t.jsx)(s.h3,{id:"handleoptions",children:"HandleOptions"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HandleOptions() As %Boolean [ Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"handlerequest",children:"HandleRequest"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HandleRequest() As %Boolean [ Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"processcoderesponse",children:"ProcessCodeResponse"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ProcessCodeResponse(accessToken As OAuth2.AccessToken, Output error As %OAuth2.Error) As %Status [ Final, Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Process the response to the Authorization Code grant type"}),"\n",(0,t.jsx)(s.h3,{id:"processresponse",children:"ProcessResponse"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ProcessResponse(httpRequest As %Net.HttpRequest, applicationName As %String, requestScope As %String, sessionId As %String, inRedirect As %Boolean = 0, grantType As %String = "", Output error As %OAuth2.Error) As %Status [ Final, Internal ]\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Extract and store access token from response to access token request. Access token will be stored before return. If the accessToken argument is specified, then this token will be updated. Otherwise a new token will be created.",(0,t.jsx)(s.br,{}),"\nhttpRequest may be a string which already contains the needed properties as query parameters"]}),"\n",(0,t.jsx)(s.h3,{id:"processimplicitresponse",children:"ProcessImplicitResponse"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ProcessImplicitResponse(accessToken As OAuth2.AccessToken, Output error As %OAuth2.Error) As %Status [ Final, Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Process response from implicit grant type request. This method exists to allow processing the response on the client instead of completely in the user agent. Extract and store access token from response to access token request. Access token will be stored before return."}),"\n",(0,t.jsx)(s.h3,{id:"processparsedresponse",children:"ProcessParsedResponse"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ProcessParsedResponse(json As %DynamicObject, applicationName As %String, requestScope As %String, sessionId As %String, clearState As %Boolean = 0, grantType As %String = "") As %Status [ Final, Internal ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"Extract and store access token from access token request as JSON object. Access token will be stored before return. If the accessToken argument is specified, then this token will be updated. Otherwise a new token will be created."}),"\n",(0,t.jsx)(s.h3,{id:"getqueryresponse",children:"GetQueryResponse"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetQueryResponse(Output json As %DynamicObject) As %Status [ Final, Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Get the response object from query parameters"}),"\n",(0,t.jsx)(s.h3,{id:"getredirecturl",children:"GetRedirectURL"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetRedirectURL(client As OAuth2.Client, Output sc As %Status) As %String [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Get the URL without location to be used for redirect URL for authorization server requests.",(0,t.jsx)(s.br,{}),"\nSetup /csp/sys/oauth2 CSP application if it does not already exist."]}),"\n",(0,t.jsx)(s.h3,{id:"getcurrentapplication",children:"GetCurrentApplication"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetCurrentApplication(Output applicationName As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:'Find the OAuth 2.0 application which is associated with the current CSP session. The application is determined by finding the access token referenced by the CSPOAuth2 query parameter which has been added for to the redirect URL for a login page. The applicationName is returned if successfully found. Otherwise "" is returned in applicationName with the error status as the return value. If successful the access token will be associated with the current CSP Session and the token will be automatically removed when the CSP session ends.'})]})}function l(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(i,{...e})}):i(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>o,x:()=>c});var t=n(96540);const r={},a=t.createContext(r);function o(e){const s=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:o(e.components),t.createElement(a.Provider,{value:s},e.children)}}}]);