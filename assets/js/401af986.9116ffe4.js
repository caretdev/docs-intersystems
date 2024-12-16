"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[35824],{45036:(e,c,n)=>{n.r(c),n.d(c,{contentTitle:()=>l,default:()=>d,frontMatter:()=>t,toc:()=>a});var r=n(74848),s=n(28453);const t={pagination_prev:null,pagination_next:null},l="%iKnow.Objects.VirtualCrcOccurrence",a=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"DomainId",id:"domainid",level:3},{value:"VirtualSourceId",id:"virtualsourceid",level:3},{value:"CrcOccurrenceId",id:"crcoccurrenceid",level:3},{value:"CrcUniId",id:"crcuniid",level:3},{value:"HeadOccId",id:"headoccid",level:3},{value:"MasterOccId",id:"masteroccid",level:3},{value:"RelationOccId",id:"relationoccid",level:3},{value:"TailOccId",id:"tailoccid",level:3},{value:"SlaveOccId",id:"slaveoccid",level:3},{value:"SentenceId",id:"sentenceid",level:3},{value:"PosInSentence",id:"posinsentence",level:3},{value:"CrcUnique",id:"crcunique",level:3},{value:"Sentence",id:"sentence",level:3}];function i(e){const c={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(c.header,{children:(0,r.jsx)(c.h1,{id:"iknowobjectsvirtualcrcoccurrence",children:"%iKnow.Objects.VirtualCrcOccurrence"})}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Class %iKnow.Objects.VirtualCrcOccurrence Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]\n"})}),"\n",(0,r.jsx)(c.p,{children:"This is a read-only object representation wrapping the internal iKnow data structures for CRC Occurrences in a Virtual Source."}),"\n",(0,r.jsx)(c.p,{children:"This class can be used from ObjectScript or SQL to access a single or small number of entries, but the storage mappings are not meant to support elaborate or complex queries targeting this SQL table."}),"\n",(0,r.jsx)(c.p,{children:"Please use the predefined queries in %iKnow.Queries.CrcAPI and other query classes to consult CRC data as the internal global structures are designed to optimize performance for these queries rather than general-purpose access."}),"\n",(0,r.jsx)(c.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(c.h3,{id:"readonly",children:"READONLY"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,r.jsx)(c.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(c.h3,{id:"domainid",children:"DomainId"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property DomainId As %Integer;\n"})}),"\n",(0,r.jsx)(c.h3,{id:"virtualsourceid",children:"VirtualSourceId"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property VirtualSourceId As %Integer;\n"})}),"\n",(0,r.jsx)(c.h3,{id:"crcoccurrenceid",children:"CrcOccurrenceId"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property CrcOccurrenceId As %Integer;\n"})}),"\n",(0,r.jsx)(c.h3,{id:"crcuniid",children:"CrcUniId"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property CrcUniId As %Integer;\n"})}),"\n",(0,r.jsx)(c.h3,{id:"headoccid",children:"HeadOccId"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property HeadOccId As %Integer;\n"})}),"\n",(0,r.jsx)(c.h3,{id:"masteroccid",children:"MasterOccId"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property MasterOccId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {MasterOccId} = {HeadOccId} }, SqlComputed ];\n"})}),"\n",(0,r.jsx)(c.h3,{id:"relationoccid",children:"RelationOccId"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property RelationOccId As %Integer;\n"})}),"\n",(0,r.jsx)(c.h3,{id:"tailoccid",children:"TailOccId"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property TailOccId As %Integer;\n"})}),"\n",(0,r.jsx)(c.h3,{id:"slaveoccid",children:"SlaveOccId"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property SlaveOccId As %Integer [ Calculated, Deprecated, Internal, SqlComputeCode = { set {SlaveOccId} = {TailOccId} }, SqlComputed ];\n"})}),"\n",(0,r.jsx)(c.h3,{id:"sentenceid",children:"SentenceId"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property SentenceId As %Integer;\n"})}),"\n",(0,r.jsx)(c.h3,{id:"posinsentence",children:"PosInSentence"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:"Property PosInSentence As %Integer;\n"})}),"\n",(0,r.jsx)(c.h3,{id:"crcunique",children:"CrcUnique"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:'Property CrcUnique As %iKnow.Objects.VirtualCrcUnique [ Calculated, SqlComputeCode = { set {CrcUnique} = {DomainId} _"||"_ {VirtualSourceId} _"||"_ {CrcUniId} }, SqlComputed ];\n'})}),"\n",(0,r.jsx)(c.h3,{id:"sentence",children:"Sentence"}),"\n",(0,r.jsx)(c.pre,{children:(0,r.jsx)(c.code,{className:"language-objectscript-class",children:'Property Sentence As %iKnow.Objects.VirtualSentence [ Calculated, SqlComputeCode = {set {Sentence} = {DomainId} _"||"_ {VirtualSourceId} _ "||" _ {SentenceId}}, SqlComputed ];\n'})})]})}function d(e={}){const{wrapper:c}={...(0,s.R)(),...e.components};return c?(0,r.jsx)(c,{...e,children:(0,r.jsx)(i,{...e})}):i(e)}},28453:(e,c,n)=>{n.d(c,{R:()=>l,x:()=>a});var r=n(96540);const s={},t=r.createContext(s);function l(e){const c=r.useContext(t);return r.useMemo((function(){return"function"==typeof e?e(c):{...c,...e}}),[c,e])}function a(e){let c;return c=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),r.createElement(t.Provider,{value:c},e.children)}}}]);