"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[21569],{34833:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>i,default:()=>c,frontMatter:()=>a,toc:()=>t});var r=s(74848),l=s(28453);const a={pagination_prev:null,pagination_next:null},i="%Dictionary.CompiledIndexProperty",t=[{value:"Parameters",id:"parameters",level:2},{value:"SQLENABLED",id:"sqlenabled",level:3},{value:"Properties",id:"properties",level:2},{value:"parent",id:"parent",level:3},{value:"%isDefined",id:"isdefined",level:3},{value:"Collation",id:"collation",level:3},{value:"CollationParms",id:"collationparms",level:3},{value:"KeywordError",id:"keyworderror",level:3},{value:"KeywordModified",id:"keywordmodified",level:3},{value:"Name",id:"name",level:3},{value:"Property",id:"property",level:3},{value:"Triggers",id:"triggers",level:2},{value:"OnInsertUpdate",id:"oninsertupdate",level:3},{value:"OnDelete",id:"ondelete",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"%LockId",id:"lockid",level:3},{value:"%UnlockId",id:"unlockid",level:3},{value:"%Exists",id:"exists",level:3},{value:"%LoadData",id:"loaddata",level:3},{value:"%SaveData",id:"savedata",level:3},{value:"%DeleteData",id:"deletedata",level:3},{value:"parentOnDelete",id:"parentondelete",level:3}];function d(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"dictionarycompiledindexproperty",children:"%Dictionary.CompiledIndexProperty"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Dictionary.CompiledIndexProperty Extends %Persistent [ StorageStrategy = custom, System = 2 ]\n"})}),"\n",(0,r.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(n.h3,{id:"sqlenabled",children:"SQLENABLED"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter SQLENABLED = 1;\n"})}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"parent",children:"parent"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Relationship parent As %Dictionary.CompiledIndex [ Cardinality = parent, Inverse = PropertyCollection ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Pointer to the containing parent object"}),"\n",(0,r.jsx)(n.h3,{id:"isdefined",children:"%isDefined"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Stores the DEFINED state of each attribute."}),"\n",(0,r.jsx)(n.h3,{id:"collation",children:"Collation"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Collation As %RawString;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Collation"}),"\n",(0,r.jsx)(n.h3,{id:"collationparms",children:"CollationParms"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property CollationParms As %RawString;\n"})}),"\n",(0,r.jsx)(n.p,{children:"CollationParms"}),"\n",(0,r.jsx)(n.h3,{id:"keyworderror",children:"KeywordError"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property KeywordError As %Boolean;\n"})}),"\n",(0,r.jsx)(n.p,{children:"KeywordError"}),"\n",(0,r.jsx)(n.h3,{id:"keywordmodified",children:"KeywordModified"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property KeywordModified As %Boolean;\n"})}),"\n",(0,r.jsx)(n.p,{children:"KeywordModified"}),"\n",(0,r.jsx)(n.h3,{id:"name",children:"Name"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Name As %Dictionary.Identifier [ Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Name"}),"\n",(0,r.jsx)(n.h3,{id:"property",children:"Property"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Property As %RawString;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Property"}),"\n",(0,r.jsx)(n.h2,{id:"triggers",children:"Triggers"}),"\n",(0,r.jsx)(n.h3,{id:"oninsertupdate",children:"OnInsertUpdate"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Trigger OnInsertUpdate [ Event = INSERT/UPDATE ]\n"})}),"\n",(0,r.jsx)(n.h3,{id:"ondelete",children:"OnDelete"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Trigger OnDelete [ Event = DELETE ]\n"})}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnNew(name As %String) As %Status [ Private ]\n"})}),"\n",(0,r.jsx)(n.h3,{id:"lockid",children:"%LockId"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %LockId(id As %String, shared As %Boolean = 0, timeout As %Integer) As %Status\n"})}),"\n",(0,r.jsx)(n.h3,{id:"unlockid",children:"%UnlockId"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %UnlockId(id As %String, shared As %Boolean = 0, immediate As %Boolean = 0) As %Status\n"})}),"\n",(0,r.jsx)(n.h3,{id:"exists",children:"%Exists"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %Exists(oid As %ObjectIdentity) As %Boolean\n"})}),"\n",(0,r.jsx)(n.h3,{id:"loaddata",children:"%LoadData"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %LoadData(id As %String) As %Status [ Private ]\n"})}),"\n",(0,r.jsx)(n.h3,{id:"savedata",children:"%SaveData"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %SaveData(id As %String) As %Status [ Private ]\n"})}),"\n",(0,r.jsx)(n.h3,{id:"deletedata",children:"%DeleteData"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]\n"})}),"\n",(0,r.jsx)(n.h3,{id:"parentondelete",children:"parentOnDelete"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status\n"})})]})}function c(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(d,{...e})}):d(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>i,x:()=>t});var r=s(96540);const l={},a=r.createContext(l);function i(e){const n=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function t(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),r.createElement(a.Provider,{value:n},e.children)}}}]);