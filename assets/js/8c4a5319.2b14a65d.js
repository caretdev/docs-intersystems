"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[80159],{83725:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>l,default:()=>d,frontMatter:()=>a,toc:()=>r});var i=s(74848),t=s(28453);const a={pagination_prev:null,pagination_next:null},l="%Dictionary.ProjectionDefinition",r=[{value:"Parameters",id:"parameters",level:2},{value:"SQLENABLED",id:"sqlenabled",level:3},{value:"Properties",id:"properties",level:2},{value:"parent",id:"parent",level:3},{value:"%isDefined",id:"isdefined",level:3},{value:"Deprecated",id:"deprecated",level:3},{value:"Description",id:"description",level:3},{value:"Internal",id:"internal",level:3},{value:"Name",id:"name",level:3},{value:"NotInheritable",id:"notinheritable",level:3},{value:"Parameters",id:"parameters-1",level:3},{value:"SequenceNumber",id:"sequencenumber",level:3},{value:"Type",id:"type",level:3},{value:"Triggers",id:"triggers",level:2},{value:"OnInsertUpdate",id:"oninsertupdate",level:3},{value:"OnDelete",id:"ondelete",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"%LockId",id:"lockid",level:3},{value:"%UnlockId",id:"unlockid",level:3},{value:"%Exists",id:"exists",level:3},{value:"%LoadData",id:"loaddata",level:3},{value:"%SaveData",id:"savedata",level:3},{value:"%DeleteData",id:"deletedata",level:3},{value:"DeprecatedSet",id:"deprecatedset",level:3},{value:"DeprecatedReset",id:"deprecatedreset",level:3},{value:"DeprecatedIsDefined",id:"deprecatedisdefined",level:3},{value:"DescriptionSet",id:"descriptionset",level:3},{value:"DescriptionReset",id:"descriptionreset",level:3},{value:"DescriptionIsDefined",id:"descriptionisdefined",level:3},{value:"InternalSet",id:"internalset",level:3},{value:"InternalReset",id:"internalreset",level:3},{value:"InternalIsDefined",id:"internalisdefined",level:3},{value:"NameSet",id:"nameset",level:3},{value:"NameReset",id:"namereset",level:3},{value:"NameIsDefined",id:"nameisdefined",level:3},{value:"NotInheritableSet",id:"notinheritableset",level:3},{value:"NotInheritableReset",id:"notinheritablereset",level:3},{value:"NotInheritableIsDefined",id:"notinheritableisdefined",level:3},{value:"SequenceNumberSet",id:"sequencenumberset",level:3},{value:"SequenceNumberReset",id:"sequencenumberreset",level:3},{value:"SequenceNumberIsDefined",id:"sequencenumberisdefined",level:3},{value:"TypeSet",id:"typeset",level:3},{value:"TypeReset",id:"typereset",level:3},{value:"TypeIsDefined",id:"typeisdefined",level:3},{value:"parentOnDelete",id:"parentondelete",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"dictionaryprojectiondefinition",children:"%Dictionary.ProjectionDefinition"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Dictionary.ProjectionDefinition Extends (%Persistent, %Dictionary.ProjectionDefinitionQuery) [ StorageStrategy = custom, System = 2 ]\n"})}),"\n",(0,i.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(n.h3,{id:"sqlenabled",children:"SQLENABLED"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter SQLENABLED = 1;\n"})}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"parent",children:"parent"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Relationship parent As %Dictionary.ClassDefinition [ Cardinality = parent, Inverse = Projections ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Pointer to the containing parent object"}),"\n",(0,i.jsx)(n.h3,{id:"isdefined",children:"%isDefined"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Stores the DEFINED state of each attribute."}),"\n",(0,i.jsx)(n.h3,{id:"deprecated",children:"Deprecated"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Deprecated As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"True if this projection is deprecated."}),"\n",(0,i.jsx)(n.h3,{id:"description",children:"Description"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Description As %RawString;\n"})}),"\n",(0,i.jsx)(n.p,{children:"Specifies a description of the projection."}),"\n",(0,i.jsx)(n.h3,{id:"internal",children:"Internal"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Internal As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"If true, then do not display this item in automatic documentation."}),"\n",(0,i.jsx)(n.h3,{id:"name",children:"Name"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Name As %Dictionary.Identifier [ Required ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"The name of the projection."}),"\n",(0,i.jsx)(n.h3,{id:"notinheritable",children:"NotInheritable"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property NotInheritable As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Specifies that this projection is not inherited in subclasses."}),"\n",(0,i.jsx)(n.h3,{id:"parameters-1",children:"Parameters"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Parameters As array Of %RawString;\n"})}),"\n",(0,i.jsx)(n.p,{children:"Parameter"}),"\n",(0,i.jsx)(n.h3,{id:"sequencenumber",children:"SequenceNumber"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property SequenceNumber As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"SequenceNumber"}),"\n",(0,i.jsx)(n.h3,{id:"type",children:"Type"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Type As %Dictionary.Classname;\n"})}),"\n",(0,i.jsx)(n.p,{children:"Specifies the name of the class associated with the projection."}),"\n",(0,i.jsx)(n.h2,{id:"triggers",children:"Triggers"}),"\n",(0,i.jsx)(n.h3,{id:"oninsertupdate",children:"OnInsertUpdate"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Trigger OnInsertUpdate [ Event = INSERT/UPDATE ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"ondelete",children:"OnDelete"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Trigger OnDelete [ Event = DELETE, Time = AFTER ]\n"})}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnNew(name As %String) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"lockid",children:"%LockId"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %LockId(id As %String, shared As %Boolean = 0, timeout As %Integer) As %Status\n"})}),"\n",(0,i.jsx)(n.h3,{id:"unlockid",children:"%UnlockId"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %UnlockId(id As %String, shared As %Boolean = 0, immediate As %Boolean = 0) As %Status\n"})}),"\n",(0,i.jsx)(n.h3,{id:"exists",children:"%Exists"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %Exists(oid As %ObjectIdentity) As %Boolean\n"})}),"\n",(0,i.jsx)(n.h3,{id:"loaddata",children:"%LoadData"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %LoadData(id As %String) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"savedata",children:"%SaveData"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %SaveData(id As %String) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"deletedata",children:"%DeleteData"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"deprecatedset",children:"DeprecatedSet"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Method DeprecatedSet(value As %String = "") As %Status\n'})}),"\n",(0,i.jsx)(n.h3,{id:"deprecatedreset",children:"DeprecatedReset"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method DeprecatedReset()\n"})}),"\n",(0,i.jsx)(n.h3,{id:"deprecatedisdefined",children:"DeprecatedIsDefined"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method DeprecatedIsDefined() As %Boolean\n"})}),"\n",(0,i.jsx)(n.h3,{id:"descriptionset",children:"DescriptionSet"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Method DescriptionSet(value As %String = "") As %Status\n'})}),"\n",(0,i.jsx)(n.h3,{id:"descriptionreset",children:"DescriptionReset"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method DescriptionReset()\n"})}),"\n",(0,i.jsx)(n.h3,{id:"descriptionisdefined",children:"DescriptionIsDefined"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method DescriptionIsDefined() As %Boolean\n"})}),"\n",(0,i.jsx)(n.h3,{id:"internalset",children:"InternalSet"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Method InternalSet(value As %String = "") As %Status\n'})}),"\n",(0,i.jsx)(n.h3,{id:"internalreset",children:"InternalReset"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method InternalReset()\n"})}),"\n",(0,i.jsx)(n.h3,{id:"internalisdefined",children:"InternalIsDefined"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method InternalIsDefined() As %Boolean\n"})}),"\n",(0,i.jsx)(n.h3,{id:"nameset",children:"NameSet"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Method NameSet(value As %String = "") As %Status\n'})}),"\n",(0,i.jsx)(n.h3,{id:"namereset",children:"NameReset"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method NameReset()\n"})}),"\n",(0,i.jsx)(n.h3,{id:"nameisdefined",children:"NameIsDefined"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method NameIsDefined() As %Boolean\n"})}),"\n",(0,i.jsx)(n.h3,{id:"notinheritableset",children:"NotInheritableSet"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Method NotInheritableSet(value As %String = "") As %Status\n'})}),"\n",(0,i.jsx)(n.h3,{id:"notinheritablereset",children:"NotInheritableReset"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method NotInheritableReset()\n"})}),"\n",(0,i.jsx)(n.h3,{id:"notinheritableisdefined",children:"NotInheritableIsDefined"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method NotInheritableIsDefined() As %Boolean\n"})}),"\n",(0,i.jsx)(n.h3,{id:"sequencenumberset",children:"SequenceNumberSet"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Method SequenceNumberSet(value As %String = "") As %Status\n'})}),"\n",(0,i.jsx)(n.h3,{id:"sequencenumberreset",children:"SequenceNumberReset"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method SequenceNumberReset()\n"})}),"\n",(0,i.jsx)(n.h3,{id:"sequencenumberisdefined",children:"SequenceNumberIsDefined"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method SequenceNumberIsDefined() As %Boolean\n"})}),"\n",(0,i.jsx)(n.h3,{id:"typeset",children:"TypeSet"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Method TypeSet(value As %String = "") As %Status\n'})}),"\n",(0,i.jsx)(n.h3,{id:"typereset",children:"TypeReset"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method TypeReset()\n"})}),"\n",(0,i.jsx)(n.h3,{id:"typeisdefined",children:"TypeIsDefined"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method TypeIsDefined() As %Boolean\n"})}),"\n",(0,i.jsx)(n.h3,{id:"parentondelete",children:"parentOnDelete"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status\n"})})]})}function d(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>l,x:()=>r});var i=s(96540);const t={},a=i.createContext(t);function l(e){const n=i.useContext(a);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:l(e.components),i.createElement(a.Provider,{value:n},e.children)}}}]);