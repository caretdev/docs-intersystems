"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[28635],{31399:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>a,default:()=>l,frontMatter:()=>t,toc:()=>i});var r=s(74848),c=s(28453);const t={pagination_prev:null,pagination_next:null},a="%iKnow.Objects.Sentence",i=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"DomainId",id:"domainid",level:3},{value:"SentenceId",id:"sentenceid",level:3},{value:"SentenceValue",id:"sentencevalue",level:3},{value:"Position",id:"position",level:3},{value:"LanguageId",id:"languageid",level:3},{value:"LanguageConfidence",id:"languageconfidence",level:3},{value:"SummaryRelevance",id:"summaryrelevance",level:3},{value:"SourceId",id:"sourceid",level:3},{value:"Source",id:"source",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,c.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"iknowobjectssentence",children:"%iKnow.Objects.Sentence"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.Objects.Sentence Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Note: the use of this class is no longer recommended for accessing elements of a specific domain. For those scenarios, %iKnow.Tables.Utils offers a more flexible and customizable way of projecting iKnow domain data to SQL"}),"\n",(0,r.jsx)(n.p,{children:"This is a read-only object representation wrapping the internal iKnow data structures for Sentences."}),"\n",(0,r.jsx)(n.p,{children:"This class can be used from ObjectScript or SQL to access a single or small number of entries, but the storage mappings are not meant to support elaborate or complex queries targeting this SQL table."}),"\n",(0,r.jsx)(n.p,{children:"Please use the predefined queries in %iKnow.Queries.SentenceAPI and other query classes to consult sentence data as the internal global structures are designed to optimize performance for these queries rather than general-purpose access."}),"\n",(0,r.jsx)(n.p,{children:"NOTE: This object assumes all underlying data structures are present. Use domain-specific copies of these objects for domains where not all indices are built. See also the GenerateAllObjectsForDomain() method in %iKnow.Objects.Utils."}),"\n",(0,r.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(n.h3,{id:"readonly",children:"READONLY"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"domainid",children:"DomainId"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property DomainId As %Integer;\n"})}),"\n",(0,r.jsx)(n.h3,{id:"sentenceid",children:"SentenceId"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property SentenceId As %Integer;\n"})}),"\n",(0,r.jsx)(n.h3,{id:"sentencevalue",children:"SentenceValue"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property SentenceValue As %String(MAXLEN = 32000) [ Calculated, SqlComputeCode = {set {SentenceValue} = ##class(%iKnow.Queries.SentenceAPI).GetValue({DomainId},{SentenceId})}, SqlComputed ];\n"})}),"\n",(0,r.jsx)(n.h3,{id:"position",children:"Position"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Position As %Integer [ Calculated, SqlComputeCode = {set {Position} = ##class(%iKnow.Queries.SentenceAPI).GetPosition({DomainId},{SentenceId}) }, SqlComputed ];\n"})}),"\n",(0,r.jsx)(n.h3,{id:"languageid",children:"LanguageId"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property LanguageId As %Integer;\n"})}),"\n",(0,r.jsx)(n.h3,{id:"languageconfidence",children:"LanguageConfidence"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property LanguageConfidence As %Numeric;\n"})}),"\n",(0,r.jsx)(n.h3,{id:"summaryrelevance",children:"SummaryRelevance"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property SummaryRelevance As %Numeric;\n"})}),"\n",(0,r.jsx)(n.h3,{id:"sourceid",children:"SourceId"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property SourceId As %Integer [ Calculated, SqlComputeCode = {set {SourceId} = ##class(%iKnow.Queries.SentenceAPI).GetSourceId({DomainId},{SentenceId})}, SqlComputed ];\n"})}),"\n",(0,r.jsx)(n.h3,{id:"source",children:"Source"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property Source As %iKnow.Objects.Source [ Calculated, SqlComputeCode = {set {Source} = {DomainId} _"||"_ ##class(%iKnow.Queries.SentenceAPI).GetSourceId({DomainId},{SentenceId})}, SqlComputed ];\n'})})]})}function l(e={}){const{wrapper:n}={...(0,c.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>a,x:()=>i});var r=s(96540);const c={},t=r.createContext(c);function a(e){const n=r.useContext(t);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(c):e.components||c:a(e.components),r.createElement(t.Provider,{value:n},e.children)}}}]);