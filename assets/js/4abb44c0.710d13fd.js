"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[48259],{52490:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>r,default:()=>d,frontMatter:()=>t,toc:()=>i});var n=s(74848),l=s(28453);const t={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.X509Credential",i=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"PARENTPAGE",id:"parentpage",level:3},{value:"RECENT",id:"recent",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"IsEditForm",id:"iseditform",level:3},{value:"isNew",id:"isnew",level:3},{value:"msgPassword",id:"msgpassword",level:3},{value:"PID",id:"pid",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"browseSelect",id:"browseselect",level:3},{value:"changeKey",id:"changekey",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"DrawTitle1",id:"drawtitle1",level:3},{value:"DrawCerData",id:"drawcerdata",level:3},{value:"doSave",id:"dosave",level:3},{value:"doCancel",id:"docancel",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"SaveData",id:"savedata",level:3},{value:"UpdateDetails",id:"updatedetails",level:3},{value:"getPageTitle",id:"getpagetitle",level:3}];function c(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"cspuiportalx509credential",children:"%CSP.UI.Portal.X509Credential"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.X509Credential Extends %CSP.UI.Portal.Template [ System = 4 ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Zen page for System Management Portal - Show Databases Freespace"}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"autons",children:"AUTONS"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(a.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,n.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Edit X509Credentials";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,n.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.X509Credential.zen";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Security Management,X.509 Credentials";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"parentpage",children:"PARENTPAGE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.X509Credentials.zen";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"recent",children:"RECENT"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter RECENT = 0;\n"})}),"\n",(0,n.jsx)(a.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Secure";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Security requirement"}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"iseditform",children:"IsEditForm"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property IsEditForm As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,n.jsx)(a.h3,{id:"isnew",children:"isNew"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];\n'})}),"\n",(0,n.jsx)(a.h3,{id:"msgpassword",children:"msgPassword"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property msgPassword As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("The two Passwords are not the same. Please type them again.")} ];\n'})}),"\n",(0,n.jsx)(a.h3,{id:"pid",children:"PID"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property PID As %String(ZENURL = "PID");\n'})}),"\n",(0,n.jsx)(a.p,{children:"ID for edit. Null if adding new credentials."}),"\n",(0,n.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(a.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"browseselect",children:"browseSelect"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod browseSelect(name, wildcard) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"User clicked one of the Browse buttons. Save the name of the textfield so that when you return you know which textfield to update."}),"\n",(0,n.jsx)(a.h3,{id:"changekey",children:"changeKey"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeKey() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"User changed private key. Show/hide password fields"}),"\n",(0,n.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,n.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsx)(a.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,n.jsx)(a.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,n.jsxs)(a.p,{children:["Return the array of links to show in the locator bar.",(0,n.jsx)(a.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,n.jsx)(a.h3,{id:"drawtitle1",children:"DrawTitle1"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DrawTitle1(pSeed As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"Used to draw title for this page. pHalpAddress is need to build the link for Help for this page."}),"\n",(0,n.jsx)(a.h3,{id:"drawcerdata",children:"DrawCerData"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawCerData(pSeed As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"For edit, draw certificate data"}),"\n",(0,n.jsx)(a.h3,{id:"dosave",children:"doSave"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get user selection and send to server to save settings."}),"\n",(0,n.jsx)(a.h3,{id:"docancel",children:"doCancel"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doCancel() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,n.jsx)(a.h3,{id:"savedata",children:"SaveData"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(pid, pAlias, pCertificate, pPrivateKey, pPrivateKeyType, pPrivateKeyPassword, pOwnerList, pPeerNames, pCAFile) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Save general association data to server"}),"\n",(0,n.jsx)(a.h3,{id:"updatedetails",children:"UpdateDetails"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod UpdateDetails(pid) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This method is called when page is loaded. Load data into the fields."}),"\n",(0,n.jsx)(a.h3,{id:"getpagetitle",children:"getPageTitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getPageTitle() As %String [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get the title string to add to the locator row."})]})}function d(e={}){const{wrapper:a}={...(0,l.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>r,x:()=>i});var n=s(96540);const l={},t=n.createContext(l);function r(e){const a=n.useContext(t);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function i(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),n.createElement(t.Provider,{value:a},e.children)}}}]);