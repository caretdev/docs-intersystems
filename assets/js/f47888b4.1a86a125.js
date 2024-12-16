"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[35834],{62659:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>c,toc:()=>r});var n=a(74848),l=a(28453);const c={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.ClassList",r=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"FILETYPE",id:"filetype",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"ClassSpec",id:"classspec",level:3},{value:"writePERMISSION",id:"writepermission",level:3},{value:"ShowSQL",id:"showsql",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"searchPane",id:"searchpane",level:3},{value:"resultPane",id:"resultpane",level:3},{value:"Methods",id:"methods",level:2},{value:"DrawSQLColumn",id:"drawsqlcolumn",level:3},{value:"docClicked",id:"docclicked",level:3},{value:"sqlClicked",id:"sqlclicked",level:3},{value:"hideDoc",id:"hidedoc",level:3},{value:"keyUp",id:"keyup",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"OnDrawRibbon",id:"ondrawribbon",level:3},{value:"DrawTableHeader",id:"drawtableheader",level:3},{value:"ExecuteRS",id:"executers",level:3},{value:"changePage",id:"changepage",level:3},{value:"doCompile",id:"docompile",level:3},{value:"doSelectRow",id:"doselectrow",level:3},{value:"doDoc",id:"dodoc",level:3},{value:"doFullView",id:"dofullview",level:3},{value:"doDelete",id:"dodelete",level:3},{value:"doExport",id:"doexport",level:3},{value:"doImport",id:"doimport",level:3},{value:"doNamespace",id:"donamespace",level:3},{value:"doSql",id:"dosql",level:3},{value:"doSearch",id:"dosearch",level:3},{value:"saveOptions",id:"saveoptions",level:3},{value:"updatePreference",id:"updatepreference",level:3},{value:"updateView",id:"updateview",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"GetLastSearch",id:"getlastsearch",level:3},{value:"Delete",id:"delete",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onresizeHandler",id:"onresizehandler",level:3}];function t(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"cspuiportalclasslist",children:"%CSP.UI.Portal.ClassList"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.ClassList Extends %CSP.UI.Template.List [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,n.jsx)(s.p,{children:"Zen page for System Management Portal - Classes list"}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"autons",children:"AUTONS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 1;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Allow to change namespaces for this page."}),"\n",(0,n.jsx)(s.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "ClassList";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Displayed name of this page."}),"\n",(0,n.jsx)(s.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.ClassList.zen";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Classes";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Development";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Security requirement"}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"filetype",children:"FILETYPE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property FILETYPE As %String [ InitialExpression = "Class" ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property NAMESPACE As %String(ZENURL = "$NAMESPACE");\n'})}),"\n",(0,n.jsx)(s.h3,{id:"classspec",children:"ClassSpec"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property ClassSpec As %String [ InitialExpression = "*.cls" ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"writepermission",children:"writePERMISSION"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property writePERMISSION As %ZEN.Datatype.boolean [ InitialExpression = {$System.Security.GetRoutinePermission($namespace) [ "WRITE"} ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"showsql",children:"ShowSQL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property ShowSQL As %Boolean(ZENURL = "SQL");\n'})}),"\n",(0,n.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(s.h3,{id:"searchpane",children:"searchPane"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData searchPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"This pane displays the search criteria. We provide defaults and user can change them. User's values are saved and used as future defaults for this user. Subclass to override."}),"\n",(0,n.jsx)(s.h3,{id:"resultpane",children:"resultPane"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData resultPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"drawsqlcolumn",children:"DrawSQLColumn"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawSQLColumn(table As %ZEN.Component.tablePane, name As %ZEN.Datatype.string, seed As %ZEN.Datatype.string) As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"docclicked",children:"docClicked"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod docClicked() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:'this method is called when user clicked the "Documentation" link. The value could not be passed with the correct escaping so we have to use the table value here.'}),"\n",(0,n.jsx)(s.h3,{id:"sqlclicked",children:"sqlClicked"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod sqlClicked(schema As %String, tablename As %String) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"hidedoc",children:"hideDoc"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod hideDoc() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"keyup",children:"keyUp"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod keyUp(zenEvent) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Check if user hit [Enter]."}),"\n",(0,n.jsx)(s.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,n.jsx)(s.h3,{id:"ondrawribbon",children:"OnDrawRibbon"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnDrawRibbon() As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"drawtableheader",children:"DrawTableHeader"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawTableHeader(pSeed As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Draw the contents of the Table Header (the region between the diagram and the table)."}),"\n",(0,n.jsx)(s.h3,{id:"executers",children:"ExecuteRS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean\n"})}),"\n",(0,n.jsx)(s.p,{children:"Method for executing the mapping query."}),"\n",(0,n.jsx)(s.h3,{id:"changepage",children:"changePage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod changePage(newPage) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"User clicked Routines or Globals to change page. Namespace will be carried over, not Database."}),"\n",(0,n.jsx)(s.h3,{id:"docompile",children:"doCompile"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doCompile() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"doselectrow",children:"doSelectRow"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doSelectRow(className) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dodoc",children:"doDoc"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doDoc(className, fullView) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Show class documatic in short view or full view. If fullView then open full Documatic."}),"\n",(0,n.jsx)(s.h3,{id:"dofullview",children:"doFullView"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doFullView() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dodelete",children:"doDelete"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doDelete() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"doexport",children:"doExport"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doExport() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"doimport",children:"doImport"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doImport() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"donamespace",children:"doNamespace"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doNamespace(selTypeChanged) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Changed Namespace <==> Database (implied namespace)."}),"\n",(0,n.jsx)(s.h3,{id:"dosql",children:"doSql"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doSql() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dosearch",children:"doSearch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doSearch() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"User clicked Go to start search."}),"\n",(0,n.jsx)(s.h3,{id:"saveoptions",children:"saveOptions"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod saveOptions() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Generic function to save user input options, called by doNamespace and doSearch, and when chkAlwaysFullView or chkAllowSelectRow is changed."}),"\n",(0,n.jsx)(s.h3,{id:"updatepreference",children:"updatePreference"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod updatePreference() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"updateview",children:"updateView"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod updateView() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Update / Reload table. This overrides the one in Template.List."}),"\n",(0,n.jsx)(s.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This client event is fired when the a popup page launched from this page fires an action."}),"\n",(0,n.jsx)(s.h3,{id:"getlastsearch",children:"GetLastSearch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetLastSearch() As %String\n"})}),"\n",(0,n.jsx)(s.h3,{id:"delete",children:"Delete"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Delete(filetype) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Delete selected classes now."}),"\n",(0,n.jsx)(s.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,n.jsx)(s.h3,{id:"onresizehandler",children:"onresizeHandler"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onresizeHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This client event, if present, is fired when the page is resized."})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(t,{...e})}):t(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>i,x:()=>r});var n=a(96540);const l={},c=n.createContext(l);function i(e){const s=n.useContext(c);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),n.createElement(c.Provider,{value:s},e.children)}}}]);