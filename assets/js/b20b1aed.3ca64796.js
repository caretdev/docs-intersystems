"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[64192],{63627:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>o,frontMatter:()=>l,toc:()=>i});var a=s(74848),n=s(28453);const l={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.SQL.QButtons.IndexAnalyzer",i=[{value:"Parameters",id:"parameters",level:2},{value:"RESOURCE",id:"resource",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"Properties",id:"properties",level:2},{value:"PlanPage",id:"planpage",level:3},{value:"gatherStatus",id:"gatherstatus",level:3},{value:"dots",id:"dots",level:3},{value:"msgGather",id:"msggather",level:3},{value:"QUERYNAME",id:"queryname",level:3},{value:"SCHEMANAME",id:"schemaname",level:3},{value:"ShowPlanOutput",id:"showplanoutput",level:3},{value:"RuntimePage",id:"runtimepage",level:3},{value:"iTimeoutInterval",id:"itimeoutinterval",level:3},{value:"SYSTEMFLAG",id:"systemflag",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"doSelectRow",id:"doselectrow",level:3},{value:"timeout",id:"timeout",level:3},{value:"resetToDefaults",id:"resettodefaults",level:3},{value:"DrawQueryText",id:"drawquerytext",level:3},{value:"clearOptionData",id:"clearoptiondata",level:3},{value:"schemaSort",id:"schemasort",level:3},{value:"startButtonGather",id:"startbuttongather",level:3},{value:"checkStatus",id:"checkstatus",level:3},{value:"CheckButtonStatus",id:"checkbuttonstatus",level:3},{value:"refreshButton",id:"refreshbutton",level:3},{value:"checkReportStatus",id:"checkreportstatus",level:3},{value:"refreshStatementTable",id:"refreshstatementtable",level:3},{value:"startReportOption",id:"startreportoption",level:3},{value:"endReportOption",id:"endreportoption",level:3},{value:"saveLastValues",id:"savelastvalues",level:3},{value:"toggleButtons",id:"togglebuttons",level:3},{value:"doPurgeStats",id:"dopurgestats",level:3},{value:"CheckOptionStatus",id:"checkoptionstatus",level:3},{value:"refreshOption",id:"refreshoption",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"adjustSizes",id:"adjustsizes",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"DrawDetailsTitle",id:"drawdetailstitle",level:3},{value:"clearSQLAnalysisDB",id:"clearsqlanalysisdb",level:3},{value:"clearSQLStatements",id:"clearsqlstatements",level:3},{value:"GatherStatements",id:"gatherstatements",level:3},{value:"DrawSQLStatements",id:"drawsqlstatements",level:3},{value:"PrepareAnalysis",id:"prepareanalysis",level:3},{value:"SaveLast",id:"savelast",level:3},{value:"CreateRS",id:"creaters",level:3},{value:"ExecuteRS",id:"executers",level:3},{value:"GetQueryProperties",id:"getqueryproperties",level:3},{value:"PurgeStats",id:"purgestats",level:3},{value:"ListSchemas",id:"listschemas",level:3}];function c(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"cspuiportalsqlqbuttonsindexanalyzer",children:"%CSP.UI.Portal.SQL.QButtons.IndexAnalyzer"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.SQL.QButtons.IndexAnalyzer Extends (%CSP.UI.Template.Property, %CSP.UI.Portal.UtilsNav, %CSP.UI.Portal.SQL.QButtons.Utils) [ System = 4 ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"System Management Portal - SQL Performance Tool"}),"\n",(0,a.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(t.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Development:USE";\n'})}),"\n",(0,a.jsx)(t.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.QButtons.IndexAnalyzer.zen";\n'})}),"\n",(0,a.jsx)(t.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,SQL Index Analyzer";\n'})}),"\n",(0,a.jsx)(t.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "SQL.QButtons.IndexAnalyzer";\n'})}),"\n",(0,a.jsx)(t.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(t.h3,{id:"planpage",children:"PlanPage"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property PlanPage As %String;\n"})}),"\n",(0,a.jsx)(t.h3,{id:"gatherstatus",children:"gatherStatus"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property gatherStatus As %Boolean;\n"})}),"\n",(0,a.jsx)(t.h3,{id:"dots",children:"dots"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property dots As %String;\n"})}),"\n",(0,a.jsx)(t.h3,{id:"msggather",children:"msgGather"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property msgGather As %ZEN.Datatype.string [ InitialExpression = {$$$TextJS("Gathering SQL statements ...")} ];\n'})}),"\n",(0,a.jsx)(t.h3,{id:"queryname",children:"QUERYNAME"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property QUERYNAME As %ZEN.Datatype.string [ InitialExpression = "indexUsage" ];\n'})}),"\n",(0,a.jsx)(t.h3,{id:"schemaname",children:"SCHEMANAME"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property SCHEMANAME As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(t.h3,{id:"showplanoutput",children:"ShowPlanOutput"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property ShowPlanOutput As %ZEN.Datatype.string [ InitialExpression = {$P(..Link("/csp/sys/exp/%25CSP.UI.Portal.SQL.QButtons.ShowPlanOutput.zen"),"?$NAMESPACE",1)} ];\n'})}),"\n",(0,a.jsx)(t.h3,{id:"runtimepage",children:"RuntimePage"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property RuntimePage As %ZEN.Datatype.string [ InitialExpression = {..Link("%25CSP.UI.Portal.SQL.QButtons.RuntimeStats.zen")} ];\n'})}),"\n",(0,a.jsx)(t.h3,{id:"itimeoutinterval",children:"iTimeoutInterval"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property iTimeoutInterval As %ZEN.Datatype.integer [ InitialExpression = 1000 ];\n"})}),"\n",(0,a.jsx)(t.h3,{id:"systemflag",children:"SYSTEMFLAG"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property SYSTEMFLAG As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(t.p,{children:'Whether to include System items (0=Not to include; 1=Include; this flag is used by "%SQL.Manager.Catalog:Schemas" which is opposite of the SkipSys on the UI)'}),"\n",(0,a.jsx)(t.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(t.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(t.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"doselectrow",children:"doSelectRow"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod doSelectRow() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"User clicked a Query Text row. We will job off the show plan process in the background and start timer."}),"\n",(0,a.jsx)(t.h3,{id:"timeout",children:"timeout"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod timeout() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Show Plan timeout function"}),"\n",(0,a.jsx)(t.h3,{id:"resettodefaults",children:"resetToDefaults"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod resetToDefaults() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"drawquerytext",children:"DrawQueryText"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method DrawQueryText(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Write upto 80 characters of query statement in tablePane"}),"\n",(0,a.jsx)(t.h3,{id:"clearoptiondata",children:"clearOptionData"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod clearOptionData(skipSysChanged) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:'user checked/unchecked a "skip" checkbox. hide existing table and save the selection.'}),"\n",(0,a.jsx)(t.h3,{id:"schemasort",children:"schemaSort"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod schemaSort(schema) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"user selected a schema option. update the table with selected schema and save the selection."}),"\n",(0,a.jsx)(t.h3,{id:"startbuttongather",children:"startButtonGather"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod startButtonGather() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Invoke method to gather SQL Statements and update SQL Statement Count table. During this time, disable the rasio buttons."}),"\n",(0,a.jsx)(t.h3,{id:"checkstatus",children:"checkStatus"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod checkStatus() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Timeout Method used by the statement gathering timer"}),"\n",(0,a.jsx)(t.h3,{id:"checkbuttonstatus",children:"CheckButtonStatus"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method CheckButtonStatus() As %Boolean [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"this method is used to see if a server side query is done yet. you can only run one thing at a time so we reuse the same lock to test"}),"\n",(0,a.jsx)(t.h3,{id:"refreshbutton",children:"refreshButton"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod refreshButton(string) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Method used by the statement gathering timer"}),"\n",(0,a.jsx)(t.h3,{id:"checkreportstatus",children:"checkReportStatus"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod checkReportStatus() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Timeout Method used by the report timer"}),"\n",(0,a.jsx)(t.h3,{id:"refreshstatementtable",children:"refreshStatementTable"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod refreshStatementTable() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"startreportoption",children:"startReportOption"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod startReportOption(newOption) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"endreportoption",children:"endReportOption"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod endReportOption(newOption) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Prepare to refresh the result table - update query name based on the option selected"}),"\n",(0,a.jsx)(t.h3,{id:"savelastvalues",children:"saveLastValues"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod saveLastValues() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Save User's report options to server. This is saved per username per namespace so the next time you come into this page your previous selections will become defaults."}),"\n",(0,a.jsx)(t.h3,{id:"togglebuttons",children:"toggleButtons"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod toggleButtons(flag) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"diable or enable action buttons on this page"}),"\n",(0,a.jsx)(t.h3,{id:"dopurgestats",children:"doPurgeStats"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod doPurgeStats(purgeType) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"checkoptionstatus",children:"CheckOptionStatus"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method CheckOptionStatus() As %Status [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method is used to see if a server side query is done yet. you can only run one thing at a time so we reuse the same lock to test"}),"\n",(0,a.jsx)(t.h3,{id:"refreshoption",children:"refreshOption"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod refreshOption(string) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"adjustsizes",children:"adjustSizes"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod adjustSizes() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,a.jsx)(t.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,a.jsx)(t.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,a.jsx)(t.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(t.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(t.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This client event is fired when the a popup page launched from this page fires an action."}),"\n",(0,a.jsx)(t.h3,{id:"drawdetailstitle",children:"DrawDetailsTitle"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method DrawDetailsTitle(pSeed) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Draw html for details title: Routine name and Query text"}),"\n",(0,a.jsx)(t.h3,{id:"clearsqlanalysisdb",children:"clearSQLAnalysisDB"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod clearSQLAnalysisDB() As %Status [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"clearsqlstatements",children:"clearSQLStatements"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod clearSQLStatements() As %Status [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"gatherstatements",children:"GatherStatements"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method GatherStatements(skipSysObj, skipInsStmts) As %Status [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"drawsqlstatements",children:"DrawSQLStatements"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method DrawSQLStatements(pSeed) As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"prepareanalysis",children:"PrepareAnalysis"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method PrepareAnalysis(option, skipSysObj, skipIDkeys, skipInsStmts, schema) As %Status [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"skipSysObj - Skip all System Object (Classes & Routines) that start with: { % | DeepSee | Ens | HS | INFORMATION.SCHEMA }"}),"\n",(0,a.jsx)(t.h3,{id:"savelast",children:"SaveLast"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method SaveLast(skipSysObj, skipIDkeys, skipInsStmts, schema) [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"creaters",children:"CreateRS"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method CreateRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet\n"})}),"\n",(0,a.jsx)(t.p,{children:"pInfo holds details on how to create the query."}),"\n",(0,a.jsx)(t.h3,{id:"executers",children:"ExecuteRS"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean\n"})}),"\n",(0,a.jsx)(t.p,{children:"Method for executing the process query."}),"\n",(0,a.jsx)(t.h3,{id:"getqueryproperties",children:"GetQueryProperties"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetQueryProperties(ByRef pParms, Output pObject As %RegisteredObject) As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"purgestats",children:"PurgeStats"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod PurgeStats(pNamespace, pPurteType) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method clears Stats in the current namespace if user clicked the Purge Statements or Purge Data button. Returns the number of Stats deleted from the '%SYS.PTools.Stats' class; Otherwise, returns an error message if an error occurred."}),"\n",(0,a.jsx)(t.h3,{id:"listschemas",children:"ListSchemas"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method ListSchemas(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean\n"})}),"\n",(0,a.jsx)(t.p,{children:"Method for executing the query for list schemas."})]})}function o(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>i});var a=s(96540);const n={},l=a.createContext(n);function r(e){const t=a.useContext(l);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:r(e.components),a.createElement(l.Provider,{value:t},e.children)}}}]);