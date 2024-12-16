"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[26300],{86398:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>i,default:()=>c,frontMatter:()=>a,toc:()=>l});var n=s(74848),r=s(28453);const a={pagination_prev:null,pagination_next:null},i="%CSP.StreamServer",l=[{value:"Parameters",id:"parameters",level:2},{value:"UseSession",id:"usesession",level:3},{value:"Methods",id:"methods",level:2},{value:"OnPreHTTP",id:"onprehttp",level:3},{value:"OnPage",id:"onpage",level:3},{value:"GetOidForFile",id:"getoidforfile",level:3},{value:"FileClassify",id:"fileclassify",level:3},{value:"ToHTTPDate",id:"tohttpdate",level:3},{value:"FromHTTPDate",id:"fromhttpdate",level:3}];function o(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"cspstreamserver",children:"%CSP.StreamServer"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %CSP.StreamServer Extends %CSP.Page [ System = 3 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["The %CSP.StreamServer serves any stream data directly from InterSystems IRIS. It derives from %CSP.Page and implements the OnPage() and OnPreHTTP() methods.",(0,n.jsx)(t.br,{}),"\nYou can control how the stream is sent using the stream's attributes, these attributes can be accessed via properties in the %CSP.CharacterStream and %CSP.BinaryStream, however you can also set these directly in any stream class. The attributes are:"]}),"\n",(0,n.jsxs)(t.ol,{children:["\n",(0,n.jsxs)(t.li,{children:[(0,n.jsx)(t.strong,{children:"ContentType"})," - Sets the %response.ContentType property"]}),"\n",(0,n.jsxs)(t.li,{children:[(0,n.jsx)(t.strong,{children:"CharSet"})," - Sets the %response.CharSet property"]}),"\n",(0,n.jsxs)(t.li,{children:[(0,n.jsx)(t.strong,{children:"Expires"})," - Sets the %response.Expires property"]}),"\n",(0,n.jsxs)(t.li,{children:[(0,n.jsx)(t.strong,{children:"ContentDisposition"}),' - Set the \'Content-Disposition\' response header\nYou can set the default charset to server up character files in using the global ^%SYS("CSP","DefaultFileCharset"), and if you need to define settings per extension (in uppercase) you can use ^%SYS("CSP","MimeFileClassify",$zcvt(ext,"U"))=$listbuild(type,bin,charset) where:']}),"\n",(0,n.jsx)(t.li,{children:"type - Content Type value, e.g. 'text/javascript'"}),"\n",(0,n.jsx)(t.li,{children:"bin - 1 if this is binary and 0 if this is a character file"}),"\n",(0,n.jsx)(t.li,{children:"charset - For character files the charset to report in the charset header\nIf nothing is defined then for character files we use the default charset associated with the file device in InterSystems IRIS."}),"\n"]}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"usesession",children:"UseSession"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter UseSession As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Stream serving does not need the session"}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"onprehttp",children:"OnPreHTTP"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OnPreHTTP() As %Boolean\n"})}),"\n",(0,n.jsx)(t.p,{children:"The OnPostHTTP() is called by the CSP dispatcher before the HTTP headers have been sent. Here, we check that the incoming STREAMOID value is valid, then we set the appropriate content type and content length values into the %response object (see %CSP.Request), in preparation for sending the image data in the OnPage()."}),"\n",(0,n.jsx)(t.h3,{id:"onpage",children:"OnPage"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OnPage() As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"The OnPage() is called by the CSP dispatcher to generate the page content. For %CSP.StreamServer, since the content type is actually a stream, not HTML we simply write out the stream data."}),"\n",(0,n.jsx)(t.h3,{id:"getoidforfile",children:"GetOidForFile"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetOidForFile(file As %String) As %ObjectIdentity [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Get oid for file"}),"\n",(0,n.jsx)(t.h3,{id:"fileclassify",children:"FileClassify"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod FileClassify(ext As %String, ByRef type As %String, ByRef bin As %Boolean, ByRef charset As %String) As %Boolean\n"})}),"\n",(0,n.jsx)(t.p,{children:"Classify a file type"}),"\n",(0,n.jsx)(t.h3,{id:"tohttpdate",children:"ToHTTPDate"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ToHTTPDate(h As %String) As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Convert a $H value into an HTTP date format. It assumes that $H is local time and converts it to UTC"}),"\n",(0,n.jsx)(t.h3,{id:"fromhttpdate",children:"FromHTTPDate"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod FromHTTPDate(hd As %String) As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Convert an HTTP date to a $HOROLOG format date, converts from UTC time to the local time."})]})}function c(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>i,x:()=>l});var n=s(96540);const r={},a=n.createContext(r);function i(e){const t=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),n.createElement(a.Provider,{value:t},e.children)}}}]);