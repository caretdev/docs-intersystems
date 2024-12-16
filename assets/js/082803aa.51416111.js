"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[70840],{89727:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>o,default:()=>l,frontMatter:()=>a,toc:()=>r});var i=t(74848),s=t(28453);const a={pagination_prev:null,pagination_next:null},o="%iKnow.Model.configuration",r=[{value:"Properties",id:"properties",level:2},{value:"domain",id:"domain",level:3},{value:"name",id:"name",level:3},{value:"detectLanguage",id:"detectlanguage",level:3},{value:"languages",id:"languages",level:3},{value:"userDictionary",id:"userdictionary",level:3},{value:"summarize",id:"summarize",level:3},{value:"maxConceptLength",id:"maxconceptlength",level:3},{value:"Methods",id:"methods",level:2},{value:"%Validate",id:"validate",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"iknowmodelconfiguration",children:"%iKnow.Model.configuration"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.Model.configuration Extends %iKnow.Model.node [ Deprecated, System = 3 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Model representation of the %iKnow.Configuration object. See its class documentation for more details on specific properties."}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"domain",children:"domain"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship domain As %iKnow.Model.domain(XMLPROJECTION = "none") [ Cardinality = one, Internal, Inverse = configurations ];\n'})}),"\n",(0,i.jsx)(n.p,{children:"This relationship actually doesn't make sense as configurations are domain-independent, but we need it for the object to compile."}),"\n",(0,i.jsx)(n.h3,{id:"name",children:"name"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property name As %String(MAXLEN = 150, XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(n.p,{children:"Name of the configuration. Must be unique within the namespace (across domains)"}),"\n",(0,i.jsx)(n.h3,{id:"detectlanguage",children:"detectLanguage"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property detectLanguage As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,i.jsx)(n.p,{children:"Whether or not to let the iKnow engine automatically detect which of the languages listed in languages each sentence is in."}),"\n",(0,i.jsx)(n.h3,{id:"languages",children:"languages"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property languages As %String(MAXLEN = 250, XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(n.p,{children:"The language models to load in the engine when processing text. If the engine is to decide which language each sentence / source is in, also set detectLanguage to 1"}),"\n",(0,i.jsx)(n.h3,{id:"userdictionary",children:"userDictionary"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property userDictionary As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(n.p,{children:"If defined, uses this user dictionary to rewrite text fed into the engine."}),"\n",(0,i.jsx)(n.h3,{id:"summarize",children:"summarize"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property summarize As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];\n'})}),"\n",(0,i.jsx)(n.p,{children:"Whether or not to produce summary information while indexing text."}),"\n",(0,i.jsx)(n.h3,{id:"maxconceptlength",children:"maxConceptLength"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property maxConceptLength As %Integer(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(n.p,{children:"The maximum number of words in a concept. Concepts with more words will be interpreted as noise and split into single-word concepts. Use this property to override the language model default. Advanced use only!"}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"validate",children:"%Validate"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status\n"})})]})}function l(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>o,x:()=>r});var i=t(96540);const s={},a=i.createContext(s);function o(e){const n=i.useContext(a);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:o(e.components),i.createElement(a.Provider,{value:n},e.children)}}}]);