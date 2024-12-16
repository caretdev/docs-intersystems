"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[32631],{66926:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>i,default:()=>o,frontMatter:()=>l,toc:()=>r});var n=s(74848),a=s(28453);const l={pagination_prev:null,pagination_next:null},i="%DeepSee.Component.deepseeCSVProvider",r=[{value:"Parameters",id:"parameters",level:2},{value:"INCLUDEFILES",id:"includefiles",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"GetSystemTempDir",id:"getsystemtempdir",level:3},{value:"ScopeFileName",id:"scopefilename",level:3},{value:"RemoveFile",id:"removefile",level:3},{value:"ExportCSV",id:"exportcsv",level:3},{value:"%CreateResultSet",id:"createresultset",level:3},{value:"%EmitNameValueTable",id:"emitnamevaluetable",level:3},{value:"%EmitResultSet",id:"emitresultset",level:3},{value:"%EmitListingResultSet",id:"emitlistingresultset",level:3},{value:"%EmitKpiResult",id:"emitkpiresult",level:3},{value:"GetKpiFilterCaption",id:"getkpifiltercaption",level:3},{value:"exportMDXToCSV",id:"exportmdxtocsv",level:3},{value:"prepareTableParms",id:"preparetableparms",level:3},{value:"downloadCSV",id:"downloadcsv",level:3}];function c(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"deepseecomponentdeepseecsvprovider",children:"%DeepSee.Component.deepseeCSVProvider"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.Component.deepseeCSVProvider Extends %ZEN.Component.component [ System = 3 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This class is responsible for creating a CSV file from the contents of a DeepSee ResultSet"}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"includefiles",children:"INCLUDEFILES"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter INCLUDEFILES = "zenCSLM.js";\n'})}),"\n",(0,n.jsx)(t.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/deepsee";\n'})}),"\n",(0,n.jsx)(t.p,{children:"This is the XML namespace used for library components."}),"\n",(0,n.jsx)(t.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%DeepSee";\n'})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,n.jsx)(t.p,{children:"This class does not project HTML into its containing document"}),"\n",(0,n.jsx)(t.h3,{id:"getsystemtempdir",children:"GetSystemTempDir"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSystemTempDir() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the temp directory for this system."}),"\n",(0,n.jsx)(t.h3,{id:"scopefilename",children:"ScopeFileName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ScopeFileName(rawName As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Given a user specified file name clip it to ensure that it only refers to files in the mgr/temp space"}),"\n",(0,n.jsx)(t.h3,{id:"removefile",children:"RemoveFile"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod RemoveFile(pFileName) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Remove a temporary file used for this provider within this session from the mgr/Temp directory"}),"\n",(0,n.jsx)(t.h3,{id:"exportcsv",children:"ExportCSV"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod ExportCSV(pMDX = "", pFileName As %String = "", pParmsJSON As %String = "", Output pStatus As %Status) As %String [ ZenMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Export the results of an MDX query to pFileName. Parameters can be passed from the client in a serialized JSON string that will be deserialized into a DynamicObject"}),"\n",(0,n.jsx)(t.h3,{id:"createresultset",children:"%CreateResultSet"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %CreateResultSet(pMDX = "", Output pStatus As %Status, ByRef pParmsObj = {{}}, ByRef pVars = "") As %DeepSee.ResultSet [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Create a resultset from MDX query text. Failure results in a null resultset being returned."}),"\n",(0,n.jsx)(t.h3,{id:"emitnamevaluetable",children:"%EmitNameValueTable"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %EmitNameValueTable(pFileStream, pNames As %DynamicArray = {[]}, pValues As %DynamicArray = {[]}, pTableTitle = "", pParamsObj = {{}}) As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Write a set of name-value pairs as stored in two arrays to a pFileStream in CSV format."}),"\n",(0,n.jsx)(t.h3,{id:"emitresultset",children:"%EmitResultSet"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %EmitResultSet(pRS As %DeepSee.ResultSet = {$$$NULLOREF}, pFileStream) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Write the contents of the active resultset into the open file stream."}),"\n",(0,n.jsx)(t.h3,{id:"emitlistingresultset",children:"%EmitListingResultSet"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %EmitListingResultSet(pRS = {$$$NULLOREF}, pFileStream) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Emit the CSV for the content of a DRILLTROUGH query"}),"\n",(0,n.jsx)(t.h3,{id:"emitkpiresult",children:"%EmitKpiResult"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %EmitKpiResult(pParamsObj = {{}}, pFileStream) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Emit the CSV for the content of a KPI"}),"\n",(0,n.jsx)(t.h3,{id:"getkpifiltercaption",children:"GetKpiFilterCaption"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetKpiFilterCaption(pKPIName, pSpec) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Lookup a filter caption for a KPI"}),"\n",(0,n.jsx)(t.h3,{id:"exportmdxtocsv",children:"exportMDXToCSV"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod exportMDXToCSV(mdx, params, fileName) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Client-facing utility method to send an MDX query to the server to be exported as a CSV."}),"\n",(0,n.jsx)(t.h3,{id:"preparetableparms",children:"prepareTableParms"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod prepareTableParms(table) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Receive a pivotTable component and use its settings to produce a set of expected export parameters consistent with usage in this provider."}),"\n",(0,n.jsx)(t.h3,{id:"downloadcsv",children:"downloadCSV"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod downloadCSV(mdx, exportParams) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Package the entire generation of the download stream into a single convenient call for client consumption."})]})}function o(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>i,x:()=>r});var n=s(96540);const a={},l=n.createContext(a);function i(e){const t=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function r(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),n.createElement(l.Provider,{value:t},e.children)}}}]);