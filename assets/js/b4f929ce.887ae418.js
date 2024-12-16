"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[31173],{28181:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>l,default:()=>o,frontMatter:()=>a,toc:()=>i});var n=t(74848),r=t(28453);const a={pagination_prev:null,pagination_next:null},l="%iKnow.Model.listQuery",i=[{value:"Parameters",id:"parameters",level:2},{value:"XMLNAME",id:"xmlname",level:3},{value:"Properties",id:"properties",level:2},{value:"listerClass",id:"listerclass",level:3},{value:"sql",id:"sql",level:3},{value:"idField",id:"idfield",level:3},{value:"groupField",id:"groupfield",level:3},{value:"dataFields",id:"datafields",level:3},{value:"metadataColumns",id:"metadatacolumns",level:3},{value:"metadataFields",id:"metadatafields",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnBeforeApplyParams",id:"onbeforeapplyparams",level:3}];function d(e){const s={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",parameter:"parameter",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"iknowmodellistquery",children:"%iKnow.Model.listQuery"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %iKnow.Model.listQuery Extends %iKnow.Model.list [ Deprecated, System = 3 ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"For details on using this class"}),", see ",(0,n.jsx)(s.a,{href:"/csp/docbook/Doc.View.cls?FIND=CLASSES+%25iKnow.Model.listQuery",children:"NLP Domains"}),"."]}),"\n",(0,n.jsxs)(s.p,{children:["Subclass of %iKnow.Model.list dedicated to represent lists for the SQL Lister. This class has its own set of properties representing the specific Lister parameters of the SQL Lister and hence is easier to use than the generic list class. Any ",(0,n.jsx)(s.parameter,{children:" elements nested within this element will be overwritten with the values specified for the corresponding shorthand attributes."})]}),"\n",(0,n.jsx)(s.p,{children:"See also %iKnow.Source.SQL.Lister for more details on these Lister Parameters."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"xmlname",children:"XMLNAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter XMLNAME = "query";\n'})}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"listerclass",children:"listerClass"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property listerClass As %String(MAXLEN = 250, XMLPROJECTION = "attribute") [ InitialExpression = "%iKnow.Source.SQL.Lister", ReadOnly ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"sql",children:"sql"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property sql As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"The query to run for retrieving sources to process."}),"\n",(0,n.jsx)(s.h3,{id:"idfield",children:"idField"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property idField As %String(MAXLEN = 250, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"The column name selected by query containing the local reference to use for constructing the external ID for a loaded source."}),"\n",(0,n.jsx)(s.h3,{id:"groupfield",children:"groupField"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property groupField As %String(MAXLEN = 250, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"The column name selected by query containing the group name to use for constructing the external ID for a loaded source."}),"\n",(0,n.jsx)(s.h3,{id:"datafields",children:"dataFields"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property dataFields As %String(MAXLEN = 250, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"The column names selected by query containing the actual data to be indexed."}),"\n",(0,n.jsx)(s.h3,{id:"metadatacolumns",children:"metadataColumns"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property metadataColumns As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"The column names selected by query containing any metadata values to be stored with loaded sources."}),"\n",(0,n.jsx)(s.h3,{id:"metadatafields",children:"metadataFields"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property metadataFields As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"The names of the metadata fields positionally corresponding to the columns identified in metadataColumns. If left empty, the column names in metadataColumns are expected to correspond to metadata field names themselves."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onbeforeapplyparams",children:"%OnBeforeApplyParams"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OnBeforeApplyParams(pCode As %CharacterStream, pVar As %String, pObj) [ CodeMode = objectgenerator, Internal ]\n"})})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(d,{...e})}):d(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>l,x:()=>i});var n=t(96540);const r={},a=n.createContext(r);function l(e){const s=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),n.createElement(a.Provider,{value:s},e.children)}}}]);