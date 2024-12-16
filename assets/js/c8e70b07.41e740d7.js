"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[21211],{30407:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>t,default:()=>o,frontMatter:()=>l,toc:()=>c});var r=n(74848),i=n(28453);const l={pagination_prev:null,pagination_next:null},t="%SOAP.WST.RequestSecurityToken",c=[{value:"Parameters",id:"parameters",level:2},{value:"XMLFORMAT",id:"xmlformat",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"ELEMENTQUALIFIED",id:"elementqualified",level:3},{value:"XMLPREFIX",id:"xmlprefix",level:3},{value:"XMLSEQUENCE",id:"xmlsequence",level:3},{value:"XMLIGNOREINVALIDTAG",id:"xmlignoreinvalidtag",level:3},{value:"Properties",id:"properties",level:2},{value:"TokenType",id:"tokentype",level:3},{value:"RequestType",id:"requesttype",level:3},{value:"Context",id:"context",level:3},{value:"AppliesTo",id:"appliesto",level:3},{value:"Claims",id:"claims",level:3},{value:"Entropy",id:"entropy",level:3},{value:"Lifetime",id:"lifetime",level:3},{value:"RenewTarget",id:"renewtarget",level:3},{value:"AllowPostdating",id:"allowpostdating",level:3},{value:"Renewing",id:"renewing",level:3},{value:"OnBehalfOf",id:"onbehalfof",level:3},{value:"Issuer",id:"issuer",level:3},{value:"AuthenticationType",id:"authenticationtype",level:3},{value:"KeyType",id:"keytype",level:3},{value:"KeySize",id:"keysize",level:3},{value:"SignatureAlgorithm",id:"signaturealgorithm",level:3},{value:"Encryption",id:"encryption",level:3},{value:"EncryptionAlgorithm",id:"encryptionalgorithm",level:3},{value:"CanonicalizationAlgorithm",id:"canonicalizationalgorithm",level:3},{value:"ComputedKeyAlgorithm",id:"computedkeyalgorithm",level:3},{value:"ProofEncryption",id:"proofencryption",level:3},{value:"KeyWrapAlgorithm",id:"keywrapalgorithm",level:3},{value:"UseKey",id:"usekey",level:3},{value:"SignWith",id:"signwith",level:3},{value:"EncryptWith",id:"encryptwith",level:3},{value:"DelegateTo",id:"delegateto",level:3},{value:"Forwardable",id:"forwardable",level:3},{value:"Delegatable",id:"delegatable",level:3},{value:"Policy",id:"policy",level:3},{value:"PolicyReference",id:"policyreference",level:3},{value:"Participants",id:"participants",level:3},{value:"CancelTarget",id:"canceltarget",level:3},{value:"RequireServerEntropy",id:"requireserverentropy",level:3},{value:"ComputedKeySize",id:"computedkeysize",level:3},{value:"Methods",id:"methods",level:2},{value:"CreateIssueRequest",id:"createissuerequest",level:3},{value:"CreateIssueResponse",id:"createissueresponse",level:3},{value:"CreateCancelResponse",id:"createcancelresponse",level:3},{value:"NotSupported",id:"notsupported",level:3}];function a(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,i.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"soapwstrequestsecuritytoken",children:"%SOAP.WST.RequestSecurityToken"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SOAP.WST.RequestSecurityToken Extends %SOAP.RequestMessage [ System = 4 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"RequestSecurityToken as used for request body in WS-Trust 1.3."}),"\n",(0,r.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(s.h3,{id:"xmlformat",children:"XMLFORMAT"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter XMLFORMAT = "literal";\n'})}),"\n",(0,r.jsx)(s.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-trust/200512";\n'})}),"\n",(0,r.jsx)(s.h3,{id:"elementqualified",children:"ELEMENTQUALIFIED"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter ELEMENTQUALIFIED = 1;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"xmlprefix",children:"XMLPREFIX"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter XMLPREFIX = "wst";\n'})}),"\n",(0,r.jsx)(s.h3,{id:"xmlsequence",children:"XMLSEQUENCE"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter XMLSEQUENCE = 0;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"xmlignoreinvalidtag",children:"XMLIGNOREINVALIDTAG"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter XMLIGNOREINVALIDTAG = 1;\n"})}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"tokentype",children:"TokenType"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property TokenType As %xsd.anyURI(XMLREF = 1);\n"})}),"\n",(0,r.jsx)(s.h3,{id:"requesttype",children:"RequestType"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property RequestType As %xsd.anyURI(XMLREF = 1) [ Required ];\n"})}),"\n",(0,r.jsx)(s.h3,{id:"context",children:"Context"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property Context As %xsd.anyURI(XMLPROJECTION = "attribute");\n'})}),"\n",(0,r.jsx)(s.h3,{id:"appliesto",children:"AppliesTo"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property AppliesTo As %XML.String(REFNAMESPACE = "http://www.w3.org/ns/ws-policy", XMLREF = 1);\n'})}),"\n",(0,r.jsx)(s.h3,{id:"claims",children:"Claims"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Claims As %SOAP.WST.Claims;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"entropy",children:"Entropy"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Entropy As %SOAP.WST.Entropy;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"lifetime",children:"Lifetime"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Lifetime As %SOAP.WST.Lifetime;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"renewtarget",children:"RenewTarget"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property RenewTarget As %SOAP.WST.Target;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"allowpostdating",children:"AllowPostdating"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property AllowPostdating As %String;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"renewing",children:"Renewing"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Renewing As %SOAP.WST.Renewing;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"onbehalfof",children:"OnBehalfOf"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property OnBehalfOf As %SOAP.WST.Target;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"issuer",children:"Issuer"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property Issuer As %SOAP.Addressing.EndpointReference(REFNAMESPACE = "http://www.w3.org/2005/08/addressing", XMLREF = 1);\n'})}),"\n",(0,r.jsx)(s.h3,{id:"authenticationtype",children:"AuthenticationType"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property AuthenticationType As %xsd.anyURI;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"keytype",children:"KeyType"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property KeyType As %xsd.anyURI;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"keysize",children:"KeySize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property KeySize As %xsd.unsignedInt;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"signaturealgorithm",children:"SignatureAlgorithm"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property SignatureAlgorithm As %xsd.anyURI;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"encryption",children:"Encryption"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Encryption As %XML.String;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"encryptionalgorithm",children:"EncryptionAlgorithm"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property EncryptionAlgorithm As %xsd.anyURI;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"canonicalizationalgorithm",children:"CanonicalizationAlgorithm"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property CanonicalizationAlgorithm As %xsd.anyURI;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"computedkeyalgorithm",children:"ComputedKeyAlgorithm"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ComputedKeyAlgorithm As %xsd.anyURI;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"proofencryption",children:"ProofEncryption"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ProofEncryption As %SOAP.WST.Target;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"keywrapalgorithm",children:"KeyWrapAlgorithm"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property KeyWrapAlgorithm As %xsd.anyURI;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"usekey",children:"UseKey"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property UseKey As %SOAP.WST.Target;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"signwith",children:"SignWith"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property SignWith As %xsd.anyURI;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"encryptwith",children:"EncryptWith"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property EncryptWith As %xsd.anyURI;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"delegateto",children:"DelegateTo"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property DelegateTo As %SOAP.WST.Target;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"forwardable",children:"Forwardable"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Forwardable As %Boolean;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"delegatable",children:"Delegatable"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Delegatable As %Boolean;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"policy",children:"Policy"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property Policy As %SOAP.Policy(REFNAMESPACE = "http://www.w3.org/ns/ws-policy", XMLREF = 1);\n'})}),"\n",(0,r.jsx)(s.h3,{id:"policyreference",children:"PolicyReference"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property PolicyReference As %SOAP.PolicyReference(REFNAMESPACE = "http://www.w3.org/ns/ws-policy", XMLREF = 1);\n'})}),"\n",(0,r.jsx)(s.h3,{id:"participants",children:"Participants"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Participants As %SOAP.WST.Participants;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"canceltarget",children:"CancelTarget"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property CancelTarget As %SOAP.WST.Target;\n"})}),"\n",(0,r.jsx)(s.h3,{id:"requireserverentropy",children:"RequireServerEntropy"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property RequireServerEntropy As %Boolean(XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,r.jsx)(s.p,{children:"If RequireServerEntropy is true, then the response to this request must have server entropy"}),"\n",(0,r.jsx)(s.h3,{id:"computedkeysize",children:"ComputedKeySize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property ComputedKeySize As %Integer(XMLPROJECTION = "none");\n'})}),"\n",(0,r.jsx)(s.p,{children:"ComputedKeySize specifies the size in bytes of the computed key which will be established. ComputedKeySize is meaningful only if client and server entropy are both specified for a computed key. Default is $$$SOAPWSSCDEFAULTKEYSIZE."}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"createissuerequest",children:"CreateIssueRequest"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod CreateIssueRequest(interval As %Integer = 300, clientEntropy As %SOAP.WST.Entropy = "", requireServerEntropy As %Boolean) As %SOAP.WST.RequestSecurityToken\n'})}),"\n",(0,r.jsxs)(s.p,{children:["Create an Issue request for WS-SecureConversation SecurityContextToken.",(0,r.jsx)(s.br,{}),"\nIf ComputedKeySize is not pre-agreed or specified by a WS-Policy then the ComputedKeySize property should be set to indicate the desired KeySize in bytes before calling StartSecureConversation."]}),"\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:'interval is lifetime of the requested token. To include no Lifetime element pass interval as "". The default interval is 300 seconds.'}),"\n",(0,r.jsx)(s.li,{children:"clientEntropy is the client entropy to be included in the request which is created using ##class(%SOAP.WST.Entropy).Create(...."}),"\n",(0,r.jsx)(s.li,{children:"requireServerEntropy is a %Boolean argument which specifies if server entropy must be supplied. Default is false."}),"\n"]}),"\n",(0,r.jsx)(s.h3,{id:"createissueresponse",children:"CreateIssueResponse"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Method CreateIssueResponse(soapClass As %SOAP.WebService, keysize As %Integer, requireClientEntropy As %Boolean, serverEntropy As %SOAP.WST.Entropy = "", Output error As %String, lifetime As %Integer) As %SOAP.WST.RequestSecurityTokenResponseCollection\n'})}),"\n",(0,r.jsx)(s.p,{children:"Create and return an Issue response for this request with WS-SecureConversation SecurityContextToken."}),"\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:"soapClass is the web service to which the request was sent."}),"\n",(0,r.jsx)(s.li,{children:"keysize is the size of the desired key in bytes. This argument is used only when key is computed based on both client and server entropy. Default is the smaller of length of client entropy and server entropy."}),"\n",(0,r.jsx)(s.li,{children:"requireClientEntropy is true if the request must include client entropy. requireClientEntropy is false if the request must not include client entropy."}),"\n",(0,r.jsx)(s.li,{children:'serverEntropy is %SOAP.WST.Entropy with server entropy or "" if no server entropy.'}),"\n",(0,r.jsx)(s.li,{children:'error contained the returned error string. "" if successful. Otherwise, fault code from section 11 of WS-Trust 1.3 specification.'}),"\n",(0,r.jsx)(s.li,{children:"lifetime is the required duration of the lifetime token in seconds. If not specifed, the client requested lifetime is used or 300 secondss if no client requested lifetime"}),"\n"]}),"\n",(0,r.jsx)(s.h3,{id:"createcancelresponse",children:"CreateCancelResponse"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method CreateCancelResponse(soapClass As %SOAP.WebService, Output error As %String) As %SOAP.WST.RequestSecurityTokenResponseCollection\n"})}),"\n",(0,r.jsx)(s.p,{children:"Create and return an Cancel response for this Cancel request."}),"\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:"soapClass is the web service to which the request was sent."}),"\n",(0,r.jsx)(s.li,{children:'error contained the returned error string. "" if successful. Otherwise, fault code from section 11 of WS-Trust 1.3 specification.'}),"\n"]}),"\n",(0,r.jsx)(s.h3,{id:"notsupported",children:"NotSupported"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method NotSupported(property As %String, Output error As %String) As %SOAP.WST.RequestSecurityTokenResponseCollection [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return not supported error in request"})]})}function o(e={}){const{wrapper:s}={...(0,i.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(a,{...e})}):a(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>t,x:()=>c});var r=n(96540);const i={},l=r.createContext(i);function t(e){const s=r.useContext(l);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:t(e.components),r.createElement(l.Provider,{value:s},e.children)}}}]);