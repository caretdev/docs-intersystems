"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[87305],{69860:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>i,default:()=>o,frontMatter:()=>t,toc:()=>c});var a=s(74848),l=s(28453);const t={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.Background.Dialog.TaskInfo",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"SysBGTaskId",id:"sysbgtaskid",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"doAction",id:"doaction",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"ondialogCancel",id:"ondialogcancel",level:3},{value:"onresizeHandler",id:"onresizehandler",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"GetJobInfo",id:"getjobinfo",level:3},{value:"ActionProcess",id:"actionprocess",level:3}];function r(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"cspuiportalbackgrounddialogtaskinfo",children:"%CSP.UI.Portal.Background.Dialog.TaskInfo"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Background.Dialog.TaskInfo Extends (%CSP.UI.Portal.Dialog.WizardTemplate, %ZEN.Portal.Utils, %CSP.UI.Portal.Background.Utils) [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,a.jsx)(n.p,{children:"Displays Background Task Info dialog for Management Portal."}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"application",children:"APPLICATION"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Class name of application this page belongs to."}),"\n",(0,a.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/%CSP.UI.Portal.Background.Dialog.TaskInfo.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "BackgroundTaskInfo";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Operate:USE";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(n.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");\n'})}),"\n",(0,a.jsx)(n.h3,{id:"sysbgtaskid",children:"SysBGTaskId"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property SysBGTaskId As %String(ZENURL = "SysBGTaskId");\n'})}),"\n",(0,a.jsx)(n.p,{children:"ID for Systems background task id"}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(n.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,a.jsx)(n.h3,{id:"contents",children:"Contents"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,a.jsx)(n.h3,{id:"doaction",children:"doAction"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doAction(action) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This method allows user to cancel the task that is currently in progress"}),"\n",(0,a.jsx)(n.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"ondialogcancel",children:"ondialogCancel"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogCancel() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This callback, if defined, is called when the user presses the Close button. If this returns false, then the dialog is not cancelled."}),"\n",(0,a.jsx)(n.h3,{id:"onresizehandler",children:"onresizeHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onresizeHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the page is resized."}),"\n",(0,a.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsxs)(n.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,a.jsx)(n.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]}),"\n",(0,a.jsx)(n.h3,{id:"getjobinfo",children:"GetJobInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetJobInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"actionprocess",children:"ActionProcess"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ActionProcess(pAction As %String, pSysBGTaskId As %String) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This method invokes method to Cancel/Pause/Resume a background job"})]})}function o(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(r,{...e})}):r(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>i,x:()=>c});var a=s(96540);const l={},t=a.createContext(l);function i(e){const n=a.useContext(t);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),a.createElement(t.Provider,{value:n},e.children)}}}]);