"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[85983],{63594:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>l,frontMatter:()=>a,toc:()=>c});var r=n(74848),t=n(28453);const a={pagination_prev:null,pagination_next:null},i="%iKnow.Source.Domain.Processor",c=[{value:"Properties",id:"properties",level:2},{value:"SrcDomainId",id:"srcdomainid",level:3},{value:"MetaFields",id:"metafields",level:3},{value:"MetaFieldIds",id:"metafieldids",level:3},{value:"OverrideLanguage",id:"overridelanguage",level:3},{value:"PreserveSentences",id:"preservesentences",level:3},{value:"LanguagesInUse",id:"languagesinuse",level:3},{value:"Methods",id:"methods",level:2},{value:"ProcessDirect",id:"processdirect",level:3},{value:"FetchSource",id:"fetchsource",level:3},{value:"SetParams",id:"setparams",level:3},{value:"GetMetadataKeys",id:"getmetadatakeys",level:3},{value:"GetKnownLanguage",id:"getknownlanguage",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"iknowsourcedomainprocessor",children:"%iKnow.Source.Domain.Processor"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %iKnow.Source.Domain.Processor Extends %iKnow.Source.Processor [ Deprecated, System = 4 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"This Processor implementation reads data from existing sources in a (typically different) domain, as listed by the ExpandList method of the %iKnow.Source.Domain.Lister. These Lister and Processor classes are at the core of the %iKnow.Utils.CopyUtils and %iKnow.Utils.UpgradeUtils classes."}),"\n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Processor parameters:"})}),"\n",(0,r.jsxs)(s.ol,{children:["\n",(0,r.jsxs)(s.li,{children:[(0,r.jsx)(s.strong,{children:"srcDomainId"})," As %Integer - the domain where to copy data from. (only required when specifying metaFields)"]}),"\n",(0,r.jsxs)(s.li,{children:[(0,r.jsx)(s.strong,{children:"metaFields"})," As %List (optional) - the metadata fields to copy from the source domain into the target one."]}),"\n",(0,r.jsxs)(s.li,{children:[(0,r.jsx)(s.strong,{children:"overrideLanguage"}),' As %String (optional) - the two-letter language code of a language to use overriding what can be derived from the source domain. Leave blank to use source domain values and use "AUTO" to re-detect using normal configuration settings.']}),"\n",(0,r.jsxs)(s.li,{children:[(0,r.jsx)(s.strong,{children:"preserveSentences"})," As %Boolean (optional, defaults to 1) - whether or not to preserve the exact same sentence splittings as in the original indexation."]}),"\n"]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Extracted metadata keys:"})," see metaFields Processor parameter."]}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"srcdomainid",children:"SrcDomainId"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property SrcDomainId As %Integer [ Private ];\n"})}),"\n",(0,r.jsx)(s.h3,{id:"metafields",children:"MetaFields"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property MetaFields As %List [ Private ];\n"})}),"\n",(0,r.jsx)(s.h3,{id:"metafieldids",children:"MetaFieldIds"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property MetaFieldIds As %List [ Internal, Private ];\n"})}),"\n",(0,r.jsx)(s.h3,{id:"overridelanguage",children:"OverrideLanguage"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property OverrideLanguage As %String [ Private ];\n"})}),"\n",(0,r.jsx)(s.h3,{id:"preservesentences",children:"PreserveSentences"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property PreserveSentences As %Boolean [ InitialExpression = 1, Private ];\n"})}),"\n",(0,r.jsx)(s.h3,{id:"languagesinuse",children:"LanguagesInUse"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property LanguagesInUse [ Internal, MultiDimensional, Private ];\n"})}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"processdirect",children:"ProcessDirect"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProcessDirect(pSrcId As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"BDB317 - shorthand method to directly process / re-index a particular source ID with this Processor instance's current settings. NOT TO BE USED BY CUSTOM CODE"}),"\n",(0,r.jsx)(s.h3,{id:"fetchsource",children:"FetchSource"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method FetchSource(loc As %Integer, ref As %List) As %Status [ Private ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"setparams",children:"SetParams"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method SetParams(params As %String) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"getmetadatakeys",children:"GetMetadataKeys"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMetadataKeys(params As %String) As %List\n"})}),"\n",(0,r.jsx)(s.p,{children:"Subclasses should override this method to identify those metadata keys that are calculated or extracted by this Processor implementation and will be registered for every source processed by calling SetCurrentMetadataValues during the FetchSource execution."}),"\n",(0,r.jsx)(s.h3,{id:"getknownlanguage",children:"GetKnownLanguage"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Method GetKnownLanguage(loc As %Integer, ref As %List, keyid As %Integer = "") As %String\n'})})]})}function l(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>c});var r=n(96540);const t={},a=r.createContext(t);function i(e){const s=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:i(e.components),r.createElement(a.Provider,{value:s},e.children)}}}]);