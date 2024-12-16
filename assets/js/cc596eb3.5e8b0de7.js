"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[57309],{95050:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>i,default:()=>c,frontMatter:()=>a,toc:()=>l});var n=t(74848),r=t(28453);const a={pagination_prev:null,pagination_next:null},i="SYS.Database.BackgroundFileCompact",l=[{value:"Parameters",id:"parameters",level:2},{value:"CANCELDISPOSITION",id:"canceldisposition",level:3},{value:"PAUSEDISPOSITION",id:"pausedisposition",level:3},{value:"Properties",id:"properties",level:2},{value:"Database",id:"database",level:3},{value:"BlocksScanned",id:"blocksscanned",level:3},{value:"BlockSize",id:"blocksize",level:3},{value:"Methods",id:"methods",level:2},{value:"Execute",id:"execute",level:3},{value:"OnStarting",id:"onstarting",level:3},{value:"GetProgress",id:"getprogress",level:3},{value:"GetDisplayInfo",id:"getdisplayinfo",level:3}];function o(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"sysdatabasebackgroundfilecompact",children:"SYS.Database.BackgroundFileCompact"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class SYS.Database.BackgroundFileCompact Extends %SYS.BackgroundTask\n"})}),"\n",(0,n.jsx)(s.p,{children:"Class to start, monitor and control the Database Compaction utiltity running in the background. The method run in the background is the FileCompact method of SYS.Database."}),"\n",(0,n.jsx)(s.p,{children:"To start it"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{children:"set oref=##class(SYS.Database.BackgroundFileCompact).Start(Directory,TargetFree)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Start returns an oref to an object of this class that can be inspected and reloaded to get status and progress updates. See superclass %SYS.BackgroundTask for detailed information on features of this object."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"canceldisposition",children:"CANCELDISPOSITION"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter CANCELDISPOSITION = -1;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Disposition for cancel requests."}),"\n",(0,n.jsxs)(s.p,{children:["0 - not allowed",(0,n.jsx)(s.br,{}),"\n1 - polls for cancel requests",(0,n.jsx)(s.br,{}),"\n-1 - directly terminate the process"]}),"\n",(0,n.jsx)(s.h3,{id:"pausedisposition",children:"PAUSEDISPOSITION"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter PAUSEDISPOSITION = -1;\n"})}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"database",children:"Database"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property Database As %SysPath;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Database directory on which to operate"}),"\n",(0,n.jsx)(s.h3,{id:"blocksscanned",children:"BlocksScanned"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property BlocksScanned As %Integer [ Calculated, SqlComputeCode = { set {*}={ProgressDetails} }, SqlComputed ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"Blocks scanned as part of compaction. This includes blocks that have been relocated, either explicity because they needed to be moved, or incidentally as part of the operation. Also includes blocks searched as required to move a big string storage block. The expected value is highly dependent on the physical structure of the databases and is hard to predict; it serves mostly as an indication of forward progress."}),"\n",(0,n.jsx)(s.h3,{id:"blocksize",children:"BlockSize"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property BlockSize As %Integer [ Internal, Private ];\n"})}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"execute",children:"Execute"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method Execute(dir, targfree) As %Status [ Internal, Private ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"onstarting",children:"OnStarting"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnStarting(dir, targfree) As %Status [ Internal, Private ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"getprogress",children:"GetProgress"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetProgress(ByRef current As %Integer, ByRef total As %Integer, ByRef details As %String, ByRef units As %String) As %Status [ Internal, Private ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"getdisplayinfo",children:"GetDisplayInfo"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDisplayInfo(Output array) As %List [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Optional method to override in subclasses. Sets up output array with information about how to display properties defined in this subclass. The form of the output array is"}),"\n",(0,n.jsx)(s.p,{children:"array(i)=$listbuild(propertyname,label,isprogressdetail)"}),"\n",(0,n.jsx)(s.p,{children:"where the following meanings apply"}),"\n",(0,n.jsxs)(s.ul,{children:["\n",(0,n.jsx)(s.li,{children:"i - A numeric index, starting at 1, and incrementing for each subclass property to display"}),"\n",(0,n.jsx)(s.li,{children:"propertyname - The name of the property to display"}),"\n",(0,n.jsx)(s.li,{children:"label - A (localized) string label to display for this property"}),"\n",(0,n.jsx)(s.li,{children:"qualifiers - A string of letter qualifiers that affect how the property will be displayed (see below)"}),"\n"]}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"qualifiers"})," supported"]}),"\n",(0,n.jsxs)(s.ul,{children:["\n",(0,n.jsx)(s.li,{children:'"p" - Progress property; place this property with the standard progress information. Such properties typically have values derived from ProgressDetails, which is populated by the subclass in GetProgress.'}),"\n"]})]})}function c(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>i,x:()=>l});var n=t(96540);const r={},a=n.createContext(r);function i(e){const s=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),n.createElement(a.Provider,{value:s},e.children)}}}]);