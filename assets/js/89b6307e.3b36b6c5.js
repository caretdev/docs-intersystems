"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[40335],{68429:(e,n,i)=>{i.r(n),i.d(n,{contentTitle:()=>l,default:()=>d,frontMatter:()=>r,toc:()=>a});var t=i(74848),s=i(28453);const r={pagination_prev:null,pagination_next:null},l="%iKnow.Model.metric",a=[{value:"Properties",id:"properties",level:2},{value:"group",id:"group",level:3},{value:"name",id:"name",level:3},{value:"description",id:"description",level:3},{value:"type",id:"type",level:3},{value:"targets",id:"targets",level:3},{value:"builderClass",id:"builderclass",level:3},{value:"maintainIndex",id:"maintainindex",level:3},{value:"disabled",id:"disabled",level:3},{value:"groupField",id:"groupfield",level:3},{value:"Methods",id:"methods",level:2},{value:"%Validate",id:"validate",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",metric:"metric",metrics:"metrics",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"iknowmodelmetric",children:"%iKnow.Model.metric"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.Model.metric Extends %iKnow.Model.node [ Deprecated, System = 3 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"The %iKnow.Metrics infrastructure is deprecated in favour of the more SQL-oriented approach offered through %iKnow.Tables.Utils, where you can add computed fields at different levels and choose whether they need to be persisted or not."}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"group",children:"group"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Relationship group As %iKnow.Model.metrics(XMLPROJECTION = "none") [ Cardinality = one, Internal, Inverse = metrics ];\n'})}),"\n",(0,t.jsxs)(n.p,{children:["The ",(0,t.jsx)(n.metrics,{children:" element this metric belongs to"})]}),"\n",(0,t.jsx)(n.h3,{id:"name",children:"name"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property name As %String(MAXLEN = 250, XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(n.p,{children:"Name of the metric."}),"\n",(0,t.jsxs)(n.p,{children:["WARNING: Changing the name of a ",(0,t.jsx)(n.metric,{children:" element will create a new metric definition and not change the name of an existing one."})]}),"\n",(0,t.jsx)(n.h3,{id:"description",children:"description"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property description As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(n.p,{children:"Description of the metric"}),"\n",(0,t.jsx)(n.h3,{id:"type",children:"type"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property type As %String(VALUELIST = ",domain,source,group", XMLPROJECTION = "attribute") [ InitialExpression = "domain" ];\n'})}),"\n",(0,t.jsx)(n.p,{children:"Context type to which the metric applies, either $$$IKMTRTYPEDOMAIN, $$$IKMTRTYPESOURCE or $$$IKMTRTYPEGROUP"}),"\n",(0,t.jsx)(n.h3,{id:"targets",children:"targets"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property targets As %String(MAXLEN = 250, XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(n.p,{children:"Comma-separated list of the target elements this metric applies to. Any combination of $$$IKMTRENTITY, $$$IKMTRCRC, $$$IKMTRCC, $$$IKMTRPATH, $$$IKMTRSENTENCE and $$$IKMTRSOURCE"}),"\n",(0,t.jsx)(n.h3,{id:"builderclass",children:"builderClass"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property builderClass As %String(MAXLEN = 250, XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(n.p,{children:"The subclass of %iKnow.Metrics.MetricBuilder this metric will be build by."}),"\n",(0,t.jsx)(n.h3,{id:"maintainindex",children:"maintainIndex"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property maintainIndex As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsx)(n.p,{children:"Defines whether indices on this metric should be built and maintained automatically when metric values change as the result of a Build() or SetValue() invocation."}),"\n",(0,t.jsx)(n.h3,{id:"disabled",children:"disabled"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property disabled As %Boolean(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(n.p,{children:"If set to 1, this element is ignored when compiling, validating and building"}),"\n",(0,t.jsx)(n.h3,{id:"groupfield",children:"groupField"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property groupField As %String(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(n.p,{children:'If the context type (type) is $$$IKMTRTYPEGROUP ("group"), this specifies the metadata field on which the grouping is based.'}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"validate",children:"%Validate"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain = "") As %Status\n'})})]})}function d(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,n,i)=>{i.d(n,{R:()=>l,x:()=>a});var t=i(96540);const s={},r=t.createContext(s);function l(e){const n=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),t.createElement(r.Provider,{value:n},e.children)}}}]);