"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[71183],{30742:(e,a,t)=>{t.r(a),t.d(a,{contentTitle:()=>l,default:()=>o,frontMatter:()=>n,toc:()=>d});var s=t(74848),r=t(28453);const n={pagination_prev:null,pagination_next:null},l="%CSP.UI.Portal.Utils",d=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"Properties",id:"properties",level:2},{value:"CurrentColumn",id:"currentcolumn",level:3},{value:"CurrentSort",id:"currentsort",level:3},{value:"captionLastUpdate",id:"captionlastupdate",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Methods",id:"methods",level:2},{value:"DrawAutoRefresh",id:"drawautorefresh",level:3},{value:"columnSort",id:"columnsort",level:3},{value:"refreshkeyUp",id:"refreshkeyup",level:3},{value:"setRefreshMode",id:"setrefreshmode",level:3},{value:"getTime",id:"gettime",level:3},{value:"zeroFill",id:"zerofill",level:3},{value:"updateTime",id:"updatetime",level:3},{value:"refreshHandler",id:"refreshhandler",level:3},{value:"setRefreshRate",id:"setrefreshrate",level:3},{value:"updateView",id:"updateview",level:3},{value:"LastUpdateTime",id:"lastupdatetime",level:3},{value:"UpdateAutoRefreshRate",id:"updateautorefreshrate",level:3},{value:"UpdateAutoRefreshState",id:"updateautorefreshstate",level:3},{value:"UpdateTableState",id:"updatetablestate",level:3},{value:"onunloadHandler",id:"onunloadhandler",level:3},{value:"BuildMeter",id:"buildmeter",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3}];function i(e){const a={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(a.header,{children:(0,s.jsx)(a.h1,{id:"cspuiportalutils",children:"%CSP.UI.Portal.Utils"})}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Utils Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ Abstract, System = 4 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Extend to this class for pages that use tablePane as main component and needs auto-refresh to be shown on the ribbon bar. For example, Home->Operations->Databases or Processes."}),"\n",(0,s.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Template with Auto-Refresh";\n'})}),"\n",(0,s.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,s.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(a.h3,{id:"currentcolumn",children:"CurrentColumn"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property CurrentColumn As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(a.h3,{id:"currentsort",children:"CurrentSort"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property CurrentSort As %ZEN.Datatype.string [ InitialExpression = "asc" ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"captionlastupdate",children:"captionLastUpdate"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property captionLastUpdate As %ZEN.Datatype.string [ InitialExpression = {$$$TextJS("Last update: ")} ];\n'})}),"\n",(0,s.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(a.h3,{id:"drawautorefresh",children:"DrawAutoRefresh"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DrawAutoRefresh(pRefreshName)\n"})}),"\n",(0,s.jsx)(a.p,{children:"***** Refresh Feature for tablePane pages in SMP *****"}),"\n",(0,s.jsx)(a.p,{children:"The following methods are used by pages that want to display Refresh on/off and allow to enter refresh rate (number of seconds.) Sub-classes may over-ride them but please do not modify them unless you take care of all pages that use them and test each page thoroughly. When used, the tablePane on your page may be refreshed at the rate you define, and will remember the state, rate, current column and sort order."}),"\n",(0,s.jsx)(a.p,{children:"To use this feature, do the following (see %CSP.UI.Portal.OpDatabases.cls for example):"}),"\n",(0,s.jsxs)(a.ul,{children:["\n",(0,s.jsxs)(a.li,{children:["\n",(0,s.jsx)(a.p,{children:"Class extend to %CSP.UI.Portal.Utils"}),"\n"]}),"\n",(0,s.jsxs)(a.li,{children:["\n",(0,s.jsx)(a.p,{children:"Add the following code:"}),"\n"]}),"\n",(0,s.jsxs)(a.li,{children:["\n",(0,s.jsx)(a.p,{children:'Use tablePane with id="table" and add event onheaderClick for column sort.'}),"\n"]}),"\n",(0,s.jsxs)(a.li,{children:["\n",(0,s.jsx)(a.p,{children:"Add to %OnAfterCreatePage to get TableState and AutoRefreshRate set into timeout."}),"\n"]}),"\n",(0,s.jsxs)(a.li,{children:["\n",(0,s.jsxs)(a.p,{children:["In method OnDrawRibbon, add ",(0,s.jsx)(a.code,{children:"Do ..DrawAutoRefresh(..%GetPageName())"})]}),"\n"]}),"\n",(0,s.jsxs)(a.li,{children:["\n",(0,s.jsx)(a.p,{children:"Override updateView() if your class has Filter turned on for tableNavigatorBar."}),"\n"]}),"\n"]}),"\n",(0,s.jsx)(a.p,{children:"This method can be called from OnDrawRibbon of your UI Zen page. Pass in the page name which should be consistent with how the temp global is saved."}),"\n",(0,s.jsx)(a.h3,{id:"columnsort",children:"columnSort"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod columnSort(currColumn, sortOrder) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"User clicked a column header to sort. Save that so we can come back to it when page is refreshed."}),"\n",(0,s.jsx)(a.h3,{id:"refreshkeyup",children:"refreshkeyUp"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod refreshkeyUp(evnt, value) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Check if user hit [Enter] on refreshRate textbox."}),"\n",(0,s.jsx)(a.h3,{id:"setrefreshmode",children:"setRefreshMode"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod setRefreshMode(newMode) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Turn auto-refresh mode on and off."}),"\n",(0,s.jsx)(a.h3,{id:"gettime",children:"getTime"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getTime() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"This method returns current date and time in $ZDT($ZU(188),3,,3) format"}),"\n",(0,s.jsx)(a.h3,{id:"zerofill",children:"zeroFill"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod zeroFill(value) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"updatetime",children:"updateTime"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod updateTime() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"refreshhandler",children:"refreshHandler"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod refreshHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Table auto-refresh timer handler."}),"\n",(0,s.jsx)(a.h3,{id:"setrefreshrate",children:"setRefreshRate"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod setRefreshRate(newRate) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"User changed refresh rate. Validate it and save value to server."}),"\n",(0,s.jsx)(a.h3,{id:"updateview",children:"updateView"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod updateView() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Update / Reload table. Subclass may override this method. Do not modify this method unless you are going to take care of all pages that use it."}),"\n",(0,s.jsx)(a.h3,{id:"lastupdatetime",children:"LastUpdateTime"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod LastUpdateTime() As %String [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"updateautorefreshrate",children:"UpdateAutoRefreshRate"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod UpdateAutoRefreshRate(refreshrate As %Integer) [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Save auto refresh rate (how many seconds user entered) to server."}),"\n",(0,s.jsx)(a.h3,{id:"updateautorefreshstate",children:"UpdateAutoRefreshState"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod UpdateAutoRefreshState(refreshstate) [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Save auto refresh state (Refresh on or off) ito server."}),"\n",(0,s.jsx)(a.h3,{id:"updatetablestate",children:"UpdateTableState"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod UpdateTableState(currColumn As %String, sortOrder As %String) [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Save current column and state to server so that when page is refreshed or reloaded the sort and state remain the same."}),"\n",(0,s.jsx)(a.h3,{id:"onunloadhandler",children:"onunloadHandler"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onunloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"***** End of Refresh Feature for tablePane ***** ********************************************************/// If Refresh Feature is turned on, then clearTimer before exist."}),"\n",(0,s.jsx)(a.h3,{id:"buildmeter",children:"BuildMeter"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod BuildMeter(pLabel, pProperty, pWidth, pLink, pDetails) As %CSP.Util.HTMLValueMeter\n"})}),"\n",(0,s.jsx)(a.p,{children:"Use this method to build a meter for Dashboard. (See example for usage in %CSP.UI.Portal.ProcessDetails.cls)"}),"\n",(0,s.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"Be sure to do ##super() when overriding."})]})}function o(e={}){const{wrapper:a}={...(0,r.R)(),...e.components};return a?(0,s.jsx)(a,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,a,t)=>{t.d(a,{R:()=>l,x:()=>d});var s=t(96540);const r={},n=s.createContext(r);function l(e){const a=s.useContext(n);return s.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function d(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),s.createElement(n.Provider,{value:a},e.children)}}}]);