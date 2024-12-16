"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[59239],{80546:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>r,default:()=>d,frontMatter:()=>t,toc:()=>i});var a=s(74848),l=s(28453);const t={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.Manifest",i=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"PARENTPAGE",id:"parentpage",level:3},{value:"RECENT",id:"recent",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"IsEditForm",id:"iseditform",level:3},{value:"isNew",id:"isnew",level:3},{value:"PID",id:"pid",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"browseSelect",id:"browseselect",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"PopulateFields",id:"populatefields",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"DrawTitle1",id:"drawtitle1",level:3},{value:"doSave",id:"dosave",level:3},{value:"doCancel",id:"docancel",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"SaveData",id:"savedata",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"cspuiportalmanifest",children:"%CSP.UI.Portal.Manifest"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Manifest Extends %CSP.UI.Portal.Template [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Zen page for System Management Portal"}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Edit Manifest";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Manifest.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Provider,Manifests";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"parentpage",children:"PARENTPAGE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.Manifests.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"recent",children:"RECENT"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter RECENT = 0;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Security requirement"}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"iseditform",children:"IsEditForm"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property IsEditForm As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"isnew",children:"isNew"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"pid",children:"PID"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property PID As %String(ZENURL = "PID");\n'})}),"\n",(0,a.jsx)(n.p,{children:"ID for edit. Null if adding new credentials."}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"browseselect",children:"browseSelect"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod browseSelect(name, wildcard) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"User clicked one of the Browse buttons. Save the name of the textfield so that when you return you know which textfield to update."}),"\n",(0,a.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"populatefields",children:"PopulateFields"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method PopulateFields(ByRef Properties As %String) As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,a.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(n.h3,{id:"drawtitle1",children:"DrawTitle1"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DrawTitle1(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Used to draw title for this page. pHalpAddress is need to build the link for Help for this page."}),"\n",(0,a.jsx)(n.h3,{id:"dosave",children:"doSave"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get user selection and send to server to save settings."}),"\n",(0,a.jsx)(n.h3,{id:"docancel",children:"doCancel"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doCancel() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,a.jsx)(n.h3,{id:"savedata",children:"SaveData"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Save general association data to server"})]})}function d(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>r,x:()=>i});var a=s(96540);const l={},t=a.createContext(l);function r(e){const n=a.useContext(t);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),a.createElement(t.Provider,{value:n},e.children)}}}]);