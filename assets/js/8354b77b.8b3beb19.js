"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[82721],{4825:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>r,default:()=>d,frontMatter:()=>n,toc:()=>i});var t=a(74848),l=a(28453);const n={pagination_prev:null,pagination_next:null},r="%WebStress.Portal.NoDelays",i=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"detailPane",id:"detailpane",level:3},{value:"Methods",id:"methods",level:2},{value:"GetFinderArray",id:"getfinderarray",level:3},{value:"renderGrid",id:"rendergrid",level:3},{value:"addResult",id:"addresult",level:3},{value:"saveResults",id:"saveresults",level:3},{value:"SubmitTest",id:"submittest",level:3},{value:"removeResult",id:"removeresult",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"tablePopulate",id:"tablepopulate",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"Populate",id:"populate",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"webstressportalnodelays",children:"%WebStress.Portal.NoDelays"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %WebStress.Portal.NoDelays Extends %WebStress.Portal.standardPage [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"application",children:"APPLICATION"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%WebStress.Portal.Application";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Set this to the appropriate application class."}),"\n",(0,t.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%WebStress";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Set this to the correct domain."}),"\n",(0,t.jsx)(s.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Webstress Portal";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Name of this page."}),"\n",(0,t.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(s.h3,{id:"detailpane",children:"detailPane"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'XData detailPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"getfinderarray",children:"GetFinderArray"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetFinderArray(ByRef pParameters, Output pMetaData, Output pData) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"rendergrid",children:"renderGrid"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod renderGrid() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"addresult",children:"addResult"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod addResult() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"saveresults",children:"saveResults"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod saveResults() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"submittest",children:"SubmitTest"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method SubmitTest(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, Output pResponseObject As %RegisteredObject) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"removeresult",children:"removeResult"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod removeResult(id) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,t.jsx)(s.h3,{id:"tablepopulate",children:"tablePopulate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod tablePopulate() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return the array of links to show in the locator bar.",(0,t.jsx)(s.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,t.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This class method callback is called just before the server-side page object is created."}),"\n",(0,t.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Get the (localized) title string for the page. This should be implemented in a subclass."}),"\n",(0,t.jsx)(s.h3,{id:"populate",children:"Populate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method Populate() As %Status [ ZenMethod ]\n"})})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>r,x:()=>i});var t=a(96540);const l={},n=t.createContext(l);function r(e){const s=t.useContext(n);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),t.createElement(n.Provider,{value:s},e.children)}}}]);