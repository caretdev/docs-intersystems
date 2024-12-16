"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[84023],{41214:(e,a,t)=>{t.r(a),t.d(a,{contentTitle:()=>r,default:()=>o,frontMatter:()=>i,toc:()=>d});var n=t(74848),s=t(28453);const i={pagination_prev:null,pagination_next:null},r="%iKnow.Model.metadataField",d=[{value:"Parameters",id:"parameters",level:2},{value:"XMLNAME",id:"xmlname",level:3},{value:"Properties",id:"properties",level:2},{value:"metadata",id:"metadata",level:3},{value:"name",id:"name",level:3},{value:"operators",id:"operators",level:3},{value:"dataType",id:"datatype",level:3},{value:"storage",id:"storage",level:3},{value:"caseSensitive",id:"casesensitive",level:3},{value:"disabled",id:"disabled",level:3},{value:"Methods",id:"methods",level:2},{value:"%Validate",id:"validate",level:3}];function l(e){const a={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"iknowmodelmetadatafield",children:"%iKnow.Model.metadataField"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %iKnow.Model.metadataField Extends %iKnow.Model.node [ Deprecated, System = 3 ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Model representation for metadata fields registered for a specific domain. See also %iKnow.Queries.MetadataI for more information about any specific properties."}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"xmlname",children:"XMLNAME"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter XMLNAME = "field";\n'})}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"metadata",children:"metadata"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Relationship metadata As %iKnow.Model.metadata(XMLPROJECTION = "none") [ Cardinality = one, Inverse = fields ];\n'})}),"\n",(0,n.jsx)(a.p,{children:"The  element this field belongs to."}),"\n",(0,n.jsx)(a.h3,{id:"name",children:"name"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property name As %String(MAXLEN = 150, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(a.p,{children:"The name of this metadata field, which should be unique within the domain."}),"\n",(0,n.jsx)(a.h3,{id:"operators",children:"operators"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property operators As %String(MAXLEN = 250, XMLPROJECTION = "attribute") [ InitialExpression = {$$$MDOPEQUAL} ];\n'})}),"\n",(0,n.jsx)(a.p,{children:"Any operators this metadata field is to support at runtime for filtering purposes."}),"\n",(0,n.jsx)(a.h3,{id:"datatype",children:"dataType"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property dataType As %String(MAXLEN = 10, XMLPROJECTION = "attribute") [ InitialExpression = {$$$MDDTSTRING} ];\n'})}),"\n",(0,n.jsx)(a.p,{children:"The data type of this metadata field. Any of $$$MDDTSTRING, $$$MDDTNUMBER or $$$MDDTDATE"}),"\n",(0,n.jsx)(a.h3,{id:"storage",children:"storage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property storage As %Integer(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,n.jsx)(a.p,{children:"Storage type for this metadata field: either $$$MDSTNORMAL for cases where you would use a normal index, $$$MDSTBITMAP where you would use a bitmap index (few different metadata values compared to total # of records)"}),"\n",(0,n.jsx)(a.h3,{id:"casesensitive",children:"caseSensitive"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property caseSensitive As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,n.jsx)(a.p,{children:"Whether or not this metadata fields content should be treated with case sensitivity."}),"\n",(0,n.jsx)(a.h3,{id:"disabled",children:"disabled"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property disabled As %Boolean(XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(a.p,{children:"If set to 1, this element is ignored when compiling, validating and building the domain"}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"validate",children:"%Validate"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status\n"})})]})}function o(e={}){const{wrapper:a}={...(0,s.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,a,t)=>{t.d(a,{R:()=>r,x:()=>d});var n=t(96540);const s={},i=n.createContext(s);function r(e){const a=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function d(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:r(e.components),n.createElement(i.Provider,{value:a},e.children)}}}]);