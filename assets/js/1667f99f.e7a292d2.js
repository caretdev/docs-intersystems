"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[42813],{35820:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>l,default:()=>c,frontMatter:()=>r,toc:()=>a});var s=n(74848),i=n(28453);const r={pagination_prev:null,pagination_next:null},l="%iKnow.DeepSee.GenericKPI",a=[{value:"Parameters",id:"parameters",level:2},{value:"IKQUERYCLASS",id:"ikqueryclass",level:3},{value:"IKQUERYNAME",id:"ikqueryname",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetFilterList",id:"ongetfilterlist",level:3},{value:"%OnGetFilterMembers",id:"ongetfiltermembers",level:3},{value:"%OnGetKPIPropertyInfo",id:"ongetkpipropertyinfo",level:3},{value:"%OnExecute",id:"onexecute",level:3},{value:"%OnGetListingResultSet",id:"ongetlistingresultset",level:3}];function o(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"iknowdeepseegenerickpi",children:"%iKnow.DeepSee.GenericKPI"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.DeepSee.GenericKPI Extends %iKnow.DeepSee.BaseKPI [ Abstract, Deprecated, System = 4 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:'Implements a DeepSee KPI that executes an iKnow query. To use this class, create a subclass and override the class parameters prefixed with "IK", which you use to specify the iKnow domain (IKDOMAINID), query class (IKQUERYCLASS), query (IKQUERYNAME), and default page size (IKPAGESIZE, optional).'}),"\n",(0,s.jsx)(t.p,{children:"This generic iKnow-DeepSee KPI implementation offers the following services:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:'Displays all query result columns as properties (columns in the KPI tab form), which can be configured at widget level. A "resultNumber" column is added as well, indicating the "rank" of the result.'}),"\n",(0,s.jsx)(t.li,{children:"Offers all query parameters as filters so they can then be added to the widget (and controlled by the user) or fixed to a specific value. Through the GetParameterValues method in %iKnow.Queries.Utils, a list of allowed parameter values is also made available for most common parameters."}),"\n",(0,s.jsx)(t.li,{children:"Adds a default Listing to this KPI, showing the iKnow sources containing the entities, CRCs or paths selected in the KPI result. (not available for every query)"}),"\n",(0,s.jsx)(t.li,{children:"Exposes all the domains public metadata fields as filters (through %iKnow.DeepSee.BaseKPI)"}),"\n",(0,s.jsx)(t.li,{children:"Adds previous and next buttons to browse through the query results (through %iKnow.DeepSee.BaseKPI)"}),"\n"]}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"ikqueryclass",children:"IKQUERYCLASS"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter IKQUERYCLASS = "%iKnow.Queries.EntityAPI";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Override this parameter to specify the iKnow ObjectScript API class that contains the query to use (primary API class, no *QAPI or *WSAPI class)"}),"\n",(0,s.jsx)(t.h3,{id:"ikqueryname",children:"IKQUERYNAME"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter IKQUERYNAME = "GetTop";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Override this parameter to specify the iKnow query to use in the class identified by IKQUERYCLASS."}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"ongetfilterlist",children:"%OnGetFilterList"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetFilterList(Output pFilters As %List, pDataSourceName As %String = "") As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"Implementation of %OnGetFilterList method, inherited from %DeepSee.KPI. Do not invoke directly."}),"\n",(0,s.jsx)(t.p,{children:"Adds a list of all valid query parameters for the query identified by IKQUERYCLASS and IKQUERYNAME."}),"\n",(0,s.jsx)(t.h3,{id:"ongetfiltermembers",children:"%OnGetFilterMembers"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetFilterMembers(pFilter As %String, Output pMembers As %List, pSearchKey As %String = "", pDataSourceName As %String = "") As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"Implementation of %OnGetFilterMembers method, inherited from %DeepSee.KPI. Do not invoke directly."}),"\n",(0,s.jsx)(t.p,{children:"Adds the values for the IK: system filters (series name column, metadata-based filters and query parameters)"}),"\n",(0,s.jsx)(t.h3,{id:"ongetkpipropertyinfo",children:"%OnGetKPIPropertyInfo"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetKPIPropertyInfo(ByRef pList As %String, pPropNo As %Integer, pModelId As %String = "") As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"Implementation of %OnGetKPIPropertyInfo method, inherited from %DeepSee.KPI. Do not invoke directly."}),"\n",(0,s.jsx)(t.p,{children:"Adds the returned columns for this KPIs query as properties if there aren't any configured explicitly already, as well as a 'resultNumber' column"}),"\n",(0,s.jsx)(t.h3,{id:"onexecute",children:"%OnExecute"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnExecute() As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Implementation of %OnExecute method, inherited from %DeepSee.KPI. Do not invoke directly."}),"\n",(0,s.jsx)(t.p,{children:"Configures and fires the query registered for this GenericKPI instance, given the active filter criteria."}),"\n",(0,s.jsx)(t.h3,{id:"ongetlistingresultset",children:"%OnGetListingResultSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetListingResultSet(ByRef pFilters As %String, ByRef pSelection As %String, pListingName As %String = "", Output pRS As %SQL.StatementResult) As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"Implementation of %OnGetListingResultSet method, inherited from %DeepSee.KPI. Do not invoke directly."}),"\n",(0,s.jsx)(t.p,{children:"Triggers the applicable GetBy*** query from %iKnow.Queries.SourceAPI, taking into account the selected values in the KPI and any active filters."})]})}function c(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(o,{...e})}):o(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>l,x:()=>a});var s=n(96540);const i={},r=s.createContext(i);function l(e){const t=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),s.createElement(r.Provider,{value:t},e.children)}}}]);