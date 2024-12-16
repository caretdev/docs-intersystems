"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[93603],{89314:(e,t,i)=>{i.r(t),i.d(t,{contentTitle:()=>a,default:()=>l,frontMatter:()=>c,toc:()=>s});var n=i(74848),r=i(28453);const c={pagination_prev:null,pagination_next:null},a="%DeepSee.Diagnostic.Monitor",s=[{value:"Methods",id:"methods",level:2},{value:"%FetchActivity",id:"fetchactivity",level:3},{value:"%PrintActivity",id:"printactivity",level:3},{value:"%ExportActivityToFile",id:"exportactivitytofile",level:3},{value:"%ConvertBIFrameToString",id:"convertbiframetostring",level:3}];function o(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"deepseediagnosticmonitor",children:"%DeepSee.Diagnostic.Monitor"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.Diagnostic.Monitor\n"})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"fetchactivity",children:"%FetchActivity"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %FetchActivity(Output pActivity, pTag As %String = "*") As %Status\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Fetch the list of all processes which have AppFrameInfo set. Current activity is returned in",(0,n.jsx)(t.br,{}),"\npActivity(ID) = appFrameInfo",(0,n.jsx)(t.br,{}),"\nOptionally pTag may be supplied to limit the collection to appFrameInfo which contains the requested tag."]}),"\n",(0,n.jsx)(t.h3,{id:"printactivity",children:"%PrintActivity"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %PrintActivity(pTag As %String = "%BI")\n'})}),"\n",(0,n.jsx)(t.p,{children:'Write current activity to the current device. The pTag parameter can filter the export to a collection of AppFrameInfo entries pushed to the stack with that identification tag at $LB(frameInfo,1). By default this will collect all AppFrameInfo entries which use the "%BI" tag anywhere in the stack.'}),"\n",(0,n.jsx)(t.h3,{id:"exportactivitytofile",children:"%ExportActivityToFile"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %ExportActivityToFile(pFileName = "", pTag As %String = "%BI") As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:'Export current activity recorded in the AppFrameInfo to a file. The pTag parameter can filter the export to a collection of AppFrameInfo entries pushed to the stack with that identification tag at $LB(frameInfo,1). By default this will collect all AppFrameInfo entries which use the "%BI" tag anywhere in the stack.'}),"\n",(0,n.jsx)(t.h3,{id:"convertbiframetostring",children:"%ConvertBIFrameToString"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %ConvertBIFrameToString(pFrameItem As %String, pIndent = 10) As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Conversion a single stack piece of appFrame data to a printable string."})]})}function l(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,t,i)=>{i.d(t,{R:()=>a,x:()=>s});var n=i(96540);const r={},c=n.createContext(r);function a(e){const t=n.useContext(c);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function s(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),n.createElement(c.Provider,{value:t},e.children)}}}]);