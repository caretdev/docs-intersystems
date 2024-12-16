"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[34495],{12855:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>l,default:()=>c,frontMatter:()=>t,toc:()=>r});var i=n(74848),a=n(28453);const t={pagination_prev:null,pagination_next:null},l="%Dictionary.StorageSQLMapSubInvalidconditionDefinition",r=[{value:"Parameters",id:"parameters",level:2},{value:"SQLENABLED",id:"sqlenabled",level:3},{value:"Properties",id:"properties",level:2},{value:"parent",id:"parent",level:3},{value:"%isDefined",id:"isdefined",level:3},{value:"Expression",id:"expression",level:3},{value:"Name",id:"name",level:3},{value:"Triggers",id:"triggers",level:2},{value:"OnInsertUpdate",id:"oninsertupdate",level:3},{value:"OnDelete",id:"ondelete",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"%LockId",id:"lockid",level:3},{value:"%UnlockId",id:"unlockid",level:3},{value:"%Exists",id:"exists",level:3},{value:"%LoadData",id:"loaddata",level:3},{value:"%SaveData",id:"savedata",level:3},{value:"%DeleteData",id:"deletedata",level:3},{value:"ExpressionSet",id:"expressionset",level:3},{value:"ExpressionReset",id:"expressionreset",level:3},{value:"ExpressionIsDefined",id:"expressionisdefined",level:3},{value:"NameSet",id:"nameset",level:3},{value:"NameReset",id:"namereset",level:3},{value:"NameIsDefined",id:"nameisdefined",level:3},{value:"parentOnDelete",id:"parentondelete",level:3}];function d(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(s.header,{children:(0,i.jsx)(s.h1,{id:"dictionarystoragesqlmapsubinvalidconditiondefinition",children:"%Dictionary.StorageSQLMapSubInvalidconditionDefinition"})}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Dictionary.StorageSQLMapSubInvalidconditionDefinition Extends %Persistent [ StorageStrategy = custom, System = 2 ]\n"})}),"\n",(0,i.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(s.h3,{id:"sqlenabled",children:"SQLENABLED"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SQLENABLED = 1;\n"})}),"\n",(0,i.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(s.h3,{id:"parent",children:"parent"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Relationship parent As %Dictionary.StorageSQLMapSubDefinition [ Cardinality = parent, Inverse = Invalidconditions ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Pointer to the containing parent object"}),"\n",(0,i.jsx)(s.h3,{id:"isdefined",children:"%isDefined"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Stores the DEFINED state of each attribute."}),"\n",(0,i.jsx)(s.h3,{id:"expression",children:"Expression"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property Expression As %RawString;\n"})}),"\n",(0,i.jsx)(s.p,{children:"Expression"}),"\n",(0,i.jsx)(s.h3,{id:"name",children:"Name"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property Name As %Integer [ Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Name"}),"\n",(0,i.jsx)(s.h2,{id:"triggers",children:"Triggers"}),"\n",(0,i.jsx)(s.h3,{id:"oninsertupdate",children:"OnInsertUpdate"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Trigger OnInsertUpdate [ Event = INSERT/UPDATE ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"ondelete",children:"OnDelete"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Trigger OnDelete [ Event = DELETE, Time = AFTER ]\n"})}),"\n",(0,i.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew(name As %String) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"lockid",children:"%LockId"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %LockId(id As %String, shared As %Boolean = 0, timeout As %Integer) As %Status\n"})}),"\n",(0,i.jsx)(s.h3,{id:"unlockid",children:"%UnlockId"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %UnlockId(id As %String, shared As %Boolean = 0, immediate As %Boolean = 0) As %Status\n"})}),"\n",(0,i.jsx)(s.h3,{id:"exists",children:"%Exists"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Exists(oid As %ObjectIdentity) As %Boolean\n"})}),"\n",(0,i.jsx)(s.h3,{id:"loaddata",children:"%LoadData"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method %LoadData(id As %String) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"savedata",children:"%SaveData"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method %SaveData(id As %String) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"deletedata",children:"%DeleteData"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"expressionset",children:"ExpressionSet"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'Method ExpressionSet(value As %String = "") As %Status\n'})}),"\n",(0,i.jsx)(s.h3,{id:"expressionreset",children:"ExpressionReset"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method ExpressionReset()\n"})}),"\n",(0,i.jsx)(s.h3,{id:"expressionisdefined",children:"ExpressionIsDefined"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method ExpressionIsDefined() As %Boolean\n"})}),"\n",(0,i.jsx)(s.h3,{id:"nameset",children:"NameSet"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'Method NameSet(value As %String = "") As %Status\n'})}),"\n",(0,i.jsx)(s.h3,{id:"namereset",children:"NameReset"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method NameReset()\n"})}),"\n",(0,i.jsx)(s.h3,{id:"nameisdefined",children:"NameIsDefined"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method NameIsDefined() As %Boolean\n"})}),"\n",(0,i.jsx)(s.h3,{id:"parentondelete",children:"parentOnDelete"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status\n"})})]})}function c(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,i.jsx)(s,{...e,children:(0,i.jsx)(d,{...e})}):d(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>l,x:()=>r});var i=n(96540);const a={},t=i.createContext(a);function l(e){const s=i.useContext(t);return i.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:l(e.components),i.createElement(t.Provider,{value:s},e.children)}}}]);