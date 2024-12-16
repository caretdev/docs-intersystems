"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[80819],{12780:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>c,default:()=>u,frontMatter:()=>a,toc:()=>r});var n=s(74848),o=s(28453);const a={pagination_prev:null,pagination_next:null},c="%Studio.SASchema",r=[{value:"Methods",id:"methods",level:2},{value:"OutputToFile",id:"outputtofile",level:3},{value:"OutputToStream",id:"outputtostream",level:3},{value:"IsUpToDate",id:"isuptodate",level:3}];function i(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,o.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"studiosaschema",children:"%Studio.SASchema"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Studio.SASchema [ Abstract, System = 3 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This class is used as the super class for all the classes that implement SASchema interface."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"outputtofile",children:"OutputToFile"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OutputToFile(pFilename) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Output the SASchema definition to a file. This method does not need to be overriden by subclasses."}),"\n",(0,n.jsx)(t.h3,{id:"outputtostream",children:"OutputToStream"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OutputToStream(pStream As %Stream.Object, Output pChecksum As %String, pParameter As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Subclass should override this method. The method is passed a stream object to which the output should be written. Subclass can also return a checksum for the output. Ths checksum is used to check to see the output is up-to-date."}),"\n",(0,n.jsx)(t.h3,{id:"isuptodate",children:"IsUpToDate"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod IsUpToDate(pChecksum As %String, pParameter As %String) As %Boolean\n"})}),"\n",(0,n.jsx)(t.p,{children:"Subclass should override this method. Return a boolean to indicate whether the output associated with the pChecksum is still up-to-date or not."})]})}function u(e={}){const{wrapper:t}={...(0,o.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(i,{...e})}):i(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>c,x:()=>r});var n=s(96540);const o={},a=n.createContext(o);function c(e){const t=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function r(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:c(e.components),n.createElement(a.Provider,{value:t},e.children)}}}]);