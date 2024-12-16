"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[79845],{55525:(e,t,r)=>{r.r(t),r.d(t,{contentTitle:()=>l,default:()=>d,frontMatter:()=>a,toc:()=>i});var s=r(74848),n=r(28453);const a={pagination_prev:null,pagination_next:null},l="%iKnow.Metrics.MetricAPI",i=[{value:"Parameters",id:"parameters",level:2},{value:"SetValueEXP",id:"setvalueexp",level:3},{value:"GetTopRT",id:"gettoprt",level:3},{value:"GetMetricsRT",id:"getmetricsrt",level:3},{value:"GetTargetsRT",id:"gettargetsrt",level:3},{value:"Methods",id:"methods",level:2},{value:"SetValue",id:"setvalue",level:3},{value:"GetGlobalName",id:"getglobalname",level:3},{value:"GetValue",id:"getvalue",level:3},{value:"GetTop",id:"gettop",level:3},{value:"GetElementValue",id:"getelementvalue",level:3},{value:"GetMetrics",id:"getmetrics",level:3},{value:"GetTargets",id:"gettargets",level:3},{value:"DropAllMetrics",id:"dropallmetrics",level:3},{value:"ClearAllValues",id:"clearallvalues",level:3},{value:"ClearValues",id:"clearvalues",level:3},{value:"GetMetricId",id:"getmetricid",level:3}];function c(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"iknowmetricsmetricapi",children:"%iKnow.Metrics.MetricAPI"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Metrics.MetricAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"The %iKnow.Metrics infrastructure is deprecated in favour of the more SQL-oriented approach offered through %iKnow.Tables.Utils, where you can add computed fields at different levels and choose whether they need to be persisted or not."}),"\n",(0,s.jsx)(t.p,{children:"This class offers a number of API methods to interact with any custom metrics registered in a particular domain. Use %iKnow.Metrics.MetricDefinition to configure any custom metric properties, eventually referring a %iKnow.Metrics.MetricsBuilder implementation for applicable calculations and then consult the results through the different methods in this interface."}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"setvalueexp",children:"SetValueEXP"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SetValueEXP [ Internal ] = 1;\n"})}),"\n",(0,s.jsx)(t.h3,{id:"gettoprt",children:"GetTopRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetTopRT = "targetId:%Integer,targetValue:%String,score:%Numeric,targetType:%String";\n'})}),"\n",(0,s.jsx)(t.h3,{id:"getmetricsrt",children:"GetMetricsRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetMetricsRT = "metricId:%Integer,name:%String,description:%String,type:%String,definitionClass:%String,builderClass:%String,groupField:%String";\n'})}),"\n",(0,s.jsx)(t.h3,{id:"gettargetsrt",children:"GetTargetsRT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetTargetsRT = "targetType:%String";\n'})}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"setvalue",children:"SetValue"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod SetValue(pDomainId As %Integer, pMetricId As %Integer, pTargetType As %String, pTargetId As %Integer, pValue As %Integer, pContext As %String = "") As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"Sets the value of a particular target element identified by pTargetId (for example, when pTargetType = $$$IKMTRENTITY, pTargetId is a unique entity ID) to pValue."}),"\n",(0,s.jsx)(t.p,{children:"pContext is only required when the metric is not of type $$$IKMTRTYPEDOMAIN and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP."}),"\n",(0,s.jsx)(t.h3,{id:"getglobalname",children:"GetGlobalName"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetGlobalName(pDomainId As %Integer, pType As %String, pTargetType As %String, pContext As %Integer = "") As %String [ Internal ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returns the global storing the data for the given target type. Note: pContext should be in %Integer format (SrcId or MetaUniValueId)."}),"\n",(0,s.jsx)(t.h3,{id:"getvalue",children:"GetValue"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetValue(pDomainId As %Integer, pMetricId As %Integer, pTargetType As %String, pTargetId As %Integer, pContext As %String = "") As %Numeric\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returns the value of a particular target element identified by pTargetId (for example, when pTargetType = $$$IKMTRENTITY, pTargetId is a unique entity ID)."}),"\n",(0,s.jsx)(t.p,{children:"pContext is only required when the metric is not of type $$$IKMTRTYPEDOMAIN and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP."}),"\n",(0,s.jsx)(t.h3,{id:"gettop",children:"GetTop"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTop(ByRef pResult, pDomainId As %Integer, pMetricId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pContext As %String = "", pTargetType As %String = "") As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"Returns the elements with the highest values for custom metric pMetricId, optionally restricted to the target type pTargetType."}),"\n",(0,s.jsx)(t.p,{children:"pContext is ignored when the metric is type $$$IKMTRTYPEDOMAIN and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP. In the latter case, pContext is optional and the top entries for all metadata values will be returned if left blank."}),"\n",(0,s.jsx)(t.h3,{id:"getelementvalue",children:"GetElementValue"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetElementValue(pDomainId As %Integer, pTargetType As %Integer, pId As %Integer) As %String [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns a displayable value for the element identified by pId of type pTargetType"}),"\n",(0,s.jsx)(t.h3,{id:"getmetrics",children:"GetMetrics"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetMetrics(ByRef pResult, pDomainId As %Integer) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns all the metrics registered in this domain."}),"\n",(0,s.jsx)(t.h3,{id:"gettargets",children:"GetTargets"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTargets(ByRef pResult, pDomainId As %Integer, pMetricId As %Integer) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns all the target types registered for a given metric."}),"\n",(0,s.jsx)(t.h3,{id:"dropallmetrics",children:"DropAllMetrics"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DropAllMetrics(pDomainId As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Drops all metric values and definitions for this domain."}),"\n",(0,s.jsx)(t.h3,{id:"clearallvalues",children:"ClearAllValues"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ClearAllValues(pDomainId As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Drops all metric values for this domain."}),"\n",(0,s.jsx)(t.h3,{id:"clearvalues",children:"ClearValues"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod ClearValues(pDomainId As %Integer, pMetricId As %Integer, pTargets As %List = "") As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:'Drops all metric values for metric pMetricId in domain pDomainId. This can optionally be limited to one or more target types using pTargets. If pTargets is "" (default), values for all targets registered for this metric will be dropped.'}),"\n",(0,s.jsx)(t.h3,{id:"getmetricid",children:"GetMetricId"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetMetricId(pDomainId As %Integer, pMetricName As %Integer, Output pSC As %Status) As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns the ID corresponding to the supplied metric name for this domain."})]})}function d(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,t,r)=>{r.d(t,{R:()=>l,x:()=>i});var s=r(96540);const n={},a=s.createContext(n);function l(e){const t=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:l(e.components),s.createElement(a.Provider,{value:t},e.children)}}}]);