"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[60366],{84290:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>a,toc:()=>i});var s=t(74848),r=t(28453);const a={pagination_prev:null,pagination_next:null},l="%Collection.AbstractArray",i=[{value:"Parameters",id:"parameters",level:2},{value:"ELEMENTTYPE",id:"elementtype",level:3},{value:"Methods",id:"methods",level:2},{value:"BuildValueArray",id:"buildvaluearray",level:3},{value:"%IsNull",id:"isnull",level:3},{value:"Clear",id:"clear",level:3},{value:"Count",id:"count",level:3},{value:"IsDefined",id:"isdefined",level:3},{value:"Define",id:"define",level:3},{value:"Find",id:"find",level:3},{value:"GetPrevious",id:"getprevious",level:3},{value:"Previous",id:"previous",level:3},{value:"RemoveAt",id:"removeat",level:3},{value:"SetAt",id:"setat",level:3},{value:"LogicalToOdbc",id:"logicaltoodbc",level:3},{value:"OdbcToLogical",id:"odbctological",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"collectionabstractarray",children:"%Collection.AbstractArray"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Collection.AbstractArray Extends %Collection.AbstractIterator [ Abstract, ClientDataType = HANDLE, System = 2 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"An array collection represents an array of data type elements, each of which is associated with a unique key value. Keys can have any value, string or numeric."}),"\n",(0,s.jsx)(n.p,{children:"The %Collection.AbstractArray class provides the basic functionality of the various array collection classes."}),"\n",(0,s.jsx)(n.p,{children:"The non-abstract array classes derived from %AbstractArray include %ArrayOfDataTypes, %ArrayOfObjects, %Collection.ArrayOfObj and %Collection.ArrayOfDT."}),"\n",(0,s.jsxs)(n.p,{children:["You can use an array object as follows: ",(0,s.jsx)(n.code,{children:'Set arr=##class(%ArrayOfDataTypes).%New() ; place items into the array Do arr.SetAt("red","color") Do arr.SetAt("large","size") Do arr.SetAt("expensive","price") ; iterate over contents of array Set key="" For Set value=arr.GetNext(.key) Quit:key="" Write key,":",value,!'})]}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"elementtype",children:"ELEMENTTYPE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter ELEMENTTYPE As STRING = "%String";\n'})}),"\n",(0,s.jsx)(n.p,{children:"The type (class name) of the elements stored in the collection."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"buildvaluearray",children:"BuildValueArray"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod BuildValueArray(serialized As %Binary, array As %Binary) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Constructs array(key)=value for each element in the serialval value."}),"\n",(0,s.jsx)(n.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(n.h3,{id:"isnull",children:"%IsNull"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %IsNull() As %Boolean [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"A collection is null if it does not contain any elements"}),"\n",(0,s.jsx)(n.h3,{id:"clear",children:"Clear"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Clear() As %Status [ Abstract ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Clears the contents of the array."}),"\n",(0,s.jsx)(n.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(n.h3,{id:"count",children:"Count"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Count() As %Integer [ Abstract ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the number of elements contained in the array."}),"\n",(0,s.jsx)(n.h3,{id:"isdefined",children:"IsDefined"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method IsDefined(key As %String) As %Boolean [ Abstract ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns true (1) if a value is defined at location key, otherwise false (0)."}),"\n",(0,s.jsx)(n.h3,{id:"define",children:"Define"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Define(key As %String) As %Boolean [ Abstract, Deprecated ]\n"})}),"\n",(0,s.jsx)(n.p,{children:(0,s.jsx)(n.strong,{children:"This method is deprecated."})}),"\n",(0,s.jsx)(n.p,{children:"Please use IsDefined instead."}),"\n",(0,s.jsx)(n.h3,{id:"find",children:"Find"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Find(element As %RawString, key As %String) As %String [ Abstract ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Starting from, but not including, location key, finds the next element in the array with value equal to element."}),"\n",(0,s.jsx)(n.p,{children:'If key is a null string (""), the search starts at the beginning of the array.'}),"\n",(0,s.jsxs)(n.p,{children:[(0,s.jsx)(n.strong,{children:"Find"}),' returns the key associated with the found element or null string ("") if no element is found.']}),"\n",(0,s.jsx)(n.h3,{id:"getprevious",children:"GetPrevious"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetPrevious(ByRef key As %String) As %RawString [ Abstract ]\n"})}),"\n",(0,s.jsx)(n.p,{children:'Finds and returns the value of the element at the location before key in the array. If key is a null string (""), it returns the value of the last element in the array.'}),"\n",(0,s.jsx)(n.p,{children:'The value of key, which is passed by reference, is updated to the key value of the returned element or null string ("") if key is at the beginning of the array.'}),"\n",(0,s.jsx)(n.h3,{id:"previous",children:"Previous"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method Previous(key As %String = "") As %String [ Abstract ]\n'})}),"\n",(0,s.jsx)(n.p,{children:'Finds and returns the key value of the element at the location preceding key in the array. If key is a null string (""), then Previous returns the key value for the last element in the array.'}),"\n",(0,s.jsx)(n.h3,{id:"removeat",children:"RemoveAt"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method RemoveAt(key As %String) As %RawString [ Abstract ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Removes the element associated with key in the array."}),"\n",(0,s.jsxs)(n.p,{children:[(0,s.jsx)(n.strong,{children:"RemoveAt"}),' returns the value of the removed element or null string ("") if no element was removed.']}),"\n",(0,s.jsx)(n.h3,{id:"setat",children:"SetAt"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method SetAt(element As %RawString, key As %String) As %Status [ Abstract ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Sets the value of the element associated with key to element."}),"\n",(0,s.jsx)(n.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(n.h3,{id:"logicaltoodbc",children:"LogicalToOdbc"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod LogicalToOdbc(val As %String = "", delim As %String = ",", class As %String = "", method As %String = "") As %String\n'})}),"\n",(0,s.jsx)(n.p,{children:"Converts the serial state of this array object to a delimited string using delim as a delimiter."}),"\n",(0,s.jsx)(n.h3,{id:"odbctological",children:"OdbcToLogical"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod OdbcToLogical(val As %String = "", delim As %String = ",", class As %String = "", method As %String = "") As %String\n'})}),"\n",(0,s.jsx)(n.p,{children:"Converts the value of an incoming delimited string to a serialized state using delim as a delimiter."})]})}function o(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>i});var s=t(96540);const r={},a=s.createContext(r);function l(e){const n=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),s.createElement(a.Provider,{value:n},e.children)}}}]);