"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[98423],{74949:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>l,default:()=>p,frontMatter:()=>n,toc:()=>a});var o=r(74848),t=r(28453);const n={pagination_prev:null,pagination_next:null},l="%ZEN.Report.Models.Group.Utils",a=[{value:"Methods",id:"methods",level:2},{value:"%GenerateReportFromXMLFile",id:"generatereportfromxmlfile",level:3},{value:"%GenerateReport",id:"generatereport",level:3},{value:"%ModelToReportDefinition",id:"modeltoreportdefinition",level:3},{value:"%ModelToReportDisplay",id:"modeltoreportdisplay",level:3},{value:"ProcessGroupsDef",id:"processgroupsdef",level:3},{value:"ProcessGroupsDisplay",id:"processgroupsdisplay",level:3},{value:"GetColumnNamesSQL",id:"getcolumnnamessql",level:3},{value:"GetColumnNamesQuery",id:"getcolumnnamesquery",level:3}];function i(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,o.jsxs)(o.Fragment,{children:[(0,o.jsx)(s.header,{children:(0,o.jsx)(s.h1,{id:"zenreportmodelsgrouputils",children:"%ZEN.Report.Models.Group.Utils"})}),"\n",(0,o.jsx)(s.pre,{children:(0,o.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Models.Group.Utils Extends %RegisteredObject [ Deprecated, System = 4 ]\n"})}),"\n",(0,o.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,o.jsx)(s.h3,{id:"generatereportfromxmlfile",children:"%GenerateReportFromXMLFile"}),"\n",(0,o.jsx)(s.pre,{children:(0,o.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GenerateReportFromXMLFile(filename As %String)\n"})}),"\n",(0,o.jsx)(s.h3,{id:"generatereport",children:"%GenerateReport"}),"\n",(0,o.jsx)(s.pre,{children:(0,o.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GenerateReport(pModel As %ZEN.Report.Models.Group.Report) As %Status [ Internal ]\n"})}),"\n",(0,o.jsx)(s.p,{children:"Given a report model (typically supplied by the report designer) create a class that implements the report."}),"\n",(0,o.jsx)(s.h3,{id:"modeltoreportdefinition",children:"%ModelToReportDefinition"}),"\n",(0,o.jsx)(s.pre,{children:(0,o.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %ModelToReportDefinition(pModel As %ZEN.Report.Models.Group.Report, pOutput As %Stream.GlobalCharacter) As %Status [ Internal ]\n"})}),"\n",(0,o.jsx)(s.p,{children:"Convert a report model to a report definition (as a stream in XML format)."}),"\n",(0,o.jsx)(s.h3,{id:"modeltoreportdisplay",children:"%ModelToReportDisplay"}),"\n",(0,o.jsx)(s.pre,{children:(0,o.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %ModelToReportDisplay(pModel As %ZEN.Report.Models.Group.Report, pOutput As %Stream.GlobalCharacter) As %Status [ Internal ]\n"})}),"\n",(0,o.jsx)(s.p,{children:"Convert a report model to a report definition (as a stream in XML format)."}),"\n",(0,o.jsx)(s.h3,{id:"processgroupsdef",children:"ProcessGroupsDef"}),"\n",(0,o.jsx)(s.pre,{children:(0,o.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ProcessGroupsDef(parent As %ZEN.Report.Models.Group.Report, list, pOutput As %Stream.GlobalCharacter)\n"})}),"\n",(0,o.jsx)(s.p,{children:"Process Groups for Report Definition"}),"\n",(0,o.jsx)(s.h3,{id:"processgroupsdisplay",children:"ProcessGroupsDisplay"}),"\n",(0,o.jsx)(s.pre,{children:(0,o.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ProcessGroupsDisplay(parent As %ZEN.Report.Models.Group.Report, list, pOutput As %Stream.GlobalCharacter)\n"})}),"\n",(0,o.jsx)(s.p,{children:"Process Groups for Report Definition"}),"\n",(0,o.jsx)(s.h3,{id:"getcolumnnamessql",children:"GetColumnNamesSQL"}),"\n",(0,o.jsx)(s.pre,{children:(0,o.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetColumnNamesSQL(sql As %String, ByRef cols As %String)\n"})}),"\n",(0,o.jsx)(s.h3,{id:"getcolumnnamesquery",children:"GetColumnNamesQuery"}),"\n",(0,o.jsx)(s.pre,{children:(0,o.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetColumnNamesQuery(queryClass As %String, queryName As %String, ByRef cols As %String)\n"})})]})}function p(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,o.jsx)(s,{...e,children:(0,o.jsx)(i,{...e})}):i(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>l,x:()=>a});var o=r(96540);const t={},n=o.createContext(t);function l(e){const s=o.useContext(n);return o.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:l(e.components),o.createElement(n.Provider,{value:s},e.children)}}}]);