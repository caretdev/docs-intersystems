"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[82418],{59785:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>i,default:()=>c,frontMatter:()=>o,toc:()=>l});var n=t(74848),r=t(28453);const o={pagination_prev:null,pagination_next:null},i="OAuth2.PostLogoutRedirect",l=[{value:"Parameters",id:"parameters",level:2},{value:"UseSession",id:"usesession",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"Methods",id:"methods",level:2},{value:"OnPage",id:"onpage",level:3},{value:"OnPreHTTP",id:"onprehttp",level:3},{value:"HandleOptions",id:"handleoptions",level:3},{value:"HandleRequest",id:"handlerequest",level:3},{value:"RegisterLogout",id:"registerlogout",level:3},{value:"FinishLogout",id:"finishlogout",level:3},{value:"GetPostLogoutRedirectURL",id:"getpostlogoutredirecturl",level:3}];function a(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"oauth2postlogoutredirect",children:"OAuth2.PostLogoutRedirect"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class OAuth2.PostLogoutRedirect Extends %CSP.Page [ Final, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This is the landing page for post-logout redirects from an OpenID Connect Provider used from InterSystems IRIS OAuth 2.0 client code. The redirect is processed here and then redirected to the eventual target. This class SHOULD NOT be used as the redirectURL passed into %SYS.OAuth2.Authorization:GetLogoutEndpoint(). This class simply does some processing before redirecting to that provided redirectURL. This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"usesession",children:"UseSession"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter UseSession = 0;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/oauth2/OAuth2.PostLogoutRedirect.cls";\n'})}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onpage",children:"OnPage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPage() As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Should never get here. The work is done in OnPreHttp and then redirect back to real target. If we got here, it means there was an error with the redirect."}),"\n",(0,n.jsx)(s.h3,{id:"onprehttp",children:"OnPreHTTP"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPreHTTP() As %Boolean [ Internal ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Event handler for ",(0,n.jsx)(s.strong,{children:"PreHTTP"})," event: this is invoked before the HTTP headers for a CSP page have been sent."]}),"\n",(0,n.jsx)(s.h3,{id:"handleoptions",children:"HandleOptions"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HandleOptions() As %Boolean\n"})}),"\n",(0,n.jsx)(s.h3,{id:"handlerequest",children:"HandleRequest"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HandleRequest() As %Boolean\n"})}),"\n",(0,n.jsx)(s.h3,{id:"registerlogout",children:"RegisterLogout"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RegisterLogout(state As %String) As %String [ Private ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"finishlogout",children:"FinishLogout"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FinishLogout(state As %String) [ Private ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"getpostlogoutredirecturl",children:"GetPostLogoutRedirectURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetPostLogoutRedirectURL(client As OAuth2.Client) As %String [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the URL without location to be used as the post logout redirect URL for logout requests."})]})}function c(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(a,{...e})}):a(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>i,x:()=>l});var n=t(96540);const r={},o=n.createContext(r);function i(e){const s=n.useContext(o);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),n.createElement(o.Provider,{value:s},e.children)}}}]);