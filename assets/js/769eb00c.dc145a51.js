"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[21459],{65574:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>i,default:()=>o,frontMatter:()=>r,toc:()=>t});var a=s(74848),l=s(28453);const r={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.Mirror.Dialog.AsyncRemoveConfig",t=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"ErrorMsg",id:"errormsg",level:3},{value:"DescText1",id:"desctext1",level:3},{value:"DescText2",id:"desctext2",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"doSave",id:"dosave",level:3},{value:"SaveData",id:"savedata",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"ondialogCancel",id:"ondialogcancel",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"cspuiportalmirrordialogasyncremoveconfig",children:"%CSP.UI.Portal.Mirror.Dialog.AsyncRemoveConfig"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Mirror.Dialog.AsyncRemoveConfig Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Zen page for System Management Portal - Create Mirror"}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"application",children:"APPLICATION"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Class name of application this page belongs to."}),"\n",(0,a.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mirror.Dialog.AsyncRemoveConfig.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "RemoveConfig";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(n.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(n.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,a.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Security requirement"}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"errormsg",children:"ErrorMsg"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property ErrorMsg As %String;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"desctext1",children:"DescText1"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property DescText1 As %String [ InitialExpression = {$$$TextHTML("Delete the mirror journal files except files in journal.log")} ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"desctext2",children:"DescText2"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property DescText2 As %String [ InitialExpression = {$$$TextHTML("Delete the mirror configuration information")} ];\n'})}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"contents",children:"Contents"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,a.jsx)(n.h3,{id:"dosave",children:"doSave"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"savedata",children:"SaveData"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,a.jsxs)(n.p,{children:["Save general association data to server.",(0,a.jsx)(n.br,{}),"\nReturns proxy.ok = 1 (save successful) or 0 (error occurred)",(0,a.jsx)(n.br,{}),"\nproxy.ErrorMessage (save failed and display this error message). If proxy.ok is 1 and no messages returned then we return to SMP home."]}),"\n",(0,a.jsx)(n.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,a.jsx)(n.h3,{id:"ondialogcancel",children:"ondialogCancel"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogCancel() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This callback, if defined, is called when the user presses the Cancel button. If this returns false, then the dialog is not cancelled."}),"\n",(0,a.jsx)(n.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})})]})}function o(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>i,x:()=>t});var a=s(96540);const l={},r=a.createContext(l);function i(e){const n=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function t(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),a.createElement(r.Provider,{value:n},e.children)}}}]);