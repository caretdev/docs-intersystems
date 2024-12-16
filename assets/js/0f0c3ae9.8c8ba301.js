"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[64276],{11790:(e,n,a)=>{a.r(n),a.d(n,{contentTitle:()=>r,default:()=>d,frontMatter:()=>l,toc:()=>i});var s=a(74848),t=a(28453);const l={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.SQL.Configure.ISQL",i=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"IsEditForm",id:"iseditform",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"doSave",id:"dosave",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"SaveData",id:"savedata",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"getPageTitle",id:"getpagetitle",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"cspuiportalsqlconfigureisql",children:"%CSP.UI.Portal.SQL.Configure.ISQL"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.SQL.Configure.ISQL Extends %CSP.UI.Portal.Template [ System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Informix SQL Settings"}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,s.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Informix SQL Settings";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,s.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.SQL.Configure.ISQL.zen";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Configuration,ISQL Compatibility Settings";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Security requirement"}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"iseditform",children:"IsEditForm"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property IsEditForm As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,s.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(n.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,s.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"dosave",children:"doSave"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"User clicked Save. Save and return to parent page."}),"\n",(0,s.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,s.jsx)(n.h3,{id:"savedata",children:"SaveData"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(DELIMIDENT, TRACE, FUNCTIONRETURNSSET, RESERVEDWORDPREFIX) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Save file into global."}),"\n",(0,s.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,s.jsx)(n.h3,{id:"getpagetitle",children:"getPageTitle"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getPageTitle() As %String [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the title string to add to the locator row."})]})}function d(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,a)=>{a.d(n,{R:()=>r,x:()=>i});var s=a(96540);const t={},l=s.createContext(t);function r(e){const n=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:r(e.components),s.createElement(l.Provider,{value:n},e.children)}}}]);