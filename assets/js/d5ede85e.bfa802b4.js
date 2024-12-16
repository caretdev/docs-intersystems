"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[30180],{97113:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>o,default:()=>c,frontMatter:()=>i,toc:()=>a});var s=n(74848),r=n(28453);const i={pagination_prev:null,pagination_next:null},o="%Collection.AbstractIterator",a=[{value:"Methods",id:"methods",level:2},{value:"GetNext",id:"getnext",level:3},{value:"Next",id:"next",level:3},{value:"GetAt",id:"getat",level:3}];function l(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"collectionabstractiterator",children:"%Collection.AbstractIterator"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Collection.AbstractIterator [ Abstract, System = 2 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Definition of iterator methods that all our collections classes use to ensure consistency."}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"getnext",children:"GetNext"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetNext(ByRef key As %RawString) As %RawString [ Abstract ]\n"})}),"\n",(0,s.jsx)(t.p,{children:'Finds and returns the value of the element at the location after key in the iteration. If key is a null string (""), it returns the value of the first element in the array.'}),"\n",(0,s.jsx)(t.p,{children:'The value of key, which is passed by reference, is updated to the key value of the returned element or null string ("") if key is at the end of the array.'}),"\n",(0,s.jsx)(t.h3,{id:"next",children:"Next"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method Next(key As %RawString = "") As %RawString [ Abstract ]\n'})}),"\n",(0,s.jsxs)(t.p,{children:['Finds and returns the key value of the element at the location following key in the iteration. If key is a null string (""), then ',(0,s.jsx)(t.strong,{children:"Next"})," returns the key value for the first element in the array."]}),"\n",(0,s.jsx)(t.h3,{id:"getat",children:"GetAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method GetAt(key As %RawString = "") As %RawString [ Abstract ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Finds and returns the value of the element associated with key."}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"GetAt"}),' returns the value of the element associated with key or null string ("") if no element is found.']})]})}function c(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>o,x:()=>a});var s=n(96540);const r={},i=s.createContext(r);function o(e){const t=s.useContext(i);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:o(e.components),s.createElement(i.Provider,{value:t},e.children)}}}]);