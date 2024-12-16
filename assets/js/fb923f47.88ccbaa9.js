"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[45586],{18712:(e,s,i)=>{i.r(s),i.d(s,{contentTitle:()=>l,default:()=>o,frontMatter:()=>a,toc:()=>n});var r=i(74848),t=i(28453);const a={pagination_prev:null,pagination_next:null},l="%DeepSee.REST.v1.InfoServer",n=[{value:"XDatas",id:"xdatas",level:2},{value:"UrlMap",id:"urlmap",level:3},{value:"Methods",id:"methods",level:2},{value:"WriteFiltersForDataSource",id:"writefiltersfordatasource",level:3},{value:"WriteFilterMembers",id:"writefiltermembers",level:3},{value:"WriteCubeList",id:"writecubelist",level:3},{value:"WriteKPIList",id:"writekpilist",level:3},{value:"WritePivotList",id:"writepivotlist",level:3},{value:"WriteDashboardList",id:"writedashboardlist",level:3},{value:"WriteListingsForCube",id:"writelistingsforcube",level:3},{value:"WriteMeasuresForCube",id:"writemeasuresforcube",level:3},{value:"WriteListingFieldsForCube",id:"writelistingfieldsforcube",level:3},{value:"WriteQualityMeasuresForCube",id:"writequalitymeasuresforcube",level:3},{value:"WriteNamedFiltersForCube",id:"writenamedfiltersforcube",level:3},{value:"WritePivotVariablesForCube",id:"writepivotvariablesforcube",level:3},{value:"WriteDetailsForPivotVariable",id:"writedetailsforpivotvariable",level:3},{value:"Test",id:"test",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"deepseerestv1infoserver",children:"%DeepSee.REST.v1.InfoServer"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.REST.v1.InfoServer Extends %DeepSee.REST.REST\n"})}),"\n",(0,r.jsx)(s.p,{children:"This class is responsible for creating the JSON response to the DeepSee REST informational services. For examples and a full list of available services see the documentation for %DeepSee.REST.v1<.class>."}),"\n",(0,r.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,r.jsx)(s.h3,{id:"urlmap",children:"UrlMap"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"XData UrlMap\n"})}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"writefiltersfordatasource",children:"WriteFiltersForDataSource"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteFiltersForDataSource(namespace As %String, pDataSource) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Retrieve the list of available filters for a given pCube"}),"\n",(0,r.jsx)(s.h3,{id:"writefiltermembers",children:"WriteFilterMembers"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteFilterMembers(namespace As %String, pUrl) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return the available members for a filter defined by pSpec within the context of pCube."}),"\n",(0,r.jsx)(s.h3,{id:"writecubelist",children:"WriteCubeList"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteCubeList(namespace As %String) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return a list of available cubes on the system."}),"\n",(0,r.jsx)(s.h3,{id:"writekpilist",children:"WriteKPIList"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteKPIList(namespace As %String)\n"})}),"\n",(0,r.jsx)(s.p,{children:"Retrieve the list of available KPIs"}),"\n",(0,r.jsx)(s.h3,{id:"writepivotlist",children:"WritePivotList"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WritePivotList(namespace As %String) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return a list of available pivots on the system."}),"\n",(0,r.jsx)(s.h3,{id:"writedashboardlist",children:"WriteDashboardList"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteDashboardList(namespace As %String) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return a list of available dashboards on the system."}),"\n",(0,r.jsx)(s.h3,{id:"writelistingsforcube",children:"WriteListingsForCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteListingsForCube(namespace As %String, pDataSource) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return a list of available listings for pDataSource."}),"\n",(0,r.jsx)(s.h3,{id:"writemeasuresforcube",children:"WriteMeasuresForCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteMeasuresForCube(namespace As %String, pCubeName) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return a list of available measures for pCubeName."}),"\n",(0,r.jsx)(s.h3,{id:"writelistingfieldsforcube",children:"WriteListingFieldsForCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteListingFieldsForCube(namespace As %String, pCubeName) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return a list of available listing fields for pCubeName."}),"\n",(0,r.jsx)(s.h3,{id:"writequalitymeasuresforcube",children:"WriteQualityMeasuresForCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteQualityMeasuresForCube(namespace As %String, pCubeName) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return a list of available quality measures for pCubeName."}),"\n",(0,r.jsx)(s.h3,{id:"writenamedfiltersforcube",children:"WriteNamedFiltersForCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteNamedFiltersForCube(namespace As %String, pCubeName) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return a list of available named filters for pCubeName."}),"\n",(0,r.jsx)(s.h3,{id:"writepivotvariablesforcube",children:"WritePivotVariablesForCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WritePivotVariablesForCube(namespace As %String, pCubeName) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return a list of available pivot variables for pCubeName."}),"\n",(0,r.jsx)(s.h3,{id:"writedetailsforpivotvariable",children:"WriteDetailsForPivotVariable"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteDetailsForPivotVariable(namespace As %String, pUrl) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return details for a given pivot variable with logical name pVariableName, available in pCubeName."}),"\n",(0,r.jsx)(s.h3,{id:"test",children:"Test"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Test(namespace As %String) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Test method to confirm connection in the service type"})]})}function o(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,s,i)=>{i.d(s,{R:()=>l,x:()=>n});var r=i(96540);const t={},a=r.createContext(t);function l(e){const s=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function n(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:l(e.components),r.createElement(a.Provider,{value:s},e.children)}}}]);