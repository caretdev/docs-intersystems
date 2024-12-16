"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[89193],{14208:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>a,toc:()=>r});var s=t(74848),i=t(28453);const a={pagination_prev:null,pagination_next:null},l="%CSP.UI.Portal.Applications.ClientList",r=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"ApplicationType",id:"applicationtype",level:3},{value:"EditPage",id:"editpage",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"ExecuteApplicationList",id:"executeapplicationlist",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"cspuiportalapplicationsclientlist",children:"%CSP.UI.Portal.Applications.ClientList"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Applications.ClientList Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav, %CSP.UI.Portal.Applications.Utils) [ System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"System Management Portal - System Administration - Client Applications"}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,s.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Applications.ClientList.zen";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "System Administration,Security,Applications,Client Applications";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Client Applications";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,s.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Secure";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Security requirement"}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"applicationtype",children:"ApplicationType"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property ApplicationType As %Integer [ InitialExpression = {$$$AppTypeExecutable} ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"editpage",children:"EditPage"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property EditPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.Applications.Client.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"executeapplicationlist",children:"ExecuteApplicationList"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ExecuteApplicationList(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean\n"})}),"\n",(0,s.jsx)(n.p,{children:"Needed to ensure that ApplicationType is an integer"}),"\n",(0,s.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,s.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,s.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,s.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)",(0,s.jsx)(n.br,{}),'\nSubclasses with extra layers of locator links or other than "Configuration" please override.']})]})}function o(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>r});var s=t(96540);const i={},a=s.createContext(i);function l(e){const n=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),s.createElement(a.Provider,{value:n},e.children)}}}]);