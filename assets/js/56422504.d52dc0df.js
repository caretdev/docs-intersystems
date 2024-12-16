"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[12583],{28756:(e,n,l)=>{l.r(n),l.d(n,{contentTitle:()=>t,default:()=>o,frontMatter:()=>r,toc:()=>c});var i=l(74848),s=l(28453);const r={pagination_prev:null,pagination_next:null},t="%Installer.GlobalMapping",c=[{value:"Properties",id:"properties",level:2},{value:"Global",id:"global",level:3},{value:"From",id:"from",level:3},{value:"Collation",id:"collation",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGenerateCode",id:"ongeneratecode",level:3}];function a(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,s.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"installerglobalmapping",children:"%Installer.GlobalMapping"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Installer.GlobalMapping Extends %Installer.Mapping [ ServerOnly = 1, System = 3 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:'This is a "GlobalMapping" activity within a Manifest document'}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"global",children:"Global"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Global As %String(MAXLEN = 128) [ Required ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Global to map"}),"\n",(0,i.jsx)(n.h3,{id:"from",children:"From"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property From As %String [ Required ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Source database"}),"\n",(0,i.jsx)(n.h3,{id:"collation",children:"Collation"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Collation As %Installer.Integer;\n"})}),"\n",(0,i.jsx)(n.p,{children:"Collation to be used for this mapping. Current codes are:"}),"\n",(0,i.jsxs)(n.ul,{children:["\n",(0,i.jsx)(n.li,{children:"5 - InterSystems IRIS Default"}),"\n",(0,i.jsx)(n.li,{children:"10 - German-1"}),"\n",(0,i.jsx)(n.li,{children:"11 - Portuguese-1"}),"\n",(0,i.jsx)(n.li,{children:"12 - Polish-1"}),"\n",(0,i.jsx)(n.li,{children:"13 - German-2"}),"\n",(0,i.jsx)(n.li,{children:"14 - Spanish-1"}),"\n",(0,i.jsx)(n.li,{children:"15 - Danish-1"}),"\n",(0,i.jsx)(n.li,{children:"16 - Cyrillic-1"}),"\n",(0,i.jsx)(n.li,{children:"17 - Greek-1"}),"\n",(0,i.jsx)(n.li,{children:"18 - Czech-1"}),"\n",(0,i.jsx)(n.li,{children:"19 - Czech-2"}),"\n",(0,i.jsx)(n.li,{children:"20 - Portuguese-2"}),"\n",(0,i.jsx)(n.li,{children:"21 - Finnish-1"}),"\n",(0,i.jsx)(n.li,{children:"22 - Japanese-1 (in japanese1.dat)"}),"\n",(0,i.jsx)(n.li,{children:"23 - Cyrillic-2"}),"\n",(0,i.jsx)(n.li,{children:"24 - Polish-2"}),"\n",(0,i.jsx)(n.li,{children:"25 - Chinese1 (reserved for future use)"}),"\n",(0,i.jsx)(n.li,{children:"26 - Chinese2 (in Chinese2.dat)"}),"\n",(0,i.jsx)(n.li,{children:"27 - French1"}),"\n",(0,i.jsx)(n.li,{children:"28 - Finnish2"}),"\n",(0,i.jsx)(n.li,{children:"29 - Hungarian1"}),"\n",(0,i.jsx)(n.li,{children:"30 - German3"}),"\n",(0,i.jsx)(n.li,{children:"31 - Polish3"}),"\n",(0,i.jsx)(n.li,{children:"32 - Spanish2"}),"\n",(0,i.jsx)(n.li,{children:"33 - Danish2"}),"\n",(0,i.jsx)(n.li,{children:"34 - Greek2"}),"\n",(0,i.jsx)(n.li,{children:"35 - Finnish3"}),"\n",(0,i.jsx)(n.li,{children:"36 - Lithuanian1"}),"\n",(0,i.jsx)(n.li,{children:"37 - Cyrillic3"}),"\n",(0,i.jsx)(n.li,{children:"38 - Slovenian1"}),"\n",(0,i.jsx)(n.li,{children:"39 - Slovenian2\nThe collation is optional, in which case it will be 5, the default."}),"\n"]}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"ongeneratecode",children:"%OnGenerateCode"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Generate code for this document."})]})}function o(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(a,{...e})}):a(e)}},28453:(e,n,l)=>{l.d(n,{R:()=>t,x:()=>c});var i=l(96540);const s={},r=i.createContext(s);function t(e){const n=i.useContext(r);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:t(e.components),i.createElement(r.Provider,{value:n},e.children)}}}]);