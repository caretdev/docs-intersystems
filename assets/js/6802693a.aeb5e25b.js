"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[7012],{69572:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>r,default:()=>o,frontMatter:()=>s,toc:()=>c});var i=t(74848),l=t(28453);const s={pagination_prev:null,pagination_next:null},r="%iKnow.Stemming.Rule",c=[{value:"Properties",id:"properties",level:2},{value:"Plugin",id:"plugin",level:3},{value:"Type",id:"type",level:3},{value:"Spec",id:"spec",level:3},{value:"LanguageCode",id:"languagecode",level:3},{value:"Value",id:"value",level:3},{value:"Replace",id:"replace",level:3},{value:"Entity",id:"entity",level:3}];function a(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"iknowstemmingrule",children:"%iKnow.Stemming.Rule"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.Stemming.Rule Extends %Persistent [ Deprecated, System = 4 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Table to which custom disambiguation rules can be added to influence the default stemmer class (%iKnow.Stemming.DefaultStemmer). See also %iKnow.Stemming.Utils."}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"plugin",children:"Plugin"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property Plugin As %String(VALUELIST = ",All,Hunspell") [ Required ];\n'})}),"\n",(0,i.jsx)(n.p,{children:'The plugin to which this rule applies (use "All" for all plugin types)'}),"\n",(0,i.jsx)(n.h3,{id:"type",children:"Type"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property Type As %String(VALUELIST = ",Exception,Ending,Affix") [ Required ];\n'})}),"\n",(0,i.jsx)(n.p,{children:"Type of disambiguation rule"}),"\n",(0,i.jsx)(n.h3,{id:"spec",children:"Spec"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property Spec As %String(VALUELIST = ",Relation,Concept,NoRelation,NoConcept");\n'})}),"\n",(0,i.jsx)(n.p,{children:"Specification of the rule, whether it applies (only) to concepts or relationships. When type=Exception: the role of the entity in which case the exception applies. When type'=Exception: whether tems satisfying this rule are Not-a-Concept or Not-a-Relation"}),"\n",(0,i.jsx)(n.h3,{id:"languagecode",children:"LanguageCode"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property LanguageCode As %String(MAXLEN = 2) [ Required ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Language for which this rules holds"}),"\n",(0,i.jsx)(n.h3,{id:"value",children:"Value"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Value As %String(MAXLEN = 100) [ Required ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Value of the exception or ending this rule represents"}),"\n",(0,i.jsx)(n.h3,{id:"replace",children:"Replace"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Replace As %String(MAXLEN = 100) [ Required ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"For exceptions, what to replace Value with"}),"\n",(0,i.jsx)(n.h3,{id:"entity",children:"Entity"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property Entity As %String(MAXLEN = 200);\n"})}),"\n",(0,i.jsx)(n.p,{children:"For advanced exceptions, this value should appear in the entity being stemmed for the rule to apply."})]})}function o(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(a,{...e})}):a(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>r,x:()=>c});var i=t(96540);const l={},s=i.createContext(l);function r(e){const n=i.useContext(s);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),i.createElement(s.Provider,{value:n},e.children)}}}]);