"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[40845],{67473:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>o,default:()=>h,frontMatter:()=>n,toc:()=>a});var i=s(74848),r=s(28453);const n={pagination_prev:null,pagination_next:null},o="%SYS.OAuth2.Authorization",a=[{value:"Methods",id:"methods",level:2},{value:"SetEndpoints",id:"setendpoints",level:3},{value:"CreateNonce",id:"createnonce",level:3},{value:"CreateState",id:"createstate",level:3},{value:"GetAuthorizationCodeEndpoint",id:"getauthorizationcodeendpoint",level:3},{value:"GetRequestEndpoint",id:"getrequestendpoint",level:3},{value:"MakeCodeVerifier",id:"makecodeverifier",level:3},{value:"MakeAuthorizationCodeURL",id:"makeauthorizationcodeurl",level:3},{value:"GetAccessTokenAuthorizationCode",id:"getaccesstokenauthorizationcode",level:3},{value:"GetImplicitEndpoint",id:"getimplicitendpoint",level:3},{value:"GetAccessTokenImplicit",id:"getaccesstokenimplicit",level:3},{value:"GetAccessTokenPassword",id:"getaccesstokenpassword",level:3},{value:"GetAccessTokenClient",id:"getaccesstokenclient",level:3},{value:"GetAccessTokenJWT",id:"getaccesstokenjwt",level:3},{value:"MakeGrantTypeJWT",id:"makegranttypejwt",level:3},{value:"GetAccessTokenRefresh",id:"getaccesstokenrefresh",level:3},{value:"GetLogoutEndpoint",id:"getlogoutendpoint",level:3}];function c(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(t.header,{children:(0,i.jsx)(t.h1,{id:"sysoauth2authorization",children:"%SYS.OAuth2.Authorization"})}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Class %SYS.OAuth2.Authorization Extends %RegisteredObject [ System = 4 ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"The %SYS.OAuth2.Authorization class contains the operations which are used to authorize a client by obtaining an access token."}),"\n",(0,i.jsxs)(t.p,{children:["The underlying token is stored in OAuth2.AccessToken in the system database. OAuth2.AccessToken is indexed by the combination of SessionId and ApplicationName. Therefore, only one scope may be requested for each SessionId/ApplicationName. If a second request is made with a different scope and access token has yet been granted, the scope in the new request becomes the expected scope.",(0,i.jsx)(t.br,{}),"\nNote that this class is in library databse and thus available everywhere. However, token storage storage is in the system database and thus not difrectly available to most code."]}),"\n",(0,i.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(t.h3,{id:"setendpoints",children:"SetEndpoints"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetEndpoints(applicationName As %String, authorizationEndpoint As %String, tokenEndpoint As %String) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"SetEndpoints will update the authorization endpoint and the token endpoint for the specified client application. If either endpoint is not specified, then it will not be modified."}),"\n",(0,i.jsx)(t.h3,{id:"createnonce",children:"CreateNonce"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CreateNonce() As %String [ Internal ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Create a new base64 encoded random nonce value."}),"\n",(0,i.jsx)(t.h3,{id:"createstate",children:"CreateState"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CreateState() As %String [ Internal ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Create a new base64 encoded random state value."}),"\n",(0,i.jsx)(t.h3,{id:"getauthorizationcodeendpoint",children:"GetAuthorizationCodeEndpoint"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetAuthorizationCodeEndpoint(applicationName As %String, scope As %String, redirectURL As %String, ByRef properties As %String, Output isAuthorized As %Boolean, Output sc As %Status, responseMode As %String, sessionId As %String = "") As %String\n'})}),"\n",(0,i.jsxs)(t.p,{children:["GetAuthorizationEndpoint returns the URL to be used to redirect authorization requests to the Authorization Server based on the authorization code grant type. The location part of the URL will be a class in this InterSystems IRIS instance which will further redirect to the authorization server. This URL should be used for a button, anchor or in Javascript code in a page.",(0,i.jsx)(t.br,{}),"\nThe scope argument is a blank separated list of scopes for which access is requested. The default for scope is the DefaultScope property of OAuth2.Client for applicationName.",(0,i.jsx)(t.br,{}),"\nThe redirectURL argument is the URL of the CSP page which should be invoked after the request for the access token is completed and the access token is stored indexed by the ApplicationName and SessionId.",(0,i.jsx)(t.br,{}),"\nThe responseMode argument specifies the mode of the response as either query, fragment or form_post. The default is query.",(0,i.jsx)(t.br,{}),'\nproperties is a local array specifying additional properties to be included in a token request in the form properties(name)=value. To add a request parameter which is a JSON object, you may either create a properties element which is a %DynamicObject or is a string that is the UTF-8 encoded serialized object. For example the claims parameter that is defined by OpenID Connect. If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class is used to create the JWT. The the JWT is assigned to properties("request") or the URL for the JWT is assigned to properties("request_uri")',(0,i.jsx)(t.br,{}),"\nisAuthorized is an output argument which is returned true if an access token has already been granted for this SessionId/ApplicationName combiation."]}),"\n",(0,i.jsx)(t.h3,{id:"getrequestendpoint",children:"GetRequestEndpoint"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetRequestEndpoint(applicationName As %String, scope As %String, redirectURL As %String, responseType As %String, responseMode As %String = "", ByRef properties As %String, Output isAuthorized As %Boolean, Output sc As %Status, sessionId As %String) As %String [ Internal ]\n'})}),"\n",(0,i.jsxs)(t.p,{children:["GetRequestEndpoint returns the URL to be used to redirect authorization requests to the Authorization Server for the authorization code grant type or the implicit grant type. The location part of the URL will be a class in this InterSystems IRIS instance which will further redirect to the authorization server. This URL should be used for a button, anchor or in Javascript code in a page.",(0,i.jsx)(t.br,{}),"\nThe scope argument is a blank separated list of scopes for which access is requested. The default for scope is the DefaultScope property of OAuth2.Client for applicationName.",(0,i.jsx)(t.br,{}),"\nThe idtokenOnly argument should be specified as true in order to get an IDToken but not an access token.",(0,i.jsx)(t.br,{}),"\nThe responseMode argument specifies the mode of the response as either query, fragment or form_post. The redirectURL argument is the URL of the CSP page which should be invoked after the request for the access token is completed and the access token is stored indexed by the ApplicationName and SessionId.",(0,i.jsx)(t.br,{}),'\nproperties is a local array specifying additional properties to be included in a token request in the form properties(name)=value. To add a request parameter which is a JSON object, you may either create a properties element which is a %DynamicObject or is a string that is the UTF-8 encoded serialized object. For example the claims parameter that is defined by OpenID Connect. If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class is used to create the JWT. The the JWT is assigned to properties("request") or the URL for the JWT is assigned to properties("request_uri")',(0,i.jsx)(t.br,{}),"\nisAuthorized is an output argument which is returned true if an access token has already been granted for this SessionId/ApplicationName combination."]}),"\n",(0,i.jsx)(t.h3,{id:"makecodeverifier",children:"MakeCodeVerifier"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod MakeCodeVerifier() As %String [ CodeMode = expression, Internal, Private ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Construct a code verifier to use for PKCE."}),"\n",(0,i.jsx)(t.h3,{id:"makeauthorizationcodeurl",children:"MakeAuthorizationCodeURL"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod MakeAuthorizationCodeURL(client As OAuth2.Client, token As OAuth2.AccessToken, redirect As %String, ByRef properties As %String, Output sc As %Status) As %String [ Internal ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Make the URL for authorization code request"}),"\n",(0,i.jsx)(t.h3,{id:"getaccesstokenauthorizationcode",children:"GetAccessTokenAuthorizationCode"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetAccessTokenAuthorizationCode(applicationName As %String, scope As %String, redirectURL As %String, ByRef properties As %String, responseMode As %String, sessionId As %String = "") As %Status\n'})}),"\n",(0,i.jsxs)(t.p,{children:["GetAccessTokenAuthorizationCode may be called from the OnPreHttp method of a CSP page to redirect authorization requests to the Authorization Server based on the authorization code grant type.",(0,i.jsx)(t.br,{}),"\nGetAccessTokenAuthorizationCode will only request a new access token if their is no existing access toekn which includes all the scopes that are being requested.",(0,i.jsx)(t.br,{}),"\nThe scope argument is a blank separated list of scopes for which access is requested. The default for scope is the DefaultScope property of OAuth2.Client for applicationName.",(0,i.jsx)(t.br,{}),"\nThe redirectURL argument is the URL of the CSP page which should be invoked after the request for the access token is completed and the access token is stored indexed by the ApplicationName and SessionId. The responseMode argument specifies the mode of the response as either query, fragment or form_post. The default is query.",(0,i.jsx)(t.br,{}),'\nproperties is a local array specifying additional properties to be included in a token request in the form properties(name)=value. To add a request parameter which is a JSON object, you may either create a properties element which is a %DynamicObject or is a string that is the UTF-8 encoded serialized object. For example the claims parameter that is defined by OpenID Connect. If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class is used to create the JWT. The the JWT is assigned to properties("request") or the URL for the JWT is assigned to properties("request_uri")']}),"\n",(0,i.jsx)(t.h3,{id:"getimplicitendpoint",children:"GetImplicitEndpoint"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetImplicitEndpoint(applicationName As %String, scope As %String, redirectURL As %String, idtokenOnly As %Boolean = 0, responseMode As %String, ByRef properties As %String, Output isAuthorized As %Boolean, Output sc As %Status, sessionId As %String = "") As %String\n'})}),"\n",(0,i.jsxs)(t.p,{children:["GetImplicitEndpoint returns the URL to be used to redirect authorization requests to the Authorization Server based on the implicit grant type. The location part of the URL will be a class in this InterSystems IRIS instance which will further redirect to the authorization server. This URL should be used for a button, anchor or in Javascript code in a page.",(0,i.jsx)(t.br,{}),"\nThe scope argument is a blank separated list of scopes for which access is requested. The default for scope is the DefaultScope property of OAuth2.Client for applicationName.",(0,i.jsx)(t.br,{}),"\nThe idtokenOnly argument should be specified as true in order to get an IDToken but not an access token.",(0,i.jsx)(t.br,{}),"\nThe responseMode argument specifies the mode of the response as either query, fragment or form_post. The default is fragment.",(0,i.jsx)(t.br,{}),"\nThe redirectURL argument is the URL of the CSP page which should be invoked after the request for the access token is completed and the access token is stored indexed by the ApplicationName and SessionId.",(0,i.jsx)(t.br,{}),'\nproperties is a local array specifying additional properties to be included in a token request in the form properties(name)=value. To add a request parameter which is a JSON object, you may either create a properties element which is a %DynamicObject or is a string that is the UTF-8 encoded serialized object. For example the claims parameter that is defined by OpenID Connect. If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class is used to create the JWT. The the JWT is assigned to properties("request") or the URL for the JWT is assigned to properties("request_uri")',(0,i.jsx)(t.br,{}),"\nisAuthorized is an output argument which is returned true if an access token has already been granted for this SessionId/ApplicationName combination."]}),"\n",(0,i.jsx)(t.h3,{id:"getaccesstokenimplicit",children:"GetAccessTokenImplicit"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetAccessTokenImplicit(applicationName As %String, scope As %String, redirectURL As %String, idtokenOnly As %Boolean, responseMode As %String, ByRef properties As %String, sessionId As %String = "") As %Status\n'})}),"\n",(0,i.jsxs)(t.p,{children:["GetAccessTokenImplicit may be called from the OnPreHttp method of a CSP page to redirect authorization requests to the Authorization Server based on the implicit grant type.",(0,i.jsx)(t.br,{}),"\nGetAccessTokenAuthorizationCode will only request a new access token if their is no existing access token which includes all the scopes that are being requested.",(0,i.jsx)(t.br,{}),"\nThe scope argument is a blank separated list of scopes for which access is requested. The default for scope is the DefaultScope property of OAuth2.Client for applicationName.",(0,i.jsx)(t.br,{}),"\nThe idtokenOnly argument should be specified as true in order to get an IDToken but not an access token.",(0,i.jsx)(t.br,{}),"\nThe responseMode argument specifies the mode of the response as either query, fragment or form_post. The default is fragment.",(0,i.jsx)(t.br,{}),"\nThe redirectURL argument is the URL of the CSP page which should be invoked after the request for the access token is completed and the access token is stored indexed by the ApplicationName and SessionId.",(0,i.jsx)(t.br,{}),'\nproperties is a local array specifying additional properties to be included in a token request in the form properties(name)=value. To add a request parameter which is a JSON object, you may either create a properties element which is a %DynamicObject or is a string that is the UTF-8 encoded serialized object. For example the claims parameter that is defined by OpenID Connect. If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class is used to create the JWT. The the JWT is assigned to properties("request") or the URL for the JWT is assigned to properties("request_uri")']}),"\n",(0,i.jsx)(t.h3,{id:"getaccesstokenpassword",children:"GetAccessTokenPassword"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetAccessTokenPassword(applicationName As %String, username As %String, password As %String, scope As %String, ByRef properties As %String, Output error As %OAuth2.Error, sessionId As %String = "") As %Status\n'})}),"\n",(0,i.jsxs)(t.p,{children:["GetAccessTokenPassword may be called from any method to send authorization requests to the Authorization Server based on the resource owner password credentials grant type. The access token will be stored indexed by the ApplicationName and SessionId before this method returns.",(0,i.jsx)(t.br,{}),"\nThe scope argument is a blank separated list of scopes for which access is requested.",(0,i.jsx)(t.br,{}),"\nproperties is a local array specifying additional properties to be included in a token request in the form properties(name)=value. To add a request parameter which is a JSON object, you may either create a properties element which is a %DynamicObject or is a string that is the UTF-8 encoded serialized object."]}),"\n",(0,i.jsx)(t.h3,{id:"getaccesstokenclient",children:"GetAccessTokenClient"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetAccessTokenClient(applicationName As %String, scope As %String, ByRef properties As %String, Output error As %OAuth2.Error, sessionId As %String = "") As %Status\n'})}),"\n",(0,i.jsxs)(t.p,{children:["GetAccessTokenClient may be called from any method to send authorization requests to the Authorization Server based on the resource owner client credentials grant type. The access token will be stored indexed by the ApplicationName and SessionId before this method returns.",(0,i.jsx)(t.br,{}),"\nThe scope argument is a blank separated list of scopes for which access is requested.",(0,i.jsx)(t.br,{}),"\nproperties is a local array specifying additional properties to be included in a token request in the form properties(name)=value. To add a request parameter which is a JSON object, you may either create a properties element which is a %DynamicObject or is a string that is the UTF-8 encoded serialized object."]}),"\n",(0,i.jsx)(t.h3,{id:"getaccesstokenjwt",children:"GetAccessTokenJWT"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetAccessTokenJWT(applicationName As %String, sub As %String, scope As %String, ByRef properties As %String, Output error As %OAuth2.Error, sessionId As %String = "") As %Status\n'})}),"\n",(0,i.jsxs)(t.p,{children:["GetAccessTokenJWT may be called from any method to send authorization requests to the Authorization Server based on the resource owner JWT grant type specified in RFC 7523. The access token will be stored indexed by the applicationName and sessionId before this method returns.",(0,i.jsx)(t.br,{}),"\nThe scope argument is a blank separated list of scopes for which access is requested.",(0,i.jsx)(t.br,{}),"\nproperties is a local array specifying additional properties to be included in a token request in the form properties(name)=value. To add a request parameter which is a JSON object, you may either create a properties element which is a %DynamicObject or is a string that is the UTF-8 encoded serialized object.",(0,i.jsx)(t.br,{}),'\nsub is the subject of the JWT which usually a user which is defined on the authorization server. The signing algorithm to be used to sign the JWT is specified by OAuth2.Client.Metadata."token_endpoint_auth_signing_alg", the same signing algorithm as used for client authentication JWT.']}),"\n",(0,i.jsx)(t.h3,{id:"makegranttypejwt",children:"MakeGrantTypeJWT"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod MakeGrantTypeJWT(client As OAuth2.Client, sub As %String, sigalg As %String, Output jwt As %String) As %Status [ Internal ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Create a JWT for the JWT grant type that is specified by RFC7523. sub is the subject of the JWT which usually a user which is defined on the authorization server. sigalg is the signing algorithm to be used to sign the JWT -- default is RS256."}),"\n",(0,i.jsx)(t.h3,{id:"getaccesstokenrefresh",children:"GetAccessTokenRefresh"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetAccessTokenRefresh(accessToken As OAuth2.AccessToken, Output refreshed As %Boolean, Output error As %OAuth2.Error) As %Status [ Final, Internal ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"GetAccessTokenRefresh sends a request to the Authorization Server in order to get a new access token based on the refresh token. The access token will be stored indexed by the ApplicationName and SessionId before this method returns."}),"\n",(0,i.jsx)(t.h3,{id:"getlogoutendpoint",children:"GetLogoutEndpoint"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetLogoutEndpoint(applicationName As %String, redirectURL As %String = "", sessionId As %String = "") As %String\n'})}),"\n",(0,i.jsxs)(t.p,{children:["GetLogoutEndpoint returns the URL to be used to redirect logout requests to the Authorization Server according to OpenID Connect RP-Initiated Logout. This URL should be used for a button, anchor or in Javascript code in a page.",(0,i.jsx)(t.br,{}),"\nThe applicationName prarameter specifies the name of the application for which the current session is to be logged out.",(0,i.jsx)(t.br,{}),"\nThe redirectURL parameter specifies the URL of the CSP page to which the User Agent should be redirected after the logout request is completed on the server.",(0,i.jsx)(t.br,{}),"\nThe sessionId parameter specifies the session id of the current Access Token. By default it will use the CSP session id, if present."]})]})}function h(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,i.jsx)(t,{...e,children:(0,i.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>o,x:()=>a});var i=s(96540);const r={},n=i.createContext(r);function o(e){const t=i.useContext(n);return i.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:o(e.components),i.createElement(n.Provider,{value:t},e.children)}}}]);