"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[30039],{58726:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>a,frontMatter:()=>o,toc:()=>r});var s=t(74848),i=t(28453);const o={pagination_prev:null,pagination_next:null},l="%Collection.ListOfObjCN",r=[{value:"Methods",id:"methods",level:2},{value:"Find",id:"find",level:3},{value:"Serialize",id:"serialize",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"collectionlistofobjcn",children:"%Collection.ListOfObjCN"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Collection.ListOfObjCN Extends %Collection.ListOfObj [ System = 2 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"A version of the %Collection.ListOfObj collection class that stores class names in OIDs. These %Collection classes can only be used when you have a collection property of another object as they rely on storing the data inside the parent object, they can not be used as 'stand alone' collections, for this use the %ListOfObjectsWithClassName."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"find",children:"Find"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Find(element As %ObjectIdentity, key As %Integer) As %String\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Starting from, but not including, position key, ",(0,s.jsx)(n.strong,{children:"Find"})," finds the next element in the list whose OID value equals element. If key is a null string, ",(0,s.jsx)(n.strong,{children:"Find"})," starts at the beginning of the list."]}),"\n",(0,s.jsxs)(n.p,{children:[(0,s.jsx)(n.strong,{children:"Find"}),' returns the position of the found element or null string ("") if no element was found.']}),"\n",(0,s.jsx)(n.h3,{id:"serialize",children:"Serialize"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method Serialize(force As %Integer = 0) As %String(MAXLEN="")\n'})}),"\n",(0,s.jsx)(n.p,{children:"Serialize() constructs a serialized form of the collection as a string"})]})}function a(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>r});var s=t(96540);const i={},o=s.createContext(i);function l(e){const n=s.useContext(o);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),s.createElement(o.Provider,{value:n},e.children)}}}]);