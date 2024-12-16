"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[76992],{94099:(e,n,a)=>{a.r(n),a.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>t,toc:()=>i});var s=a(74848),r=a(28453);const t={pagination_prev:null,pagination_next:null},l="%CSP.UI.Portal.Mirror.JoinAsync",i=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"Properties",id:"properties",level:2},{value:"IsEditForm",id:"iseditform",level:3},{value:"MirrorRequiresSSL",id:"mirrorrequiresssl",level:3},{value:"OldMemberType",id:"oldmembertype",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"goToNextPage",id:"gotonextpage",level:3},{value:"modifiedMemberType",id:"modifiedmembertype",level:3},{value:"doClear",id:"doclear",level:3},{value:"doConnect",id:"doconnect",level:3},{value:"doSave",id:"dosave",level:3},{value:"validateConnect",id:"validateconnect",level:3},{value:"validateSave",id:"validatesave",level:3},{value:"Connect",id:"connect",level:3},{value:"UpdateDN",id:"updatedn",level:3},{value:"SaveData",id:"savedata",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"IsAgentUp",id:"isagentup",level:3},{value:"getPageTitle",id:"getpagetitle",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"cspuiportalmirrorjoinasync",children:"%CSP.UI.Portal.Mirror.JoinAsync"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Mirror.JoinAsync Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Mirror.Utils) [ System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Zen page for System Management Portal - Join Async"}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,s.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Security requirement"}),"\n",(0,s.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Join Mirror as Async";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,s.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mirror.JoinAsync.zen";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Configuration,Join Mirror as Async";\n'})}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"iseditform",children:"IsEditForm"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property IsEditForm As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"mirrorrequiresssl",children:"MirrorRequiresSSL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property MirrorRequiresSSL As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"oldmembertype",children:"OldMemberType"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property OldMemberType As %Integer;\n"})}),"\n",(0,s.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Overriding for DN redraw"}),"\n",(0,s.jsx)(n.h3,{id:"gotonextpage",children:"goToNextPage"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod goToNextPage() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"modifiedmembertype",children:"modifiedMemberType"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod modifiedMemberType(newVal) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"user modified Async Member Type"}),"\n",(0,s.jsx)(n.h3,{id:"doclear",children:"doClear"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doClear() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"doconnect",children:"doConnect"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doConnect() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"dosave",children:"doSave"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"validateconnect",children:"validateConnect"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod validateConnect() As %Boolean [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"validatesave",children:"validateSave"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod validateSave(proxy) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"connect",children:"Connect"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Connect(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Save general association data to server.",(0,s.jsx)(n.br,{}),"\nReturns proxy.ok = 1 (save successful) or 0 (error occurred)",(0,s.jsx)(n.br,{}),"\nproxy.ErrorMessage (save failed and display this error message). If proxy.ok is 1 and no messages returned then we return to SMP home."]}),"\n",(0,s.jsx)(n.h3,{id:"updatedn",children:"UpdateDN"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method UpdateDN() As %Status [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"savedata",children:"SaveData"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Save general association data to server.",(0,s.jsx)(n.br,{}),"\nReturns proxy.ok = 1 (save successful) or 0 (error occurred)",(0,s.jsx)(n.br,{}),"\nproxy.ErrorMessage (save failed and display this error message). If proxy.ok is 1 and no messages returned then we return to SMP home."]}),"\n",(0,s.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,s.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,s.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Set Locator bar and determine whether to show change password option."}),"\n",(0,s.jsx)(n.h3,{id:"isagentup",children:"IsAgentUp"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod IsAgentUp() As %Integer [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getpagetitle",children:"getPageTitle"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getPageTitle() As %String [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the title string to add to the locator row."})]})}function o(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,a)=>{a.d(n,{R:()=>l,x:()=>i});var s=a(96540);const r={},t=s.createContext(r);function l(e){const n=s.useContext(t);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),s.createElement(t.Provider,{value:n},e.children)}}}]);