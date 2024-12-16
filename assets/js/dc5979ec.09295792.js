"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[37942],{56257:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>r,default:()=>d,frontMatter:()=>l,toc:()=>c});var t=s(74848),a=s(28453);const l={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.LDAPs",c=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"filterChanged",id:"filterchanged",level:3},{value:"doTest",id:"dotest",level:3},{value:"doEdit",id:"doedit",level:3},{value:"doDelete",id:"dodelete",level:3},{value:"Delete",id:"delete",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3}];function i(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"cspuiportalldaps",children:"%CSP.UI.Portal.LDAPs"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.LDAPs Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"System Management Portal - Security Management - LDAPs"}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,t.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.LDAPs.zen";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Security Management,Security LDAP configurations";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE = "Users";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Security LDAP Configs";\n'})}),"\n",(0,t.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,t.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Secure";\n'})}),"\n",(0,t.jsx)(n.p,{children:"Security requirement"}),"\n",(0,t.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"filterchanged",children:"filterChanged"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod filterChanged(value) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"User entered something in to the filter. Re-load the table with filter value."}),"\n",(0,t.jsx)(n.h3,{id:"dotest",children:"doTest"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doTest(LDAP) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"doedit",children:"doEdit"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doEdit(LDAP) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"dodelete",children:"doDelete"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doDelete(LDAP) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"delete",children:"Delete"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Delete(LDAP As %String) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,t.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,t.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,t.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)"]})]})}function d(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(i,{...e})}):i(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>r,x:()=>c});var t=s(96540);const a={},l=t.createContext(a);function r(e){const n=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),t.createElement(l.Provider,{value:n},e.children)}}}]);