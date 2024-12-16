"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[78816],{69757:(e,n,i)=>{i.r(n),i.d(n,{contentTitle:()=>r,default:()=>o,frontMatter:()=>a,toc:()=>l});var s=i(74848),t=i(28453);const a={pagination_prev:null,pagination_next:null},r="%iKnow.Model.dictionary",l=[{value:"Properties",id:"properties",level:2},{value:"matching",id:"matching",level:3},{value:"items",id:"items",level:3},{value:"name",id:"name",level:3},{value:"description",id:"description",level:3},{value:"language",id:"language",level:3},{value:"profile",id:"profile",level:3},{value:"disabled",id:"disabled",level:3},{value:"Methods",id:"methods",level:2},{value:"%Validate",id:"validate",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",matching:"matching",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"iknowmodeldictionary",children:"%iKnow.Model.dictionary"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.Model.dictionary Extends %iKnow.Model.node [ Deprecated, System = 3 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Model representation of a Dictionary to be used for matching. See also %iKnow.Matching.DictionaryAPI"}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"matching",children:"matching"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship matching As %iKnow.Model.matching(XMLPROJECTION = "none") [ Cardinality = one, Inverse = dictionaries ];\n'})}),"\n",(0,s.jsxs)(n.p,{children:["Link to the ",(0,s.jsx)(n.matching,{children:" element this dictionary belongs to."})]}),"\n",(0,s.jsx)(n.h3,{id:"items",children:"items"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship items As %iKnow.Model.dictionaryItem(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = dictionary ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"The Dictionary Items registered in this Dictionary"}),"\n",(0,s.jsx)(n.h3,{id:"name",children:"name"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property name As %String(MAXLEN = 150, XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,s.jsx)(n.p,{children:"A name for this Dictionary. A dictionary name should be unique within the domain."}),"\n",(0,s.jsx)(n.h3,{id:"description",children:"description"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property description As %String(MAXLEN = 1000, XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,s.jsx)(n.p,{children:"An optional description for this Dictionary."}),"\n",(0,s.jsx)(n.h3,{id:"language",children:"language"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property language As %String(MAXLEN = 10, XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,s.jsx)(n.p,{children:"The default language items and terms in this Dictionary are expressed in."}),"\n",(0,s.jsx)(n.h3,{id:"profile",children:"profile"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property profile As %String(MAXLEN = 150, XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,s.jsx)(n.p,{children:"The Matching profile to be used for matching terms in this dictionary. See also %iKnow.Model.matchingProfile. Leave blank to use the default."}),"\n",(0,s.jsx)(n.h3,{id:"disabled",children:"disabled"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property disabled As %Boolean(XMLPROJECTION = "attribute");\n'})}),"\n",(0,s.jsx)(n.p,{children:"If set to 1, this element is ignored when compiling, validating and building the domain"}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"validate",children:"%Validate"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status\n"})})]})}function o(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,i)=>{i.d(n,{R:()=>r,x:()=>l});var s=i(96540);const t={},a=s.createContext(t);function r(e){const n=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:r(e.components),s.createElement(a.Provider,{value:n},e.children)}}}]);