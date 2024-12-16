"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[96986],{98459:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>a,default:()=>d,frontMatter:()=>r,toc:()=>c});var i=t(74848),s=t(28453);const r={pagination_prev:null,pagination_next:null},a="%iKnow.DeepSee.Dimensions.Dictionaries",c=[{value:"Parameters",id:"parameters",level:2},{value:"DICTIONARYNAMEPREFIX",id:"dictionarynameprefix",level:3},{value:"ITEMNAMEPREFIX",id:"itemnameprefix",level:3},{value:"Properties",id:"properties",level:2},{value:"%ikDictLevel",id:"ikdictlevel",level:3},{value:"%ikDictDomainId",id:"ikdictdomainid",level:3},{value:"Methods",id:"methods",level:2},{value:"%FindComputedMemberByKeyInternal",id:"findcomputedmemberbykeyinternal",level:3},{value:"%FindComputedMemberByName",id:"findcomputedmemberbyname",level:3},{value:"%OnComputeBitset",id:"oncomputebitset",level:3},{value:"%OnGetComputedMembersInternal",id:"ongetcomputedmembersinternal",level:3},{value:"GetId",id:"getid",level:3},{value:"GetName",id:"getname",level:3},{value:"%Create",id:"create",level:3},{value:"%GetDictLevel",id:"getdictlevel",level:3},{value:"GetDictionaryName",id:"getdictionaryname",level:3},{value:"GetTermListName",id:"gettermlistname",level:3},{value:"GetDictionaryItemURI",id:"getdictionaryitemuri",level:3},{value:"GetTermListURI",id:"gettermlisturi",level:3},{value:"%Count",id:"count",level:3}];function l(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"iknowdeepseedimensionsdictionaries",children:"%iKnow.DeepSee.Dimensions.Dictionaries"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.DeepSee.Dimensions.Dictionaries Extends %iKnow.DeepSee.Dimensions.Base [ Deprecated, System = 4 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:'for ..%ikDictLevel = "D" (dictionary) KEY: [dictId] NAME: [dictName] for ..%ikDictLevel = "I" (dictionary item) KEY: [dictItemId] NAME: [dictItemName]'}),"\n",(0,i.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(n.h3,{id:"dictionarynameprefix",children:"DICTIONARYNAMEPREFIX"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DICTIONARYNAMEPREFIX [ Internal ] = "DeepSee - ";\n'})}),"\n",(0,i.jsx)(n.h3,{id:"itemnameprefix",children:"ITEMNAMEPREFIX"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter ITEMNAMEPREFIX [ Internal ] = ":DS:";\n'})}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"ikdictlevel",children:"%ikDictLevel"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property %ikDictLevel As %String(VALUELIST = ",D,I");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"ikdictdomainid",children:"%ikDictDomainId"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property %ikDictDomainId As %Integer;\n"})}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"findcomputedmemberbykeyinternal",children:"%FindComputedMemberByKeyInternal"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %FindComputedMemberByKeyInternal(pKey As %String, Output pFlag As %Boolean, Output pMemberName As %String, Output pMemberId As %String, pComputeBitset As %Boolean = 1) As %Status [ Internal, Private ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"findcomputedmemberbyname",children:"%FindComputedMemberByName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %FindComputedMemberByName(pName As %String, Output pFlag As %Boolean, Output pMemberKey As %String, Output pMemberId As %String) As %Status [ Internal ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"oncomputebitset",children:"%OnComputeBitset"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnComputeBitset(pSpec As %String, pIndexKey As %String) As %Status\n"})}),"\n",(0,i.jsx)(n.p,{children:'Build the bitset that corresponds to the given computed dimension "spec".'}),"\n",(0,i.jsx)(n.h3,{id:"ongetcomputedmembersinternal",children:"%OnGetComputedMembersInternal"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Method %OnGetComputedMembersInternal(ByRef pMembers, pSearchKey As %String = "", pRollupKey As %String = "", ByRef pRange As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,i.jsxs)(n.p,{children:["Method combining the functionality of %MemberSearch and %OnGetComputedMembersFiltered to avoid having the same code twice.",(0,i.jsx)(n.br,{}),"\nReturns entries of the form:",(0,i.jsx)(n.br,{}),"\npMembers(n) = $lb(id, name, key)",(0,i.jsx)(n.br,{}),"\nExpects any predefined dimension members to supplied with pMemmbers upfront!"]}),"\n",(0,i.jsx)(n.h3,{id:"getid",children:"GetId"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetId(pName As %String) As %Integer [ Internal ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"getname",children:"GetName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetName(pId As %Integer) As %String [ Internal, Private ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"create",children:"%Create"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %Create(pCube As %String, pFactNo As %Integer, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %DeepSee.ComputedDimension.Base\n"})}),"\n",(0,i.jsx)(n.p,{children:"Create a instance of this dimension class."}),"\n",(0,i.jsx)(n.h3,{id:"getdictlevel",children:"%GetDictLevel"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %GetDictLevel(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %String [ Private ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"getdictionaryname",children:"GetDictionaryName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetDictionaryName(pTermListName As %String) As %String [ CodeMode = objectgenerator, Internal ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Returns the dictionary name used for a DeepSee Term List Note: assumes version >= 3 (for cross-domain dictionary use)"}),"\n",(0,i.jsx)(n.h3,{id:"gettermlistname",children:"GetTermListName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetTermListName(pDictionaryName As %String) As %String [ CodeMode = objectgenerator, Internal ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"getdictionaryitemuri",children:"GetDictionaryItemURI"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetDictionaryItemURI(pTermListURI As %String) As %String [ CodeMode = objectgenerator, Internal ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"gettermlisturi",children:"GetTermListURI"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetTermListURI(pDictionaryItemURI As %String) As %String [ CodeMode = objectgenerator, Internal ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"count",children:"%Count"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %Count(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Integer\n"})}),"\n",(0,i.jsx)(n.p,{children:"Return number of members."})]})}function d(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(l,{...e})}):l(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>a,x:()=>c});var i=t(96540);const s={},r=i.createContext(s);function a(e){const n=i.useContext(r);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:a(e.components),i.createElement(r.Provider,{value:n},e.children)}}}]);