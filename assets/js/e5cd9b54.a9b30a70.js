"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[2814],{40550:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>c,frontMatter:()=>l,toc:()=>o});var n=s(74848),i=s(28453);const l={pagination_prev:null,pagination_next:null},r="%Collection.AbstractListOfDT",o=[{value:"Methods",id:"methods",level:2},{value:"Find",id:"find",level:3},{value:"GetAt",id:"getat",level:3},{value:"GetNext",id:"getnext",level:3},{value:"GetPrevious",id:"getprevious",level:3},{value:"Insert",id:"insert",level:3},{value:"InsertAt",id:"insertat",level:3},{value:"InsertList",id:"insertlist",level:3},{value:"InsertOrdered",id:"insertordered",level:3},{value:"RemoveAt",id:"removeat",level:3},{value:"SetAt",id:"setat",level:3}];function a(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,i.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"collectionabstractlistofdt",children:"%Collection.AbstractListOfDT"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Collection.AbstractListOfDT Extends %Collection.AbstractList [ System = 2 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"A list collection represents a list of data type elements, each of which is associated with a numeric position in the list. The first element in the list is stored at position 1."}),"\n",(0,n.jsx)(t.p,{children:"The %Collection.AbstractList class provides the basic functionality of the various list collection classes."}),"\n",(0,n.jsxs)(t.p,{children:["The non-abstract list classes derived from %AbstractList include %ListOfDataTypes, %ListOfObjects, %Collection.ListOfObj and %Collection.ListOfDT. You can use a list object as follows: ",(0,n.jsx)(t.code,{children:'Set list=##class(%ListOfDataTypes).%New() ; add items to the list Do list.Insert("Harpo") Do list.Insert("Groucho") Do list.Insert("Chico") Do list.Insert("Karl") ; iterate over contents of list For i=1:1:list.Count() Write list.GetAt(i),!'})]}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"find",children:"Find"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method Find(element As %String, key As %Integer) As %String [ Abstract ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Starting from, but not including, position key, ",(0,n.jsx)(t.strong,{children:"Find"})," finds the next element in the list with value equal to element. If key is a null string, ",(0,n.jsx)(t.strong,{children:"Find"})," starts at the beginning of the list."]}),"\n",(0,n.jsxs)(t.p,{children:[(0,n.jsx)(t.strong,{children:"Find"}),' returns the position of the found element or null string ("") if no element was found.']}),"\n",(0,n.jsx)(t.h3,{id:"getat",children:"GetAt"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetAt(key As %Integer = 0) As %String [ Abstract ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Finds and returns the value of the element at position key in the list."}),"\n",(0,n.jsxs)(t.p,{children:[(0,n.jsx)(t.strong,{children:"GetAt"}),' returns the value of the element at location key or null string ("") if no element is found.']}),"\n",(0,n.jsx)(t.h3,{id:"getnext",children:"GetNext"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetNext(ByRef key As %Integer) As %String [ Abstract ]\n"})}),"\n",(0,n.jsx)(t.p,{children:'Finds and returns the value of the element at the position after key in the list. If key is a null string (""), it returns the value of the first element in the list.'}),"\n",(0,n.jsx)(t.p,{children:'The value of key, which is passed by reference, is updated to the position value of the returned element or null string ("") if key is at the end of the list.'}),"\n",(0,n.jsx)(t.h3,{id:"getprevious",children:"GetPrevious"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetPrevious(ByRef key As %Integer) As %String [ Abstract ]\n"})}),"\n",(0,n.jsx)(t.p,{children:'Finds and returns the value of the element at the position before key in the list. If key is a null string (""), it returns the value of the last element in the list.'}),"\n",(0,n.jsx)(t.p,{children:'The value of key, which is passed by reference, is updated to the position value of the returned element or null string ("") if key is at the beginning of the list.'}),"\n",(0,n.jsx)(t.h3,{id:"insert",children:"Insert"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method Insert(element As %String) As %Status [ Abstract ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Inserts an element with value element at the end of the list."}),"\n",(0,n.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,n.jsx)(t.h3,{id:"insertat",children:"InsertAt"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method InsertAt(element As %String, key As %Integer) As %Status [ Abstract ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Inserts an element with value element at position key."}),"\n",(0,n.jsx)(t.p,{children:"To make room for the new element, the elements previously at or following position key are moved up by one position."}),"\n",(0,n.jsxs)(t.p,{children:["key must be in the following range: ",(0,n.jsx)(t.code,{children:"1 <= key <= Count() + 1"})," Returns a %Status value indicating success or failure."]}),"\n",(0,n.jsx)(t.h3,{id:"insertlist",children:"InsertList"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method InsertList(inslist As %String) As %Status [ Abstract ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Inserts a list with value inslist at the end of the list."}),"\n",(0,n.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,n.jsx)(t.h3,{id:"insertordered",children:"InsertOrdered"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method InsertOrdered(element As %String) As %Status [ Abstract ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Inserts an element with value element into the list at the correct ordered position. The elements in the list are shifted to accommodate the new element as necessary."}),"\n",(0,n.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,n.jsx)(t.h3,{id:"removeat",children:"RemoveAt"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method RemoveAt(key As %Integer) As %String [ Abstract ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Removes the element at position key in the list. The elements following position key are moved to fill in the resulting gap."}),"\n",(0,n.jsxs)(t.p,{children:[(0,n.jsx)(t.strong,{children:"RemoveAt"}),' returns the value of the removed element or null string ("") if no element was removed.']}),"\n",(0,n.jsx)(t.h3,{id:"setat",children:"SetAt"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetAt(element As %String, key As %Integer) As %Status [ Abstract ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Sets the value of the element at position key to element."}),"\n",(0,n.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."})]})}function c(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(a,{...e})}):a(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>o});var n=s(96540);const i={},l=n.createContext(i);function r(e){const t=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:r(e.components),n.createElement(l.Provider,{value:t},e.children)}}}]);