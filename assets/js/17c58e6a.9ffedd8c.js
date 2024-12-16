"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[41429],{50882:(e,t,r)=>{r.r(t),r.d(t,{contentTitle:()=>s,default:()=>d,frontMatter:()=>l,toc:()=>c});var i=r(74848),n=r(28453);const l={pagination_prev:null,pagination_next:null},s="%iKnow.Metrics.MetricBuilder",c=[{value:"Parameters",id:"parameters",level:2},{value:"SUPPORTSMULTIPROCESS",id:"supportsmultiprocess",level:3},{value:"BATCHSIZE",id:"batchsize",level:3},{value:"Properties",id:"properties",level:2},{value:"DomainId",id:"domainid",level:3},{value:"ProcNumber",id:"procnumber",level:3},{value:"Type",id:"type",level:3},{value:"Target",id:"target",level:3},{value:"SrcFilter",id:"srcfilter",level:3},{value:"CurrentSrcId",id:"currentsrcid",level:3},{value:"CurrentFieldId",id:"currentfieldid",level:3},{value:"CurrentFieldName",id:"currentfieldname",level:3},{value:"CurrentFieldValueId",id:"currentfieldvalueid",level:3},{value:"CurrentFieldValue",id:"currentfieldvalue",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"Build",id:"build",level:3},{value:"BuildAll",id:"buildall",level:3},{value:"BuildJob",id:"buildjob",level:3},{value:"BuildIndexJob",id:"buildindexjob",level:3},{value:"BuildIndex",id:"buildindex",level:3},{value:"OnBeforeBuildMetrics",id:"onbeforebuildmetrics",level:3},{value:"OnAfterBuildMetrics",id:"onafterbuildmetrics",level:3},{value:"OnBeforeBuildMetricsForSource",id:"onbeforebuildmetricsforsource",level:3},{value:"OnAfterBuildMetricsForSource",id:"onafterbuildmetricsforsource",level:3},{value:"OnBeforeBuildMetricsForGroup",id:"onbeforebuildmetricsforgroup",level:3},{value:"OnAfterBuildMetricsForGroup",id:"onafterbuildmetricsforgroup",level:3},{value:"OnBeforeBuildMetricsBatch",id:"onbeforebuildmetricsbatch",level:3},{value:"OnAfterBuildMetricsBatch",id:"onafterbuildmetricsbatch",level:3},{value:"CalculateEntUniMetrics",id:"calculateentunimetrics",level:3},{value:"CalculateCrcUniMetrics",id:"calculatecrcunimetrics",level:3},{value:"CalculateCcUniMetrics",id:"calculateccunimetrics",level:3},{value:"CalculatePathMetrics",id:"calculatepathmetrics",level:3},{value:"CalculateSentenceMetrics",id:"calculatesentencemetrics",level:3},{value:"CalculateSourceMetrics",id:"calculatesourcemetrics",level:3}];function a(e){const t={code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(t.header,{children:(0,i.jsx)(t.h1,{id:"iknowmetricsmetricbuilder",children:"%iKnow.Metrics.MetricBuilder"})}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Metrics.MetricBuilder Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"The %iKnow.Metrics infrastructure is deprecated in favour of the more SQL-oriented approach offered through %iKnow.Tables.Utils, where you can add computed fields at different levels and choose whether they need to be persisted or not."}),"\n",(0,i.jsx)(t.p,{children:'Subclasses of this class should implement at least one of the Calculate***Metrics() methods in this interface to support calculating custom metrics for the corresponding target and type. Supported metrics should then register this subclass as their "builder class" in their definition (see %iKnow.Metrics.MetricDefinition).'}),"\n",(0,i.jsx)(t.p,{children:"Metric Builder implementations are invoked through their Build or BuildAll methods and will then start building all applicable metrics, forwarding the actual metric calculations to the Calculate***Metrics() implementations (for example, CalculateEntUniMetrics for target $$$IKMTRENTITY and type $$$IKMTRTYPEDOMAIN). Instances of these implementations will be running in parallel if SUPPORTSMULTIPROCESS is set to 1 (default = 1), or will run single-threaded otherwise."}),"\n",(0,i.jsx)(t.p,{children:'Note: When Calculate***Metrics() methods don\'t return any values for a particular target element, the existing metric value is retained (if any). Returning "" for a value will overwrite (erase) the existing value.'}),"\n",(0,i.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(t.h3,{id:"supportsmultiprocess",children:"SUPPORTSMULTIPROCESS"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SUPPORTSMULTIPROCESS As BOOLEAN = 1;\n"})}),"\n",(0,i.jsx)(t.p,{children:"This parameter indicates whether or not this MetricBuilder implementation supports multiple instances running in parallel to optimize performance. By default, it is set to 1 which means different instances will work in parallel."}),"\n",(0,i.jsx)(t.h3,{id:"batchsize",children:"BATCHSIZE"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter BATCHSIZE As INTEGER = 1024;\n"})}),"\n",(0,i.jsx)(t.p,{children:"Indicates how many entries a process will reserve for itself to calculate per batch"}),"\n",(0,i.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(t.h3,{id:"domainid",children:"DomainId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property DomainId As %Integer [ Final, ReadOnly ];\n"})}),"\n",(0,i.jsx)(t.h3,{id:"procnumber",children:"ProcNumber"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property ProcNumber As %Integer [ Final, Internal, ReadOnly ];\n"})}),"\n",(0,i.jsx)(t.h3,{id:"type",children:"Type"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property Type As %String [ Final, ReadOnly ];\n"})}),"\n",(0,i.jsx)(t.h3,{id:"target",children:"Target"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property Target As %String [ Final, ReadOnly ];\n"})}),"\n",(0,i.jsx)(t.h3,{id:"srcfilter",children:"SrcFilter"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property SrcFilter As %iKnow.Filters.Filter [ Final ];\n"})}),"\n",(0,i.jsx)(t.h3,{id:"currentsrcid",children:"CurrentSrcId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property CurrentSrcId As %Integer;\n"})}),"\n",(0,i.jsx)(t.p,{children:"If Type = $$$IKMTRTYPESOURCE, this property contains the current Source ID for which metrics are gathered. To be used from within the metrics calculation methods such as CalculateEntityMetrics."}),"\n",(0,i.jsx)(t.h3,{id:"currentfieldid",children:"CurrentFieldId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property CurrentFieldId As %Integer;\n"})}),"\n",(0,i.jsx)(t.p,{children:"If Type = $$$IKMTRTYPEGROUP, this property contains the current Metadata Field ID for which metrics are gathered. To be used from within the metrics calculation methods such as CalculateEntityMetrics."}),"\n",(0,i.jsx)(t.h3,{id:"currentfieldname",children:"CurrentFieldName"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property CurrentFieldName As %String;\n"})}),"\n",(0,i.jsx)(t.p,{children:"If Type = $$$IKMTRTYPEGROUP, this property contains the current Metadata Field name for which metrics are gathered. To be used from within the metrics calculation methods such as CalculateEntityMetrics."}),"\n",(0,i.jsx)(t.h3,{id:"currentfieldvalueid",children:"CurrentFieldValueId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property CurrentFieldValueId As %Integer;\n"})}),"\n",(0,i.jsx)(t.p,{children:"If Type = $$$IKMTRTYPEGROUP, this property contains the current Metadata Value ID for which metrics are gathered. To be used from within the metrics calculation methods such as CalculateEntityMetrics."}),"\n",(0,i.jsx)(t.h3,{id:"currentfieldvalue",children:"CurrentFieldValue"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property CurrentFieldValue As %String;\n"})}),"\n",(0,i.jsx)(t.p,{children:"If Type = $$$IKMTRTYPEGROUP, this property contains the current Metadata Value for which metrics are gathered. To be used from within the metrics calculation methods such as CalculateEntityMetrics."}),"\n",(0,i.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Method %OnNew(pDomainId As %Integer, pType As %String, pTarget As %String, pProcNumber As %Integer, pSrcFilter As %String = "") As %Status [ Private, ServerOnly = 1 ]\n'})}),"\n",(0,i.jsx)(t.h3,{id:"build",children:"Build"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod Build(pDomainId As %String, pSourceFilter As %iKnow.Filters.Filter = "", pVerbose As %Boolean = 1, pAsync As %Boolean = 1) As %Status [ Final ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Builds all the metrics referring this class in their BuilderClass property. See also BuildAll."}),"\n",(0,i.jsx)(t.h3,{id:"buildall",children:"BuildAll"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod BuildAll(pDomainId As %String, pMetrics As %List = "", pSrcFilter As %String = "", pVerbose As %Boolean = 1, pAsync As %Boolean = 1) As %Status [ Final ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"This is the main method to be invoked to build all the Metrics for a given domain, optionally limited to a number of metrics specified by ID through pMetrics. It will build a list of all MetricBuilder implementations referred by registered metrics and then run through all targets and types. For each target, it will first invoke all MetricBuilder implementations NOT supporting parallel processing (with SUPPORTSMULTIPROCESS=0) and then spawn a number of jobs to take care of the ones that can run in parallel. These spawned processes will reserve batches of the target element (for example a batch of entities) and then let all MetricBuilder implementations that support metrics for that target run through them and calculate any metric values using the different Calculate***Metrics() methods."}),"\n",(0,i.jsx)(t.p,{children:"Note: metrics can only be calculated in a domain in which they are already registered. See the Register() method in the %iKnow.Metrics.MetricDefinition class for more details."}),"\n",(0,i.jsx)(t.h3,{id:"buildjob",children:"BuildJob"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod BuildJob(pDomainId As %String, pType As %String, pTarget As %String, pProcNumber As %Integer, pSrcFilter As %String = "", pBuilderClass As %String = "") As %Status [ Final, Internal ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Method called internally to build the metrics for a specific target type."}),"\n",(0,i.jsx)(t.h3,{id:"buildindexjob",children:"BuildIndexJob"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod BuildIndexJob(pDomainId As %Integer, pProcNumber As %Integer) As %Status [ Final, Internal ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Method called internally to build an index for a specific Metric and target"}),"\n",(0,i.jsx)(t.h3,{id:"buildindex",children:"BuildIndex"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod BuildIndex(pDomainId As %Integer, pMetricId As %Integer, pTarget As %String) As %Status [ Final ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"This method builds an index for a particular Metric and Target."}),"\n",(0,i.jsx)(t.p,{children:"Note: no indices will be built for metrics of type $$$IKMTRTYPESOURCE, as these intra-source entries will be sorted on the fly when calling any applicable sorted queries."}),"\n",(0,i.jsx)(t.h3,{id:"onbeforebuildmetrics",children:"OnBeforeBuildMetrics"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method OnBeforeBuildMetrics() As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Utility method called before a MetricBuilder instance starts building any metrics, in which custom code can be executed to set up any auxiliary objects or data structures."}),"\n",(0,i.jsx)(t.p,{children:"Note: depending on the value of SUPPORTSMULTIPROCESS, multiple MetricBuilder instances can be running alongside one another"}),"\n",(0,i.jsx)(t.h3,{id:"onafterbuildmetrics",children:"OnAfterBuildMetrics"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method OnAfterBuildMetrics() As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Utility method called after a MetricBuilder instance starts building any metrics, in which custom code can be executed to clean up any auxiliary objects or data structures."}),"\n",(0,i.jsx)(t.p,{children:"Note: depending on the value of SUPPORTSMULTIPROCESS, multiple MetricBuilder instances can be running alongside one another"}),"\n",(0,i.jsx)(t.h3,{id:"onbeforebuildmetricsforsource",children:"OnBeforeBuildMetricsForSource"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method OnBeforeBuildMetricsForSource(pSrcId As %Integer) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Utility method called before a MetricBuilder instance starts building any metrics for the source identified by pSrcId, for metrics of type $$$IKMTRTYPESOURCE."}),"\n",(0,i.jsx)(t.h3,{id:"onafterbuildmetricsforsource",children:"OnAfterBuildMetricsForSource"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method OnAfterBuildMetricsForSource(pSrcId As %Integer) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Utility method called after a MetricBuilder starts building any metrics for the source identified by pSrcId, for metrics of type $$$IKMTRTYPESOURCE."}),"\n",(0,i.jsx)(t.h3,{id:"onbeforebuildmetricsforgroup",children:"OnBeforeBuildMetricsForGroup"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method OnBeforeBuildMetricsForGroup() As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Utility method called before a MetricBuilder instance starts building any metrics for the group identified by CurrentFieldName and CurrentFieldValue, for metrics of type $$$IKMTRTYPEGROUP."}),"\n",(0,i.jsx)(t.h3,{id:"onafterbuildmetricsforgroup",children:"OnAfterBuildMetricsForGroup"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method OnAfterBuildMetricsForGroup() As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Utility method called after a MetricBuilder instance finishes building any metrics for the group identified by CurrentFieldName and CurrentFieldValue, for metrics of type $$$IKMTRTYPEGROUP."}),"\n",(0,i.jsx)(t.h3,{id:"onbeforebuildmetricsbatch",children:"OnBeforeBuildMetricsBatch"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method OnBeforeBuildMetricsBatch(pFrom As %Integer, pTo As %Integer) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Utility method called before a MetricBuilder starts building any metrics for a batch of elements, for metrics of type $$$IKMTRTYPEDOMAIN"}),"\n",(0,i.jsx)(t.h3,{id:"onafterbuildmetricsbatch",children:"OnAfterBuildMetricsBatch"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method OnAfterBuildMetricsBatch(pFrom As %Integer, pTo As %Integer) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Utility method called after a MetricBuilder starts building any metrics for a batch of elements, for metrics of type $$$IKMTRTYPEDOMAIN"}),"\n",(0,i.jsx)(t.h3,{id:"calculateentunimetrics",children:"CalculateEntUniMetrics"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method CalculateEntUniMetrics(pEntUniId As %Integer, pEntUniValue As %String, Output pValues) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"This is the main method a custom MetricBuilder should implement to support metrics targeting entities. Depending on the value of Type, the properties CurrentSrcId (for $$$IKMTRTYPESOURCE), CurrentFieldName and CurrentFieldValue (for $$$IKMTRTYPEGROUP) or neither of these (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated."}),"\n",(0,i.jsxs)(t.p,{children:["For a given unique entity pEntUniId, this method should calculate all metrics it knows about and return them through pValues in an array indexed by metric name: pValues(",(0,i.jsx)(t.em,{children:"metricName"}),") = value"]}),"\n",(0,i.jsx)(t.h3,{id:"calculatecrcunimetrics",children:"CalculateCrcUniMetrics"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method CalculateCrcUniMetrics(pCrcUniId As %Integer, pHeadId As %Integer, pRelationId As %Integer, pTailId As %Integer, Output pValues) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"This is the main method a custom MetricBuilder should implement to support metrics targeting CRCs. Depending on the value of Type, the properties CurrentSrcId (for $$$IKMTRTYPESOURCE), CurrentFieldName and CurrentFieldValue (for $$$IKMTRTYPEGROUP) or neither of these (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated."}),"\n",(0,i.jsxs)(t.p,{children:["For a given unique CRC pCrcUniId, this method should calculate all metrics it knows about and return them through pValues in an array indexed by metric name: pValues(",(0,i.jsx)(t.em,{children:"metricName"}),") = value"]}),"\n",(0,i.jsx)(t.h3,{id:"calculateccunimetrics",children:"CalculateCcUniMetrics"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method CalculateCcUniMetrics(pCcUniId As %Integer, pHeadId As %Integer, pTailId As %Integer, Output pValues) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"This is the main method a custom MetricBuilder should implement to support metrics targeting CCs. Depending on the value of Type, the properties CurrentSrcId (for $$$IKMTRTYPESOURCE), CurrentFieldName and CurrentFieldValue (for $$$IKMTRTYPEGROUP) or neither of these (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated."}),"\n",(0,i.jsxs)(t.p,{children:["For a given unique CC pCcUniId, this method should calculate all metrics it knows about and return them through pValues in an array indexed by metric name: pValues(",(0,i.jsx)(t.em,{children:"metricName"}),") = value"]}),"\n",(0,i.jsx)(t.h3,{id:"calculatepathmetrics",children:"CalculatePathMetrics"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method CalculatePathMetrics(pPathId As %Integer, pEntities As %List, Output pValues) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"This is the main method a custom MetricBuilder should implement to support metrics targeting Paths. Depending on the value of Type, the properties CurrentSrcId (for $$$IKMTRTYPESOURCE), CurrentFieldName and CurrentFieldValue (for $$$IKMTRTYPEGROUP) or neither of these (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated."}),"\n",(0,i.jsxs)(t.p,{children:["For a given path pPathId, this method should calculate all metrics it knows about and return them through pValues in an array indexed by metric name: pValues(",(0,i.jsx)(t.em,{children:"metricName"}),") = value"]}),"\n",(0,i.jsx)(t.h3,{id:"calculatesentencemetrics",children:"CalculateSentenceMetrics"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method CalculateSentenceMetrics(pSentenceId As %Integer, Output pValues) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"This is the main method a custom MetricBuilder should implement to support metrics targeting sentences. Depending on the value of Type, the properties CurrentSrcId (for $$$IKMTRTYPESOURCE), CurrentFieldName and CurrentFieldValue (for $$$IKMTRTYPEGROUP) or neither of these (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated."}),"\n",(0,i.jsxs)(t.p,{children:["For a given sentence pSentenceId, this method should calculate all metrics it knows about and return them through pValues in an array indexed by metric name: pValues(",(0,i.jsx)(t.em,{children:"metricName"}),") = value"]}),"\n",(0,i.jsx)(t.h3,{id:"calculatesourcemetrics",children:"CalculateSourceMetrics"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method CalculateSourceMetrics(pSourceId As %Integer, Output pValues) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"This is the main method a custom MetricBuilder should implement to support metrics targeting sources. Depending on the value of Type, the properties CurrentSrcId (for $$$IKMTRTYPESOURCE), CurrentFieldName and CurrentFieldValue (for $$$IKMTRTYPEGROUP) or neither of these (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated."}),"\n",(0,i.jsxs)(t.p,{children:["For a given source pSourceId in the context of a given source pSrcId, this method should calculate all metrics it knows about and return them through pValues in an array indexed by metric name: pValues(",(0,i.jsx)(t.em,{children:"metricName"}),") = value"]})]})}function d(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,i.jsx)(t,{...e,children:(0,i.jsx)(a,{...e})}):a(e)}},28453:(e,t,r)=>{r.d(t,{R:()=>s,x:()=>c});var i=r(96540);const n={},l=i.createContext(n);function s(e){const t=i.useContext(l);return i.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:s(e.components),i.createElement(l.Provider,{value:t},e.children)}}}]);