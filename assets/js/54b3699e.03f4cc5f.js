"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[52988],{8061:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>i,default:()=>r,frontMatter:()=>a,toc:()=>c});var s=t(74848),l=t(28453);const a={pagination_prev:null,pagination_next:null},i="%DeepSee.UI.LogViewer",c=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"DOCBOOKID",id:"docbookid",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"DrawLogFile",id:"drawlogfile",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%OnGetProductName",id:"ongetproductname",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"onlayoutHandler",id:"onlayouthandler",level:3},{value:"adjustSizes",id:"adjustsizes",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"refreshLog",id:"refreshlog",level:3},{value:"deleteLog",id:"deletelog",level:3},{value:"DeleteLogFile",id:"deletelogfile",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"deepseeuilogviewer",children:"%DeepSee.UI.LogViewer"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.LogViewer Extends %DeepSee.UI.standardPage [ System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"DeepSee Log File Viewer. Display contents of the DeepSee log file for the current namespace."}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Log Viewer";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"docbookid",children:"DOCBOOKID"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DOCBOOKID = "D2MODEL_cube_build_errors";\n'})}),"\n",(0,s.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"This XML defines the contents of the contents pane for this page."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"drawlogfile",children:"DrawLogFile"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawLogFile(pSeed As %String) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Draw contents of log file pane."}),"\n",(0,s.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the (localized) title string for the page."}),"\n",(0,s.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the name for the page."}),"\n",(0,s.jsx)(n.h3,{id:"ongetproductname",children:"%OnGetProductName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetProductName() As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the product name for the page."}),"\n",(0,s.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,s.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This client event is fired when the a popup page launched from this page fires an action."}),"\n",(0,s.jsx)(n.h3,{id:"onlayouthandler",children:"onlayoutHandler"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onlayoutHandler(load) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Adjust sizes of components on the page."}),"\n",(0,s.jsx)(n.h3,{id:"adjustsizes",children:"adjustSizes"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod adjustSizes() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Adjust sizes of components on the page."}),"\n",(0,s.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"This class method callback is called just before the server-side page object is created."}),"\n",(0,s.jsx)(n.h3,{id:"refreshlog",children:"refreshLog"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod refreshLog() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Reload contents of file."}),"\n",(0,s.jsx)(n.h3,{id:"deletelog",children:"deleteLog"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod deleteLog() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Delete the log file."}),"\n",(0,s.jsx)(n.h3,{id:"deletelogfile",children:"DeleteLogFile"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method DeleteLogFile() As %String [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Delete the log file."})]})}function r(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(o,{...e})}):o(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>i,x:()=>c});var s=t(96540);const l={},a=s.createContext(l);function i(e){const n=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),s.createElement(a.Provider,{value:n},e.children)}}}]);