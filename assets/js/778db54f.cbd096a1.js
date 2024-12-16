"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[39328],{62261:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>r,default:()=>l,frontMatter:()=>c,toc:()=>a});var t=s(74848),i=s(28453);const c={pagination_prev:null,pagination_next:null},r="%iKnow.Objects.EntityInSourceDetails",a=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"DomainId",id:"domainid",level:3},{value:"SourceId",id:"sourceid",level:3},{value:"EntUniId",id:"entuniid",level:3},{value:"FrequencyAsConcept",id:"frequencyasconcept",level:3},{value:"FrequencyAsRelation",id:"frequencyasrelation",level:3},{value:"DominanceAsConcept",id:"dominanceasconcept",level:3},{value:"DominanceAsRelation",id:"dominanceasrelation",level:3},{value:"Entity",id:"entity",level:3},{value:"Source",id:"source",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"iknowobjectsentityinsourcedetails",children:"%iKnow.Objects.EntityInSourceDetails"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.Objects.EntityInSourceDetails Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Note: the use of this class is no longer recommended for accessing elements of a specific domain. For those scenarios, %iKnow.Tables.Utils offers a more flexible and customizable way of projecting iKnow domain data to SQL"}),"\n",(0,t.jsx)(n.p,{children:"This is a read-only object representation wrapping the internal iKnow data structures for Unique Entities, occurring in a specific source. This class groups the aggregated frequency and dominance information of a particular entity in a particular source."}),"\n",(0,t.jsx)(n.p,{children:"This class can be used from ObjectScript or SQL to access a single or small number of entries, but the storage mappings are not meant to support elaborate or complex queries targeting this SQL table."}),"\n",(0,t.jsx)(n.p,{children:"Please use the predefined queries in %iKnow.Queries.EntityAPI, %iKnow.Semantics.DominanceAPI and other query classes to consult Entity data as the internal global structures are designed to optimize performance for these queries rather than general-purpose access."}),"\n",(0,t.jsx)(n.p,{children:"NOTE: This object assumes all underlying data structures are present. Use domain-specific copies of these objects for domains where not all indices are built. See also the GenerateAllObjectsForDomain() method in %iKnow.Objects.Utils."}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"readonly",children:"READONLY"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"domainid",children:"DomainId"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property DomainId As %Integer;\n"})}),"\n",(0,t.jsx)(n.h3,{id:"sourceid",children:"SourceId"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property SourceId As %Integer;\n"})}),"\n",(0,t.jsx)(n.h3,{id:"entuniid",children:"EntUniId"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property EntUniId As %Integer;\n"})}),"\n",(0,t.jsx)(n.h3,{id:"frequencyasconcept",children:"FrequencyAsConcept"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property FrequencyAsConcept As %Integer;\n"})}),"\n",(0,t.jsx)(n.h3,{id:"frequencyasrelation",children:"FrequencyAsRelation"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property FrequencyAsRelation As %Integer;\n"})}),"\n",(0,t.jsx)(n.h3,{id:"dominanceasconcept",children:"DominanceAsConcept"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property DominanceAsConcept As %Numeric [ Calculated, SqlComputeCode = { set {DominanceAsConcept} = ##class(%iKnow.Semantics.DominanceAPI).GetSourceValue({DomainId},{SourceId},{EntUniId},$$$SDCONCEPT)}, SqlComputed ];\n"})}),"\n",(0,t.jsx)(n.h3,{id:"dominanceasrelation",children:"DominanceAsRelation"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property DominanceAsRelation As %Numeric [ Calculated, SqlComputeCode = { set {DominanceAsRelation} = ##class(%iKnow.Semantics.DominanceAPI).GetSourceValue({DomainId},{SourceId},{EntUniId},$$$SDRELATION)}, SqlComputed ];\n"})}),"\n",(0,t.jsx)(n.h3,{id:"entity",children:"Entity"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property Entity As %iKnow.Objects.EntityUnique [ Calculated, SqlComputeCode = {set {Entity} = {DomainId} _"||"_ {EntUniId}}, SqlComputed ];\n'})}),"\n",(0,t.jsx)(n.h3,{id:"source",children:"Source"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property Source As %iKnow.Objects.Source [ Calculated, SqlComputeCode = {set {Source} = {DomainId} _"||"_ {SourceId}}, SqlComputed ];\n'})})]})}function l(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>r,x:()=>a});var t=s(96540);const i={},c=t.createContext(i);function r(e){const n=t.useContext(c);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:r(e.components),t.createElement(c.Provider,{value:n},e.children)}}}]);