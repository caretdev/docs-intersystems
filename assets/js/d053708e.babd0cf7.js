"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[97363],{48848:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>o,default:()=>c,frontMatter:()=>i,toc:()=>d});var t=s(74848),r=s(28453);const i={pagination_prev:null,pagination_next:null},o="%DeepSee.Query.memberComputed",d=[{value:"Methods",id:"methods",level:2},{value:"%ProcessMembers",id:"processmembers",level:3},{value:"%FindMemberByName",id:"findmemberbyname",level:3},{value:"%FindMemberByKey",id:"findmemberbykey",level:3},{value:"%GetMembers",id:"getmembers",level:3},{value:"%GetNodeForMDX",id:"getnodeformdx",level:3}];function a(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"deepseequerymembercomputed",children:"%DeepSee.Query.memberComputed"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.Query.memberComputed Extends %DeepSee.Query.member [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Specialized version of the member class used for computed dimensions."}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"processmembers",children:"%ProcessMembers"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ProcessMembers(pParent As %Integer, Output pSet As %List) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Process the member id, name, and key information for this member. Put the result into pSet."}),"\n",(0,t.jsx)(n.h3,{id:"findmemberbyname",children:"%FindMemberByName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Method %FindMemberByName(pName As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, pLevel As %Integer = "", Output pMemberKey As %String) As %Status [ Internal ]\n'})}),"\n",(0,t.jsx)(n.p,{children:"Test if pName is a valid member name."}),"\n",(0,t.jsx)(n.h3,{id:"findmemberbykey",children:"%FindMemberByKey"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %FindMemberByKey(pKey As %String, pDim As %Integer, pHier As %Integer, Output pFlag As %Boolean, Output pMemberValue As %String, pRecurse As %Boolean = 1) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Find the member with the given key."}),"\n",(0,t.jsx)(n.h3,{id:"getmembers",children:"%GetMembers"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %GetMembers(pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pRollupKey As %String, pParent As %Integer, pKey As %String, ByRef pNodeNo As %Integer, pRecurse As %Integer = 0, ByRef pRange As %String, ByRef pMemberList) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Find the set of members that match the given criteria and place them into the axis tree."}),"\n",(0,t.jsx)(n.h3,{id:"getnodeformdx",children:"%GetNodeForMDX"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %GetNodeForMDX(Output pNode As %List, pCubeName As %String, pParent As %Integer, pName As %String, pExpr As %String) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Given an MDX expression, return an info node ($list) for the resolved expression."})]})}function c(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(a,{...e})}):a(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>o,x:()=>d});var t=s(96540);const r={},i=t.createContext(r);function o(e){const n=t.useContext(i);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function d(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:o(e.components),t.createElement(i.Provider,{value:n},e.children)}}}]);