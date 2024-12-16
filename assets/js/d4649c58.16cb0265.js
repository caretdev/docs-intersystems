"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[22610],{90738:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>t,default:()=>d,frontMatter:()=>i,toc:()=>r});var n=a(74848),l=a(28453);const i={pagination_prev:null,pagination_next:null},t="%CSP.UI.Portal.Dialog.Resource",r=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"RESOURCENAME",id:"resourcename",level:3},{value:"RESOURCETYPE",id:"resourcetype",level:3},{value:"IsError",id:"iserror",level:3},{value:"DBResourcePrefix",id:"dbresourceprefix",level:3},{value:"msgPrefix",id:"msgprefix",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"onstartHandler",id:"onstarthandler",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"validate",id:"validate",level:3},{value:"doSave",id:"dosave",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"DrawPageTitle",id:"drawpagetitle",level:3},{value:"SaveData",id:"savedata",level:3},{value:"ondialogCancel",id:"ondialogcancel",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"cspuiportaldialogresource",children:"%CSP.UI.Portal.Dialog.Resource"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Dialog.Resource Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,n.jsx)(s.p,{children:"Edit Resource for Management Portal"}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"application",children:"APPLICATION"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Class name of application this page belongs to."}),"\n",(0,n.jsx)(s.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Dialog.Resource.zen";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "ResourceEdit";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Displayed name of this page."}),"\n",(0,n.jsx)(s.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(s.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,n.jsx)(s.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE = "Security";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Secure";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Security requirement"}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"resourcename",children:"RESOURCENAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property RESOURCENAME As %ZEN.Datatype.string(ZENURL = "RESOURCENAME");\n'})}),"\n",(0,n.jsx)(s.p,{children:"When editing an existing resource this is passed in as the resource name."}),"\n",(0,n.jsx)(s.h3,{id:"resourcetype",children:"RESOURCETYPE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property RESOURCETYPE As %ZEN.Datatype.string(ZENURL = "RESOURCETYPE");\n'})}),"\n",(0,n.jsx)(s.p,{children:"If called from Database wizard, then this is set and default to %DB_[RESOURCETYPE]."}),"\n",(0,n.jsx)(s.h3,{id:"iserror",children:"IsError"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property IsError As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dbresourceprefix",children:"DBResourcePrefix"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property DBResourcePrefix As %ZEN.Datatype.string;\n"})}),"\n",(0,n.jsx)(s.h3,{id:"msgprefix",children:"msgPrefix"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgPrefix As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("A database resource name must start with %1")} ];\n'})}),"\n",(0,n.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(s.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,n.jsx)(s.h3,{id:"contents",children:"Contents"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,n.jsx)(s.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,n.jsx)(s.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"validate",children:"validate"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod validate() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dosave",children:"doSave"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,n.jsx)(s.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]}),"\n",(0,n.jsx)(s.h3,{id:"drawpagetitle",children:"DrawPageTitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawPageTitle(pSeed As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"savedata",children:"SaveData"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"ondialogcancel",children:"ondialogCancel"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogCancel() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This callback, if defined, is called when the user presses the Cancel button. If this returns false, then the dialog is not cancelled."})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>t,x:()=>r});var n=a(96540);const l={},i=n.createContext(l);function t(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:t(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);