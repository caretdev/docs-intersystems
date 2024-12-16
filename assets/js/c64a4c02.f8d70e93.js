"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[29452],{61605:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>i,default:()=>d,frontMatter:()=>l,toc:()=>c});var a=s(74848),r=s(28453);const l={pagination_prev:null,pagination_next:null},i="%iKnow.Objects.CrcUnique",c=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"DomainId",id:"domainid",level:3},{value:"CrcUniId",id:"crcuniid",level:3},{value:"HeadId",id:"headid",level:3},{value:"MasterId",id:"masterid",level:3},{value:"RelationId",id:"relationid",level:3},{value:"TailId",id:"tailid",level:3},{value:"SlaveId",id:"slaveid",level:3},{value:"CorpusFrequency",id:"corpusfrequency",level:3},{value:"CorpusSpread",id:"corpusspread",level:3},{value:"CorpusDominance",id:"corpusdominance",level:3},{value:"Head",id:"head",level:3},{value:"Master",id:"master",level:3},{value:"Relation",id:"relation",level:3},{value:"Tail",id:"tail",level:3},{value:"Slave",id:"slave",level:3},{value:"CcUniId",id:"ccuniid",level:3},{value:"CcUnique",id:"ccunique",level:3}];function t(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"iknowobjectscrcunique",children:"%iKnow.Objects.CrcUnique"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.Objects.CrcUnique Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Note: the use of this class is no longer recommended for accessing elements of a specific domain. For those scenarios, %iKnow.Tables.Utils offers a more flexible and customizable way of projecting iKnow domain data to SQL"}),"\n",(0,a.jsx)(n.p,{children:"This is a read-only object representation wrapping the internal iKnow data structures for unique CRCs."}),"\n",(0,a.jsx)(n.p,{children:"This class can be used from ObjectScript or SQL to access a single or small number of entries, but the storage mappings are not meant to support elaborate or complex queries targeting this SQL table."}),"\n",(0,a.jsx)(n.p,{children:"Please use the predefined queries in %iKnow.Queries.CrcAPI and other query classes to consult CRC data as the internal global structures are designed to optimize performance for these queries rather than general-purpose access."}),"\n",(0,a.jsx)(n.p,{children:"NOTE: This object assumes all underlying data structures are present. Use domain-specific copies of these objects for domains where not all indices are built. See also the GenerateAllObjectsForDomain() method in %iKnow.Objects.Utils."}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"readonly",children:"READONLY"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"domainid",children:"DomainId"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property DomainId As %Integer;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"crcuniid",children:"CrcUniId"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property CrcUniId As %Integer;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"headid",children:"HeadId"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property HeadId As %Integer;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"masterid",children:"MasterId"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property MasterId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {MasterId} = {HeadId} }, SqlComputed ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"relationid",children:"RelationId"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property RelationId As %Integer;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"tailid",children:"TailId"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property TailId As %Integer;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"slaveid",children:"SlaveId"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property SlaveId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {SlaveId} = {TailId}}, SqlComputed ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"corpusfrequency",children:"CorpusFrequency"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property CorpusFrequency As %Integer [ Calculated, SqlComputeCode = { set {CorpusFrequency} = $lg(^IRIS.IK.CrcUniDetails({DomainId},{CrcUniId}),1) }, SqlComputed ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"corpusspread",children:"CorpusSpread"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property CorpusSpread As %Integer [ Calculated, SqlComputeCode = { set {CorpusSpread} = $lg(^IRIS.IK.CrcUniDetails({DomainId},{CrcUniId}),2) }, SqlComputed ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"corpusdominance",children:"CorpusDominance"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property CorpusDominance As %Numeric [ Calculated, SqlComputeCode = {set {CorpusDominance} = ##class(%iKnow.Semantics.DominanceAPI).GetDomainValue({DomainId},{CrcUniId},$$$SDCRC) }, SqlComputed ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"head",children:"Head"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property Head As %iKnow.Objects.EntityUnique [ Calculated, SqlComputeCode = { set {Head} = {DomainId} _"||"_ {HeadId} }, SqlComputed ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"master",children:"Master"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property Master As %iKnow.Objects.EntityUnique [ Calculated, Deprecated, Internal, SqlComputeCode = { set {Master} = {DomainId} _"||"_ {MasterId} }, SqlComputed ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"relation",children:"Relation"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property Relation As %iKnow.Objects.EntityUnique [ Calculated, SqlComputeCode = { set {Relation} = {DomainId} _"||"_ {RelationId} }, SqlComputed ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"tail",children:"Tail"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property Tail As %iKnow.Objects.EntityUnique [ Calculated, SqlComputeCode = { set {Tail} = {DomainId} _"||"_ {TailId} }, SqlComputed ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"slave",children:"Slave"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property Slave As %iKnow.Objects.EntityUnique [ Calculated, Deprecated, Internal, SqlComputeCode = { set {Slave} = {DomainId} _"||"_ {SlaveId} }, SqlComputed ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"ccuniid",children:"CcUniId"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property CcUniId As %Integer [ Calculated, SqlComputeCode = { set {CcUniId} = $g(^IRIS.IK.CcUni({DomainId},+{HeadId},+{TailId})) }, SqlComputed ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"ccunique",children:"CcUnique"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CcUnique As %iKnow.Objects.CcUnique [ Calculated, SqlComputeCode = { set {CcUnique} = {DomainId} _"||"_ {CcUniId} }, SqlComputed ];\n'})})]})}function d(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(t,{...e})}):t(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>i,x:()=>c});var a=s(96540);const r={},l=a.createContext(r);function i(e){const n=a.useContext(l);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),a.createElement(l.Provider,{value:n},e.children)}}}]);