"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[69972],{96988:(e,n,r)=>{r.r(n),r.d(n,{contentTitle:()=>o,default:()=>i,frontMatter:()=>a,toc:()=>c});var t=r(74848),s=r(28453);const a={pagination_prev:null,pagination_next:null},o="%DeepSee.UI.ErrorPage",c=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"DOCBOOKID",id:"docbookid",level:3},{value:"RESOURCE;",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"errorName",id:"errorname",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%OnGetProductName",id:"ongetproductname",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"DrawError",id:"drawerror",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3}];function l(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"deepseeuierrorpage",children:"%DeepSee.UI.ErrorPage"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.ErrorPage Extends %DeepSee.UI.standardPage [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"DeepSee Management Portal Error page."}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Error Page";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"docbookid",children:"DOCBOOKID"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DOCBOOKID = "D2GS_ch_intro";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"resource",children:"RESOURCE;"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter RESOURCE;\n"})}),"\n",(0,t.jsx)(n.p,{children:"No resource is needed to view the error page. JMD1415"}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"errorname",children:"errorName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property errorName As %String(ZENURL = "ERROR");\n'})}),"\n",(0,t.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(n.p,{children:"This XML defines the contents of the contents pane for this page."}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get the (localized) title string for the page."}),"\n",(0,t.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get the name for the page."}),"\n",(0,t.jsx)(n.h3,{id:"ongetproductname",children:"%OnGetProductName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetProductName() As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get the product name for the page."}),"\n",(0,t.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,t.jsx)(n.h3,{id:"drawerror",children:"DrawError"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawError(pSeed As %String) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Draw contents of error html component."}),"\n",(0,t.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,t.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)"]})]})}function i(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(l,{...e})}):l(e)}},28453:(e,n,r)=>{r.d(n,{R:()=>o,x:()=>c});var t=r(96540);const s={},a=t.createContext(s);function o(e){const n=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:o(e.components),t.createElement(a.Provider,{value:n},e.children)}}}]);