"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[78694],{60770:(e,r,a)=>{a.r(r),a.d(r,{contentTitle:()=>i,default:()=>d,frontMatter:()=>t,toc:()=>s});var n=a(74848),l=a(28453);const t={pagination_prev:null,pagination_next:null},i="%iKnow.Objects.VirtualCrcUnique",s=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"DomainId",id:"domainid",level:3},{value:"VirtualSourceId",id:"virtualsourceid",level:3},{value:"CrcUniId",id:"crcuniid",level:3},{value:"RealCrcUniId",id:"realcrcuniid",level:3},{value:"HeadId",id:"headid",level:3},{value:"MasterId",id:"masterid",level:3},{value:"RelationId",id:"relationid",level:3},{value:"TailId",id:"tailid",level:3},{value:"SlaveId",id:"slaveid",level:3},{value:"Frequency",id:"frequency",level:3},{value:"Head",id:"head",level:3},{value:"Master",id:"master",level:3},{value:"Relation",id:"relation",level:3},{value:"Tail",id:"tail",level:3},{value:"Slave",id:"slave",level:3}];function c(e){const r={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(r.header,{children:(0,n.jsx)(r.h1,{id:"iknowobjectsvirtualcrcunique",children:"%iKnow.Objects.VirtualCrcUnique"})}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Class %iKnow.Objects.VirtualCrcUnique Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]\n"})}),"\n",(0,n.jsx)(r.p,{children:"This is a read-only object representation wrapping the internal iKnow data structures for unique CRCs in a Virtual Source."}),"\n",(0,n.jsx)(r.p,{children:"This class can be used from ObjectScript or SQL to access a single or small number of entries, but the storage mappings are not meant to support elaborate or complex queries targeting this SQL table."}),"\n",(0,n.jsx)(r.p,{children:"Please use the predefined queries in %iKnow.Queries.CrcAPI and other query classes to consult CRC data as the internal global structures are designed to optimize performance for these queries rather than general-purpose access."}),"\n",(0,n.jsx)(r.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(r.h3,{id:"readonly",children:"READONLY"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,n.jsx)(r.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(r.h3,{id:"domainid",children:"DomainId"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property DomainId As %Integer;\n"})}),"\n",(0,n.jsx)(r.h3,{id:"virtualsourceid",children:"VirtualSourceId"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property VirtualSourceId As %Integer;\n"})}),"\n",(0,n.jsx)(r.h3,{id:"crcuniid",children:"CrcUniId"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property CrcUniId As %Integer;\n"})}),"\n",(0,n.jsx)(r.h3,{id:"realcrcuniid",children:"RealCrcUniId"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property RealCrcUniId As %Integer [ Calculated, SqlComputeCode = { set {RealCrcUniId} = $lg(^IRIS.IKV.CrcUniDetails({DomainId},{VirtualSourceId},{CrcUniId}),2) }, SqlComputed ];\n"})}),"\n",(0,n.jsx)(r.h3,{id:"headid",children:"HeadId"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property HeadId As %Integer;\n"})}),"\n",(0,n.jsx)(r.h3,{id:"masterid",children:"MasterId"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property MasterId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {MasterId} = {HeadId} }, SqlComputed ];\n"})}),"\n",(0,n.jsx)(r.h3,{id:"relationid",children:"RelationId"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property RelationId As %Integer;\n"})}),"\n",(0,n.jsx)(r.h3,{id:"tailid",children:"TailId"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property TailId As %Integer;\n"})}),"\n",(0,n.jsx)(r.h3,{id:"slaveid",children:"SlaveId"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property SlaveId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {SlaveId} = {TailId}}, SqlComputed ];\n"})}),"\n",(0,n.jsx)(r.h3,{id:"frequency",children:"Frequency"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property Frequency As %Integer [ Calculated, SqlComputeCode = { set {Frequency} = $lg(^IRIS.IK.CrcUniDetails({DomainId},{VirtualSourceId},{CrcUniId}),1) }, SqlComputed ];\n"})}),"\n",(0,n.jsx)(r.h3,{id:"head",children:"Head"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'Property Head As %iKnow.Objects.VirtualEntityUnique [ Calculated, SqlComputeCode = { set {Head} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {HeadId} }, SqlComputed ];\n'})}),"\n",(0,n.jsx)(r.h3,{id:"master",children:"Master"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'Property Master As %iKnow.Objects.VirtualEntityUnique [ Calculated, Deprecated, Internal, SqlComputeCode = { set {Master} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {MasterId} }, SqlComputed ];\n'})}),"\n",(0,n.jsx)(r.h3,{id:"relation",children:"Relation"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'Property Relation As %iKnow.Objects.VirtualEntityUnique [ Calculated, SqlComputeCode = { set {Relation} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {RelationId} }, SqlComputed ];\n'})}),"\n",(0,n.jsx)(r.h3,{id:"tail",children:"Tail"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'Property Tail As %iKnow.Objects.VirtualEntityUnique [ Calculated, SqlComputeCode = { set {Tail} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {TailId} }, SqlComputed ];\n'})}),"\n",(0,n.jsx)(r.h3,{id:"slave",children:"Slave"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'Property Slave As %iKnow.Objects.VirtualEntityUnique [ Calculated, Deprecated, Internal, SqlComputeCode = { set {Slave} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {SlaveId} }, SqlComputed ];\n'})})]})}function d(e={}){const{wrapper:r}={...(0,l.R)(),...e.components};return r?(0,n.jsx)(r,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,r,a)=>{a.d(r,{R:()=>i,x:()=>s});var n=a(96540);const l={},t=n.createContext(l);function i(e){const r=n.useContext(t);return n.useMemo((function(){return"function"==typeof e?e(r):{...r,...e}}),[r,e])}function s(e){let r;return r=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),n.createElement(t.Provider,{value:r},e.children)}}}]);