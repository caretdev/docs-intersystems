"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[26193],{48160:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>r,default:()=>c,frontMatter:()=>l,toc:()=>a});var t=n(74848),i=n(28453);const l={pagination_prev:null,pagination_next:null},r="%Dictionary.CompiledUDLText",a=[{value:"Parameters",id:"parameters",level:2},{value:"SQLENABLED",id:"sqlenabled",level:3},{value:"Properties",id:"properties",level:2},{value:"parent",id:"parent",level:3},{value:"%isDefined",id:"isdefined",level:3},{value:"Category",id:"category",level:3},{value:"Content",id:"content",level:3},{value:"KeywordError",id:"keyworderror",level:3},{value:"KeywordModified",id:"keywordmodified",level:3},{value:"Name",id:"name",level:3},{value:"Position",id:"position",level:3},{value:"SequenceNumber",id:"sequencenumber",level:3},{value:"TextType",id:"texttype",level:3},{value:"Triggers",id:"triggers",level:2},{value:"OnInsertUpdate",id:"oninsertupdate",level:3},{value:"OnDelete",id:"ondelete",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"%LockId",id:"lockid",level:3},{value:"%UnlockId",id:"unlockid",level:3},{value:"%Exists",id:"exists",level:3},{value:"%LoadData",id:"loaddata",level:3},{value:"%SaveData",id:"savedata",level:3},{value:"%DeleteData",id:"deletedata",level:3},{value:"CategorySet",id:"categoryset",level:3},{value:"CategoryReset",id:"categoryreset",level:3},{value:"CategoryIsDefined",id:"categoryisdefined",level:3},{value:"NameSet",id:"nameset",level:3},{value:"NameReset",id:"namereset",level:3},{value:"NameIsDefined",id:"nameisdefined",level:3},{value:"PositionSet",id:"positionset",level:3},{value:"PositionReset",id:"positionreset",level:3},{value:"PositionIsDefined",id:"positionisdefined",level:3},{value:"SequenceNumberSet",id:"sequencenumberset",level:3},{value:"SequenceNumberReset",id:"sequencenumberreset",level:3},{value:"SequenceNumberIsDefined",id:"sequencenumberisdefined",level:3},{value:"TextTypeSet",id:"texttypeset",level:3},{value:"TextTypeReset",id:"texttypereset",level:3},{value:"TextTypeIsDefined",id:"texttypeisdefined",level:3},{value:"parentOnDelete",id:"parentondelete",level:3}];function d(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"dictionarycompiledudltext",children:"%Dictionary.CompiledUDLText"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Dictionary.CompiledUDLText Extends (%Persistent, %Dictionary.CompiledUDLTextQuery) [ StorageStrategy = custom, System = 2 ]\n"})}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"sqlenabled",children:"SQLENABLED"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SQLENABLED = 1;\n"})}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"parent",children:"parent"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Relationship parent As %Dictionary.CompiledClass [ Cardinality = parent, Inverse = UDLTexts ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Pointer to the containing parent object"}),"\n",(0,t.jsx)(s.h3,{id:"isdefined",children:"%isDefined"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Stores the DEFINED state of each attribute."}),"\n",(0,t.jsx)(s.h3,{id:"category",children:"Category"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Category As %RawString;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Category"}),"\n",(0,t.jsx)(s.h3,{id:"content",children:"Content"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Content As %Stream.TmpCharacter;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Holds the content of the UDL text."}),"\n",(0,t.jsx)(s.h3,{id:"keyworderror",children:"KeywordError"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property KeywordError As %Boolean;\n"})}),"\n",(0,t.jsx)(s.p,{children:"KeywordError"}),"\n",(0,t.jsx)(s.h3,{id:"keywordmodified",children:"KeywordModified"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property KeywordModified As %Boolean;\n"})}),"\n",(0,t.jsx)(s.p,{children:"KeywordModified"}),"\n",(0,t.jsx)(s.h3,{id:"name",children:"Name"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Name As %Dictionary.Identifier [ Required ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Speficies the COS name of the UDL text."}),"\n",(0,t.jsx)(s.h3,{id:"position",children:"Position"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Position As %RawString;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Position"}),"\n",(0,t.jsx)(s.h3,{id:"sequencenumber",children:"SequenceNumber"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SequenceNumber As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"SequenceNumber"}),"\n",(0,t.jsx)(s.h3,{id:"texttype",children:"TextType"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property TextType As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"TextType"}),"\n",(0,t.jsx)(s.h2,{id:"triggers",children:"Triggers"}),"\n",(0,t.jsx)(s.h3,{id:"oninsertupdate",children:"OnInsertUpdate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Trigger OnInsertUpdate [ Event = INSERT/UPDATE ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"ondelete",children:"OnDelete"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Trigger OnDelete [ Event = DELETE ]\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew(name As %String) As %Status [ Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"lockid",children:"%LockId"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %LockId(id As %String, shared As %Boolean = 0, timeout As %Integer) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"unlockid",children:"%UnlockId"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %UnlockId(id As %String, shared As %Boolean = 0, immediate As %Boolean = 0) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"exists",children:"%Exists"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Exists(oid As %ObjectIdentity) As %Boolean\n"})}),"\n",(0,t.jsx)(s.h3,{id:"loaddata",children:"%LoadData"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %LoadData(id As %String) As %Status [ Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"savedata",children:"%SaveData"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %SaveData(id As %String) As %Status [ Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"deletedata",children:"%DeleteData"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"categoryset",children:"CategorySet"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method CategorySet(value As %String = "") As %Status\n'})}),"\n",(0,t.jsx)(s.h3,{id:"categoryreset",children:"CategoryReset"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method CategoryReset()\n"})}),"\n",(0,t.jsx)(s.h3,{id:"categoryisdefined",children:"CategoryIsDefined"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method CategoryIsDefined() As %Boolean\n"})}),"\n",(0,t.jsx)(s.h3,{id:"nameset",children:"NameSet"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method NameSet(value As %String = "") As %Status\n'})}),"\n",(0,t.jsx)(s.h3,{id:"namereset",children:"NameReset"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method NameReset()\n"})}),"\n",(0,t.jsx)(s.h3,{id:"nameisdefined",children:"NameIsDefined"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method NameIsDefined() As %Boolean\n"})}),"\n",(0,t.jsx)(s.h3,{id:"positionset",children:"PositionSet"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method PositionSet(value As %String = "") As %Status\n'})}),"\n",(0,t.jsx)(s.h3,{id:"positionreset",children:"PositionReset"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method PositionReset()\n"})}),"\n",(0,t.jsx)(s.h3,{id:"positionisdefined",children:"PositionIsDefined"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method PositionIsDefined() As %Boolean\n"})}),"\n",(0,t.jsx)(s.h3,{id:"sequencenumberset",children:"SequenceNumberSet"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method SequenceNumberSet(value As %String = "") As %Status\n'})}),"\n",(0,t.jsx)(s.h3,{id:"sequencenumberreset",children:"SequenceNumberReset"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method SequenceNumberReset()\n"})}),"\n",(0,t.jsx)(s.h3,{id:"sequencenumberisdefined",children:"SequenceNumberIsDefined"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method SequenceNumberIsDefined() As %Boolean\n"})}),"\n",(0,t.jsx)(s.h3,{id:"texttypeset",children:"TextTypeSet"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method TextTypeSet(value As %String = "") As %Status\n'})}),"\n",(0,t.jsx)(s.h3,{id:"texttypereset",children:"TextTypeReset"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method TextTypeReset()\n"})}),"\n",(0,t.jsx)(s.h3,{id:"texttypeisdefined",children:"TextTypeIsDefined"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method TextTypeIsDefined() As %Boolean\n"})}),"\n",(0,t.jsx)(s.h3,{id:"parentondelete",children:"parentOnDelete"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status\n"})})]})}function c(e={}){const{wrapper:s}={...(0,i.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(d,{...e})}):d(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>r,x:()=>a});var t=n(96540);const i={},l=t.createContext(i);function r(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:r(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);