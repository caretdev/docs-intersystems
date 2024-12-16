"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[15483],{16810:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>s,default:()=>o,frontMatter:()=>l,toc:()=>c});var a=t(74848),r=t(28453);const l={pagination_prev:null,pagination_next:null},s="%WebStress.Portal.Controller",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"detailPane",id:"detailpane",level:3},{value:"Methods",id:"methods",level:2},{value:"GetControlArray",id:"getcontrolarray",level:3},{value:"renderControl",id:"rendercontrol",level:3},{value:"controlTimer",id:"controltimer",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"onloadHandler",id:"onloadhandler",level:3}];function i(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"webstressportalcontroller",children:"%WebStress.Portal.Controller"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %WebStress.Portal.Controller Extends %WebStress.Portal.standardPage [ DependsOn = %ZEN.Component.tableNavigator, System = 4 ]\n"})}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"application",children:"APPLICATION"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%WebStress.Portal.Application";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Set this to the appropriate application class."}),"\n",(0,a.jsx)(n.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%WebStress";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Set this to the correct domain."}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Webstress Controller Detail Page";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Name of this page."}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(n.h3,{id:"detailpane",children:"detailPane"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData detailPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"getcontrolarray",children:"GetControlArray"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetControlArray(ByRef pParameters, Output pMetaData, Output pData) As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"rendercontrol",children:"renderControl"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod renderControl() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"controltimer",children:"controlTimer"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod controlTimer() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"This class method callback is called just before the server-side page object is created."}),"\n",(0,a.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) title string for the page. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."})]})}function o(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(i,{...e})}):i(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>s,x:()=>c});var a=t(96540);const r={},l=a.createContext(r);function s(e){const n=a.useContext(l);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:s(e.components),a.createElement(l.Provider,{value:n},e.children)}}}]);