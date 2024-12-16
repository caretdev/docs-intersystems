"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[52877],{47527:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>r,default:()=>u,frontMatter:()=>i,toc:()=>a});var n=t(74848),l=t(28453);const i={pagination_prev:null,pagination_next:null},r="%DeepSee.KPIPlugIn",a=[{value:"Parameters",id:"parameters",level:2},{value:"CACHEABLE",id:"cacheable",level:3},{value:"ASYNC",id:"async",level:3},{value:"PUBLIC",id:"public",level:3},{value:"BASECUBE",id:"basecube",level:3},{value:"PLUGINTYPE",id:"plugintype",level:3},{value:"LISTINGSOURCE",id:"listingsource",level:3},{value:"LISTINGFIELDS",id:"listingfields",level:3},{value:"Properties",id:"properties",level:2},{value:"%sqlResultSet",id:"sqlresultset",level:3},{value:"%factCount",id:"factcount",level:3},{value:"%plugInListingKey",id:"pluginlistingkey",level:3},{value:"Methods",id:"methods",level:2},{value:"%GetPlugInType",id:"getplugintype",level:3},{value:"%GetBaseCube",id:"getbasecube",level:3},{value:"%OnGetMDX",id:"ongetmdx",level:3},{value:"%OnGetAnalysisResultSet",id:"ongetanalysisresultset",level:3},{value:"%OnGetListingSource",id:"ongetlistingsource",level:3},{value:"%OnGetListingFields",id:"ongetlistingfields",level:3},{value:"%OnGetListingOrderBy",id:"ongetlistingorderby",level:3},{value:"%OnGetListingMaxRows",id:"ongetlistingmaxrows",level:3},{value:"%GetAnalysisResultSet",id:"getanalysisresultset",level:3},{value:"%OnComputeKPITimestamp",id:"oncomputekpitimestamp",level:3},{value:"%OnComputeKPICacheKey",id:"oncomputekpicachekey",level:3},{value:"%OnCompute",id:"oncompute",level:3},{value:"%OnLoadKPI",id:"onloadkpi",level:3},{value:"%OnGetFilterMembers",id:"ongetfiltermembers",level:3},{value:"%GetPluginMDX",id:"getpluginmdx",level:3},{value:"%GetSourceType",id:"getsourcetype",level:3},{value:"%OnKPICleanup",id:"onkpicleanup",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"deepseekpiplugin",children:"%DeepSee.KPIPlugIn"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.KPIPlugIn Extends %DeepSee.KPI [ Abstract, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:'Subclasses of this class are used to implement analytic "plug-ins" for DeepSee.'}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"cacheable",children:"CACHEABLE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter CACHEABLE = 1;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"async",children:"ASYNC"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter ASYNC = 1;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"public",children:"PUBLIC"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter PUBLIC = 0;\n"})}),"\n",(0,n.jsx)(s.p,{children:"By default, plug-ins are not visible to dashboards."}),"\n",(0,n.jsx)(s.h3,{id:"basecube",children:"BASECUBE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter BASECUBE As STRING;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Cube that this plug-in is based on. This determines which cubes (or subject areas based on this cube) can see this plug-in. This can be a comma-delimited list. The cube name(s) should not be enclosed with []."}),"\n",(0,n.jsx)(s.h3,{id:"plugintype",children:"PLUGINTYPE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PLUGINTYPE As STRING [ Constraint = ",Pivot,Aggregate", Flags = ENUM ] = "Pivot";\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Specifies the type of this plug-in. This indicates the context in which this plug-in is used.",(0,n.jsx)(s.br,{}),'\n"Pivot" -- the plug-in is visible within the Analyzer dimension tree.',(0,n.jsx)(s.br,{}),'\n"Aggregate" -- the plug-in is not visible within the Analyzer dimension tree.']}),"\n",(0,n.jsx)(s.h3,{id:"listingsource",children:"LISTINGSOURCE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter LISTINGSOURCE As STRING [ Constraint = ",SourceTable,FactTable", Flags = ENUM ] = "SourceTable";\n'})}),"\n",(0,n.jsx)(s.p,{children:'Specifies the source of the listing data used by this plugin: "SourceTable" - the data source supplies the listing values; "FactTable" - the fact table supplies the listing values.'}),"\n",(0,n.jsx)(s.h3,{id:"listingfields",children:"LISTINGFIELDS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter LISTINGFIELDS As STRING;\n"})}),"\n",(0,n.jsx)(s.p,{children:"If defined, this the field list (RETURN clause) of the listing used to supply data for this plug-in."}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"sqlresultset",children:"%sqlResultSet"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %sqlResultSet As %SQL.StatementResult;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Iterator for SQL results that will drive the computation of this plugin."}),"\n",(0,n.jsx)(s.h3,{id:"factcount",children:"%factCount"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %factCount As %Integer;\n"})}),"\n",(0,n.jsx)(s.p,{children:'Number of facts in the "listing" that is driving this KPI.'}),"\n",(0,n.jsx)(s.h3,{id:"pluginlistingkey",children:"%plugInListingKey"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %plugInListingKey As %String;\n"})}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"getplugintype",children:"%GetPlugInType"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetPlugInType() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return the type of this plug in."}),"\n",(0,n.jsx)(s.h3,{id:"getbasecube",children:"%GetBaseCube"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetBaseCube() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return the cube(s) this KPI is based on."}),"\n",(0,n.jsx)(s.h3,{id:"ongetmdx",children:"%OnGetMDX"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetMDX(ByRef pMDX As %String) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["This callback defines the default MDX query used for analysis. It also checks for the current values in the filters.",(0,n.jsx)(s.br,{}),"\nBy default, select all facts from the first base cube.",(0,n.jsx)(s.br,{}),"\nThis may be overridden by subclasses."]}),"\n",(0,n.jsx)(s.h3,{id:"ongetanalysisresultset",children:"%OnGetAnalysisResultSet"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetAnalysisResultSet(Output pRS As %SQL.StatementResult, pSQL As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return an %SQL.StatementResult object that will iterate over the facts used for analysis."}),"\n",(0,n.jsx)(s.h3,{id:"ongetlistingsource",children:"%OnGetListingSource"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetListingSource() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:'Returns the source of the listing data used by this plugin: "SourceTable" - the data source supplies the listing values; "FactTable" - the fact table supplies the listing values.'}),"\n",(0,n.jsx)(s.h3,{id:"ongetlistingfields",children:"%OnGetListingFields"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetListingFields() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns the field list (RETURN clause) of the listing used to supply data for this plug-in."}),"\n",(0,n.jsx)(s.h3,{id:"ongetlistingorderby",children:"%OnGetListingOrderBy"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetListingOrderBy() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns the MDX %ORDER BY clause for the drillthrough query used to supply data for this plug-in."}),"\n",(0,n.jsx)(s.h3,{id:"ongetlistingmaxrows",children:"%OnGetListingMaxRows"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetListingMaxRows() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns the MDX MAXROWS clause for the drillthrough query used to supply data for this plug-in."}),"\n",(0,n.jsx)(s.h3,{id:"getanalysisresultset",children:"%GetAnalysisResultSet"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetAnalysisResultSet(Output pRS As %SQL.StatementResult, Output pCubeName As %String, Output pQueryKey As %String) As %Status [ Final, Internal ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Return an %SQL.StatementResult object that will iterate over the facts used for analysis.",(0,n.jsx)(s.br,{}),"\npCubeName is the cube name for the underlying MDX query.",(0,n.jsx)(s.br,{}),"\npQueryKey is the query key for the underlying MDX query."]}),"\n",(0,n.jsx)(s.h3,{id:"oncomputekpitimestamp",children:"%OnComputeKPITimestamp"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method %OnComputeKPITimestamp(ByRef pTimestamp As %String, pSourceType As %String, pQueryText As %String = "") As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Compute and return the KPI cache timestamp for the current KPI result."}),"\n",(0,n.jsx)(s.h3,{id:"oncomputekpicachekey",children:"%OnComputeKPICacheKey"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method %OnComputeKPICacheKey(Output pCacheKey As %String, pQueryText As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Compute the kpi cache key for the current KPI result. Also creates the context for executing this KPI."}),"\n",(0,n.jsx)(s.h3,{id:"oncompute",children:"%OnCompute"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnCompute(pSQLRS As %SQL.StatementResult, Output pFactCount As %Integer) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Compute value(s) for this plug-in.",(0,n.jsx)(s.br,{}),"\npSQLRS is an SQL result set (%SQL.StatementResult) that will iterate over a set of facts and provide the base data for the calculations.",(0,n.jsx)(s.br,{}),"\npFactCount Is the number of facts in the set.",(0,n.jsx)(s.br,{}),"\nPlug-in classes should implement this method to perform their calculations."]}),"\n",(0,n.jsx)(s.h3,{id:"onloadkpi",children:"%OnLoadKPI"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnLoadKPI() As %Status [ Final ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Notification that this KPI is being executed.",(0,n.jsx)(s.br,{}),"\nIn this case, we compute the value of this plug-in by setting up the context and invoking the %OnCompute method.",(0,n.jsx)(s.br,{}),"\nPlug-in classes should implement the %OnCompute method."]}),"\n",(0,n.jsx)(s.h3,{id:"ongetfiltermembers",children:"%OnGetFilterMembers"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetFilterMembers(pFilter As %String, Output pMembers As %List, pSearchKey As %String = "", pDataSourceName As %String = "", ByRef pFilterValues As %String) As %Status\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Callback to get additional members for a KPI filter. This takes the form:",(0,n.jsx)(s.br,{}),"\npMembers($I(pMembers))=$LB(text,value)",(0,n.jsx)(s.br,{}),'\nIn this case, return members for certain "built-in" filters such as "%cube" and "%measure".']}),"\n",(0,n.jsx)(s.h3,{id:"getpluginmdx",children:"%GetPluginMDX"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetPluginMDX(Output pStatus As %Status) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Plugins have a context-specific DRILLTHROUGH/DRILLFACTS MDX query that is executed to ultimately produce the SQL resultset containing the target records for analysis. This method decorates the base query with the MDX resultset cell context and directs the drill to the proper source."}),"\n",(0,n.jsx)(s.h3,{id:"getsourcetype",children:"%GetSourceType"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetSourceType() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:'Return the sourceType for this KPI. Always "custom" for plugins.'}),"\n",(0,n.jsx)(s.h3,{id:"onkpicleanup",children:"%OnKPICleanup"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnKPICleanup() As %Status [ Internal ]\n"})})]})}function u(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>r,x:()=>a});var n=t(96540);const l={},i=n.createContext(l);function r(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);