"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[55279],{47796:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>i,toc:()=>a});var t=s(74848),r=s(28453);const i={pagination_prev:null,pagination_next:null},l="%SYSTEM.OS",a=[{value:"Methods",id:"methods",level:2},{value:"Send",id:"send",level:3},{value:"SendRequest",id:"sendrequest",level:3},{value:"SendFlush",id:"sendflush",level:3},{value:"Clear",id:"clear",level:3},{value:"StartLog",id:"startlog",level:3},{value:"StopLog",id:"stoplog",level:3},{value:"LogFlags",id:"logflags",level:3}];function d(e){const n={a:"a",br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"systemos",children:"%SYSTEM.OS"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SYSTEM.OS Extends %SYSTEM.Help [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Output Stream"}),"\n",(0,t.jsxs)(n.p,{children:["This class contains methods to send items framed in ",(0,t.jsx)(n.a,{href:"/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION",children:"$LIST"})," format to a TCP stream. It is part of the InterSystems IRIS Native API. The other endpoint is usually an IRIS server. For input stream methods see %SYSTEM.IS."]}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"send",children:"Send"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Send(item As %String) As %Integer\n"})}),"\n",(0,t.jsx)(n.p,{children:"Send items to the output stream."}),"\n",(0,t.jsx)(n.p,{children:"Each argument of this method is evaluated as an expression and the resulting value is framed (i.e. as a $List item) and added to the device buffer. When adding a framed item to the buffer, if there's not enough space, the previous contents of the buffer are flushed and the operation continues. If any individual item is longer than the buffer size, its frame will be sent with as many intermediate flushes as necessary. In the end, one or more items can remain in the buffer. To have them sent will require an extra flush."}),"\n",(0,t.jsxs)(n.p,{children:[(0,t.jsx)(n.strong,{children:"Parameters:"})," one or more ObjectScript expressions"]}),"\n",(0,t.jsx)(n.p,{children:(0,t.jsx)(n.strong,{children:"Return:"})}),"\n",(0,t.jsxs)(n.ul,{children:["\n",(0,t.jsx)(n.li,{children:"0 if there was no intermediate flush"}),"\n",(0,t.jsx)(n.li,{children:"1 otherwise"}),"\n"]}),"\n",(0,t.jsx)(n.h3,{id:"sendrequest",children:"SendRequest"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SendRequest(msgid As %Integer, contxt As %Integer, opcode As %Integer, item As %String) As %Integer\n"})}),"\n",(0,t.jsx)(n.p,{children:"Send a Native DB request to the output stream."}),"\n",(0,t.jsx)(n.p,{children:"Send a message to the server requesting the execution of the given opcode. The first two arguments, msgid and contxt, are integers that identify the message and the context. The method puts these two integers unchanged in the header. The third argument is an integer that identifies the request (the opcode)."}),"\n",(0,t.jsx)(n.p,{children:"The following arguments, item1, item2, ..., are optional and depend on the opcode. If present they are wrapped as regular $List() items and sent to the server as if by $System.OS.Send(item1, item2, ...). However, in this case, the length field of the header contains the number of bytes that the arguments occupy. If length is zero it means that no arguments were sent and the header contains all the information that the opcode needs."}),"\n",(0,t.jsxs)(n.p,{children:[(0,t.jsx)(n.strong,{children:"Parameters:"}),(0,t.jsx)(n.br,{}),"\n",(0,t.jsx)(n.strong,{children:"msgid"})," - message id (val1 in header).",(0,t.jsx)(n.br,{}),"\n",(0,t.jsx)(n.strong,{children:"contxt"})," - context (val2 in header).",(0,t.jsx)(n.br,{}),"\n",(0,t.jsx)(n.strong,{children:"code"})," - op code.",(0,t.jsx)(n.br,{}),"\n",(0,t.jsx)(n.strong,{children:"item..."})," - zero or more ObjectScript expressions"]}),"\n",(0,t.jsxs)(n.p,{children:[(0,t.jsx)(n.strong,{children:"Return:"})," 0"]}),"\n",(0,t.jsx)(n.h3,{id:"sendflush",children:"SendFlush"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SendFlush(item As %String) As %Integer\n"})}),"\n",(0,t.jsx)(n.p,{children:"Send items to the output stream and flush the buffer."}),"\n",(0,t.jsx)(n.p,{children:"This method is like Send() followed by a buffer flush. Calling it without arguments just causes the flush."}),"\n",(0,t.jsxs)(n.p,{children:[(0,t.jsx)(n.strong,{children:"Parameters:"})," zero or more ObjectScript expressions"]}),"\n",(0,t.jsxs)(n.p,{children:[(0,t.jsx)(n.strong,{children:"Return:"})," 1"]}),"\n",(0,t.jsx)(n.h3,{id:"clear",children:"Clear"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Clear() As %Integer\n"})}),"\n",(0,t.jsx)(n.p,{children:"Remove any data remaining in the output stream buffer."}),"\n",(0,t.jsxs)(n.p,{children:[(0,t.jsx)(n.strong,{children:"Return:"})," 0"]}),"\n",(0,t.jsx)(n.h3,{id:"startlog",children:"StartLog"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod StartLog(flags As %Integer) As %Integer\n"})}),"\n",(0,t.jsx)(n.p,{children:'Start logging to file "sysio_pid.log".'}),"\n",(0,t.jsxs)(n.p,{children:[(0,t.jsx)(n.strong,{children:"Parameters:"}),(0,t.jsx)(n.br,{}),"\n",(0,t.jsx)(n.strong,{children:"flags"})," Optional initial log flags (bit values can be added):"]}),"\n",(0,t.jsxs)(n.ul,{children:["\n",(0,t.jsx)(n.li,{children:"1 - Raw input"}),"\n",(0,t.jsx)(n.li,{children:"2 - Raw output"}),"\n",(0,t.jsx)(n.li,{children:"4 - IS.Execute() received opcodes\nThe default is 3 (raw input + raw output)."}),"\n"]}),"\n",(0,t.jsx)(n.p,{children:(0,t.jsx)(n.strong,{children:"Return:"})}),"\n",(0,t.jsxs)(n.ul,{children:["\n",(0,t.jsx)(n.li,{children:"0 - success"}),"\n",(0,t.jsx)(n.li,{children:"-1 - logging was already enabled"}),"\n",(0,t.jsx)(n.li,{children:"-2 - could not open log file"}),"\n"]}),"\n",(0,t.jsx)(n.h3,{id:"stoplog",children:"StopLog"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod StopLog() As %Integer\n"})}),"\n",(0,t.jsx)(n.p,{children:'Stop logging and close file "sysio_pid.log".'}),"\n",(0,t.jsxs)(n.p,{children:[(0,t.jsx)(n.strong,{children:"Return:"})," 0"]}),"\n",(0,t.jsx)(n.h3,{id:"logflags",children:"LogFlags"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod LogFlags(flags As %Integer) As %Integer\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get and optionally set logging flags."}),"\n",(0,t.jsxs)(n.p,{children:[(0,t.jsx)(n.strong,{children:"Parameters:"}),(0,t.jsx)(n.br,{}),"\n",(0,t.jsx)(n.strong,{children:"flags"})," Optional new flags (bit values can be added):"]}),"\n",(0,t.jsxs)(n.ul,{children:["\n",(0,t.jsx)(n.li,{children:"1 - Raw input"}),"\n",(0,t.jsx)(n.li,{children:"2 - Raw output"}),"\n",(0,t.jsxs)(n.li,{children:["4 - IS.Execute() received opcodes\n",(0,t.jsx)(n.strong,{children:"Return:"})]}),"\n",(0,t.jsx)(n.li,{children:"current flags if no value was passed"}),"\n",(0,t.jsx)(n.li,{children:"previous flags if a new value was passed"}),"\n"]})]})}function o(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(d,{...e})}):d(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>l,x:()=>a});var t=s(96540);const r={},i=t.createContext(r);function l(e){const n=t.useContext(i);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),t.createElement(i.Provider,{value:n},e.children)}}}]);