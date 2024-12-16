"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[85957],{3939:(e,t,i)=>{i.r(t),i.d(t,{contentTitle:()=>c,default:()=>o,frontMatter:()=>s,toc:()=>a});var r=i(74848),n=i(28453);const s={pagination_prev:null,pagination_next:null},c="%Net.X509Certificate",a=[{value:"Properties",id:"properties",level:2},{value:"Certificate",id:"certificate",level:3},{value:"SSLCNCheck",id:"sslcncheck",level:3},{value:"CertChainCheck",id:"certchaincheck",level:3},{value:"LifeSpanCheck",id:"lifespancheck",level:3},{value:"NotBeforeCheck",id:"notbeforecheck",level:3},{value:"NotAfterCheck",id:"notaftercheck",level:3},{value:"CAFile",id:"cafile",level:3},{value:"CRLFile",id:"crlfile",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"CertificateSet",id:"certificateset",level:3},{value:"Field",id:"field",level:3},{value:"Extension",id:"extension",level:3},{value:"RunVerificationChecks",id:"runverificationchecks",level:3},{value:"VerifyCertChain",id:"verifycertchain",level:3},{value:"VerifyLifeSpan",id:"verifylifespan",level:3},{value:"VerifyNotBefore",id:"verifynotbefore",level:3},{value:"VerifyNotAfter",id:"verifynotafter",level:3},{value:"RetrievePeerCertificate",id:"retrievepeercertificate",level:3},{value:"RetrievePeerCertUsingJSON",id:"retrievepeercertusingjson",level:3}];function l(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"netx509certificate",children:"%Net.X509Certificate"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Net.X509Certificate Extends %RegisteredObject [ ServerOnly = 1, System = 3 ]\n"})}),"\n",(0,r.jsxs)(t.p,{children:["This class can be used to query the SSL PeerCertificate retrieved by %Net.HttpRequest when SSLCheckIdentityServer is enabled.",(0,r.jsx)(t.br,{}),"\nIt also contains convenience wrappers for %SYSTEM.Encryption X509 methods.",(0,r.jsx)(t.br,{}),"\nPassing all the validity checks in this class does not mean the SSL Peer Certificate is valid."]}),"\n",(0,r.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(t.h3,{id:"certificate",children:"Certificate"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Property Certificate As %Binary(MAXLEN = "");\n'})}),"\n",(0,r.jsx)(t.p,{children:"X.509 digital certificate"}),"\n",(0,r.jsx)(t.h3,{id:"sslcncheck",children:"SSLCNCheck"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property SSLCNCheck As %Status;\n"})}),"\n",(0,r.jsxs)(t.p,{children:["Status returned by %Net.HttpRequest CheckSSLCN method when SSLCheckServerIdentity is true.",(0,r.jsx)(t.br,{}),"\nBy examining the return from %Net.HttpRequest Send the RetrievePeerCertificate will set this to $$$OK if the return from Send is $$$OK or the errors SSLCertificateNoMatch or SSLNoCertificate as returned by %Net.HttpRequest Send",(0,r.jsx)(t.br,{}),"\nIf a different error is returned then SSLCNCheck is left as empty"]}),"\n",(0,r.jsx)(t.h3,{id:"certchaincheck",children:"CertChainCheck"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Property CertChainCheck As %String(MAXLEN = "");\n'})}),"\n",(0,r.jsx)(t.p,{children:"Output from running $SYSTEM.Encryption.X509VerifyCertChain as executed by VerifyCertChain on Certificate with CAFile and optional CRLFile"}),"\n",(0,r.jsx)(t.h3,{id:"lifespancheck",children:"LifeSpanCheck"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property LifeSpanCheck As %Boolean;\n"})}),"\n",(0,r.jsxs)(t.p,{children:["Boolean test result of checking if the number of days between the ValidityNotBefore and the ValidityNotBefore fields in Certificate is less than the maximum number of days used by VerifyLifeSpan",(0,r.jsx)(t.br,{}),"\nThe default maximum days is set to 730."]}),"\n",(0,r.jsx)(t.h3,{id:"notbeforecheck",children:"NotBeforeCheck"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property NotBeforeCheck As %Boolean;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Boolean test result of checking if ValidityNotBefore field in Certificate is before or the same as the current time."}),"\n",(0,r.jsx)(t.h3,{id:"notaftercheck",children:"NotAfterCheck"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property NotAfterCheck As %Boolean;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Boolean test result of checking if ValidityNotAfter field in Certificate is after or the same as the current time."}),"\n",(0,r.jsx)(t.h3,{id:"cafile",children:"CAFile"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Property CAFile As %String(MAXLEN = "");\n'})}),"\n",(0,r.jsxs)(t.p,{children:["CAFile - Name of a file containing trusted Certificate Authority certificates",(0,r.jsx)(t.br,{}),"\nUsed by VerifyCertChain"]}),"\n",(0,r.jsx)(t.h3,{id:"crlfile",children:"CRLFile"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Property CRLFile As %String(MAXLEN = "");\n'})}),"\n",(0,r.jsx)(t.p,{children:"CRLFile - Name of a file containing Certificate Revocation lists (optional) Used by VerifyCertChain"}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Method %OnNew(certificate As %String = "", sslcncheck As %Status = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(t.h3,{id:"certificateset",children:"CertificateSet"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method CertificateSet(certificate) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"field",children:"Field"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method Field(pX509Field As %String, Output pStatus As %Status = {$$$OK})\n"})}),"\n",(0,r.jsxs)(t.p,{children:["Call X509GetField on the Certificate for the pX509Field",(0,r.jsx)(t.br,{}),"\nReturns in the pStatus status of the call.",(0,r.jsx)(t.br,{}),"\nSee %SYSTEM.Encryption for documention on the X509GetField method."]}),"\n",(0,r.jsx)(t.h3,{id:"extension",children:"Extension"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method Extension(pX509Extension As %String, Output pStatus As %Status = {$$$OK})\n"})}),"\n",(0,r.jsx)(t.p,{children:"Convenience method to prepend Extension: to the pX509Extension before calling Field"}),"\n",(0,r.jsx)(t.h3,{id:"runverificationchecks",children:"RunVerificationChecks"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method RunVerificationChecks(pVerifyCertChain As %Boolean = 1, pLifeSpanMaxDays As %Integer = 730) As %Boolean\n"})}),"\n",(0,r.jsxs)(t.p,{children:["Run the methods:",(0,r.jsx)(t.br,{}),"\nVerifyCertChain if pVerifyCertChains is true (the default is true)",(0,r.jsx)(t.br,{}),"\nVerifyLifeSpan using pLifeSpanMaxDays (the default is 730 days)",(0,r.jsx)(t.br,{}),"\nVerifyNotBefore",(0,r.jsx)(t.br,{}),"\nVerifyNotAfter",(0,r.jsx)(t.br,{}),"\nThis method returns true if the checks that were run passed and and if the initial SSL Server Identity check (SSLCNCheck) passed."]}),"\n",(0,r.jsx)(t.h3,{id:"verifycertchain",children:"VerifyCertChain"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method VerifyCertChain() As %String\n"})}),"\n",(0,r.jsxs)(t.p,{children:["Output from running $SYSTEM.Encryption.X509VerifyCertChain as on Certificate with CAFile and optional CRLFile.",(0,r.jsx)(t.br,{}),"\nAlso populates return in CertChainCheck"]}),"\n",(0,r.jsx)(t.h3,{id:"verifylifespan",children:"VerifyLifeSpan"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method VerifyLifeSpan(pMaxDays As %Integer = 730) As %Boolean\n"})}),"\n",(0,r.jsxs)(t.p,{children:["Boolean test result of checking if the number of days between the ValidityNotBefore and the ValidityNotBefore fields in Certificate is less than the maximum number of days used by pMaxDays",(0,r.jsx)(t.br,{}),"\nThe default maximum days is set to 730.",(0,r.jsx)(t.br,{}),"\nThe result is also stored in LifeSpanCheck",(0,r.jsx)(t.br,{}),"\nIf an error is encountered retrieving the value of ValidityNotBefore or ValidityNotAfter from the certificate the returned value is False."]}),"\n",(0,r.jsx)(t.h3,{id:"verifynotbefore",children:"VerifyNotBefore"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method VerifyNotBefore() As %Boolean\n"})}),"\n",(0,r.jsxs)(t.p,{children:["Boolean test result of checking if ValidityNotBefore field in Certificate is before or the same as the current time.",(0,r.jsx)(t.br,{}),"\nThe result is also stored in NotBeforeCheck",(0,r.jsx)(t.br,{}),"\nIf an error is encountered retrieving the value of ValidityNotBefore from the certificate the returned value is False."]}),"\n",(0,r.jsx)(t.h3,{id:"verifynotafter",children:"VerifyNotAfter"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method VerifyNotAfter() As %Boolean\n"})}),"\n",(0,r.jsxs)(t.p,{children:["Boolean test result of checking if ValidityNotAfter field in Certificate is after or the same as the current time.",(0,r.jsx)(t.br,{}),"\nThe result is also stored in NotBeforeAfter",(0,r.jsx)(t.br,{}),"\nIf an error is encountered retrieving the value of ValidityNotAfter from the certificate the returned value is False."]}),"\n",(0,r.jsx)(t.h3,{id:"retrievepeercertificate",children:"RetrievePeerCertificate"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod RetrievePeerCertificate(ByRef pHttpRequest As %Net.HttpRequest, pURL As %String = "/", pVerb As %String = "OPTIONS", Output pSSLPeerCert As %Net.X509Certificate) As %Status\n'})}),"\n",(0,r.jsxs)(t.p,{children:["Convenience method to make an HTTPS Request that will populate the SSLPeerCertificate property of %Net.HttpRequest using a pre-existing %Net.HttpRequest object and instantiate pSSLPeerCert of type %Net.X509Certificate if the certificate was retrieved or Server identification check failed.",(0,r.jsx)(t.br,{}),"\nFor convenience the property SSLCheckServerIdentity is set to true.",(0,r.jsx)(t.br,{}),"\npURL defaults to /",(0,r.jsx)(t.br,{}),"\npVerb defaults to OPTIONS",(0,r.jsx)(t.br,{}),"\nThe status returned will be the status returned by the %Net.HttpRequest Send method unless the error is $$$SSLNoCertificate or $$$SSLCertificateNoMatch in which an $$$OK will be returned and the SSLCNCheck will contain SSL Server Identity Check error."]}),"\n",(0,r.jsx)(t.h3,{id:"retrievepeercertusingjson",children:"RetrievePeerCertUsingJSON"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod RetrievePeerCertUsingJSON(pHttpInfo As %DynamicObject, Output pHttpRequest As %Net.HttpRequest, Output pSSLPeerCert As %Net.X509Certificate) As %Status\n"})}),"\n",(0,r.jsxs)(t.p,{children:["Convenience method to call RetrievePeerCertificate using a %Library.DynamicObject to create the initial %Net.HttpRequest object and provide the other optional parameters.",(0,r.jsx)(t.br,{}),"\nThe structure of the pHttpInfo dynamic object is:",(0,r.jsx)(t.br,{}),'\n{"url":,',(0,r.jsx)(t.br,{}),'\n{"verb":},',(0,r.jsx)(t.br,{}),'\n{"request":{"properties of %Net.HttpRequest...","Server":"docs.intersystems.com","SSLConfiguration":"ClientSSLConfig"}}']})]})}function o(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,t,i)=>{i.d(t,{R:()=>c,x:()=>a});var r=i(96540);const n={},s=r.createContext(n);function c(e){const t=r.useContext(s);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:c(e.components),r.createElement(s.Provider,{value:t},e.children)}}}]);