"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[75862],{80660:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>a,default:()=>o,frontMatter:()=>i,toc:()=>l});var c=r(74848),n=r(28453);const i={pagination_prev:null,pagination_next:null},a="%DeepSee.XMLA.Server",l=[{value:"Parameters",id:"parameters",level:2},{value:"SERVICENAME",id:"servicename",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"USECLASSNAMESPACES",id:"useclassnamespaces",level:3},{value:"CONTENTTYPE",id:"contenttype",level:3},{value:"CHARSET;",id:"charset",level:3},{value:"NOCHARSETCONVERT",id:"nocharsetconvert",level:3},{value:"XMLIGNORENULL",id:"xmlignorenull",level:3},{value:"SOAPHEADERS",id:"soapheaders",level:3},{value:"Methods",id:"methods",level:2},{value:"ParseRestrictions",id:"parserestrictions",level:3},{value:"ImportRestrictions",id:"importrestrictions",level:3},{value:"Discover",id:"discover",level:3},{value:"DiscoverDataSources",id:"discoverdatasources",level:3},{value:"DiscoverEnumerations",id:"discoverenumerations",level:3},{value:"DiscoverKeywords",id:"discoverkeywords",level:3},{value:"DiscoverLiterals",id:"discoverliterals",level:3},{value:"DiscoverProperties",id:"discoverproperties",level:3},{value:"DiscoverSchemas",id:"discoverschemas",level:3},{value:"Execute",id:"execute",level:3},{value:"CalcCellInfo",id:"calccellinfo",level:3},{value:"OnPreHTTP",id:"onprehttp",level:3}];function t(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,c.jsxs)(c.Fragment,{children:[(0,c.jsx)(s.header,{children:(0,c.jsx)(s.h1,{id:"deepseexmlaserver",children:"%DeepSee.XMLA.Server"})}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.XMLA.Server Extends %SOAP.WebService [ ProcedureBlock, System = 4 ]\n"})}),"\n",(0,c.jsx)(s.p,{children:"XMLA.Server"}),"\n",(0,c.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,c.jsx)(s.h3,{id:"servicename",children:"SERVICENAME"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SERVICENAME = "XMLA";\n'})}),"\n",(0,c.jsx)(s.p,{children:"Name of the WebService."}),"\n",(0,c.jsx)(s.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "urn:schemas-microsoft-com:xml-analysis";\n'})}),"\n",(0,c.jsx)(s.p,{children:"SOAP Namespace for the WebService"}),"\n",(0,c.jsx)(s.h3,{id:"useclassnamespaces",children:"USECLASSNAMESPACES"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter USECLASSNAMESPACES = 1;\n"})}),"\n",(0,c.jsx)(s.p,{children:"Namespaces of referenced classes will be used in the WSDL."}),"\n",(0,c.jsx)(s.h3,{id:"contenttype",children:"CONTENTTYPE"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CONTENTTYPE = "text/xml";\n'})}),"\n",(0,c.jsx)(s.h3,{id:"charset",children:"CHARSET;"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter CHARSET;\n"})}),"\n",(0,c.jsx)(s.h3,{id:"nocharsetconvert",children:"NOCHARSETCONVERT"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter NOCHARSETCONVERT = 1;\n"})}),"\n",(0,c.jsx)(s.h3,{id:"xmlignorenull",children:"XMLIGNORENULL"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter XMLIGNORENULL = 1;\n"})}),"\n",(0,c.jsx)(s.h3,{id:"soapheaders",children:"SOAPHEADERS"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SOAPHEADERS = "BeginSession:%DeepSee.XMLA.BeginSessionHeader,EndSession:%DeepSee.XMLA.EndSessionHeader";\n'})}),"\n",(0,c.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,c.jsx)(s.h3,{id:"parserestrictions",children:"ParseRestrictions"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ParseRestrictions(property As %String, valueStr As %String, coln As %Collection.ListOfDT) As %Status\n"})}),"\n",(0,c.jsx)(s.h3,{id:"importrestrictions",children:"ImportRestrictions"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Method ImportRestrictions(arg As %String, className As %String, ByRef status As %Status = {$$$OK}) As DataSourcesRestrictions\n"})}),"\n",(0,c.jsx)(s.h3,{id:"discover",children:"Discover"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:'Method Discover(RequestType As %XML.String, Restrictions As %XML.String, Properties As Properties) As %XML.GlobalCharacterStream(XMLNAME="return") [ SoapAction = "urn:schemas-microsoft-com:xml-analysis:Discover", WebMethod ]\n'})}),"\n",(0,c.jsx)(s.h3,{id:"discoverdatasources",children:"DiscoverDataSources"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Method DiscoverDataSources(restrictions As DataSourcesRestrictions) As %XML.GlobalCharacterStream\n"})}),"\n",(0,c.jsx)(s.h3,{id:"discoverenumerations",children:"DiscoverEnumerations"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Method DiscoverEnumerations(restrictions As EnumerationsRestrictions) As %XML.GlobalCharacterStream [ PublicList = SQLCODE ]\n"})}),"\n",(0,c.jsx)(s.h3,{id:"discoverkeywords",children:"DiscoverKeywords"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Method DiscoverKeywords(restrictions As KeywordsRestrictions) As %XML.GlobalCharacterStream [ PublicList = SQLCODE ]\n"})}),"\n",(0,c.jsx)(s.h3,{id:"discoverliterals",children:"DiscoverLiterals"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Method DiscoverLiterals(restrictions As LiteralsRestrictions) As %XML.GlobalCharacterStream [ PublicList = SQLCODE ]\n"})}),"\n",(0,c.jsx)(s.h3,{id:"discoverproperties",children:"DiscoverProperties"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Method DiscoverProperties(restrictions As PropertiesRestrictions) As %XML.GlobalCharacterStream [ PublicList = SQLCODE ]\n"})}),"\n",(0,c.jsx)(s.h3,{id:"discoverschemas",children:"DiscoverSchemas"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Method DiscoverSchemas(restrictions As SchemasRestrictions) As %XML.GlobalCharacterStream [ PublicList = SQLCODE ]\n"})}),"\n",(0,c.jsx)(s.h3,{id:"execute",children:"Execute"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:'Method Execute(Command As ExecuteCommand, Properties As Properties) As %XML.GlobalCharacterStream(XMLNAME="return") [ SoapAction = "urn:schemas-microsoft-com:xml-analysis:Execute", WebMethod ]\n'})}),"\n",(0,c.jsx)(s.h3,{id:"calccellinfo",children:"CalcCellInfo"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"Method CalcCellInfo(value As %String, ByRef valueType As %String, formatValue As %String)\n"})}),"\n",(0,c.jsx)(s.h3,{id:"onprehttp",children:"OnPreHTTP"}),"\n",(0,c.jsx)(s.pre,{children:(0,c.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]\n"})})]})}function o(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,c.jsx)(s,{...e,children:(0,c.jsx)(t,{...e})}):t(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>a,x:()=>l});var c=r(96540);const n={},i=c.createContext(n);function a(e){const s=c.useContext(i);return c.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:a(e.components),c.createElement(i.Provider,{value:s},e.children)}}}]);