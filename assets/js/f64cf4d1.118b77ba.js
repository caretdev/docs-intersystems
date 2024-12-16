"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[11779],{75731:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>t,toc:()=>c});var n=a(74848),l=a(28453);const t={pagination_prev:null,pagination_next:null},i="%CSP.UI.Template.List",c=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"Properties",id:"properties",level:2},{value:"searchExpanded",id:"searchexpanded",level:3},{value:"ShowSys",id:"showsys",level:3},{value:"ShowGen",id:"showgen",level:3},{value:"ShowMap",id:"showmap",level:3},{value:"BeginDate",id:"begindate",level:3},{value:"EndDate",id:"enddate",level:3},{value:"MaxRows",id:"maxrows",level:3},{value:"ClassURL",id:"classurl",level:3},{value:"GlobalURL",id:"globalurl",level:3},{value:"RoutineURL",id:"routineurl",level:3},{value:"DocPage",id:"docpage",level:3},{value:"NamespaceList",id:"namespacelist",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"searchPane",id:"searchpane",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"toggleDetails",id:"toggledetails",level:3},{value:"adjustSizes",id:"adjustsizes",level:3},{value:"showExpand",id:"showexpand",level:3},{value:"toggleSearch",id:"togglesearch",level:3},{value:"doDoc",id:"dodoc",level:3},{value:"doSearch",id:"dosearch",level:3},{value:"GetNSList",id:"getnslist",level:3},{value:"GetDBList",id:"getdblist",level:3},{value:"GetRecentList",id:"getrecentlist",level:3},{value:"getSelectedNamespace",id:"getselectednamespace",level:3},{value:"checkURLNamespace",id:"checkurlnamespace",level:3},{value:"findNSMatch",id:"findnsmatch",level:3},{value:"FindDBDir",id:"finddbdir",level:3},{value:"FindDBName",id:"finddbname",level:3},{value:"PrepareAction",id:"prepareaction",level:3},{value:"SaveSelections",id:"saveselections",level:3},{value:"SaveExpandState",id:"saveexpandstate",level:3},{value:"GetExpandState",id:"getexpandstate",level:3},{value:"%ChangeNS",id:"changens",level:3}];function r(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"cspuitemplatelist",children:"%CSP.UI.Template.List"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Template.List Extends %CSP.UI.Portal.Utils [ Abstract, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,n.jsx)(s.p,{children:"This is the template for SMP pages with a Search pane on the left and Result pane on the right. It is primarily used by the System Explorer's Classes/Routines/Globals list pages."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Template List";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Displayed name of this page."}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"searchexpanded",children:"searchExpanded"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property searchExpanded As %Boolean [ InitialExpression = 1, Internal ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"If true, the search area is visible."}),"\n",(0,n.jsx)(s.h3,{id:"showsys",children:"ShowSys"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property ShowSys As %Boolean [ InitialExpression = "0" ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"showgen",children:"ShowGen"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property ShowGen As %Boolean [ InitialExpression = "0" ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"showmap",children:"ShowMap"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property ShowMap As %Boolean [ InitialExpression = "1" ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"begindate",children:"BeginDate"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property BeginDate As %String;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"enddate",children:"EndDate"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property EndDate As %String;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"maxrows",children:"MaxRows"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property MaxRows As %String;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"classurl",children:"ClassURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property ClassURL As %String;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"globalurl",children:"GlobalURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property GlobalURL As %String;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"routineurl",children:"RoutineURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property RoutineURL As %String;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"docpage",children:"DocPage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property DocPage As %String;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"namespacelist",children:"NamespaceList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property NamespaceList As %String;\n"})}),"\n",(0,n.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(s.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,n.jsx)(s.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,n.jsx)(s.h3,{id:"searchpane",children:"searchPane"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData searchPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"This pane displays the search criteria. We provide defaults and user can change them. User's values are saved and used as future defaults for this user. Subclass to override."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Subclass to override. Always include code in this method."}),"\n",(0,n.jsx)(s.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Return the array of links to show in the locator bar.",(0,n.jsx)(s.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,n.jsx)(s.h3,{id:"toggledetails",children:"toggleDetails"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod toggleDetails() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Toggle display of propertis pane."}),"\n",(0,n.jsx)(s.h3,{id:"adjustsizes",children:"adjustSizes"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod adjustSizes() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Adjust sizes of components on the page."}),"\n",(0,n.jsx)(s.h3,{id:"showexpand",children:"showExpand"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod showExpand() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"togglesearch",children:"toggleSearch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod toggleSearch() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Toggle display of search pane."}),"\n",(0,n.jsx)(s.h3,{id:"dodoc",children:"doDoc"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doDoc(className) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dosearch",children:"doSearch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doSearch() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"User clicked Go to start search."}),"\n",(0,n.jsx)(s.h3,{id:"getnslist",children:"GetNSList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetNSList() As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return Namespace list for UI's valueList."}),"\n",(0,n.jsx)(s.h3,{id:"getdblist",children:"GetDBList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDBList() As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return Database list for UI's displayList. valueList (should not be loaded into  due to directory delimiters) is saved into %session for later use."}),"\n",(0,n.jsx)(s.h3,{id:"getrecentlist",children:"GetRecentList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetRecentList(FILETYPE) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:'Get recent list for file spec. FILETYPE = "Class", "Routine", or "Global".'}),"\n",(0,n.jsx)(s.h3,{id:"getselectednamespace",children:"getSelectedNamespace"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getSelectedNamespace() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"return true namespace value or implied namespace value."}),"\n",(0,n.jsx)(s.h3,{id:"checkurlnamespace",children:"checkURLNamespace"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod checkURLNamespace() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"In case user clicked the browser's Back button we need to make sure the value in drop-down is correct This method is called from onloadHandler for ClassList/RoutineList/GlobalList...that has Lookin and namespace/database list"}),"\n",(0,n.jsx)(s.h3,{id:"findnsmatch",children:"findNSMatch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod findNSMatch(DBName) [ Language = javascript ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["See if the DBName passed in can be found in the namespace list.",(0,n.jsx)(s.br,{}),'\nThis is used when changing from "Database" to "Namespace".',(0,n.jsx)(s.br,{}),"\nSo we can use the same name if there is a match."]}),"\n",(0,n.jsx)(s.h3,{id:"finddbdir",children:"FindDBDir"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FindDBDir(DBName) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given a DBName, return the DBDirectory. If we cannot find it, then return the first one we can find."}),"\n",(0,n.jsx)(s.h3,{id:"finddbname",children:"FindDBName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FindDBName(DBDirectory) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given a DBDirectory, return the DBName"}),"\n",(0,n.jsx)(s.h3,{id:"prepareaction",children:"PrepareAction"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod PrepareAction(FILETYPE, selectedRows) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"If at least one subject (Class/Routine/Global/Integ/IntegGlobals, etc) is selected, then save it into session"}),"\n",(0,n.jsx)(s.h3,{id:"saveselections",children:"SaveSelections"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SaveSelections(FILETYPE, selType, spec, showsys, showgen, begindate, enddate, maxRows, AllowSelectRow = 0, showmap = 0, AlwaysFullView = 0) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Save user selection from Search Pane for Classes, Routines, and Globals, etc."}),"\n",(0,n.jsx)(s.h3,{id:"saveexpandstate",children:"SaveExpandState"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SaveExpandState(FILETYPE, searchExpanded) [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"getexpandstate",children:"GetExpandState"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetExpandState(FILETYPE) As %String\n"})}),"\n",(0,n.jsx)(s.h3,{id:"changens",children:"%ChangeNS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %ChangeNS(pNS As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Proposed change to override %ChangeNS in %ZEN.Controller For SMP Explorer, we need to override the behavior of changing Namespace so that the error reporting is more appropriate."})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(r,{...e})}):r(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>i,x:()=>c});var n=a(96540);const l={},t=n.createContext(l);function i(e){const s=n.useContext(t);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),n.createElement(t.Provider,{value:s},e.children)}}}]);