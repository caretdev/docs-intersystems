"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[99362],{20075:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>o,default:()=>c,frontMatter:()=>i,toc:()=>a});var n=s(74848),r=s(28453);const i={pagination_prev:null,pagination_next:null},o="%SOAP.WebClient",a=[{value:"Parameters",id:"parameters",level:2},{value:"SOAPVERSION",id:"soapversion",level:3},{value:"SOAPACTIONQUOTED",id:"soapactionquoted",level:3},{value:"URLESCAPESOAPACTION",id:"urlescapesoapaction",level:3},{value:"SOAPBINARYCHARSET",id:"soapbinarycharset",level:3},{value:"Properties",id:"properties",level:2},{value:"SoapVersion",id:"soapversion-1",level:3},{value:"HttpRequester",id:"httprequester",level:3},{value:"UsePPGHandler",id:"useppghandler",level:3},{value:"SoapBinary",id:"soapbinary",level:3},{value:"KeepSessionCookie",id:"keepsessioncookie",level:3},{value:"SoapBinaryCharset",id:"soapbinarycharset-1",level:3},{value:"WSANamespace",id:"wsanamespace",level:3},{value:"PolicyConfiguration",id:"policyconfiguration",level:3},{value:"HttpRequest",id:"httprequest",level:3},{value:"ContentType",id:"contenttype",level:3},{value:"SSLConfiguration",id:"sslconfiguration",level:3},{value:"SSLError",id:"sslerror",level:3},{value:"SSLCheckServerIdentity",id:"sslcheckserveridentity",level:3},{value:"GzipOutput",id:"gzipoutput",level:3},{value:"OpenTimeout",id:"opentimeout",level:3},{value:"HttpResponse",id:"httpresponse",level:3},{value:"HTTPVersion",id:"httpversion",level:3},{value:"HttpFollowRedirect",id:"httpfollowredirect",level:3},{value:"HttpProxyServer",id:"httpproxyserver",level:3},{value:"HttpProxyPort",id:"httpproxyport",level:3},{value:"HttpProxyTunnel",id:"httpproxytunnel",level:3},{value:"HttpProxySSLConnect",id:"httpproxysslconnect",level:3},{value:"HttpProxyHTTPS",id:"httpproxyhttps",level:3},{value:"HttpProxyAuthorization",id:"httpproxyauthorization",level:3},{value:"HttpRequestHeaderCharset",id:"httprequestheadercharset",level:3},{value:"HttpUsername",id:"httpusername",level:3},{value:"HttpPassword",id:"httppassword",level:3},{value:"HttpInitiateAuthentication",id:"httpinitiateauthentication",level:3},{value:"HttpAccept202",id:"httpaccept202",level:3},{value:"HttpForceReuseDevice",id:"httpforcereusedevice",level:3},{value:"HttpHeaders",id:"httpheaders",level:3},{value:"HttpWriteTimeout",id:"httpwritetimeout",level:3},{value:"Methods",id:"methods",level:2},{value:"SoapBinarySet",id:"soapbinaryset",level:3},{value:"SetHttpHeader",id:"sethttpheader",level:3},{value:"ResetHttpHeaders",id:"resethttpheaders",level:3},{value:"WSSecurityLogin",id:"wssecuritylogin",level:3},{value:"MakeSecurityHeader",id:"makesecurityheader",level:3},{value:"WSCheckSignatureConfirmation",id:"wschecksignatureconfirmation",level:3},{value:"StartSecureConversation",id:"startsecureconversation",level:3},{value:"CancelSecureConversation",id:"cancelsecureconversation",level:3},{value:"%StartRMSession",id:"startrmsession",level:3},{value:"%CloseRMSession",id:"closermsession",level:3},{value:"SendSOAPRequest",id:"sendsoaprequest",level:3},{value:"InvokeClient",id:"invokeclient",level:3},{value:"SOAPRequestResponse",id:"soaprequestresponse",level:3},{value:"DoSOAPRequest",id:"dosoaprequest",level:3},{value:"LogInputHTTPHeaders",id:"loginputhttpheaders",level:3},{value:"LogOutputHTTPHeaders",id:"logoutputhttpheaders",level:3},{value:"%OnSOAPRequest",id:"onsoaprequest",level:3},{value:"%OnSOAPResponse",id:"onsoapresponse",level:3},{value:"%OnSOAPFinished",id:"onsoapfinished",level:3}];function l(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",zsoap:"zsoap",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"soapwebclient",children:"%SOAP.WebClient"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %SOAP.WebClient Extends %SOAP.WebBase [ Abstract, System = 3 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["SOAP Web Client class.",(0,n.jsx)(t.br,{}),"\nProperties of this class that begin with Http are passed through to the %Net.HttpRequest instance used by the class. The only supported use of this class is as the super class for a SOAP Web Client. Parameters, properties and methods may be used by the application."]}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"soapversion",children:"SOAPVERSION"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter SOAPVERSION As STRING [ Constraint = ",1.1,1.2", Flags = ENUM ];\n'})}),"\n",(0,n.jsx)(t.p,{children:'The SOAPVERSION parameter specified the version of SOAP which is supported. Possible values for the version are 1.1 and 1.2. The default value "" specifies that both SOAP 1.1 and SOAP 1.2 are supported.'}),"\n",(0,n.jsx)(t.h3,{id:"soapactionquoted",children:"SOAPACTIONQUOTED"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SOAPACTIONQUOTED As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(t.p,{children:"If the web client has the parameter SOAPACTIONQUOTED=1, then the web client will quote the SOAPAction value for SOAP 1.1. The default will be SOAPACTIONQUOTED=0 in order to be compatible with earlier versions of InterSystems IRIS."}),"\n",(0,n.jsx)(t.h3,{id:"urlescapesoapaction",children:"URLESCAPESOAPACTION"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter URLESCAPESOAPACTION As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(t.p,{children:"If the web client has the parameter URLESCAPESOAPACTION=1, then the web client will send URL ESCAPED SOAPAction Header for SOAP 1.1. The default will be URLESCAPESOAPACTION=0 in order to be compatible with earlier versions of InterSystems IRIS. New generated IRIS SOAP clients can take advantage of enabled URL Escaping for SOAP 1.1"}),"\n",(0,n.jsx)(t.h3,{id:"soapbinarycharset",children:"SOAPBINARYCHARSET"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SOAPBINARYCHARSET As STRING;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Default charset for remote SOAP binary server. This parameter is by default used to dertermine if binary message needs to be UTF8 encoded."}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"soapversion-1",children:"SoapVersion"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property SoapVersion As %String;\n"})}),"\n",(0,n.jsx)(t.p,{children:'The SoapVersion property is either "1.1" or "1.2" and indicates the SOAP version for the current invocation.'}),"\n",(0,n.jsxs)(t.p,{children:["For a SOAP web client, SoapVersion specifies the SOAP version that is used for the request.",(0,n.jsx)(t.br,{}),'\nIf SoapVersion="" (the default), then "1.1" is used if SOAPVERSION="1.1" or "" (the default). Otherwise "1.2" is used if SOAPVERSION="1.2".',(0,n.jsx)(t.br,{}),"\nAfter the response is received, it is the version of the response. This, SoapVersion should be set before each method call."]}),"\n",(0,n.jsx)(t.h3,{id:"httprequester",children:"HttpRequester"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property HttpRequester As %String(VALUELIST = ",SAX,CACHE") [ Deprecated ];\n'})}),"\n",(0,n.jsx)(t.p,{children:"Deprecated. %Net.HttpRequester will always be used as the network access layer"}),"\n",(0,n.jsx)(t.h3,{id:"useppghandler",children:"UsePPGHandler"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property UsePPGHandler As %Boolean [ InitialExpression = {..#USEPPGHANDLER}, Transient ];\n"})}),"\n",(0,n.jsxs)(t.p,{children:["If UsePPGHandler is true (1), then force SOAP response parsing to use PPG memory.",(0,n.jsx)(t.br,{}),"\nIf UsePPGHandler is false (0), then force SOAP response parsing to use local array memory.",(0,n.jsx)(t.br,{}),'\nIf UsePPGHandler is not set ( or = ""), then use default memory -- usually local array memory.',(0,n.jsx)(t.br,{}),"\nThe default value of this property is the USEPPGHANDLER parameter value."]}),"\n",(0,n.jsx)(t.h3,{id:"soapbinary",children:"SoapBinary"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property SoapBinary As %Boolean [ InitialExpression = {..#SOAPBINARY}, Transient ];\n"})}),"\n",(0,n.jsxs)(t.p,{children:["If SoapBinary is 1, then the web client will use proprietary binary SOAP protocol. The SoapBinary property defaults to the SOAPBINARY parameter.",(0,n.jsx)(t.br,{}),"\nFor requests directed to subclass of %SOAP.WebService but not EnsLib.SOAP.Service"]}),"\n",(0,n.jsx)(t.h3,{id:"keepsessioncookie",children:"KeepSessionCookie"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property KeepSessionCookie As %Boolean [ Internal ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If set then we keep session cookie even if not binary session."}),"\n",(0,n.jsx)(t.h3,{id:"soapbinarycharset-1",children:"SoapBinaryCharset"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property SoapBinaryCharset As %String [ InitialExpression = {..#SOAPBINARYCHARSET}, Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Property to allow override of charset for remote SOAP binary server. This parameter is used to dertermine if binary message needs to be UTF8 encoded. The default for SoapBinaryCharset is the SOAPBINARYCHARSET parameter."}),"\n",(0,n.jsx)(t.h3,{id:"wsanamespace",children:"WSANamespace"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property WSANamespace As %String [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Property to allow the WS-Addressing namespace to be specified for requests"}),"\n",(0,n.jsx)(t.h3,{id:"policyconfiguration",children:"PolicyConfiguration"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property PolicyConfiguration As %String [ Transient ];\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Property to allow override of policy to be used for the web client.",(0,n.jsx)(t.br,{}),"\nPolicyConfiguration is specified as 'Configuration class name':'Configuration name' where 'Configuration name' comes from the name attribute of the configuration element in the configuration class (i.e. sublcass of %SOAP.Configuration\" If PolicyConfiguration=\"\" or is not specified, then the policy specified by the service classname attribute is attached to this class."]}),"\n",(0,n.jsx)(t.h3,{id:"httprequest",children:"HttpRequest"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpRequest As %Net.HttpRequest [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If specified, the caller assigned %Net.HttpRequest instance is used for the web service request."}),"\n",(0,n.jsx)(t.h3,{id:"contenttype",children:"ContentType"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ContentType As %String [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Content-Type to be used for transport class"}),"\n",(0,n.jsx)(t.h3,{id:"sslconfiguration",children:"SSLConfiguration"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property SSLConfiguration As %String [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"The name of the activated TLS/SSL configuration to use for https requests."}),"\n",(0,n.jsx)(t.h3,{id:"sslerror",children:"SSLError"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property SSLError As %String;\n"})}),"\n",(0,n.jsx)(t.p,{children:"If request uses an SSL connection and a SSL handshake error has occurred, then SSLError contains text describing the SSL error."}),"\n",(0,n.jsx)(t.h3,{id:"sslcheckserveridentity",children:"SSLCheckServerIdentity"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property SSLCheckServerIdentity As %Boolean;\n"})}),"\n",(0,n.jsx)(t.p,{children:"When making an SSL connection check the server identity in the certificate matches the name of the system we are connecting to. This defaults to being on and matches based on the rules layed out in section 3.1 of RFC 2818."}),"\n",(0,n.jsx)(t.h3,{id:"gzipoutput",children:"GzipOutput"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property GzipOutput As %Boolean [ InitialExpression = {..#GZIPOUTPUT}, Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If the GzipOutput property is set to true (1), then the output request will be compressed using GZIP. The default value for GzipOutput is the GZIPOUTPUT parameter."}),"\n",(0,n.jsx)(t.h3,{id:"opentimeout",children:"OpenTimeout"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property OpenTimeout As %Integer [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If specified is the amount of time we will wait for the TCP/IP connection to open. If not specified then it will default to Timeout value."}),"\n",(0,n.jsx)(t.h3,{id:"httpresponse",children:"HttpResponse"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpResponse As %Net.HttpResponse [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:'The HttpResponse property is set to the %Net.HttpResponse instance for the response to the web service request. This property is only set when the %Net.HttpRequest object is used to make the request, i.e. when HttpRequestor="CACHE" (the default).'}),"\n",(0,n.jsx)(t.h3,{id:"httpversion",children:"HTTPVersion"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property HTTPVersion As %String [ InitialExpression = "1.1", Transient ];\n'})}),"\n",(0,n.jsx)(t.p,{children:"The HTTP version we should report to the server when making the request. Defaults to '1.1'."}),"\n",(0,n.jsx)(t.h3,{id:"httpfollowredirect",children:"HttpFollowRedirect"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpFollowRedirect As %Boolean [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If true then automatically follow redirection requests from the web server. These are signaled by the HTTP status codes of the form 3xx. The default is false."}),"\n",(0,n.jsx)(t.h3,{id:"httpproxyserver",children:"HttpProxyServer"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpProxyServer As %String [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If you need to make SOAP request through a proxy server you specify the proxy server host name in this property. If this property is defined then the http request will be directed at this machine and it will forward the request to the machine at Location and return the response."}),"\n",(0,n.jsx)(t.p,{children:'You can specify a default proxy server for this namespace or for the entire instance by setting ^SYS("HttpRequest","ProxyServer") or ^%SYS("HttpRequest","ProxyServer").'}),"\n",(0,n.jsx)(t.h3,{id:"httpproxyport",children:"HttpProxyPort"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpProxyPort As %String [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"The port to connect to the proxy web server on. This is often port 8080 (the default)."}),"\n",(0,n.jsx)(t.p,{children:'You can specify a default proxy server for this namespace or for the entire instance by setting ^SYS("HttpRequest","ProxyPort") or ^%SYS("HttpRequest","ProxyPort").'}),"\n",(0,n.jsx)(t.h3,{id:"httpproxytunnel",children:"HttpProxyTunnel"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpProxyTunnel As %Boolean [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If true then use the HTTP CONNECT command to establish a tunnel through the proxy to the target HTTP server. The address of the proxy server is taken from HttpProxyServer and HttpProxyPort. If the endpoint URL has the https: protocol, then once the tunnel is established we will negociate the SSL connection."}),"\n",(0,n.jsx)(t.h3,{id:"httpproxysslconnect",children:"HttpProxySSLConnect"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpProxySSLConnect As %Boolean [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"SSL connection to the proxy server will be used if the HttpProxySSLConnect property = 1.  Use of SSL to the eventual endpoint is determined by the protocol part of web service's location url."}),"\n",(0,n.jsx)(t.h3,{id:"httpproxyhttps",children:"HttpProxyHTTPS"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpProxyHTTPS As %Boolean [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"HttpProxyHTTPS property is ignored since the use of SSL to the end point is now determiend from the url. If using a proxy server and this is true then it issues a request for an https page rather than the normal http page. This allows a proxy server that support https to support a secure connection from this %Net.Httprequest class."}),"\n",(0,n.jsx)(t.h3,{id:"httpproxyauthorization",children:"HttpProxyAuthorization"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpProxyAuthorization As %String [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Sets/get the 'Proxy-Authorization:' header field in the Http request."}),"\n",(0,n.jsx)(t.p,{children:"A user agent that wishes to authenticate itself with a proxy-- usually, but not necessarily, after receiving a 407 response--may do so by including an Proxy-Authorization header field with the request. The Proxy-Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."}),"\n",(0,n.jsx)(t.h3,{id:"httprequestheadercharset",children:"HttpRequestHeaderCharset"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpRequestHeaderCharset As %String [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"The character set to send the HTTP request header in. According to the RFC the HTTP header should only contain ASCII characters as the behaviour with characters outside this range is unspecified. This class defaults to using UTF-8 as this leaves all the ASCII characters unchanged. You should never need to change this parameter."}),"\n",(0,n.jsx)(t.h3,{id:"httpusername",children:"HttpUsername"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpUsername As %String [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If the Username and Password are defined then this information will be sent using Basic authentication to the web server. If you manually set the Authorization header this property will be ignored."}),"\n",(0,n.jsx)(t.h3,{id:"httppassword",children:"HttpPassword"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpPassword As %String [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If the Username and Password are defined then this information will be sent using Basic authentication to the web server. If you manually set the Authorization header this property will be ignored."}),"\n",(0,n.jsx)(t.h3,{id:"httpinitiateauthentication",children:"HttpInitiateAuthentication"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpInitiateAuthentication As %String [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:'A client may initiate a connection to the server with an "Authorization" header containing the initial token for the server for a chosen authentication scheme. %Net.HttpRequest is asked to initiate the connection by setting the InitiateAuthentication property to a string which is a single scheme name. This form will bypass the initial 401 error from the server when the client knows that the server will accept the specified scheme. Supported schemes are Negotiate, NTLM and Basic.'}),"\n",(0,n.jsx)(t.h3,{id:"httpaccept202",children:"HttpAccept202"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpAccept202 As %Boolean [ Transient ];\n"})}),"\n",(0,n.jsxs)(t.p,{children:["If HttpAccept202=0 (default) we follow the WS-I Basic Profile which calls for HTTP response status 202 to be used only if no SOAP envelope is in the HTTP response and return an error if no envelope.",(0,n.jsx)(t.br,{}),"\nIf HttpAccept202=1, HTTP status 202 will treated just the same as HTTP status 200. The HttpResponse.StatusCode property may be checked to see if 202 was actually returned."]}),"\n",(0,n.jsx)(t.h3,{id:"httpforcereusedevice",children:"HttpForceReuseDevice"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpForceReuseDevice As %Boolean [ InitialExpression = 0, Internal ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If set to true then this will force the %Net.HttpRequest class to reuse the existing connection to the web server if the socket is already open. If there is any error it will be reported to the caller. This has been introduced to support reliable SOAP messaging, so should not normally be set by other code."}),"\n",(0,n.jsx)(t.h3,{id:"httpheaders",children:"HttpHeaders"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpHeaders As %String [ MultiDimensional, Private, Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Internal structure used to store the collection of headers for %Net.HttpRequest."}),"\n",(0,n.jsx)(t.h3,{id:"httpwritetimeout",children:"HttpWriteTimeout"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HttpWriteTimeout As %Float [ Transient ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Set this to the timeout the HttpRequest object will use when writing to the remote HTTP server. If not set the value from the HttpRequest object (%Net.HttpRequest) WriteTimeout property will be used which has a default of -1. -1 means it will wait indefinitely for the remote server to accept the written data, change it to another value to specify the timeout in seconds. The minimum value accepted is 2 seconds."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"soapbinaryset",children:"SoapBinarySet"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method SoapBinarySet(value As %Boolean) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Setter method to insure that first not binary message uses session cookie form binary messages"}),"\n",(0,n.jsx)(t.h3,{id:"sethttpheader",children:"SetHttpHeader"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetHttpHeader(name As %String, value As %String) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Add HTTP header to the SOAP request. For example: ",(0,n.jsx)(t.code,{children:'Set client = ##class(My.Generated.Soap.Calculator).%New() Set client.Locaton = http://Server:Port/IRISPrefix/Application/WebService.cls?CfgItem=ProductionServiceName . . . Do client.SetHttpHeader("Header-Name", "Header Value") Do client.SetHttpHeader("SendingFacility", "Haymarket") . . . Do client.WSSecurityLogin(username, password) Try { Set myResult = client.Add(2, 2) } Catch { . . . }'})," The header name is case insensitive and this class forces it to upper case so when the Http request is issued it will output the header as:"]}),"\n",(0,n.jsx)(t.p,{children:"MYHEADER: Data to display"}),"\n",(0,n.jsxs)(t.p,{children:["Note that headers such as Content-Type, Content-Encoding, and Content-Length are part of the entity body rather than the http main headers and as such as forwarded to the ContentType, ContentEncoding and trying to set the Content-Length is just ignored as this is a read only property. Also any attempt to set the 'Connection' header is ignored at this request class does not support persistent connections.",(0,n.jsx)(t.br,{}),'\nFor custom SOAP Headers within SOAP Envelope see Client HeadersOut collection, %SOAP.Header type and WebService XData named "parameters".']}),"\n",(0,n.jsx)(t.h3,{id:"resethttpheaders",children:"ResetHttpHeaders"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method ResetHttpHeaders() As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Clear all previously set Http headers."}),"\n",(0,n.jsx)(t.h3,{id:"wssecuritylogin",children:"WSSecurityLogin"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method WSSecurityLogin(Username As %String, Password As %String) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"The WSSecurityLogin method adds the WS-Security Security header with /UsernameToken. Only the /UsernameToken/Username and /UsernameToken/Password fields are supported. Signing and/or encryption as specified by WS-Security is not supported. These facilities are expected to be implemented by the use of SSL."}),"\n",(0,n.jsx)(t.h3,{id:"makesecurityheader",children:"MakeSecurityHeader"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method MakeSecurityHeader() [ Internal, Private, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"wschecksignatureconfirmation",children:"WSCheckSignatureConfirmation"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method WSCheckSignatureConfirmation() As %Boolean [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Test for valid WS-Security 1.1 SignatureConfirmation elements in response message. Return true if valid."}),"\n",(0,n.jsx)(t.h3,{id:"startsecureconversation",children:"StartSecureConversation"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method StartSecureConversation(RST As %SOAP.WST.RequestSecurityToken) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Start a WS-SecureConversation session by sending the specified RequestSecurityToken body to the web service and obtaining a RequestSecurityTokenResponse. If ComputedKey is to be used with both client and server entropy, ComputedKeySize property of the RequestSecurityToken object should be set before calling StartSecureConversation. RequireServerEntropy property of the RequestSecurityToken object should be set before calling StartSecureConversation."}),"\n",(0,n.jsx)(t.p,{children:"The SecurityContextToken thus returned will be saved in the SecurityContextToken property. Future calls to this client may use this token if needed for the WS-Policy or by explicitly adding to SecurityOut by calling AddSecurityElement."}),"\n",(0,n.jsx)(t.p,{children:"The SecurityOut header needs to be set for proper security for the RequestSecurityToken request. The SecurityOut header used for WS-StartSecureConversation will be cleared after when this method is complete."}),"\n",(0,n.jsx)(t.h3,{id:"cancelsecureconversation",children:"CancelSecureConversation"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method CancelSecureConversation() As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Cancel the this client's current WS-SecureConversation token specified by the SecurityContextToken property. Clear the SecurityContextToken propery. If SecurityOut header has not been set, then a minimal SecurityOut using the token for signing is created. The SecurityOut header used for WS-StartSecureConversation will be cleared after when this method is complete."}),"\n",(0,n.jsx)(t.h3,{id:"startrmsession",children:"%StartRMSession"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %StartRMSession(createSequence As %SOAP.RM.CreateSequence) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Start a WS-ReliableMessaging sequence by sending the specified CreateSequence body to the web service and obtaining a CreateSequenceResponse. Sessions are only supported for HTTP synchronous (HTTP request/response) with anonymouse WS-Addressing and for only a single client instance. The %SYS.RMSession object that is referenced in the %SOAP.RM.CreateSequence object is updated based on the CreateSequenceResponse and saved in the RMSession property of this client. Future calls to this client will use this %SYS.RMSession to make future calls part of this sequence."}),"\n",(0,n.jsx)(t.p,{children:"The SecurityOut header needs to be set for proper security for the CreateSequence request. The SecurityOut header used for WS-ReliableMessaging will be cleared after when this method is complete. If the SecurityContextToken property contains a SecurityContextToken, then this token will be associated with the new sequence."}),"\n",(0,n.jsx)(t.h3,{id:"closermsession",children:"%CloseRMSession"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %CloseRMSession(OmitSeqAckHeader As %Boolean = 0) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Close this client's current WS-ReliableMessaging session specified by the RMSession property. Clear the RMSession property. If OmitSeqAckHeader is set to 1, then a final SequenceAcknowledgement header will suppressed from the response."}),"\n",(0,n.jsx)(t.h3,{id:"sendsoaprequest",children:"SendSOAPRequest"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method SendSOAPRequest(action As %String, oneWay As %Boolean = 0, request As %SOAP.RequestMessage, methodName As %String) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Send a %SOAP.RequestMessage subclass instance as a request message The arguments to this method are:",(0,n.jsx)(t.br,{}),"\nAction is the SOAPAction for the SOAP request.",(0,n.jsx)(t.br,{}),"\nIf OneWay is 1 (true) then no response is expected.",(0,n.jsx)(t.br,{}),"\nRequest is the %SOAP.RequestMessage subclass instance.",(0,n.jsx)(t.br,{}),"\nMethodName is an optional name of the method being called which is used to select the WS-Policy.",(0,n.jsx)(t.br,{}),"\nThe response message node will be set in the ResponseDocuemtn and ResponseNodeId properties of %SOAP.RequestMessage."]}),"\n",(0,n.jsx)(t.h3,{id:"invokeclient",children:"InvokeClient"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method InvokeClient(proxy As %SOAP.ProxyDescriptor, method As %String, Action As %String, OneWay As %Boolean = 0) As %Status [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:['Execute the Web Method represented by the descriptor class on the server. If an error is detected, a ztrap "SOAP" will be issued with %objlasterror containing the error %Status. If is the responsibilty of the caller of the proxy method to set an error trap and test for $ZE["',(0,n.jsx)(t.zsoap,{children:'". Note that if a SOAP fault is received, then the error is $$$SOAPFaultReceived. If method argument is "", then this is an internal call to send the XML body. In this case proxy is the character stream containing the body. This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method.'})]}),"\n",(0,n.jsx)(t.h3,{id:"soaprequestresponse",children:"SOAPRequestResponse"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method SOAPRequestResponse(proxy As %SOAP.ProxyDescriptor, method As %String, Output retryAllowed As %Boolean) As %Status [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Send SOAP request and process response This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,n.jsx)(t.h3,{id:"dosoaprequest",children:"DoSOAPRequest"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method DoSOAPRequest(Client As %SOAP.WebClient, Action As %String, OneWay As %Boolean, requestStream As %BinaryStream, ByRef responseStream As %BinaryStream) As %Status [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Default transport for HTTP protocol %SOAP.WebClient acts as its own transport class. This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,n.jsx)(t.h3,{id:"loginputhttpheaders",children:"LogInputHTTPHeaders"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method LogInputHTTPHeaders() [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Log the HTTP headers associated with an input SOAP message. This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this property."}),"\n",(0,n.jsx)(t.h3,{id:"logoutputhttpheaders",children:"LogOutputHTTPHeaders"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method LogOutputHTTPHeaders() [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Log the HTTP headers associated with an output SOAP message. This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this property."}),"\n",(0,n.jsx)(t.h3,{id:"onsoaprequest",children:"%OnSOAPRequest"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnSOAPRequest(mode As %String, client As %SOAP.WebClient, action As %String, oneWay As %Boolean, method As %String, requestStream As %BinaryStream)\n"})}),"\n",(0,n.jsx)(t.p,{children:"This method is a callback which will be invoked before invoking transport.DoSOAPRequest() method to make the actual SOAP request. This method may be override by the user's web client class. DoSOAPRequest is the transport method which is responsible for sending the SOAP request and receiving the response. The default DoSOAPRequest is included in %SOAP.WebClient and uses HTTP for request/response."}),"\n",(0,n.jsxs)(t.p,{children:['The mode argument specifies the type of SOAP request "SOAP" or "binary".',(0,n.jsx)(t.br,{}),"\nThe client argument is the oref of the web client class.",(0,n.jsx)(t.br,{}),"\nThe action argument contains the value of the SOAPAction.",(0,n.jsx)(t.br,{}),"\nThe oneWay argument is true if no body is to be sent. The method argument is the name of the WebMethod that is being invoked",(0,n.jsx)(t.br,{}),"\nThe requestStream argument contains the SOAP request message in a stream. requestStream may =0 as an optimization to improve SOAP performance. requestStream=0 means that the stream is kept in memory as much as possible with overflow to a global. requestStream may be accessed by using $$$XMLRewind and $$$XMLRead macros."]}),"\n",(0,n.jsx)(t.h3,{id:"onsoapresponse",children:"%OnSOAPResponse"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnSOAPResponse(mode As %String, client As %SOAP.WebClient, action As %String, oneWay As %Boolean, method As %String, requestStream As %BinaryStream, responseStream As %BinaryStream, sc As %Status)\n"})}),"\n",(0,n.jsx)(t.p,{children:"This method is a callback which will be invoked after invoking transport.DoSOAPRequest() method that made the actual SOAP request. This method may be override by the user's web client class. DoSOAPRequest is the transport method which is responsible for sending the SOAP request and receiving the response. The default DoSOAPRequest is included in %SOAP.WebClient and uses HTTP for request/response."}),"\n",(0,n.jsxs)(t.p,{children:['The mode argument specifies the type of SOAP request "SOAP" or "binary".',(0,n.jsx)(t.br,{}),"\nThe client argument is the oref of the web client class.",(0,n.jsx)(t.br,{}),"\nThe action argument contains the value of the SOAPAction.",(0,n.jsx)(t.br,{}),"\nThe oneWay argument is true if no body is to be sent. The method argument is the name of the WebMethod that is being invoked",(0,n.jsx)(t.br,{}),"\nThe requestStream argument contains the SOAP request message in a stream."]}),"\n",(0,n.jsxs)(t.p,{children:["The responseStream argument contains the SOAP response message in a stream.",(0,n.jsx)(t.br,{}),"\nThe sc argument is the %Status that was returned by DoSOAPRequest."]}),"\n",(0,n.jsx)(t.h3,{id:"onsoapfinished",children:"%OnSOAPFinished"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnSOAPFinished(mode As %String, client As %SOAP.WebClient, method As %String, sc As %Status)\n"})}),"\n",(0,n.jsx)(t.p,{children:"This method is a callback which will be invoked after all processing of the web client call has been completed. This method may be override by the user's web client class."}),"\n",(0,n.jsxs)(t.p,{children:['The mode argument specifies the type of SOAP request "SOAP" or "binary".',(0,n.jsx)(t.br,{}),"\nThe client argument is the oref of the web client class.",(0,n.jsx)(t.br,{}),"\nThe method argument is the name of the WebMethod that is being invoked",(0,n.jsx)(t.br,{}),"\nThe sc argument is the %Status for this method. sc will be be $$$OK unless an error has been detected."]})]})}function c(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>o,x:()=>a});var n=s(96540);const r={},i=n.createContext(r);function o(e){const t=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:o(e.components),n.createElement(i.Provider,{value:t},e.children)}}}]);