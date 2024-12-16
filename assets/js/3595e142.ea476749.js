"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[47997],{57969:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>i,default:()=>d,frontMatter:()=>l,toc:()=>r});var s=t(74848),a=t(28453);const l={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.Manifests",r=[{value:"Parameters",id:"parameters",level:2},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"AUTONS",id:"autons",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"DrawTitle1",id:"drawtitle1",level:3},{value:"doNew",id:"donew",level:3},{value:"editSetting",id:"editsetting",level:3},{value:"deleteSetting",id:"deletesetting",level:3},{value:"DeleteItem",id:"deleteitem",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"cspuiportalmanifests",children:"%CSP.UI.Portal.Manifests"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Manifests Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Zen page for System Management Portal"}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Manifests.zen";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Provider,Manifests";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,s.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Manifests";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,s.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Security requirement"}),"\n",(0,s.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,s.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,s.jsx)(n.h3,{id:"drawtitle1",children:"DrawTitle1"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DrawTitle1(pSeed As %String) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Used to draw title for this page. pHalpAddress is need to build the link for Help for this page."}),"\n",(0,s.jsx)(n.h3,{id:"donew",children:"doNew"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doNew() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:'User clicked the "Edit" link which is there for clearity and consistency. No need to do anything here as onselectrow is going to kick in.'}),"\n",(0,s.jsx)(n.h3,{id:"editsetting",children:"editSetting"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod editSetting(PID) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:'User clicked the "Edit" link which is there for clearity and consistency. No need to do anything here as onselectrow is going to kick in.'}),"\n",(0,s.jsx)(n.h3,{id:"deletesetting",children:"deleteSetting"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod deleteSetting(PID) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Delete existing mapping."}),"\n",(0,s.jsx)(n.h3,{id:"deleteitem",children:"DeleteItem"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DeleteItem(PID) As %String [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Call server delete method."})]})}function d(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>i,x:()=>r});var s=t(96540);const a={},l=s.createContext(a);function i(e){const n=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),s.createElement(l.Provider,{value:n},e.children)}}}]);