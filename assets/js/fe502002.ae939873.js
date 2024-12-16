"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[65491],{20535:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>c,default:()=>o,frontMatter:()=>a,toc:()=>i});var n=t(74848),r=t(28453);const a={pagination_prev:null,pagination_next:null},c="%DeepSee.Query.memberMeasure",i=[{value:"Methods",id:"methods",level:2},{value:"%FindMemberByName",id:"findmemberbyname",level:3},{value:"%ApplyState",id:"applystate",level:3},{value:"%ProcessMembers",id:"processmembers",level:3},{value:"%GetMembers",id:"getmembers",level:3}];function l(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"deepseequerymembermeasure",children:"%DeepSee.Query.memberMeasure"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.Query.memberMeasure Extends %DeepSee.Query.member [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Specialized version of the member class used for measures."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"findmemberbyname",children:"%FindMemberByName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method %FindMemberByName(pName As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, pLevel As %Integer = "", Output pMemberKey As %String) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Test if pName is a valid measure name."}),"\n",(0,n.jsx)(s.h3,{id:"applystate",children:"%ApplyState"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ApplyState(pType As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Set the state of this member using the current meta data node."}),"\n",(0,n.jsx)(s.h3,{id:"processmembers",children:"%ProcessMembers"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ProcessMembers(pParent As %Integer, Output pSet As %List) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Process the member name and key information for this tuple. Put the result into pSet."}),"\n",(0,n.jsx)(s.h3,{id:"getmembers",children:"%GetMembers"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetMembers(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pRollupKey As %String, pParent As %Integer, pKey As %String, ByRef pNodeNo As %Integer, pRecurse As %Integer = 0, ByRef pRange As %String, ByRef pMemberList) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Find the set of members that match the given criteria and place them into the axis tree.",(0,n.jsx)(s.br,{}),"\nIn this case, return all measures for the current cube."]})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>c,x:()=>i});var n=t(96540);const r={},a=n.createContext(r);function c(e){const s=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:c(e.components),n.createElement(a.Provider,{value:s},e.children)}}}]);