"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[7997],{12089:(e,l,t)=>{t.r(l),t.d(l,{contentTitle:()=>o,default:()=>c,frontMatter:()=>s,toc:()=>a});var i=t(74848),n=t(28453);const s={pagination_prev:null,pagination_next:null},o="%Compiler.Type.Collection",a=[{value:"Parameters",id:"parameters",level:2},{value:"STORAGEDEFAULT",id:"storagedefault",level:3},{value:"SQLPROJECTION",id:"sqlprojection",level:3},{value:"SQLTABLENAME",id:"sqltablename",level:3},{value:"CollectionDisplayDelimiter",id:"collectiondisplaydelimiter",level:3},{value:"CollectionOdbcDelimiter",id:"collectionodbcdelimiter",level:3},{value:"ACCESSPOLICY",id:"accesspolicy",level:3},{value:"Methods",id:"methods",level:2},{value:"BuildValueArray",id:"buildvaluearray",level:3},{value:"GetSwizzled",id:"getswizzled",level:3},{value:"NewObject",id:"newobject",level:3},{value:"Set",id:"set",level:3},{value:"CollectionToOdbc",id:"collectiontoodbc",level:3},{value:"OdbcToCollection",id:"odbctocollection",level:3},{value:"CollectionToDisplay",id:"collectiontodisplay",level:3},{value:"DisplayToCollection",id:"displaytocollection",level:3}];function r(e){const l={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(l.header,{children:(0,i.jsx)(l.h1,{id:"compilertypecollection",children:"%Compiler.Type.Collection"})}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:"Class %Compiler.Type.Collection Extends %Compiler.Type.Object [ NoContext, System = 1 ]\n"})}),"\n",(0,i.jsx)(l.p,{children:"Collection specific property superclass, for internal use only"}),"\n",(0,i.jsx)(l.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(l.h3,{id:"storagedefault",children:"STORAGEDEFAULT"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter STORAGEDEFAULT As STRING [ Constraint = ",array,list", Flags = ENUM ];\n'})}),"\n",(0,i.jsx)(l.p,{children:"STORAGEDEFAULT is the type of storage used for the collection if it is not already allocated in a DATA definition in the active STORAGE definition. LIST collections default to list storage and ARRAY collections default to array storage (SUBNODE structure)."}),"\n",(0,i.jsx)(l.h3,{id:"sqlprojection",children:"SQLPROJECTION"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter SQLPROJECTION As STRING [ Constraint = ",table,column,table/column", Flags = ENUM ];\n'})}),"\n",(0,i.jsx)(l.p,{children:"SQLPROJECTION is the way this collection will be projected to SQL - either as a simple COLUMN or as a child TABLE or both."}),"\n",(0,i.jsx)(l.h3,{id:"sqltablename",children:"SQLTABLENAME"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:"Parameter SQLTABLENAME As STRING;\n"})}),"\n",(0,i.jsx)(l.p,{children:"SQLTABLENAME is the name of the projected child table for this collection. If the collection is not projected as a child table (refer to SQLPROJECTION) then this parameter is ignored."}),"\n",(0,i.jsx)(l.h3,{id:"collectiondisplaydelimiter",children:"CollectionDisplayDelimiter"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter CollectionDisplayDelimiter As STRING = "$C(13,10)";\n'})}),"\n",(0,i.jsx)(l.h3,{id:"collectionodbcdelimiter",children:"CollectionOdbcDelimiter"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter CollectionOdbcDelimiter As STRING = """,""";\n'})}),"\n",(0,i.jsx)(l.h3,{id:"accesspolicy",children:"ACCESSPOLICY"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter ACCESSPOLICY As STRING [ Constraint = ",lazy,eager", Flags = ENUM ];\n'})}),"\n",(0,i.jsx)(l.p,{children:"ACCESSPOLICY defines how collection is fetched to the client application. EAGER: The whole collection is fetched no later than it is first accessed by application in any manner. If collection contains object values then objects are opened and instantiated in application memory. For applications using POJO mode this means that application can use this collection even if it has been disconnected from the server afterwards. Value EAGER is a requirement, meaning that if it is specified then EAGER policy always be employed. LAZY: Values in collection can be fetched as they are requested by the application, e.g. when methods get() or Iterator.next() are invoked. Value LAZY is a hint meaning that if it is specified it tells that LAZY policy may be used for this collection but does not guarantee that it is used. In case LAZY fetching is used collection may become invalid when application disconnected from the server."}),"\n",(0,i.jsx)(l.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(l.h3,{id:"buildvaluearray",children:"BuildValueArray"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:"ClassMethod BuildValueArray(value As %Binary, array As %Binary) As %Status [ CodeMode = generator, Final, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsx)(l.h3,{id:"getswizzled",children:"GetSwizzled"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:"Method GetSwizzled(noswizzle As %Boolean = 0) As %RegisteredObject [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsx)(l.p,{children:'Returns an oref, performing swizzling if necessary it returns "" ($$$NULLOREF) if there is no oref and the id="" If noswizzle is passed as true then this will just return the current value for the property, so if it has been swizzled already then it will return the oref, if it has not been swizzled it will return "" ($$$NULLOREF).'}),"\n",(0,i.jsx)(l.h3,{id:"newobject",children:"NewObject"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:"Method NewObject() As %ObjectHandle [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsx)(l.h3,{id:"set",children:"Set"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:"Method Set(newvalue As %RawString) As %Status [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsx)(l.p,{children:"Set the property to an oref value if the new oref is different from an old oref, the old object is closed |"}),"\n",(0,i.jsx)(l.h3,{id:"collectiontoodbc",children:"CollectionToOdbc"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:'ClassMethod CollectionToOdbc(val As %String(MAXLEN="") = "") As %String(MAXLEN="") [ CodeMode = generator, ServerOnly = 1 ]\n'})}),"\n",(0,i.jsx)(l.p,{children:'Converts the serial state of this list object to a delimited string using "," as a delimiter.'}),"\n",(0,i.jsx)(l.h3,{id:"odbctocollection",children:"OdbcToCollection"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:'ClassMethod OdbcToCollection(val As %String(MAXLEN="") = "") As %String(MAXLEN="") [ CodeMode = generator, ServerOnly = 1 ]\n'})}),"\n",(0,i.jsx)(l.p,{children:'Converts the value of an incoming delimited string to a serialized state using "," as a delimiter.'}),"\n",(0,i.jsx)(l.h3,{id:"collectiontodisplay",children:"CollectionToDisplay"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:'ClassMethod CollectionToDisplay(val As %String(MAXLEN="") = "", delim As %String = "") As %String(MAXLEN="") [ CodeMode = generator, ServerOnly = 1 ]\n'})}),"\n",(0,i.jsx)(l.p,{children:"Converts the serial state of this list object to a delimited string using the value of the %delim argument as a delimiter."}),"\n",(0,i.jsx)(l.h3,{id:"displaytocollection",children:"DisplayToCollection"}),"\n",(0,i.jsx)(l.pre,{children:(0,i.jsx)(l.code,{className:"language-objectscript-class",children:'ClassMethod DisplayToCollection(val As %String(MAXLEN="") = "", delim As %String = "") As %String(MAXLEN="") [ CodeMode = generator, ServerOnly = 1 ]\n'})}),"\n",(0,i.jsx)(l.p,{children:"Converts the value of an incoming delimited string to a serialized state using the value of the delim argument as a delimiter."})]})}function c(e={}){const{wrapper:l}={...(0,n.R)(),...e.components};return l?(0,i.jsx)(l,{...e,children:(0,i.jsx)(r,{...e})}):r(e)}},28453:(e,l,t)=>{t.d(l,{R:()=>o,x:()=>a});var i=t(96540);const n={},s=i.createContext(n);function o(e){const l=i.useContext(s);return i.useMemo((function(){return"function"==typeof e?e(l):{...l,...e}}),[l,e])}function a(e){let l;return l=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:o(e.components),i.createElement(s.Provider,{value:l},e.children)}}}]);