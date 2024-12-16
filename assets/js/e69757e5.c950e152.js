"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[65692],{97375:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>c,default:()=>d,frontMatter:()=>r,toc:()=>t});var n=a(74848),l=a(28453);const r={pagination_prev:null,pagination_next:null},c="%CSP.UI.Portal.Role",t=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"PARENTPAGE",id:"parentpage",level:3},{value:"RECENT",id:"recent",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"CurrResources",id:"currresources",level:3},{value:"CurrTab",id:"currtab",level:3},{value:"EditDisabled",id:"editdisabled",level:3},{value:"IsDB",id:"isdb",level:3},{value:"IsEditForm",id:"iseditform",level:3},{value:"IsNewSave",id:"isnewsave",level:3},{value:"IsSystem",id:"issystem",level:3},{value:"NumTabs",id:"numtabs",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"SVGStyle",id:"svgstyle",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onlayoutHandler",id:"onlayouthandler",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"tabChanged",id:"tabchanged",level:3},{value:"changeNS",id:"changens",level:3},{value:"doEditResource",id:"doeditresource",level:3},{value:"doAddResource",id:"doaddresource",level:3},{value:"doDeleteResource",id:"dodeleteresource",level:3},{value:"doCopyRole",id:"docopyrole",level:3},{value:"doSave",id:"dosave",level:3},{value:"validate",id:"validate",level:3},{value:"SaveData",id:"savedata",level:3},{value:"DeleteResource",id:"deleteresource",level:3},{value:"CopyRole",id:"copyrole",level:3},{value:"DrawResources",id:"drawresources",level:3},{value:"PopulateFields",id:"populatefields",level:3},{value:"DrawTabHeader",id:"drawtabheader",level:3},{value:"PopulateNSDropdown",id:"populatensdropdown",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"getPageTitle",id:"getpagetitle",level:3}];function i(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"cspuiportalrole",children:"%CSP.UI.Portal.Role"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Role Extends %CSP.UI.Portal.Template [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"System Management Portal - System Administration - Edit Role"}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"autons",children:"AUTONS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,n.jsx)(s.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Edit Role";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Displayed name of this page."}),"\n",(0,n.jsx)(s.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Role.zen";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "System Administration,Security,Users,Edit Role";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE = "Security";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"parentpage",children:"PARENTPAGE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.Roles.zen";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"recent",children:"RECENT"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter RECENT = 0;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Secure";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Security requirement"}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"currresources",children:"CurrResources"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property CurrResources As %String;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"currtab",children:"CurrTab"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property CurrTab As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"editdisabled",children:"EditDisabled"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property EditDisabled As %Boolean;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"isdb",children:"IsDB"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property IsDB As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"iseditform",children:"IsEditForm"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property IsEditForm As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"isnewsave",children:"IsNewSave"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property IsNewSave As %Integer(ZENURL = "new");\n'})}),"\n",(0,n.jsx)(s.h3,{id:"issystem",children:"IsSystem"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property IsSystem As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"numtabs",children:"NumTabs"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property NumTabs As %Integer [ InitialExpression = 9 ];\n"})}),"\n",(0,n.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(s.h3,{id:"svgstyle",children:"SVGStyle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData SVGStyle\n"})}),"\n",(0,n.jsx)(s.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Set focus to the Name or Description field, disable fields if DispatchClass is defined."}),"\n",(0,n.jsx)(s.h3,{id:"onlayouthandler",children:"onlayoutHandler"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onlayoutHandler(load) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,n.jsx)(s.h3,{id:"tabchanged",children:"tabChanged"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod tabChanged(index) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"changens",children:"changeNS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod changeNS(ns) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"doeditresource",children:"doEditResource"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doEditResource(resource, permissions) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"doaddresource",children:"doAddResource"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doAddResource() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dodeleteresource",children:"doDeleteResource"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doDeleteResource(resource) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"docopyrole",children:"doCopyRole"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doCopyRole(role) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dosave",children:"doSave"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"validate",children:"validate"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod validate() As %Boolean [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"savedata",children:"SaveData"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Call server save method."}),"\n",(0,n.jsx)(s.h3,{id:"deleteresource",children:"DeleteResource"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteResource(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"copyrole",children:"CopyRole"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method CopyRole(Role As %String) As %Status [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"drawresources",children:"DrawResources"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawResources(pSeed As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"populatefields",children:"PopulateFields"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method PopulateFields(ByRef Properties As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fill in form fields. Used when loading the page for edit or when choosing a copy from role during creation"}),"\n",(0,n.jsx)(s.h3,{id:"drawtabheader",children:"DrawTabHeader"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawTabHeader(pSeed As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"populatensdropdown",children:"PopulateNSDropdown"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method PopulateNSDropdown(Type As %Integer, Output displayList As %String, Output valueList As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Return the array of links to show in the locator bar.",(0,n.jsx)(s.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,n.jsx)(s.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"getpagetitle",children:"getPageTitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getPageTitle() As %String [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the title string to add to the locator row."})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(i,{...e})}):i(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>c,x:()=>t});var n=a(96540);const l={},r=n.createContext(l);function c(e){const s=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function t(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:c(e.components),n.createElement(r.Provider,{value:s},e.children)}}}]);