"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[72109],{63624:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>i,default:()=>c,frontMatter:()=>r,toc:()=>t});var n=s(74848),l=s(28453);const r={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.User",t=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"PARENTPAGE",id:"parentpage",level:3},{value:"RECENT",id:"recent",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"EditDisabled",id:"editdisabled",level:3},{value:"IsEditForm",id:"iseditform",level:3},{value:"IsNewSave",id:"isnewsave",level:3},{value:"NumTabs",id:"numtabs",level:3},{value:"PasswordRequired",id:"passwordrequired",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"SVGStyle",id:"svgstyle",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onlayoutHandler",id:"onlayouthandler",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"tabChanged",id:"tabchanged",level:3},{value:"neverExpiresChanged",id:"neverexpireschanged",level:3},{value:"twoFactorModified",id:"twofactormodified",level:3},{value:"changeNS",id:"changens",level:3},{value:"passwordChanged",id:"passwordchanged",level:3},{value:"doChangeName",id:"dochangename",level:3},{value:"doCopyUser",id:"docopyuser",level:3},{value:"doGenerateQRCode",id:"dogenerateqrcode",level:3},{value:"doProfile",id:"doprofile",level:3},{value:"doPhoneProvider",id:"dophoneprovider",level:3},{value:"doSave",id:"dosave",level:3},{value:"showqr",id:"showqr",level:3},{value:"validate",id:"validate",level:3},{value:"ValidateRoutine",id:"validateroutine",level:3},{value:"GetQR",id:"getqr",level:3},{value:"SaveData",id:"savedata",level:3},{value:"CopyUser",id:"copyuser",level:3},{value:"GenerateQRCode",id:"generateqrcode",level:3},{value:"ParseUsername",id:"parseusername",level:3},{value:"PopulateFields",id:"populatefields",level:3},{value:"DrawTabHeader",id:"drawtabheader",level:3},{value:"PopulateNSDropdown",id:"populatensdropdown",level:3},{value:"PopulateTwoFactor",id:"populatetwofactor",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"getPageTitle",id:"getpagetitle",level:3}];function d(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"cspuiportaluser",children:"%CSP.UI.Portal.User"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.User Extends %CSP.UI.Portal.Template [ System = 4 ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"System Management Portal - System Administration - Edit User"}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"autons",children:"AUTONS"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(a.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,n.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Edit User";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,n.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.User.zen";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "System Administration,Security,Users,Edit User";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE = "Users";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"parentpage",children:"PARENTPAGE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.Users.zen";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"recent",children:"RECENT"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter RECENT = 0;\n"})}),"\n",(0,n.jsx)(a.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Secure";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Security requirement"}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"editdisabled",children:"EditDisabled"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property EditDisabled As %Boolean;\n"})}),"\n",(0,n.jsx)(a.h3,{id:"iseditform",children:"IsEditForm"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property IsEditForm As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,n.jsx)(a.h3,{id:"isnewsave",children:"IsNewSave"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property IsNewSave As %Integer(ZENURL = "new");\n'})}),"\n",(0,n.jsx)(a.h3,{id:"numtabs",children:"NumTabs"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property NumTabs As %Integer [ InitialExpression = 9 ];\n"})}),"\n",(0,n.jsx)(a.h3,{id:"passwordrequired",children:"PasswordRequired"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property PasswordRequired As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(a.h3,{id:"svgstyle",children:"SVGStyle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"XData SVGStyle\n"})}),"\n",(0,n.jsx)(a.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Set focus to the Name or Description field, disable fields if DispatchClass is defined."}),"\n",(0,n.jsx)(a.h3,{id:"onlayouthandler",children:"onlayoutHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onlayoutHandler(load) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,n.jsx)(a.h3,{id:"tabchanged",children:"tabChanged"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod tabChanged(index) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"neverexpireschanged",children:"neverExpiresChanged"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod neverExpiresChanged() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"twofactormodified",children:"twoFactorModified"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod twoFactorModified() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"changens",children:"changeNS"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeNS(ns) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"passwordchanged",children:"passwordChanged"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod passwordChanged(newvalue) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"dochangename",children:"doChangeName"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doChangeName(name) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"docopyuser",children:"doCopyUser"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doCopyUser(user) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"dogenerateqrcode",children:"doGenerateQRCode"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doGenerateQRCode() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"doprofile",children:"doProfile"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doProfile() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"dophoneprovider",children:"doPhoneProvider"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doPhoneProvider() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"dosave",children:"doSave"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"showqr",children:"showqr"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod showqr() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"validate",children:"validate"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod validate() As %Boolean [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"validateroutine",children:"ValidateRoutine"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod ValidateRoutine(pRoutine, pNamespace) As %Boolean [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"getqr",children:"GetQR"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod GetQR(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"savedata",children:"SaveData"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Call server save method."}),"\n",(0,n.jsx)(a.h3,{id:"copyuser",children:"CopyUser"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method CopyUser(UserName As %String) As %Status [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"generateqrcode",children:"GenerateQRCode"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method GenerateQRCode(UserName As %String) As %Status [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"parseusername",children:"ParseUsername"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method ParseUsername(UserName As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"populatefields",children:"PopulateFields"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method PopulateFields(ByRef Properties As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"Fill in form fields. Used when loading the page for edit or when choosing a copy from user during creation"}),"\n",(0,n.jsx)(a.h3,{id:"drawtabheader",children:"DrawTabHeader"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawTabHeader(pSeed As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.h3,{id:"populatensdropdown",children:"PopulateNSDropdown"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method PopulateNSDropdown(Type As %Integer, Output displayList As %String, Output valueList As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.h3,{id:"populatetwofactor",children:"PopulateTwoFactor"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method PopulateTwoFactor() As %Status [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsx)(a.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,n.jsxs)(a.p,{children:["Return the array of links to show in the locator bar.",(0,n.jsx)(a.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,n.jsx)(a.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,n.jsx)(a.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,n.jsx)(a.h3,{id:"getpagetitle",children:"getPageTitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getPageTitle() As %String [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"/ Get the title string to add to the locator row."})]})}function c(e={}){const{wrapper:a}={...(0,l.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(d,{...e})}):d(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>i,x:()=>t});var n=s(96540);const l={},r=n.createContext(l);function i(e){const a=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function t(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),n.createElement(r.Provider,{value:a},e.children)}}}]);