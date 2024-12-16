"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[96185],{2245:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>a,default:()=>c,frontMatter:()=>i,toc:()=>d});var r=s(74848),n=s(28453);const i={pagination_prev:null,pagination_next:null},a="%Net.MIMEWriter",d=[{value:"Properties",id:"properties",level:2},{value:"OutputDestination",id:"outputdestination",level:3},{value:"OutputStream",id:"outputstream",level:3},{value:"Methods",id:"methods",level:2},{value:"%Write",id:"write",level:3},{value:"OutputToDevice",id:"outputtodevice",level:3},{value:"OutputToStream",id:"outputtostream",level:3},{value:"OutputToFile",id:"outputtofile",level:3},{value:"WriteMIMEMessage",id:"writemimemessage",level:3},{value:"WriteMIMEBody",id:"writemimebody",level:3},{value:"WriteBody",id:"writebody",level:3},{value:"WritePart",id:"writepart",level:3},{value:"WriteHeader",id:"writeheader",level:3},{value:"EncodeStreamBase64",id:"encodestreambase64",level:3},{value:"EncodeStreamQuotedPrintable",id:"encodestreamquotedprintable",level:3},{value:"OutputNoEncoding",id:"outputnoencoding",level:3},{value:"pad2",id:"pad2",level:3},{value:"AppendToOutput",id:"appendtooutput",level:3},{value:"ProcessLine",id:"processline",level:3}];function o(e){const t={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"netmimewriter",children:"%Net.MIMEWriter"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Net.MIMEWriter Extends %RegisteredObject [ System = 4 ]\n"})}),"\n",(0,r.jsxs)(t.p,{children:[(0,r.jsx)(t.strong,{children:"For information on using this class"}),", see ",(0,r.jsx)(t.a,{href:"/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.MIMEWriter",children:"MIME Messages"}),"."]}),"\n",(0,r.jsx)(t.p,{children:"%Net.MIMEWriter outputs a MIME document as represented by a top-level %Net.MIMEPart with multiple parts specified."}),"\n",(0,r.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(t.h3,{id:"outputdestination",children:"OutputDestination"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Property OutputDestination As %String [ InitialExpression = "device", Private ];\n'})}),"\n",(0,r.jsx)(t.p,{children:'Destination for %Net.MIMEWriter output. Possible values are "file", "stream" and "device".'}),"\n",(0,r.jsx)(t.h3,{id:"outputstream",children:"OutputStream"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property OutputStream As %RawString [ Private ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"Stream for output to stream or file. Will store a stream, but declare as %RegisteredObject to prevent auto create of serial object."}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"write",children:"%Write"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method %Write(text As %String) [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"outputtodevice",children:"OutputToDevice"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method OutputToDevice() As %Status\n"})}),"\n",(0,r.jsx)(t.p,{children:"OutputToDevice sets output to the current device which is the default if no output method is specified."}),"\n",(0,r.jsx)(t.h3,{id:"outputtostream",children:"OutputToStream"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method OutputToStream(ByRef export As %BinaryStream) As %Status\n"})}),"\n",(0,r.jsx)(t.p,{children:'OutputToStream sets output to be directed to a stream. export is the exported stream. If export is the oref of a stream, the MIME document will be written to this existing stream at the current position. If export is "", then a new %GlobalBinaryStream will be created to contain the MIME document and its oref returned. In this case, export must be passed by reference.'}),"\n",(0,r.jsx)(t.h3,{id:"outputtofile",children:"OutputToFile"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method OutputToFile(filename As %String) As %Status\n"})}),"\n",(0,r.jsx)(t.p,{children:'OutputToFile sets output to be directed to a new file, named filename. The file is created with parameters "WNS".'}),"\n",(0,r.jsx)(t.h3,{id:"writemimemessage",children:"WriteMIMEMessage"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method WriteMIMEMessage(message As %Net.MIMEPart) As %Status\n"})}),"\n",(0,r.jsx)(t.p,{children:"WriteMIMEMessage outputs a MIME message."}),"\n",(0,r.jsx)(t.h3,{id:"writemimebody",children:"WriteMIMEBody"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method WriteMIMEBody(message As %Net.MIMEPart) As %Status\n"})}),"\n",(0,r.jsx)(t.p,{children:"WriteMIMEBody outputs the body of a MIME multipart message. If the message is multipart, the caller is expected to output needed headers. If the message, is not multipart, then headers are output."}),"\n",(0,r.jsx)(t.h3,{id:"writebody",children:"WriteBody"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method WriteBody(message As %Net.MIMEPart) As %Status [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Write the body."}),"\n",(0,r.jsx)(t.h3,{id:"writepart",children:"WritePart"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method WritePart(part As %Net.MIMEPart) As %Status [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Write a MIME part"}),"\n",(0,r.jsx)(t.h3,{id:"writeheader",children:"WriteHeader"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method WriteHeader(name As %String, value As %String)\n"})}),"\n",(0,r.jsx)(t.p,{children:"Write a header"}),"\n",(0,r.jsx)(t.h3,{id:"encodestreambase64",children:"EncodeStreamBase64"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method EncodeStreamBase64(stream As %Stream.Object) As %Status [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Write stream -- base64 encoded"}),"\n",(0,r.jsx)(t.h3,{id:"encodestreamquotedprintable",children:"EncodeStreamQuotedPrintable"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method EncodeStreamQuotedPrintable(stream As %Stream.Object) As %Status [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Write stream -- quoted printable encoded"}),"\n",(0,r.jsx)(t.h3,{id:"outputnoencoding",children:"OutputNoEncoding"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method OutputNoEncoding(stream As %Stream.Object) [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Write stream - not encoded"}),"\n",(0,r.jsx)(t.h3,{id:"pad2",children:"pad2"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method pad2(n As %String) As %String [ CodeMode = expression, Internal, Private ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Return integer or hex padded to 2 place with leading zeros"}),"\n",(0,r.jsx)(t.h3,{id:"appendtooutput",children:"AppendToOutput"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method AppendToOutput(ByRef out As %String, str As %String) [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Append encoded data to output buffer"}),"\n",(0,r.jsx)(t.h3,{id:"processline",children:"ProcessLine"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method ProcessLine(line As %String) [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Output buffered output"})]})}function c(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>a,x:()=>d});var r=s(96540);const n={},i=r.createContext(n);function a(e){const t=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function d(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:a(e.components),r.createElement(i.Provider,{value:t},e.children)}}}]);