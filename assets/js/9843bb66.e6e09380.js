"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[13299],{6085:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>d,default:()=>c,frontMatter:()=>r,toc:()=>a});var n=s(74848),i=s(28453);const r={pagination_prev:null,pagination_next:null},d="%OAuth2.JWKS",a=[{value:"Methods",id:"methods",level:2},{value:"GetAlg",id:"getalg",level:3},{value:"AddRSA",id:"addrsa",level:3},{value:"AddOct",id:"addoct",level:3},{value:"AddX509",id:"addx509",level:3},{value:"AddEC",id:"addec",level:3},{value:"AddAsymmetric",id:"addasymmetric",level:3}];function l(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,i.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"oauth2jwks",children:"%OAuth2.JWKS"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %OAuth2.JWKS Extends %RegisteredObject [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"getalg",children:"GetAlg"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetAlg(Alg As %String) As %DynamicObject [ Deprecated, Internal ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["This method is deprecated. Use the ",(0,n.jsx)(t.strong,{children:"GetAlgInfo"})," method in %Net.JSON.JWA instead."]}),"\n",(0,n.jsx)(t.h3,{id:"addrsa",children:"AddRSA"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod AddRSA(Alg As %String, ByRef LocalPrivate As %String, ByRef LocalPublic As %String) As %Status [ Deprecated ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This algorithm adds a new RSA private and public key pair to JSON Web Key Sets (JWKS)."}),"\n",(0,n.jsx)(t.p,{children:"Input parameter:"}),"\n",(0,n.jsxs)(t.p,{children:["Alg - The algorithm with which the keys are intended for use.",(0,n.jsx)(t.br,{}),"\nSupported options for signature:",(0,n.jsx)(t.br,{}),'\n"RS256", RSASSA-PKCS1-V1_5 using SHA-256',(0,n.jsx)(t.br,{}),'\n"RS384", RSASSA-PKCS1-V1_5 using SHA-384',(0,n.jsx)(t.br,{}),'\n"RS512", RSASSA-PKCS1-V1_5 using SHA-512',(0,n.jsx)(t.br,{}),"\nSupported options for key management:",(0,n.jsx)(t.br,{}),'\n"RSA1_5", Encryption with RSAES-PKCS1-V1_5',(0,n.jsx)(t.br,{}),'\n"RSA-OAEP", Encryption with RSAES-OAEP']}),"\n",(0,n.jsx)(t.p,{children:"Output parameters:"}),"\n",(0,n.jsx)(t.p,{children:"LocalPrivate - The Local Private JWKS to which the RSA private key will be added. If it does not already exist it will be created."}),"\n",(0,n.jsxs)(t.p,{children:["Local Public - The Local Public JWKS to which the RSA public key will be added. If it does not already exist it will be created.",(0,n.jsx)(t.br,{}),"\nThis method is deprecated. Use the %Net.JSON.JWK and %Net.JSON.JWKS classes to manipulate JWK and JWKS definitions."]}),"\n",(0,n.jsx)(t.h3,{id:"addoct",children:"AddOct"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod AddOct(Alg As %String, ClientSecret As %String, ByRef RemotePublic As %String, EncAlg As %String) As %Status [ Deprecated ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This method adds a new shared symmetric key to a JSON Web Key Set (JWKS)."}),"\n",(0,n.jsxs)(t.p,{children:["Alg - The algorithm for which the key is intended for use.",(0,n.jsx)(t.br,{}),"\nSupported options for signature:",(0,n.jsx)(t.br,{}),'\n"HS256", HMAC with SHA-256',(0,n.jsx)(t.br,{}),'\n"HS384", HMAC with SHA-384',(0,n.jsx)(t.br,{}),'\n"HS512", HMAC with SHA-512',(0,n.jsx)(t.br,{}),"\nSupported options for key management:",(0,n.jsx)(t.br,{}),'\n"A128KW", AES Key Wrap with 128-bit key',(0,n.jsx)(t.br,{}),'\n"A192KW", AES Key Wrap with 192-bit key',(0,n.jsx)(t.br,{}),'\n"A256KW", AES Key Wrap with 256-bit key',(0,n.jsx)(t.br,{}),'\n"dir", direct encryption with a shared symmetric key']}),"\n",(0,n.jsx)(t.p,{children:"ClientSecret - Secret shared between a client and a server. This must have sufficient entropy to support the specified algorithm."}),"\n",(0,n.jsx)(t.p,{children:"Output Parameter:"}),"\n",(0,n.jsxs)(t.p,{children:["RemotePublic - The Remote Public JWKS to which the shared symmetric key will be added. If it does not already exist it will be created.",(0,n.jsx)(t.br,{}),"\nThis method is deprecated. Use the %Net.JSON.JWK and %Net.JSON.JWKS classes to manipulate JWK and JWKS definitions."]}),"\n",(0,n.jsx)(t.h3,{id:"addx509",children:"AddX509"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod AddX509(Alg As %String, X509 As %SYS.X509Credentials, ByRef LocalPrivate As %String, ByRef Public As %String) As %Status [ Deprecated ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This method adds the RSA keys contained in a %SYS.X509Credentials object to JSON Web Key Sets (JWKS)."}),"\n",(0,n.jsx)(t.p,{children:"Input parameters:"}),"\n",(0,n.jsxs)(t.p,{children:["Alg - The algorithm with which the keys are intended for use.",(0,n.jsx)(t.br,{}),"\nSupported options for signature:",(0,n.jsx)(t.br,{}),'\n"RS256", RSASSA-PKCS1-V1_5 using SHA-256',(0,n.jsx)(t.br,{}),'\n"RS384", RSASSA-PKCS1-V1_5 using SHA-384',(0,n.jsx)(t.br,{}),'\n"RS512", RSASSA-PKCS1-V1_5 using SHA-512',(0,n.jsx)(t.br,{}),"\nSupported options for key encryption:",(0,n.jsx)(t.br,{}),'\n"RSA1_5", Encryption with RSAES-PKCS1-V1_5',(0,n.jsx)(t.br,{}),'\n"RSA-OAEP", Encryption with RSAES-OAEP']}),"\n",(0,n.jsx)(t.p,{children:"Output parameters:"}),"\n",(0,n.jsx)(t.p,{children:"If the %SYS.X509Credentials object PrivateKey property is set:"}),"\n",(0,n.jsx)(t.p,{children:"LocalPrivate - The Local Private JWKS to which the RSA private key will be added. If it does not already exist it will be created."}),"\n",(0,n.jsx)(t.p,{children:"Public - The Local Public JWKS to which the RSA public key will be added. If it does not already exist it will be created."}),"\n",(0,n.jsx)(t.p,{children:"If the %SYS.X509Credentials object PrivateKey property is null:"}),"\n",(0,n.jsxs)(t.p,{children:["Public - The Remote Public JWKS to which the RSA public key will be added. If it does not already exist it will be created.",(0,n.jsx)(t.br,{}),"\nThis method is deprecated. Use the %Net.JSON.JWK and %Net.JSON.JWKS classes to manipulate JWK and JWKS definitions."]}),"\n",(0,n.jsx)(t.h3,{id:"addec",children:"AddEC"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod AddEC(Alg As %String, ByRef LocalPrivate As %String, ByRef LocalPublic As %String) As %Status [ Deprecated ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This algorithm adds a new EC private and public key pair to JSON Web Key Sets (JWKS)."}),"\n",(0,n.jsx)(t.p,{children:"Input parameter:"}),"\n",(0,n.jsxs)(t.p,{children:["Alg - The algorithm with which the keys are intended for use.",(0,n.jsx)(t.br,{}),"\nSupported options for signature:",(0,n.jsx)(t.br,{}),'\n"ES256", ECDSA using P-256 and SHA-256',(0,n.jsx)(t.br,{}),'\n"ES384", ECDSA using P-384 and SHA-384',(0,n.jsx)(t.br,{}),'\n"ES512", ECDSA using P-521 and SHA-512']}),"\n",(0,n.jsx)(t.p,{children:"Output parameters:"}),"\n",(0,n.jsx)(t.p,{children:"LocalPrivate - The Local Private JWKS to which the EC private key will be added. If it does not already exist it will be created."}),"\n",(0,n.jsxs)(t.p,{children:["Local Public - The Local Public JWKS to which the EC public key will be added. If it does not already exist it will be created.",(0,n.jsx)(t.br,{}),"\nThis method is deprecated. Use the %Net.JSON.JWK and %Net.JSON.JWKS classes to manipulate JWK and JWKS definitions."]}),"\n",(0,n.jsx)(t.h3,{id:"addasymmetric",children:"AddAsymmetric"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod AddAsymmetric(alg As %String, X509 As %SYS.X509Credentials = "", ByRef private As %String, ByRef public As %String) As %Status [ Private ]\n'})})]})}function c(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>d,x:()=>a});var n=s(96540);const i={},r=n.createContext(i);function d(e){const t=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:d(e.components),n.createElement(r.Provider,{value:t},e.children)}}}]);