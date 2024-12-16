"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[31655],{71786:(e,t,c)=>{c.r(t),c.d(t,{contentTitle:()=>i,default:()=>l,frontMatter:()=>a,toc:()=>s});var n=c(74848),r=c(28453);const a={pagination_prev:null,pagination_next:null},i="%iKnow.Objects.VirtualDictionaryMatch",s=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"DomainId",id:"domainid",level:3},{value:"VirtualSourceId",id:"virtualsourceid",level:3},{value:"DictionaryMatchId",id:"dictionarymatchid",level:3},{value:"DictionaryId",id:"dictionaryid",level:3},{value:"DictionaryItemId",id:"dictionaryitemid",level:3},{value:"DictionaryTermId",id:"dictionarytermid",level:3},{value:"TargetType",id:"targettype",level:3},{value:"TargetTypeString",id:"targettypestring",level:3},{value:"TargetId",id:"targetid",level:3},{value:"MatchScore",id:"matchscore",level:3},{value:"MatchedConceptCount",id:"matchedconceptcount",level:3},{value:"MatchedRelationCount",id:"matchedrelationcount",level:3},{value:"PartialMatchCount",id:"partialmatchcount",level:3},{value:"FirstMatchedPositionInPath",id:"firstmatchedpositioninpath",level:3},{value:"LastMatchedPositionInPath",id:"lastmatchedpositioninpath",level:3},{value:"IsOrdered",id:"isordered",level:3},{value:"NegatedEntityCount",id:"negatedentitycount",level:3},{value:"MatchedEntityCount",id:"matchedentitycount",level:3},{value:"MatchedPathSectionLength",id:"matchedpathsectionlength",level:3},{value:"Dictionary",id:"dictionary",level:3},{value:"DictionaryItem",id:"dictionaryitem",level:3},{value:"DictionaryTerm",id:"dictionaryterm",level:3},{value:"MatchedEntityOccurrence",id:"matchedentityoccurrence",level:3},{value:"MatchedCrcOccurrence",id:"matchedcrcoccurrence",level:3}];function d(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"iknowobjectsvirtualdictionarymatch",children:"%iKnow.Objects.VirtualDictionaryMatch"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Objects.VirtualDictionaryMatch Extends %Persistent [ Deprecated, StorageStrategy = iKnowStorage, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This is a read-only object representation wrapping the internal iKnow data structures for Dictionary Matches in a Virtual Source."}),"\n",(0,n.jsx)(t.p,{children:"This class can be used from ObjectScript or SQL to access a single or small number of entries, but the storage mappings are not meant to support elaborate or complex queries targeting this SQL table."}),"\n",(0,n.jsx)(t.p,{children:"Please use the predefined queries in %iKnow.Matching.MatchingAPI and other query classes to consult entity data as the internal global structures are designed to optimize performance for these queries rather than general-purpose access."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"readonly",children:"READONLY"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"domainid",children:"DomainId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property DomainId As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"virtualsourceid",children:"VirtualSourceId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property VirtualSourceId As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"dictionarymatchid",children:"DictionaryMatchId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property DictionaryMatchId As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"dictionaryid",children:"DictionaryId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property DictionaryId As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"dictionaryitemid",children:"DictionaryItemId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property DictionaryItemId As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"dictionarytermid",children:"DictionaryTermId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property DictionaryTermId As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"targettype",children:"TargetType"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property TargetType As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"targettypestring",children:"TargetTypeString"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property TargetTypeString As %String [ Calculated, SqlComputeCode = { set {TargetTypeString} = $case({TargetType}, $$$DMTARGETENTITY:"entity", $$$DMTARGETCRC:"crc", $$$DMTARGETPATH:"path")}, SqlComputed ];\n'})}),"\n",(0,n.jsx)(t.h3,{id:"targetid",children:"TargetId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property TargetId As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"matchscore",children:"MatchScore"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property MatchScore As %Numeric;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"matchedconceptcount",children:"MatchedConceptCount"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property MatchedConceptCount As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"matchedrelationcount",children:"MatchedRelationCount"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property MatchedRelationCount As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"partialmatchcount",children:"PartialMatchCount"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property PartialMatchCount As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"firstmatchedpositioninpath",children:"FirstMatchedPositionInPath"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property FirstMatchedPositionInPath As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"lastmatchedpositioninpath",children:"LastMatchedPositionInPath"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property LastMatchedPositionInPath As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"isordered",children:"IsOrdered"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property IsOrdered As %Boolean;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"negatedentitycount",children:"NegatedEntityCount"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property NegatedEntityCount As %Integer;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"matchedentitycount",children:"MatchedEntityCount"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property MatchedEntityCount As %Integer [ Calculated, SqlComputeCode = {set {MatchedEntityCount} = {MatchedConceptCount} + {MatchedRelationCount} }, SqlComputed ];\n"})}),"\n",(0,n.jsx)(t.h3,{id:"matchedpathsectionlength",children:"MatchedPathSectionLength"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property MatchedPathSectionLength As %Integer [ Calculated, SqlComputeCode = {set {MatchedPathSectionLength} = {LastMatchedPositionInPath} - {FirstMatchedPositionInPath} + 1 }, SqlComputed ];\n"})}),"\n",(0,n.jsx)(t.h3,{id:"dictionary",children:"Dictionary"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property Dictionary As %iKnow.Objects.Dictionary [ Calculated, SqlComputeCode = {set {Dictionary} = $s({DictionaryId}<0:0, 1:{DomainId}) _"||"_ $zabs({DictionaryId})}, SqlComputed ];\n'})}),"\n",(0,n.jsx)(t.h3,{id:"dictionaryitem",children:"DictionaryItem"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property DictionaryItem As %iKnow.Objects.DictionaryItem [ Calculated, SqlComputeCode = {set {DictionaryItem} = $s({DictionaryId}<0:0, 1:{DomainId}) _"||"_ $zabs({DictionaryItemId})}, SqlComputed ];\n'})}),"\n",(0,n.jsx)(t.h3,{id:"dictionaryterm",children:"DictionaryTerm"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property DictionaryTerm As %iKnow.Objects.DictionaryTerm [ Calculated, SqlComputeCode = {set {DictionaryTerm} = $s({DictionaryId}<0:0, 1:{DomainId}) _"||"_ $zabs({DictionaryTermId})}, SqlComputed ];\n'})}),"\n",(0,n.jsx)(t.h3,{id:"matchedentityoccurrence",children:"MatchedEntityOccurrence"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property MatchedEntityOccurrence As %iKnow.Objects.VirtualEntityOccurrence [ Calculated, SqlComputeCode = {set {MatchedEntityOccurrence} = $s({TargetType}=0:{DomainId}_"||"_{VirtualSourceId}_"||"_{TargetId}, 1:"")}, SqlComputed ];\n'})}),"\n",(0,n.jsx)(t.h3,{id:"matchedcrcoccurrence",children:"MatchedCrcOccurrence"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property MatchedCrcOccurrence As %iKnow.Objects.VirtualCrcOccurrence [ Calculated, SqlComputeCode = {set {MatchedCrcOccurrence} = $s({TargetType}=1:{DomainId}_"||"_{VirtualSourceId}_"||"_{TargetId}, 1:"")}, SqlComputed ];\n'})})]})}function l(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(d,{...e})}):d(e)}},28453:(e,t,c)=>{c.d(t,{R:()=>i,x:()=>s});var n=c(96540);const r={},a=n.createContext(r);function i(e){const t=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function s(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),n.createElement(a.Provider,{value:t},e.children)}}}]);