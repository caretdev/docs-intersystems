"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[87759],{74856:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>r,default:()=>o,frontMatter:()=>t,toc:()=>c});var l=s(74848),n=s(28453);const t={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.NLSEdit",c=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"PARENTPAGE",id:"parentpage",level:3},{value:"RECENT",id:"recent",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"AUTONS",id:"autons",level:3},{value:"Properties",id:"properties",level:2},{value:"msgIOTableName",id:"msgiotablename",level:3},{value:"msgIOTableOutput",id:"msgiotableoutput",level:3},{value:"msgIOTableInput",id:"msgiotableinput",level:3},{value:"msgConfirmIOTable",id:"msgconfirmiotable",level:3},{value:"msgPatternTables",id:"msgpatterntables",level:3},{value:"msgIdenTables",id:"msgidentables",level:3},{value:"msgCollationTables",id:"msgcollationtables",level:3},{value:"msgXYTables",id:"msgxytables",level:3},{value:"msgSaved",id:"msgsaved",level:3},{value:"CharacterSet",id:"characterset",level:3},{value:"cmbLocale",id:"cmblocale",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"selectMenu",id:"selectmenu",level:3},{value:"selectIOTables",id:"selectiotables",level:3},{value:"newIOTable",id:"newiotable",level:3},{value:"removeIOTable",id:"removeiotable",level:3},{value:"saveIOTable",id:"saveiotable",level:3},{value:"save",id:"save",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"DrawIntTables",id:"drawinttables",level:3},{value:"DrawLocale",id:"drawlocale",level:3},{value:"ExecuteOutputTo",id:"executeoutputto",level:3},{value:"ExecuteInputFrom",id:"executeinputfrom",level:3},{value:"SaveBasics",id:"savebasics",level:3},{value:"SaveFormats",id:"saveformats",level:3},{value:"SaveIntTables",id:"saveinttables",level:3},{value:"EditIOTable",id:"editiotable",level:3},{value:"SaveIOTables",id:"saveiotables",level:3},{value:"RemoveIOTables",id:"removeiotables",level:3},{value:"SaveInternalDefaults",id:"saveinternaldefaults",level:3},{value:"SaveIODefaults",id:"saveiodefaults",level:3},{value:"SaveStrings",id:"savestrings",level:3},{value:"DrawProperties",id:"drawproperties",level:3},{value:"arrowClick",id:"arrowclick",level:3},{value:"ArrayToString",id:"arraytostring",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3}];function i(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(a.header,{children:(0,l.jsx)(a.h1,{id:"cspuiportalnlsedit",children:"%CSP.UI.Portal.NLSEdit"})}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.NLSEdit Extends %CSP.UI.Portal.Template [ System = 4 ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Zen page for System Management Portal - NLS Local Properties"}),"\n",(0,l.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "NLS Edit";\n'})}),"\n",(0,l.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,l.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.NLSEdit.zen";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Configuration,Locale Definitions";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE = "Config";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"parentpage",children:"PARENTPAGE"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.NLS.zen";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"recent",children:"RECENT"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter RECENT = 0;\n"})}),"\n",(0,l.jsx)(a.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,l.jsx)(a.p,{children:"Security requirement"}),"\n",(0,l.jsx)(a.h3,{id:"autons",children:"AUTONS"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,l.jsx)(a.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,l.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(a.h3,{id:"msgiotablename",children:"msgIOTableName"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property msgIOTableName As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a table name.")} ];\n'})}),"\n",(0,l.jsx)(a.h3,{id:"msgiotableoutput",children:"msgIOTableOutput"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property msgIOTableOutput As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a value for Output.")} ];\n'})}),"\n",(0,l.jsx)(a.h3,{id:"msgiotableinput",children:"msgIOTableInput"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property msgIOTableInput As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a value for Input.")} ];\n'})}),"\n",(0,l.jsx)(a.h3,{id:"msgconfirmiotable",children:"msgConfirmIOTable"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property msgConfirmIOTable As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to remove this table from this locale?")} ];\n'})}),"\n",(0,l.jsx)(a.h3,{id:"msgpatterntables",children:"msgPatternTables"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property msgPatternTables As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please select at least one Pattern match table.")} ];\n'})}),"\n",(0,l.jsx)(a.h3,{id:"msgidentables",children:"msgIdenTables"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property msgIdenTables As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please select at least one Identifier table.")} ];\n'})}),"\n",(0,l.jsx)(a.h3,{id:"msgcollationtables",children:"msgCollationTables"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property msgCollationTables As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please select at least one Collation table.")} ];\n'})}),"\n",(0,l.jsx)(a.h3,{id:"msgxytables",children:"msgXYTables"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property msgXYTables As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please select at least one $X/$Y action table.")} ];\n'})}),"\n",(0,l.jsx)(a.h3,{id:"msgsaved",children:"msgSaved"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property msgSaved As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Change has been saved.")} ];\n'})}),"\n",(0,l.jsx)(a.h3,{id:"characterset",children:"CharacterSet"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Property CharacterSet As %ZEN.Datatype.string;\n"})}),"\n",(0,l.jsx)(a.h3,{id:"cmblocale",children:"cmbLocale"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property cmbLocale As %ZEN.Datatype.string(ZENURL = "cmbLocale");\n'})}),"\n",(0,l.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(a.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(a.h3,{id:"selectmenu",children:"selectMenu"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod selectMenu(menu) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"User clicked a menu. menu=0 means to return to Local Properties."}),"\n",(0,l.jsx)(a.h3,{id:"selectiotables",children:"selectIOTables"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod selectIOTables(comp) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"User selected a Input/Output table. Fill in edit fields."}),"\n",(0,l.jsx)(a.h3,{id:"newiotable",children:"newIOTable"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod newIOTable() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Reset the form programmatically"}),"\n",(0,l.jsx)(a.h3,{id:"removeiotable",children:"removeIOTable"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod removeIOTable() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"User clicked the Remove button for IO table"}),"\n",(0,l.jsx)(a.h3,{id:"saveiotable",children:"saveIOTable"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod saveIOTable() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"User clicked the Save button for IO table"}),"\n",(0,l.jsx)(a.h3,{id:"save",children:"save"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod save(menu) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"User clicked a Save button"}),"\n",(0,l.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsx)(a.p,{children:"Set Locator bar and determine whether to show change password option."}),"\n",(0,l.jsx)(a.h3,{id:"drawinttables",children:"DrawIntTables"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawIntTables()\n"})}),"\n",(0,l.jsx)(a.p,{children:"Load Default Internal Tables"}),"\n",(0,l.jsx)(a.h3,{id:"drawlocale",children:"DrawLocale"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawLocale(pSeed As %String) As %Status\n"})}),"\n",(0,l.jsx)(a.h3,{id:"executeoutputto",children:"ExecuteOutputTo"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method ExecuteOutputTo(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean\n"})}),"\n",(0,l.jsx)(a.p,{children:"Method for loading I/O Tables Output to field."}),"\n",(0,l.jsx)(a.h3,{id:"executeinputfrom",children:"ExecuteInputFrom"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method ExecuteInputFrom(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean\n"})}),"\n",(0,l.jsx)(a.p,{children:"Method for loading I/O Tables Input from field."}),"\n",(0,l.jsx)(a.h3,{id:"savebasics",children:"SaveBasics"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveBasics(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Save values to Basics properties"}),"\n",(0,l.jsx)(a.h3,{id:"saveformats",children:"SaveFormats"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveFormats(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Save values to Date, Time, Number Formats"}),"\n",(0,l.jsx)(a.h3,{id:"saveinttables",children:"SaveIntTables"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveIntTables(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"editiotable",children:"EditIOTable"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod EditIOTable(table, tablename) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Load I/O table details"}),"\n",(0,l.jsx)(a.h3,{id:"saveiotables",children:"SaveIOTables"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveIOTables(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Validate and Save values to Input/Output Tables."}),"\n",(0,l.jsx)(a.h3,{id:"removeiotables",children:"RemoveIOTables"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod RemoveIOTables(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Remove an existing IO table from locale"}),"\n",(0,l.jsx)(a.h3,{id:"saveinternaldefaults",children:"SaveInternalDefaults"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveInternalDefaults(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Save values to Defaults for Internal Tables (InternalDefaults)"}),"\n",(0,l.jsx)(a.h3,{id:"saveiodefaults",children:"SaveIODefaults"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveIODefaults(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Save values to Defaults for Input/Output (IODefaults)"}),"\n",(0,l.jsx)(a.h3,{id:"savestrings",children:"SaveStrings"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveStrings(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Save values to Defaults for Input/Output (IODefaults)"}),"\n",(0,l.jsx)(a.h3,{id:"drawproperties",children:"DrawProperties"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawProperties(pSeed As %String) As %Status\n"})}),"\n",(0,l.jsx)(a.p,{children:"Draw All Properties of a Locale"}),"\n",(0,l.jsx)(a.h3,{id:"arrowclick",children:"arrowClick"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod arrowClick(from, to) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"------------------ Utility Methods for Moving between lstboxes ------------------ /// Moving a list item from one box to the next, then remove it from the original box ///"}),"\n",(0,l.jsx)(a.h3,{id:"arraytostring",children:"ArrayToString"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'ClassMethod ArrayToString(name As %String, def As %String, ByRef LocProps As %String, delim As %String = ", ") As %String\n'})}),"\n",(0,l.jsx)(a.p,{children:'Return additional tables from array. Used by DrawProperties. name = table name, e.g. PatternTables, CollationTables def = default, e.g. LocProps("CollationTable") LocProps = array containing all current settings'}),"\n",(0,l.jsx)(a.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,l.jsxs)(a.p,{children:["Return the array of links to show in the locator bar.",(0,l.jsx)(a.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,l.jsx)(a.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,l.jsx)(a.p,{children:"Get the (localized) name of the page."})]})}function o(e={}){const{wrapper:a}={...(0,n.R)(),...e.components};return a?(0,l.jsx)(a,{...e,children:(0,l.jsx)(i,{...e})}):i(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>r,x:()=>c});var l=s(96540);const n={},t=l.createContext(n);function r(e){const a=l.useContext(t);return l.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function c(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:r(e.components),l.createElement(t.Provider,{value:a},e.children)}}}]);