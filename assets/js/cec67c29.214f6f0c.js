"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[15821],{23800:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>i,default:()=>o,frontMatter:()=>r,toc:()=>c});var s=t(74848),a=t(28453);const r={pagination_prev:null,pagination_next:null},i="%IO.StringStream",c=[{value:"Properties",id:"properties",level:2},{value:"CharEncoding",id:"charencoding",level:3},{value:"%TranslationTable",id:"translationtable",level:3},{value:"Data",id:"data",level:3},{value:"charposmap",id:"charposmap",level:3},{value:"Methods",id:"methods",level:2},{value:"CharEncodingSet",id:"charencodingset",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"Write",id:"write",level:3},{value:"Read",id:"read",level:3},{value:"ReadLine",id:"readline",level:3},{value:"ExternalByteSizeGet",id:"externalbytesizeget",level:3},{value:"SizeGet",id:"sizeget",level:3},{value:"ExternalByteSeek",id:"externalbyteseek",level:3},{value:"Seek",id:"seek",level:3},{value:"ExternalByteTruncateAt",id:"externalbytetruncateat",level:3},{value:"TruncateAt",id:"truncateat",level:3},{value:"%OnClose",id:"onclose",level:3}];function l(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"iostringstream",children:"%IO.StringStream"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %IO.StringStream Extends %IO.I.CharacterSeekableStream [ System = 2 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"A stream class that uses a String for its storage. The underlying String may be in any supported encoding; Set the CharEncoding property to control the interpretation of the string. Note that on Unicode systems it is possible to use a string containing wide-character values. In this case the results of any encoding other than 'Native' are undefined."}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"charencoding",children:"CharEncoding"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property CharEncoding As %String(TRUNCATE = 1) [ InitialExpression = "Native" ];\n'})}),"\n",(0,s.jsx)(n.p,{children:'Names the character encoding used to encode this character stream in its storage or transport format A value of "Native" in this property means the stream is encoded in the native format for the local installation, with no translation done. Values of "RawBytes" or "Binary" mean that each character is represented by the corresponding byte in the external storage or transport format. (This property is overridden from %IO.IParts.ByteIO but has a different meaning in this character IO context.)'}),"\n",(0,s.jsx)(n.h3,{id:"translationtable",children:"%TranslationTable"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property %TranslationTable As %String(TRUNCATE = 1) [ ReadOnly ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"cached value of the encoding translation table derived from CharEncoding"}),"\n",(0,s.jsx)(n.h3,{id:"data",children:"Data"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property Data As %String(TRUNCATE = 1) [ ReadOnly ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"Underlying encoded string data"}),"\n",(0,s.jsx)(n.h3,{id:"charposmap",children:"charposmap"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property charposmap [ MultiDimensional, Private ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"Map of byte positions to character positions"}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"charencodingset",children:"CharEncodingSet"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method CharEncodingSet(pCharEncoding As %String) As %Status\n"})}),"\n",(0,s.jsx)(n.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnNew(initvalue As %String) As %Status [ Private, ProcedureBlock = 1 ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"write",children:"Write"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method Write(pData As %String = "", pFlush As %Boolean, Output pSC As %Status)\n'})}),"\n",(0,s.jsx)(n.h3,{id:"read",children:"Read"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Read(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric, Output pSC As %Status) As %String\n"})}),"\n",(0,s.jsx)(n.h3,{id:"readline",children:"ReadLine"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ReadLine(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric, Output pSC As %Status, ByRef pLineTerminator As %String = {..LineTerminator}) As %String\n"})}),"\n",(0,s.jsx)(n.h3,{id:"externalbytesizeget",children:"ExternalByteSizeGet"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ExternalByteSizeGet() As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"sizeget",children:"SizeGet"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method SizeGet() As %Integer\n"})}),"\n",(0,s.jsx)(n.p,{children:"Return the current character size of the data stream."}),"\n",(0,s.jsx)(n.h3,{id:"externalbyteseek",children:"ExternalByteSeek"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ExternalByteSeek(pBytePos As %Integer, Output pSC As %Status) As %Boolean\n"})}),"\n",(0,s.jsx)(n.h3,{id:"seek",children:"Seek"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Seek(pPosition As %Integer = 1, Output pSC As %Status) As %Boolean\n"})}),"\n",(0,s.jsx)(n.h3,{id:"externalbytetruncateat",children:"ExternalByteTruncateAt"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ExternalByteTruncateAt(pBytePos As %Integer, Output pSC As %Status) As %Boolean\n"})}),"\n",(0,s.jsx)(n.h3,{id:"truncateat",children:"TruncateAt"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method TruncateAt(pPosition As %Integer, Output pSC As %Status) As %Boolean\n"})}),"\n",(0,s.jsx)(n.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Override so as not to call Close()"})]})}function o(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>i,x:()=>c});var s=t(96540);const a={},r=s.createContext(a);function i(e){const n=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),s.createElement(r.Provider,{value:n},e.children)}}}]);