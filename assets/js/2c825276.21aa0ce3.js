"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[75962],{96912:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>r,default:()=>l,frontMatter:()=>a,toc:()=>c});var s=t(74848),i=t(28453);const a={pagination_prev:null,pagination_next:null},r="%SYS.MFT.Connection.Base",c=[{value:"Properties",id:"properties",level:2},{value:"Name",id:"name",level:3},{value:"Service",id:"service",level:3},{value:"URL",id:"url",level:3},{value:"SSLConfiguration",id:"sslconfiguration",level:3},{value:"Username",id:"username",level:3},{value:"ApplicationName",id:"applicationname",level:3},{value:"ConnectionId",id:"connectionid",level:3},{value:"CurrentFolder",id:"currentfolder",level:3},{value:"HttpRequest",id:"httprequest",level:3},{value:"Methods",id:"methods",level:2},{value:"DefaultURL",id:"defaulturl",level:3},{value:"DefaultScope",id:"defaultscope",level:3},{value:"CreateClient",id:"createclient",level:3},{value:"NormalizePath",id:"normalizepath",level:3},{value:"MakeHttpRequest",id:"makehttprequest",level:3},{value:"GetJSONResponse",id:"getjsonresponse",level:3},{value:"IsAuthorized",id:"isauthorized",level:3},{value:"GetAccessToken",id:"getaccesstoken",level:3},{value:"GetAuthorizationCodeURL",id:"getauthorizationcodeurl",level:3},{value:"RevokeToken",id:"revoketoken",level:3},{value:"Open",id:"open",level:3},{value:"Save",id:"save",level:3},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"%OnBeforeSave",id:"onbeforesave",level:3},{value:"DeleteId",id:"deleteid",level:3},{value:"OAuth2ClientCount",id:"oauth2clientcount",level:3},{value:"%OnDelete",id:"ondelete",level:3},{value:"ListExecute",id:"listexecute",level:3},{value:"ListFetch",id:"listfetch",level:3},{value:"ListClose",id:"listclose",level:3}];function o(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"sysmftconnectionbase",children:"%SYS.MFT.Connection.Base"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SYS.MFT.Connection.Base Extends %Persistent [ System = 4 ]\n"})}),"\n",(0,s.jsxs)(n.p,{children:["The file manager to be used by %MFT classes will be described by a persistent class whose properties are stored in the CACHESYS database. This persistent file manager description will contain locations, user name and authentication information - essentially the connection and authentication information for the file management service.",(0,s.jsx)(n.br,{}),"\nThe user of the file management API must create a persistent description of the connection to remote file management service. This connection is defined by the subclass of %SYS.MFT.Connection.Base which is implemented for the service provider being used.",(0,s.jsx)(n.br,{}),"\nThe initially supported services all authenticate by using the OAuth 2.0 protocol. The file management connection will use OAuth 2.0 support to do the required authentication. An OAuth2 client must be configured for use by the connection. The details of the client are defined by the requirements of the specific vendor service. The ApplicationName property below is the application name for the OAuth2 client.",(0,s.jsx)(n.br,{}),"\nThe %SYS.MFT.Connection>base class contains the base properties and methods for the remote file management services that we support. The %Admin_Secure will be required in order to open or save this object."]}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"name",children:"Name"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property Name As %String(MAXLEN = 64) [ Required ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"The IDKEY for %SYS.MFT.Connection.Base is a unique user defined name. Name is the name of this connection to a file management service. Name serves as the IDKey for this class."}),"\n",(0,s.jsx)(n.h3,{id:"service",children:"Service"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property Service As %String [ InitialExpression = {$piece($classname(),".",*)} ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Service is the name of the service that is accessed by this connection."}),"\n",(0,s.jsx)(n.h3,{id:"url",children:"URL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property URL As %OAuth2.uri [ InitialExpression = {..DefaultURL()} ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"URL is the base URL for REST access to this service including the final /. URL will default to the base URL for the remote file management service that is provided by the vendor. URL may be modified for locally hosted or private remote implementations."}),"\n",(0,s.jsx)(n.h3,{id:"sslconfiguration",children:"SSLConfiguration"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property SSLConfiguration As %String(MAXLEN = 64);\n"})}),"\n",(0,s.jsx)(n.p,{children:"SSLConfiguration is the name of the SSL Configuration to be used to communicate with the file management API."}),"\n",(0,s.jsx)(n.h3,{id:"username",children:"Username"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property Username As %Library.Username;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Username is the name of the user on whose behalf the file access will take place."}),"\n",(0,s.jsx)(n.h3,{id:"applicationname",children:"ApplicationName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property ApplicationName As %String(MAXLEN = 64);\n"})}),"\n",(0,s.jsx)(n.p,{children:"ApplicationName is the OAuth2 application name associated with this connection. The ConnectionId property will be used as the session id for the specific access token."}),"\n",(0,s.jsx)(n.h3,{id:"connectionid",children:"ConnectionId"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property ConnectionId As %String(MAXLEN = 128) [ InitialExpression = {##class(%OAuth2.Utils).Base64UrlEncode($system.Encryption.GenCryptRand(32))}, Internal, Private ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"ConnectionId is the base 64 URL encoded Id for this connection. ConnectionId is a private property which is not readable or writable outside of this class. ConnectionId is used for private access to any access token needed for this connection."}),"\n",(0,s.jsx)(n.h3,{id:"currentfolder",children:"CurrentFolder"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property CurrentFolder As %String(MAXLEN = 2048) [ InitialExpression = "/", Internal ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"The current remote folder as a Unix style path. The path is canonical in the sense of not having .. or. and always ending in /."}),"\n",(0,s.jsx)(n.h3,{id:"httprequest",children:"HttpRequest"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property HttpRequest As %Net.HttpRequest [ Transient ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"Use the same %Net.HttpRequest object for all requests in the same session."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"defaulturl",children:"DefaultURL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DefaultURL() As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Each subclass will define the DefaultURL method to supply the default URL for the service."}),"\n",(0,s.jsx)(n.h3,{id:"defaultscope",children:"DefaultScope"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DefaultScope() As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"The default scope to use for obtaining the access token."}),"\n",(0,s.jsx)(n.h3,{id:"createclient",children:"CreateClient"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod CreateClient(name As %String, sslConfiguration As %String, clientId As %String, clientSecret As %String, issuer, host As %String, port As %Integer, prefix As %String, useSSL As %Boolean) As %Status\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Create an OAuth 2.0 client with the parameters required to authorize.",(0,s.jsx)(n.br,{}),"\nname is the name to be given to the OAuth 2.0 client.",(0,s.jsx)(n.br,{}),"\nsslConfiguration is the SSLConfiguration used to make the HTTP request.",(0,s.jsx)(n.br,{}),"\nclientId and ClientSecret are the id and secret for the OAuth 2.0 client which is obtained from the corresponding App definition.",(0,s.jsx)(n.br,{}),"\nIf addiitonal properties are needed, then the OAuth 2.0 client may be opened and modified.",(0,s.jsx)(n.br,{}),"\nIf a server definition does not yet exist for the OAuth 2.0 client, then a new server definition is created."]}),"\n",(0,s.jsx)(n.h3,{id:"normalizepath",children:"NormalizePath"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method NormalizePath(path As %String) As %String [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Internal method to normalize the a file or folder path."}),"\n",(0,s.jsx)(n.h3,{id:"makehttprequest",children:"MakeHttpRequest"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method MakeHttpRequest(httpRequest As %Net.HttpRequest, method As %String, url As %String, reset As %Boolean = 1) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"MakeHttpRequest will add authentication to the specified %Net.HttpRequest object and execute the request using the specified method with the specified REST parameters added to the URL. After the request is made, the authentication information is removed to avoid making this available to user code."}),"\n",(0,s.jsx)(n.h3,{id:"getjsonresponse",children:"GetJSONResponse"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetJSONResponse(httpRequest As %Net.HttpRequest, json As %String, Output response As %DynamicObject) As %Status [ Final, Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the response object"}),"\n",(0,s.jsx)(n.h3,{id:"isauthorized",children:"IsAuthorized"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method IsAuthorized(Output errorMessage As %String) As %Boolean\n"})}),"\n",(0,s.jsx)(n.p,{children:"Check if this connection has been authorized. The default authorization is via OAuth 2.0 access token."}),"\n",(0,s.jsx)(n.h3,{id:"getaccesstoken",children:"GetAccessToken"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetAccessToken(connectionName As %String, scope As %String, accessToken As %String) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get access token"}),"\n",(0,s.jsx)(n.h3,{id:"getauthorizationcodeurl",children:"GetAuthorizationCodeURL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetAuthorizationCodeURL(redirect As %String, scope As %String, ByRef properties As %String, Output sc As %Status) As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the URL for use by authorization code grant type."}),"\n",(0,s.jsx)(n.h3,{id:"revoketoken",children:"RevokeToken"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method RevokeToken() As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Revoke the token associated with this connection."}),"\n",(0,s.jsx)(n.h3,{id:"open",children:"Open"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Open(name As %String, Output sc As %Status) As %SYS.MFT.Connection.Base\n"})}),"\n",(0,s.jsx)(n.p,{children:"Open a %SYS.MFT.Connection.Base subclass instance based on the ConnectionName property."}),"\n",(0,s.jsx)(n.h3,{id:"save",children:"Save"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Save() As %Status\n"})}),"\n",(0,s.jsxs)(n.p,{children:["The Save method saves a %SYS.MFT.Connection.Base object. To save a new Connection object use the following procedure:",(0,s.jsx)(n.br,{}),"\n- get a new object with %New of the appropriate subclass of %SYS.MFT.Connection.Base.",(0,s.jsx)(n.br,{}),"\n- set required unique Name property.",(0,s.jsx)(n.br,{}),"\n- set any needed properties.",(0,s.jsx)(n.br,{}),"\n- call the Save method."]}),"\n",(0,s.jsx)(n.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnValidateObject(ReadOnly As %Boolean = 0) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"onbeforesave",children:"%OnBeforeSave"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Caller of %Save must have secureity admin resource."}),"\n",(0,s.jsx)(n.h3,{id:"deleteid",children:"DeleteId"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DeleteId(name As %String, keepOAuth2 As %Boolean = 0) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"The DeleteId method deletes an existing connection object specified by its name. If keepOAuth2 is true, then the associated OAuth 2.0 connection is deleted. Otherwise, the OAuth2 connection is kept."}),"\n",(0,s.jsx)(n.h3,{id:"oauth2clientcount",children:"OAuth2ClientCount"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method OAuth2ClientCount() As %Integer\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get count of connection which reference the specified OAuth 2.0 client."}),"\n",(0,s.jsx)(n.h3,{id:"ondelete",children:"%OnDelete"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Caller of %Delete must have secureity admin resource."}),"\n",(0,s.jsx)(n.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ListExecute(ByRef %qHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"List connections."}),"\n",(0,s.jsx)(n.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"listclose",children:"ListClose"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})})]})}function l(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(o,{...e})}):o(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>r,x:()=>c});var s=t(96540);const i={},a=s.createContext(i);function r(e){const n=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:r(e.components),s.createElement(a.Provider,{value:n},e.children)}}}]);