"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[90927],{26251:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>r,toc:()=>i});var a=s(74848),t=s(28453);const r={pagination_prev:null,pagination_next:null},l="%CSP.UI.Portal.TasksOnDemand",i=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"RunTaskPage",id:"runtaskpage",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"filterChanged",id:"filterchanged",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"OnDrawRibbon",id:"ondrawribbon",level:3},{value:"doRun",id:"dorun",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"cspuiportaltasksondemand",children:"%CSP.UI.Portal.TasksOnDemand"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.TasksOnDemand Extends %CSP.UI.Portal.Utils [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"System Management Portal - System Administration - Task on demand"}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,a.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.TasksOnDemand.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Task Manager,Run Task On Demand";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "On Demand Tasks";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Operate";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Security requirement"}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"runtaskpage",children:"RunTaskPage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property RunTaskPage As %String [ InitialExpression = {..Link("UtilSysTaskAction.csp",,1)} ];\n'})}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"filterchanged",children:"filterChanged"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod filterChanged(value, tableID) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"User entered something in to the filter. Re-load the table with filter value."}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,a.jsx)(n.h3,{id:"ondrawribbon",children:"OnDrawRibbon"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnDrawRibbon() As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Add to the contents of the tool ribbon."}),"\n",(0,a.jsx)(n.h3,{id:"dorun",children:"doRun"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doRun(PID) [ Language = javascript ]\n"})})]})}function o(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>l,x:()=>i});var a=s(96540);const t={},r=a.createContext(t);function l(e){const n=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:l(e.components),a.createElement(r.Provider,{value:n},e.children)}}}]);