"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[79940],{87534:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>o,default:()=>h,frontMatter:()=>i,toc:()=>a});var n=t(74848),r=t(28453);const i={pagination_prev:null,pagination_next:null},o="%OAuth2.Server.AbstractSession",a=[{value:"Methods",id:"methods",level:2},{value:"GetUser",id:"getuser",level:3},{value:"Update",id:"update",level:3},{value:"Login",id:"login",level:3},{value:"Logout",id:"logout",level:3},{value:"DeleteAll",id:"deleteall",level:3},{value:"UpdateTokenGroup",id:"updatetokengroup",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"oauth2serverabstractsession",children:"%OAuth2.Server.AbstractSession"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %OAuth2.Server.AbstractSession [ Abstract, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This class defines the interface for the OAuth2 Server session maintenance class. If SupportSession is true in OAuth2.Server.Configuration then this class is used to track the user's session. The default session maintenance class is OAuth2.Server.Session. The behavior can be customized by creating a subclasss of this class."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"getuser",children:"GetUser"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetUser(Output scope As %String, Output authTime As %Integer, Output sc As %Status, authCode As %String = "") As %String [ Abstract ]\n'})}),"\n",(0,n.jsxs)(s.p,{children:['This method returns the name of the user currently logged into this session. If no session exists, then "" is returned.',(0,n.jsx)(s.br,{}),"\nThe set of scopes associated with this session are returned in the scope parameter.",(0,n.jsx)(s.br,{}),"\nThe time the session was created is returned in the authTime parameter.",(0,n.jsx)(s.br,{}),"\nThe sc parameter contains the error code (or $$$OK if no error occurred).",(0,n.jsx)(s.br,{}),"\nauthCode contains the Authorization Code from the associated Access Token. This can be used to associate the Access Token with the session."]}),"\n",(0,n.jsx)(s.h3,{id:"update",children:"Update"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Update(scope As %String, interval As %Integer) As %Status [ Abstract ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["This method updates the current session with the provided values.",(0,n.jsx)(s.br,{}),"\nscope is a blank separated list of scope values to associate with the session.",(0,n.jsx)(s.br,{}),"\nIf the interval argument is specified the session interval should be updated.",(0,n.jsx)(s.br,{}),"\nThe interval argument is seconds until expiration for the session. If interval=0, then the session will not expire."]}),"\n",(0,n.jsx)(s.h3,{id:"login",children:"Login"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Login(username As %String, scope As %String, interval As %Integer, Output authTime As %Integer, authCode As %String = "") As %Status [ Abstract ]\n'})}),"\n",(0,n.jsxs)(s.p,{children:["This method creates a new session for the user named by username.",(0,n.jsx)(s.br,{}),"\nThe scope argument specifies a blank separated list of scopes for which the user is authorized.",(0,n.jsx)(s.br,{}),"\nThe interval argument is seconds until expiration for the session.",(0,n.jsx)(s.br,{}),"\nIf interval=0, then the session will not expire.",(0,n.jsx)(s.br,{}),"\nauthTime indicates the time at which the session was created. This should be specified as the number of seconds since the start of the UNIX epoch. This can be computed using ",(0,n.jsx)(s.code,{children:"Set authTime = ##class(%OAuth2.Utils).TimeInSeconds($ztimestamp,0)"})," authCode contains the Authorization Code from the associated Access Token. This can be used to associate the Access Token with the session."]}),"\n",(0,n.jsx)(s.h3,{id:"logout",children:"Logout"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Logout() As %Status [ Abstract ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"The Logout method terminates the current session. This may be called when there is no current session."}),"\n",(0,n.jsx)(s.h3,{id:"deleteall",children:"DeleteAll"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteAll() As %Status [ Abstract ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This method deletes all current sessions."}),"\n",(0,n.jsx)(s.h3,{id:"updatetokengroup",children:"UpdateTokenGroup"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod UpdateTokenGroup(authCode As %String, groupId As %String, force As %Boolean = 0) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"This method will update the OAuth2.Server.AccessToken identified by authcode with the given groupId. This can be used to associate the Access Token with the user's session. The Access Token will not be updated if it already is associated with a GroupId, unless force is true. Note that any subclass of this class MUST use the OAuth2.Server.AccessToken GroupId property to associate tokens with sessions. All tokens that have the same GroupId are part of the same session."})]})}function h(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>o,x:()=>a});var n=t(96540);const r={},i=n.createContext(r);function o(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:o(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);