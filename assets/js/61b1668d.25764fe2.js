"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[49579],{76456:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>o,default:()=>d,frontMatter:()=>r,toc:()=>l});var s=t(74848),i=t(28453);const r={pagination_prev:null,pagination_next:null},o="%iKnow.DeepSee.Dimensions.Entities",l=[{value:"Properties",id:"properties",level:2},{value:"%ikSkipList",id:"ikskiplist",level:3},{value:"%ikUseStemming",id:"ikusestemming",level:3},{value:"Methods",id:"methods",level:2},{value:"%Create",id:"create",level:3},{value:"%FindComputedMemberByKeyInternal",id:"findcomputedmemberbykeyinternal",level:3},{value:"%FindComputedMemberByName",id:"findcomputedmemberbyname",level:3},{value:"%OnComputeBitset",id:"oncomputebitset",level:3},{value:"%OnGetComputedMembersInternal",id:"ongetcomputedmembersinternal",level:3},{value:"GetEntitySortType",id:"getentitysorttype",level:3},{value:"%Count",id:"count",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"iknowdeepseedimensionsentities",children:"%iKnow.DeepSee.Dimensions.Entities"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.DeepSee.Dimensions.Entities Extends %iKnow.DeepSee.Dimensions.Base [ Deprecated, System = 4 ]\n"})}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"ikskiplist",children:"%ikSkipList"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property %ikSkipList As %Integer;\n"})}),"\n",(0,s.jsx)(n.h3,{id:"ikusestemming",children:"%ikUseStemming"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property %ikUseStemming As %Boolean;\n"})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"create",children:"%Create"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %Create(pCube As %String, pFactNo As %Integer, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %DeepSee.ComputedDimension.Base\n"})}),"\n",(0,s.jsx)(n.h3,{id:"findcomputedmemberbykeyinternal",children:"%FindComputedMemberByKeyInternal"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %FindComputedMemberByKeyInternal(pKey As %String, Output pFlag As %Boolean, Output pMemberName As %String, Output pMemberId As %String, pComputeBitset As %Boolean = 1) As %Status [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"findcomputedmemberbyname",children:"%FindComputedMemberByName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %FindComputedMemberByName(pName As %String, Output pFlag As %Boolean, Output pMemberKey As %String, Output pMemberId As %String) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"oncomputebitset",children:"%OnComputeBitset"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnComputeBitset(pSpec As %String, pIndexKey As %String) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:'Build the bitset that corresponds to the given computed dimension "spec".'}),"\n",(0,s.jsx)(n.h3,{id:"ongetcomputedmembersinternal",children:"%OnGetComputedMembersInternal"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method %OnGetComputedMembersInternal(ByRef pMembers, pSearchKey As %String = "", pRollupKey As %String = "", ByRef pRange As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,s.jsxs)(n.p,{children:["Method combining the functionality of %MemberSearch and %OnGetComputedMembersFiltered to avoid having the same code twice.",(0,s.jsx)(n.br,{}),"\nReturns entries of the form:",(0,s.jsx)(n.br,{}),"\npMembers(n) = $lb(id, name, key)",(0,s.jsx)(n.br,{}),"\nExpects any predefined dimension members to supplied with pMemmbers upfront!"]}),"\n",(0,s.jsx)(n.h3,{id:"getentitysorttype",children:"GetEntitySortType"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetEntitySortType() [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"count",children:"%Count"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %Count(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Integer\n"})}),"\n",(0,s.jsx)(n.p,{children:"Return number of members."})]})}function d(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>o,x:()=>l});var s=t(96540);const i={},r=s.createContext(i);function o(e){const n=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:o(e.components),s.createElement(r.Provider,{value:n},e.children)}}}]);