"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[75102],{59992:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>r,default:()=>i,frontMatter:()=>l,toc:()=>o});var a=s(74848),t=s(28453);const l={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.SQL.QButtons.ReportLoader",o=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"msgConfirm",id:"msgconfirm",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"browseSelect",id:"browseselect",level:3},{value:"onlayoutHandler",id:"onlayouthandler",level:3},{value:"adjustSizes",id:"adjustsizes",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"doAction",id:"doaction",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"onPopupAction",id:"onpopupaction",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"cspuiportalsqlqbuttonsreportloader",children:"%CSP.UI.Portal.SQL.QButtons.ReportLoader"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.SQL.QButtons.ReportLoader Extends (%CSP.UI.Template.Property, %CSP.UI.Portal.SQL.QButtons.Utils) [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"System Management Portal - SQL Performance Tool - Troubleshooting Report Loader"}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 1;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Switch namespace $NAMESPACE is present"}),"\n",(0,a.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.QButtons.ReportLoader.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Import SQL Troubleshooting Report";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "SQL.QButtons.ReportLoader";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Development";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Security requirement"}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");\n'})}),"\n",(0,a.jsx)(n.h3,{id:"msgconfirm",children:"msgConfirm"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property msgConfirm As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you wish to import customer report into namespace %1?")} ];\n'})}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"browseselect",children:"browseSelect"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod browseSelect(name, wildcard) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"User clicked the Browse button."}),"\n",(0,a.jsx)(n.h3,{id:"onlayouthandler",children:"onlayoutHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onlayoutHandler(load) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"adjustsizes",children:"adjustSizes"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod adjustSizes() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,a.jsx)(n.h3,{id:"doaction",children:"doAction"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doAction(action) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,a.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event is fired when the a popup page launched from this page fires an action."})]})}function i(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>r,x:()=>o});var a=s(96540);const t={},l=a.createContext(t);function r(e){const n=a.useContext(l);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:r(e.components),a.createElement(l.Provider,{value:n},e.children)}}}]);