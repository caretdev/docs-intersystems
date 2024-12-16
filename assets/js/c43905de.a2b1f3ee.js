"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[34542],{63876:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>t,default:()=>d,frontMatter:()=>r,toc:()=>i});var l=a(74848),n=a(28453);const r={pagination_prev:null,pagination_next:null},t="%CSP.Util.TablePane",i=[{value:"Parameters",id:"parameters",level:2},{value:"COLUMNDOMAIN",id:"columndomain",level:3},{value:"COLUMNHELPDOMAIN",id:"columnhelpdomain",level:3},{value:"RefreshRate",id:"refreshrate",level:3},{value:"WrapLimit",id:"wraplimit",level:3},{value:"SHOWSTATISTICS",id:"showstatistics",level:3},{value:"SHOWSQLINFO",id:"showsqlinfo",level:3},{value:"HIDEFILTERWHENEMPTY",id:"hidefilterwhenempty",level:3},{value:"SHOWSEARCHFORM",id:"showsearchform",level:3},{value:"Properties",id:"properties",level:2},{value:"Query",id:"query",level:3},{value:"SQLQuery",id:"sqlquery",level:3},{value:"Actions",id:"actions",level:3},{value:"ShowFilter",id:"showfilter",level:3},{value:"ShowZebra",id:"showzebra",level:3},{value:"ShowRowNumbers",id:"showrownumbers",level:3},{value:"ShowCheckboxes",id:"showcheckboxes",level:3},{value:"CheckboxId",id:"checkboxid",level:3},{value:"Sortable",id:"sortable",level:3},{value:"AutoRefresh",id:"autorefresh",level:3},{value:"MaxColumns",id:"maxcolumns",level:3},{value:"HiddenColumns",id:"hiddencolumns",level:3},{value:"MaxResults",id:"maxresults",level:3},{value:"ItemsPerPage",id:"itemsperpage",level:3},{value:"Conditions",id:"conditions",level:3},{value:"border",id:"border",level:3},{value:"cellspacing",id:"cellspacing",level:3},{value:"cellpadding",id:"cellpadding",level:3},{value:"bgcolor",id:"bgcolor",level:3},{value:"ShowLastUpdate",id:"showlastupdate",level:3},{value:"ShowSearchPage",id:"showsearchpage",level:3},{value:"Methods",id:"methods",level:2},{value:"DrawHEAD",id:"drawhead",level:3},{value:"OnDrawHEADTablePane",id:"ondrawheadtablepane",level:3},{value:"DrawBODY",id:"drawbody",level:3},{value:"CreateDataSet",id:"createdataset",level:3},{value:"CreateTempFile",id:"createtempfile",level:3},{value:"ExecuteResultSet",id:"executeresultset",level:3},{value:"DrawTable",id:"drawtable",level:3},{value:"OnGenerateCode",id:"ongeneratecode",level:3},{value:"CreateResultSet",id:"createresultset",level:3},{value:"RefreshTable",id:"refreshtable",level:3},{value:"FilterTable",id:"filtertable",level:3},{value:"ItemsPerPageUpdate",id:"itemsperpageupdate",level:3},{value:"GetItemsPerPage",id:"getitemsperpage",level:3},{value:"PurgeTempData",id:"purgetempdata",level:3},{value:"GetDescriptiveText",id:"getdescriptivetext",level:3},{value:"DrawLastUpdate",id:"drawlastupdate",level:3},{value:"DrawSearch",id:"drawsearch",level:3},{value:"DrawStatusError",id:"drawstatuserror",level:3},{value:"OnDrawFilter",id:"ondrawfilter",level:3},{value:"LocalizeColumnName",id:"localizecolumnname",level:3}];function c(e){const s={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(s.header,{children:(0,l.jsx)(s.h1,{id:"csputiltablepane",children:"%CSP.Util.TablePane"})}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.Util.TablePane Extends (Pane, %ZEN.Portal.abstractRefreshable) [ ServerOnly = 1, System = 4 ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,l.jsx)(s.p,{children:"An AutoPage pane that displays a table based on a class query."}),"\n",(0,l.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(s.h3,{id:"columndomain",children:"COLUMNDOMAIN"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter COLUMNDOMAIN = "%UtilityColumns";\n'})}),"\n",(0,l.jsx)(s.p,{children:"Default localization domain used for column headers"}),"\n",(0,l.jsx)(s.h3,{id:"columnhelpdomain",children:"COLUMNHELPDOMAIN"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter COLUMNHELPDOMAIN = "%UtilityColumnHelp";\n'})}),"\n",(0,l.jsx)(s.p,{children:"Default localization domain used for column headers help messages"}),"\n",(0,l.jsx)(s.h3,{id:"refreshrate",children:"RefreshRate"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter RefreshRate = 11000;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Default refresh rate (in milliseconds)"}),"\n",(0,l.jsx)(s.h3,{id:"wraplimit",children:"WrapLimit"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter WrapLimit = 40;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Default wrap limit"}),"\n",(0,l.jsx)(s.h3,{id:"showstatistics",children:"SHOWSTATISTICS"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SHOWSTATISTICS = 0;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Should this page display timing stats"}),"\n",(0,l.jsx)(s.h3,{id:"showsqlinfo",children:"SHOWSQLINFO"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SHOWSQLINFO = 0;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Should this page display SQL Info"}),"\n",(0,l.jsx)(s.h3,{id:"hidefilterwhenempty",children:"HIDEFILTERWHENEMPTY"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter HIDEFILTERWHENEMPTY = 1;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Do not display filter box when there are no results"}),"\n",(0,l.jsx)(s.h3,{id:"showsearchform",children:"SHOWSEARCHFORM"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SHOWSEARCHFORM = 0;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Show advanced search form"}),"\n",(0,l.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(s.h3,{id:"query",children:"Query"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property Query As %String(MAXLEN = 128);\n"})}),"\n",(0,l.jsxs)(s.p,{children:["Name of the class query that provides info for the Table.",(0,l.jsx)(s.br,{}),'\nThis is a full name: e.g., "Package.Class:QueryName"']}),"\n",(0,l.jsx)(s.h3,{id:"sqlquery",children:"SQLQuery"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property SQLQuery As %String(MAXLEN = 512);\n"})}),"\n",(0,l.jsxs)(s.p,{children:["Optional SQL query for this table.",(0,l.jsx)(s.br,{}),"\nIf present, supercedes the value in Query."]}),"\n",(0,l.jsx)(s.h3,{id:"actions",children:"Actions"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property Actions As array Of %CSP.Util.Action(XMLKEYNAME = "name");\n'})}),"\n",(0,l.jsxs)(s.p,{children:["An array of actions, indexed by column name in the query. These are associated with columns in a table.",(0,l.jsx)(s.br,{}),"\nIf the subscript name starts with a $, then the action is displayed as an additional column in the table."]}),"\n",(0,l.jsx)(s.h3,{id:"showfilter",children:"ShowFilter"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property ShowFilter As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"If true, then display the Filter box."}),"\n",(0,l.jsx)(s.h3,{id:"showzebra",children:"ShowZebra"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property ShowZebra As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"If true, then rows are displayed using zebra styling."}),"\n",(0,l.jsx)(s.h3,{id:"showrownumbers",children:"ShowRowNumbers"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property ShowRowNumbers As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"If true, then rows numbers are displayed."}),"\n",(0,l.jsx)(s.h3,{id:"showcheckboxes",children:"ShowCheckboxes"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property ShowCheckboxes As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"If true, then checkboxes are displayed with each row."}),"\n",(0,l.jsx)(s.h3,{id:"checkboxid",children:"CheckboxId"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property CheckboxId As %String(MAXLEN = 128);\n"})}),"\n",(0,l.jsx)(s.p,{children:"If set, name of column that provides unique id values for checkboxes."}),"\n",(0,l.jsx)(s.h3,{id:"sortable",children:"Sortable"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property Sortable As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"If true, then rows in the table can be sorted."}),"\n",(0,l.jsx)(s.h3,{id:"autorefresh",children:"AutoRefresh"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property AutoRefresh As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"If true, then this table is automatically updated."}),"\n",(0,l.jsx)(s.h3,{id:"maxcolumns",children:"MaxColumns"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property MaxColumns As %Integer [ Deprecated ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"Max number of columns to show. (deprecated)"}),"\n",(0,l.jsx)(s.h3,{id:"hiddencolumns",children:"HiddenColumns"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property HiddenColumns As %String(MAXLEN = 500);\n"})}),"\n",(0,l.jsxs)(s.p,{children:["Comma-separated list of columns that should ",(0,l.jsx)(s.em,{children:"not"})," be displayed."]}),"\n",(0,l.jsx)(s.h3,{id:"maxresults",children:"MaxResults"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property MaxResults As %Integer [ InitialExpression = 10000 ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"Max number of results to find."}),"\n",(0,l.jsx)(s.h3,{id:"itemsperpage",children:"ItemsPerPage"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property ItemsPerPage As %Integer [ InitialExpression = 20 ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"Number of items to show per page."}),"\n",(0,l.jsx)(s.h3,{id:"conditions",children:"Conditions"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property Conditions As list Of %CSP.Util.Condition;\n"})}),"\n",(0,l.jsx)(s.p,{children:"A list of conditions; these are expressions that are evaluated to add custom colors to the table"}),"\n",(0,l.jsx)(s.h3,{id:"border",children:"border"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property border As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Border of table (default is 0)"}),"\n",(0,l.jsx)(s.h3,{id:"cellspacing",children:"cellspacing"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property cellspacing As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Cellspacing (default is 0)"}),"\n",(0,l.jsx)(s.h3,{id:"cellpadding",children:"cellpadding"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property cellpadding As %Integer;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Cellpadding (default is 0)"}),"\n",(0,l.jsx)(s.h3,{id:"bgcolor",children:"bgcolor"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property bgcolor As %String(MAXLEN = 50);\n"})}),"\n",(0,l.jsx)(s.p,{children:"Table background color"}),"\n",(0,l.jsx)(s.h3,{id:"showlastupdate",children:"ShowLastUpdate"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property ShowLastUpdate As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"Show Last Update box (if set to 0 then do not show last update box)"}),"\n",(0,l.jsx)(s.h3,{id:"showsearchpage",children:"ShowSearchPage"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property ShowSearchPage As %Boolean [ Deprecated ];\n"})}),"\n",(0,l.jsx)(s.p,{children:"Show Advanced search page (deprecated)"}),"\n",(0,l.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(s.h3,{id:"drawhead",children:"DrawHEAD"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawHEAD(pInstance As PageInstance) As %Status\n"})}),"\n",(0,l.jsx)(s.h3,{id:"ondrawheadtablepane",children:"OnDrawHEADTablePane"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnDrawHEADTablePane(pInstance As %CSP.Util.PageInstance) As %Status\n"})}),"\n",(0,l.jsx)(s.h3,{id:"drawbody",children:"DrawBODY"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawBODY(pInstance As %CSP.Util.PageInstance) As %Status\n"})}),"\n",(0,l.jsx)(s.p,{children:"Draw the BODY of the detail pane"}),"\n",(0,l.jsx)(s.h3,{id:"createdataset",children:"CreateDataSet"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method CreateDataSet(ByRef pID As %String, pFileID As %String, pTempID As %String) As %Status\n"})}),"\n",(0,l.jsx)(s.p,{children:"Runs the query and builds a temp file"}),"\n",(0,l.jsx)(s.h3,{id:"createtempfile",children:"CreateTempFile"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method CreateTempFile(pFileID As %String, pTempID As %String, ByRef pID As %String, pRS As %ResultSet) As %Status\n"})}),"\n",(0,l.jsx)(s.p,{children:"Execute a result set and create a temp file"}),"\n",(0,l.jsx)(s.h3,{id:"executeresultset",children:"ExecuteResultSet"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method ExecuteResultSet(pRS As %ResultSet, ByRef pID As %String) As %Status\n"})}),"\n",(0,l.jsx)(s.p,{children:"This method performs the actual execution of the ResultSet This can be overridden by subclasses"}),"\n",(0,l.jsx)(s.h3,{id:"drawtable",children:"DrawTable"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Method DrawTable(pInstance As PageInstance, ByRef pID As %String, pFileID As %String, pTempID As %String, pPageNo As %Integer = 1, pSort As %String = "", pDirection As %Integer = 1, pFilter As %String = "", pCBState As %String = "", ByRef pFound As %String) As %Status\n'})}),"\n",(0,l.jsx)(s.p,{children:"Generate JavaScript to draw the table Also updates paging buttons"}),"\n",(0,l.jsx)(s.h3,{id:"ongeneratecode",children:"OnGenerateCode"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnGenerateCode() As %String\n"})}),"\n",(0,l.jsx)(s.h3,{id:"createresultset",children:"CreateResultSet"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method CreateResultSet(ByRef pID As %String, ByRef pRS As %ResultSet) As %Status\n"})}),"\n",(0,l.jsxs)(s.p,{children:["This method creates the %ResultSet object that is used for the table pane.",(0,l.jsx)(s.br,{}),"\nA subclass can override this to customize the table displayed by this pane.",(0,l.jsx)(s.br,{}),"\npID is array of page variables..."]}),"\n",(0,l.jsx)(s.h3,{id:"refreshtable",children:"RefreshTable"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RefreshTable(pPageNo As %Integer, pTimeSlot As %Integer, pTempID As %String, pSort As %String, pDirection As %String, pFilter As %String, pAuto As %Boolean, pPageClass As %String, pFrame As %String, pCBState As %String, pID1 As %String, pID2 As %String, pNS As %String, pRate As %Integer)\n"})}),"\n",(0,l.jsx)(s.p,{children:"Called from client to refresh the table"}),"\n",(0,l.jsx)(s.h3,{id:"filtertable",children:"FilterTable"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FilterTable(pPageNo As %Integer, pTimeSlot As %Integer, pTempID As %String, pSort As %String, pDirection As %String, pFilter As %String, pPageClass As %String, pFrame As %String, pCBState As %String, pID1, pID2, pNS As %String)\n"})}),"\n",(0,l.jsx)(s.p,{children:"Called from client to refilter the table"}),"\n",(0,l.jsx)(s.h3,{id:"itemsperpageupdate",children:"ItemsPerPageUpdate"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ItemsPerPageUpdate(pPageSize As %Integer)\n"})}),"\n",(0,l.jsx)(s.p,{children:"Called from client to update ItemsPerPage"}),"\n",(0,l.jsx)(s.h3,{id:"getitemsperpage",children:"GetItemsPerPage"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetItemsPerPage() As %Integer\n"})}),"\n",(0,l.jsx)(s.p,{children:"Returns default items per page value."}),"\n",(0,l.jsx)(s.h3,{id:"purgetempdata",children:"PurgeTempData"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod PurgeTempData()\n"})}),"\n",(0,l.jsx)(s.p,{children:"Purge all out-of-date temp data used by TablePane"}),"\n",(0,l.jsx)(s.h3,{id:"getdescriptivetext",children:"GetDescriptiveText"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetDescriptiveText()\n"})}),"\n",(0,l.jsx)(s.p,{children:"Return (localized) text message displayed near top of page. Subclasses may override this."}),"\n",(0,l.jsx)(s.h3,{id:"drawlastupdate",children:"DrawLastUpdate"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawLastUpdate()\n"})}),"\n",(0,l.jsx)(s.p,{children:"Show Last Update box"}),"\n",(0,l.jsx)(s.h3,{id:"drawsearch",children:"DrawSearch"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawSearch(pInstance As %CSP.Util.PageInstance) As %Status\n"})}),"\n",(0,l.jsx)(s.p,{children:"This callback is invoked when specific or advanced search criteria is being drawn to allow insert of additional UI elements at the end of table"}),"\n",(0,l.jsx)(s.h3,{id:"drawstatuserror",children:"DrawStatusError"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawStatusError(tSC As %String)\n"})}),"\n",(0,l.jsx)(s.p,{children:"Generic method to draw error message for object status code."}),"\n",(0,l.jsx)(s.h3,{id:"ondrawfilter",children:"OnDrawFilter"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnDrawFilter(pInstance As %CSP.Util.PageInstance) As %Status\n"})}),"\n",(0,l.jsx)(s.p,{children:"This callback is invoked when the table filter is being drawn to allow insert of additional UI elements"}),"\n",(0,l.jsx)(s.h3,{id:"localizecolumnname",children:"LocalizeColumnName"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LocalizeColumnName(pName As %String, Output pHelpMsg) As %String\n"})}),"\n",(0,l.jsx)(s.p,{children:"Lookup a column name in the localization global and return localized version if present"})]})}function d(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,l.jsx)(s,{...e,children:(0,l.jsx)(c,{...e})}):c(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>t,x:()=>i});var l=a(96540);const n={},r=l.createContext(n);function t(e){const s=l.useContext(r);return l.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:t(e.components),l.createElement(r.Provider,{value:s},e.children)}}}]);