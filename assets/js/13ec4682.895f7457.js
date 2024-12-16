"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[7427],{71710:(e,n,a)=>{a.r(n),a.d(n,{contentTitle:()=>i,default:()=>d,frontMatter:()=>s,toc:()=>c});var t=a(74848),l=a(28453);const s={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.ML.Configurations",c=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"DefaultConfig",id:"defaultconfig",level:3},{value:"EditPage",id:"editpage",level:3},{value:"colDelete",id:"coldelete",level:3},{value:"colDetails",id:"coldetails",level:3},{value:"colEdit",id:"coledit",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"changeDefault",id:"changedefault",level:3},{value:"SaveDefault",id:"savedefault",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"doDetails",id:"dodetails",level:3},{value:"doEdit",id:"doedit",level:3},{value:"doNew",id:"donew",level:3},{value:"deleteSetting",id:"deletesetting",level:3},{value:"DeleteItem",id:"deleteitem",level:3},{value:"filterChanged",id:"filterchanged",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"GetMLConfig",id:"getmlconfig",level:3}];function r(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"cspuiportalmlconfigurations",children:"%CSP.UI.Portal.ML.Configurations"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.ML.Configurations Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Zen page for System Management Portal - Machine Learning Configurations"}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,t.jsx)(n.p,{children:'Class name of application this page belongs to. Parameter APPLICATION = "%CSP.UI.Portal.Application"; Do not switch namespace for this page: it needs to stay in %SYS'}),"\n",(0,t.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "ML Configurations";\n'})}),"\n",(0,t.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,t.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ML.Configurations.zen";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "System Administration,Configurations,Machine Learning Configurations";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,t.jsx)(n.p,{children:"Security requirement"}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"defaultconfig",children:"DefaultConfig"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property DefaultConfig As %String [ InitialExpression = {##class(%SYS.ML.Configuration).%GetSystemDefault()} ];\n"})}),"\n",(0,t.jsx)(n.h3,{id:"editpage",children:"EditPage"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property EditPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.ML.Configuration.zen",,1)} ];\n'})}),"\n",(0,t.jsx)(n.h3,{id:"coldelete",children:"colDelete"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];\n'})}),"\n",(0,t.jsx)(n.p,{children:"Store translated targetCol linkCaption for"}),"\n",(0,t.jsx)(n.h3,{id:"coldetails",children:"colDetails"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property colDetails As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Details")} ];\n'})}),"\n",(0,t.jsx)(n.h3,{id:"coledit",children:"colEdit"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property colEdit As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Edit")} ];\n'})}),"\n",(0,t.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"changedefault",children:"changeDefault"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod changeDefault() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"savedefault",children:"SaveDefault"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SaveDefault(defaultConfig As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,t.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,t.jsx)(n.h3,{id:"dodetails",children:"doDetails"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doDetails(name) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"doedit",children:"doEdit"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doEdit(name) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"donew",children:"doNew"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doNew() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"deletesetting",children:"deleteSetting"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod deleteSetting(PID) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Delete existing configuration."}),"\n",(0,t.jsx)(n.h3,{id:"deleteitem",children:"DeleteItem"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DeleteItem(PID) As %String [ ZenMethod ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Call server delete method."}),"\n",(0,t.jsx)(n.h3,{id:"filterchanged",children:"filterChanged"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod filterChanged(value, tableID) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"User entered something in to the filter. Re-load the table with filter value."}),"\n",(0,t.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Disable save button for EMS-managed pages. Be sure to use this.invokeSuper('onloadHandler',arguments); when overriding."}),"\n",(0,t.jsx)(n.h3,{id:"getmlconfig",children:"GetMLConfig"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetMLConfig(ByRef pParms As %String, Output pObject As %RegisteredObject) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Return config data if a configname is given."})]})}function d(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(r,{...e})}):r(e)}},28453:(e,n,a)=>{a.d(n,{R:()=>i,x:()=>c});var t=a(96540);const l={},s=t.createContext(l);function i(e){const n=t.useContext(s);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),t.createElement(s.Provider,{value:n},e.children)}}}]);