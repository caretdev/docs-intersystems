"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[40062],{22642:(e,i,t)=>{t.r(i),t.d(i,{contentTitle:()=>l,default:()=>c,frontMatter:()=>r,toc:()=>a});var n=t(74848),s=t(28453);const r={pagination_prev:null,pagination_next:null},l="%iKnow.Filters.ContainsRelatedEntitiesFilter",a=[{value:"Properties",id:"properties",level:2},{value:"Entities",id:"entities",level:3},{value:"DirectRelation",id:"directrelation",level:3},{value:"IncludeSimilar",id:"includesimilar",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"BuildSourceFilter",id:"buildsourcefilter",level:3},{value:"RestoreFilterFromStringInternal",id:"restorefilterfromstringinternal",level:3},{value:"ToString",id:"tostring",level:3},{value:"EntitiesSet",id:"entitiesset",level:3},{value:"IncludeSimilarSet",id:"includesimilarset",level:3},{value:"DirectRelationSet",id:"directrelationset",level:3}];function o(e){const i={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(i.header,{children:(0,n.jsx)(i.h1,{id:"iknowfilterscontainsrelatedentitiesfilter",children:"%iKnow.Filters.ContainsRelatedEntitiesFilter"})}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"Class %iKnow.Filters.ContainsRelatedEntitiesFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(i.p,{children:"%iKnow.Filters.Filter implementation selecting sources based on whether they contain a particular set of entities in a single context. This means they appear in the same CRC (direct relationship) or path (any relationship) in the sources to be included. Optionally, any entities similar to the supplied ones are also accepted."}),"\n",(0,n.jsxs)(i.p,{children:[(0,n.jsx)(i.strong,{children:"Filter parameters"}),":"]}),"\n",(0,n.jsxs)(i.ol,{children:["\n",(0,n.jsxs)(i.li,{children:[(0,n.jsx)(i.strong,{children:"pDomainId"})," As %Integer"]}),"\n",(0,n.jsxs)(i.li,{children:[(0,n.jsx)(i.strong,{children:"pEntityList"})," As %List - entities to check for, appearing in a relationship with one another."]}),"\n",(0,n.jsxs)(i.li,{children:[(0,n.jsx)(i.strong,{children:"pDirectRelation"})," As %Boolean (default 0) - if true, the entities in pEntityList should appear in a direct relationship (within the same CRC) with one another. Otherwise, having the entities appear in the same path is enough for a source to be included."]}),"\n",(0,n.jsxs)(i.li,{children:[(0,n.jsx)(i.strong,{children:"pIncludeSimilar"})," As %Boolean (default 0) - if true, entities similar to the strings in pEntityList are also considered."]}),"\n"]}),"\n",(0,n.jsx)(i.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(i.h3,{id:"entities",children:"Entities"}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"Property Entities As %List;\n"})}),"\n",(0,n.jsx)(i.h3,{id:"directrelation",children:"DirectRelation"}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"Property DirectRelation As %Boolean;\n"})}),"\n",(0,n.jsx)(i.h3,{id:"includesimilar",children:"IncludeSimilar"}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"Property IncludeSimilar As %Boolean;\n"})}),"\n",(0,n.jsx)(i.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(i.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"Method %OnNew(pDomainId As %Integer, pEntityList As %List, pDirectRelation As %Boolean = 0, pIncludeSimilar As %Boolean = 0) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(i.h3,{id:"buildsourcefilter",children:"BuildSourceFilter"}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]\n"})}),"\n",(0,n.jsx)(i.h3,{id:"restorefilterfromstringinternal",children:"RestoreFilterFromStringInternal"}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Private ]\n"})}),"\n",(0,n.jsx)(i.h3,{id:"tostring",children:"ToString"}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"Method ToString() As %String\n"})}),"\n",(0,n.jsx)(i.h3,{id:"entitiesset",children:"EntitiesSet"}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"Method EntitiesSet(pEntities As %List) As %Status [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(i.h3,{id:"includesimilarset",children:"IncludeSimilarSet"}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"Method IncludeSimilarSet(pIncludeSimilar As %Boolean) As %Status [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(i.h3,{id:"directrelationset",children:"DirectRelationSet"}),"\n",(0,n.jsx)(i.pre,{children:(0,n.jsx)(i.code,{className:"language-objectscript-class",children:"Method DirectRelationSet(pDirectRelation As %Boolean) As %Status [ Internal, ServerOnly = 1 ]\n"})})]})}function c(e={}){const{wrapper:i}={...(0,s.R)(),...e.components};return i?(0,n.jsx)(i,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,i,t)=>{t.d(i,{R:()=>l,x:()=>a});var n=t(96540);const s={},r=n.createContext(s);function l(e){const i=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(i):{...i,...e}}),[i,e])}function a(e){let i;return i=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),n.createElement(r.Provider,{value:i},e.children)}}}]);