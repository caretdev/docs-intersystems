"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[48096],{9664:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>l,default:()=>d,frontMatter:()=>r,toc:()=>i});var a=n(74848),t=n(28453);const r={pagination_prev:null,pagination_next:null},l="%CSP.UI.Portal.CSPSessions",i=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"msgEndSession",id:"msgendsession",level:3},{value:"msgDoneSession",id:"msgdonesession",level:3},{value:"FreespacePage",id:"freespacepage",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"DrawProcessID",id:"drawprocessid",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"OnDrawRibbon",id:"ondrawribbon",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"startRefresh",id:"startrefresh",level:3},{value:"setRefreshMode",id:"setrefreshmode",level:3},{value:"setRefreshRate",id:"setrefreshrate",level:3},{value:"refreshHandler",id:"refreshhandler",level:3},{value:"updateView",id:"updateview",level:3},{value:"doEndSession",id:"doendsession",level:3},{value:"EndSession",id:"endsession",level:3},{value:"UpdateAutoRefreshRate",id:"updateautorefreshrate",level:3},{value:"UpdateAutoRefreshState",id:"updateautorefreshstate",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(s.header,{children:(0,a.jsx)(s.h1,{id:"cspuiportalcspsessions",children:"%CSP.UI.Portal.CSPSessions"})}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.CSPSessions Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"System Management Portal - System Operations - Web Sessions"}),"\n",(0,a.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(s.h3,{id:"autons",children:"AUTONS"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(s.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,a.jsx)(s.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.CSPSessions.zen";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Web Sessions";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Web Sessions";\n'})}),"\n",(0,a.jsx)(s.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(s.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Operate";\n'})}),"\n",(0,a.jsx)(s.p,{children:"Security requirement"}),"\n",(0,a.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(s.h3,{id:"msgendsession",children:"msgEndSession"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgEndSession As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to end the selected sessions?")} ];\n'})}),"\n",(0,a.jsx)(s.h3,{id:"msgdonesession",children:"msgDoneSession"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgDoneSession As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("If yes, then click [OK] and the selected sessions will be set to end and the Web license will be released in a few seconds.")} ];\n'})}),"\n",(0,a.jsx)(s.h3,{id:"freespacepage",children:"FreespacePage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property FreespacePage As %String;\n"})}),"\n",(0,a.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(s.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(s.h3,{id:"drawprocessid",children:"DrawProcessID"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawProcessID(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(s.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(s.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(s.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,a.jsx)(s.h3,{id:"ondrawribbon",children:"OnDrawRibbon"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnDrawRibbon() As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Add to the contents of the tool ribbon."}),"\n",(0,a.jsx)(s.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,a.jsx)(s.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,a.jsx)(s.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Disable checkboxes for applications that should not allow to be terminated."}),"\n",(0,a.jsx)(s.h3,{id:"startrefresh",children:"startRefresh"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod startRefresh() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Based on user's choice, start or stop the timer."}),"\n",(0,a.jsx)(s.h3,{id:"setrefreshmode",children:"setRefreshMode"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod setRefreshMode(newMode, notImmediate) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Turn auto-refresh mode on and off."}),"\n",(0,a.jsx)(s.h3,{id:"setrefreshrate",children:"setRefreshRate"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod setRefreshRate(newRate) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"User changed refresh rate. Check the value and save to server."}),"\n",(0,a.jsx)(s.h3,{id:"refreshhandler",children:"refreshHandler"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod refreshHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Table auto-refresh timer handler."}),"\n",(0,a.jsx)(s.h3,{id:"updateview",children:"updateView"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod updateView() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Update table."}),"\n",(0,a.jsx)(s.h3,{id:"doendsession",children:"doEndSession"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doEndSession() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"endsession",children:"EndSession"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EndSession(selectedRows) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Delete selected classes now."}),"\n",(0,a.jsx)(s.h3,{id:"updateautorefreshrate",children:"UpdateAutoRefreshRate"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod UpdateAutoRefreshRate(refreshrate As %Integer) [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Save auto refresh rate to server."}),"\n",(0,a.jsx)(s.h3,{id:"updateautorefreshstate",children:"UpdateAutoRefreshState"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod UpdateAutoRefreshState(refreshstate) [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Save auto refresh state to server."})]})}function d(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,a.jsx)(s,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>l,x:()=>i});var a=n(96540);const t={},r=a.createContext(t);function l(e){const s=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:l(e.components),a.createElement(r.Provider,{value:s},e.children)}}}]);