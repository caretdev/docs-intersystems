"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[97639],{94331:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>o,default:()=>d,frontMatter:()=>i,toc:()=>c});var r=t(74848),s=t(28453);const i={pagination_prev:null,pagination_next:null},o="Inventory.RoutineComponent",c=[{value:"Parameters",id:"parameters",level:2},{value:"XMLNAME",id:"xmlname",level:3},{value:"XMLTYPE",id:"xmltype",level:3},{value:"Properties",id:"properties",level:2},{value:"InventoryRecord",id:"inventoryrecord",level:3},{value:"Size",id:"size",level:3},{value:"Methods",id:"methods",level:2},{value:"GenerateSHA1Hash",id:"generatesha1hash",level:3},{value:"FindInventoryRecord",id:"findinventoryrecord",level:3},{value:"Strings",id:"strings",level:3}];function a(e){const n={a:"a",br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"inventoryroutinecomponent",children:"Inventory.RoutineComponent"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class Inventory.RoutineComponent Extends (Component, Hashable) [ Inheritance = right ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"RoutineComponent is a subclass of Component. An instance represents a routine."}),"\n",(0,r.jsx)(n.p,{children:"It contains properties representing the routine's name, size, an optional InventoryRecord, and a SHA1 hash of the routine's compiled code."}),"\n",(0,r.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(n.h3,{id:"xmlname",children:"XMLNAME"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLNAME = "RoutineComponent";\n'})}),"\n",(0,r.jsx)(n.p,{children:"The element name used in the XML representation of the component."}),"\n",(0,r.jsx)(n.h3,{id:"xmltype",children:"XMLTYPE"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLTYPE = "RoutineComponent";\n'})}),"\n",(0,r.jsx)(n.p,{children:"The identifier used to distinguish the type of this component in the XML representation."}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"inventoryrecord",children:"InventoryRecord"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property InventoryRecord As %String(MAXLEN = 256);\n"})}),"\n",(0,r.jsx)(n.p,{children:"The contents of an optional tagged comment inside the routine represented by this RoutineComponent, used to track its origins."}),"\n",(0,r.jsx)(n.h3,{id:"size",children:"Size"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Size As %Integer;\n"})}),"\n",(0,r.jsx)(n.p,{children:"The size of the compiled code, in bytes, of the routine represented by this RoutineComponent."}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"generatesha1hash",children:"GenerateSHA1Hash"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method GenerateSHA1Hash(string As %String)\n"})}),"\n",(0,r.jsxs)(n.p,{children:["Retrieve the system-generated CRC for the routine and store it as the SHA1Hash property of this object.",(0,r.jsx)(n.br,{}),"\nstring is assumed to be the value of the ^rOBJ node of the routine."]}),"\n",(0,r.jsx)(n.h3,{id:"findinventoryrecord",children:"FindInventoryRecord"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method FindInventoryRecord(rtnData As %String)\n"})}),"\n",(0,r.jsx)(n.p,{children:'Scans the routine represented by this RoutineComponent for a comment string beginning with ";; ISC-TAG:". If present, sets the InventoryRecord property of this object to the remainder of the string.'}),"\n",(0,r.jsx)(n.h3,{id:"strings",children:"Strings"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method Strings(data As %String, minLen As %String = 4, tag As %String = "") As %List [ Private ]\n'})}),"\n",(0,r.jsxs)(n.p,{children:["Extract strings from input data and return as a ",(0,r.jsx)(n.a,{href:"/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION",children:"$LIST"})]}),"\n",(0,r.jsx)(n.p,{children:"minlen specifies how long the string must be to be selected"}),"\n",(0,r.jsx)(n.p,{children:"tag specifies the bytes that must be contained in the string to be selected"})]})}function d(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(a,{...e})}):a(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>o,x:()=>c});var r=t(96540);const s={},i=r.createContext(s);function o(e){const n=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:o(e.components),r.createElement(i.Provider,{value:n},e.children)}}}]);