"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[626],{23889:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>r,default:()=>d,frontMatter:()=>i,toc:()=>a});var t=n(74848),l=n(28453);const i={pagination_prev:null,pagination_next:null},r="%Net.LDAP.Client.PropList",a=[{value:"Properties",id:"properties",level:2},{value:"Parent",id:"parent",level:3},{value:"NameList",id:"namelist",level:3},{value:"ValueList",id:"valuelist",level:3},{value:"TypeList",id:"typelist",level:3},{value:"FuncList",id:"funclist",level:3},{value:"Methods",id:"methods",level:2},{value:"GetLargeVal",id:"getlargeval",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"AddToLists",id:"addtolists",level:3},{value:"InsertValue",id:"insertvalue",level:3},{value:"Insert",id:"insert",level:3},{value:"IsValid",id:"isvalid",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,l.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"netldapclientproplist",children:"%Net.LDAP.Client.PropList"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Net.LDAP.Client.PropList Extends %RegisteredObject [ ServerOnly = 1, System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"WARNING: This Class and its methods has been deprecated, please use the %SYS.LDAP class."}),"\n",(0,t.jsx)(s.p,{children:"List of attributes and values, used to create a new entry. (See %Net.LDAP.Client.Session**.AddNewEntry()** method) This class cannot be %New()'d. Use session.GetPropList method."}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"parent",children:"Parent"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Parent As Session [ Internal ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Parent Session"}),"\n",(0,t.jsx)(s.h3,{id:"namelist",children:"NameList"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property NameList As StringList [ Internal ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"List of attributes"}),"\n",(0,t.jsx)(s.h3,{id:"valuelist",children:"ValueList"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ValueList As %List [ Internal ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"List of values"}),"\n",(0,t.jsx)(s.h3,{id:"typelist",children:"TypeList"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property TypeList As %String [ Internal ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"List of types"}),"\n",(0,t.jsx)(s.h3,{id:"funclist",children:"FuncList"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property FuncList As %String [ Internal ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"List of types"}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"getlargeval",children:"GetLargeVal"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetLargeVal(objid As %Integer, offset As %Integer, len As %Integer) As %String [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Fetch a large object value"}),"\n",(0,t.jsx)(s.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"addtolists",children:"AddToLists"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method AddToLists(name As %String, V As %String, type As %String, func As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Insert a string value"}),"\n",(0,t.jsx)(s.h3,{id:"insertvalue",children:"InsertValue"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method InsertValue(Name As %String, V As %Net.LDAP.Client.ValueList, func As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Append a value list."}),"\n",(0,t.jsx)(s.h3,{id:"insert",children:"Insert"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method Insert(Attribute As %String, Value As %RawString, IsBinary As %Boolean = 0, func As %Integer = 0) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Append an attribute and value pair to this property list object. Return $$$OK status, otherwise related error."}),"\n",(0,t.jsx)(s.p,{children:"If the value is %Net.LDAP.Client.ValueList, it will use that as is. If the Value is Stream, it will read the stream as value. If the Value is %Collection.AbstractIterator, it will iterate the collection, and use the returned value(s). Otherwise it will store the passed object as value."}),"\n",(0,t.jsxs)(s.p,{children:[(0,t.jsx)(s.strong,{children:"IsBinary"})," is required if the value is binary data i.e. an image"]}),"\n",(0,t.jsxs)(s.p,{children:[(0,t.jsx)(s.strong,{children:"func"})," arg is used internally"]}),"\n",(0,t.jsx)(s.h3,{id:"isvalid",children:"IsValid"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method IsValid() As %Boolean [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Checks if the attrib and value pairs are set properly."})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>r,x:()=>a});var t=n(96540);const l={},i=t.createContext(l);function r(e){const s=t.useContext(i);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),t.createElement(i.Provider,{value:s},e.children)}}}]);