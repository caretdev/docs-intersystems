"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[12052],{81321:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>t,default:()=>d,frontMatter:()=>i,toc:()=>r});var l=s(74848),n=s(28453);const i={pagination_prev:null,pagination_next:null},t="%CSP.UI.Portal.Dialog.RemoteDatabase",r=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"AUTONS",id:"autons",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"HELPID",id:"helpid",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"Properties",id:"properties",level:2},{value:"PID",id:"pid",level:3},{value:"SelectedServer",id:"selectedserver",level:3},{value:"SelectedServerNotNormal",id:"selectedservernotnormal",level:3},{value:"MsgDisabled",id:"msgdisabled",level:3},{value:"MsgNotConnected",id:"msgnotconnected",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"onstartHandler",id:"onstarthandler",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"onresizeHandler",id:"onresizehandler",level:3},{value:"changeServer",id:"changeserver",level:3},{value:"disableDatabaseSelect",id:"disabledatabaseselect",level:3},{value:"showServerWarning",id:"showserverwarning",level:3},{value:"changeDirectory",id:"changedirectory",level:3},{value:"changeSelectList",id:"changeselectlist",level:3},{value:"validate",id:"validate",level:3},{value:"doSave",id:"dosave",level:3},{value:"SaveData",id:"savedata",level:3},{value:"CheckDBName",id:"checkdbname",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3}];function c(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(a.header,{children:(0,l.jsx)(a.h1,{id:"cspuiportaldialogremotedatabase",children:"%CSP.UI.Portal.Dialog.RemoteDatabase"})}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Dialog.RemoteDatabase Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,l.jsx)(a.p,{children:"New Remote Database Dialog for Management Portal"}),"\n",(0,l.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(a.h3,{id:"application",children:"APPLICATION"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,l.jsx)(a.p,{children:"Class name of application this page belongs to."}),"\n",(0,l.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "RemoteDatabase";\n'})}),"\n",(0,l.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,l.jsx)(a.h3,{id:"autons",children:"AUTONS"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,l.jsx)(a.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,l.jsx)(a.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,l.jsx)(a.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE = "Namespace";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,l.jsx)(a.p,{children:"User must hold at least operator privilege to use this dialog."}),"\n",(0,l.jsx)(a.h3,{id:"helpid",children:"HELPID"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter HELPID = "GSA_config_databases_remote";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Dialog.RemoteDatabase.zen";\n'})}),"\n",(0,l.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(a.h3,{id:"pid",children:"PID"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property PID As %String(ZENURL = "PID");\n'})}),"\n",(0,l.jsx)(a.p,{children:"Database for edit. Null if adding new database."}),"\n",(0,l.jsx)(a.h3,{id:"selectedserver",children:"SelectedServer"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Property SelectedServer As %String;\n"})}),"\n",(0,l.jsx)(a.h3,{id:"selectedservernotnormal",children:"SelectedServerNotNormal"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Property SelectedServerNotNormal As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(a.h3,{id:"msgdisabled",children:"MsgDisabled"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property MsgDisabled As %String [ InitialExpression = {$$$Text("The selected server connection is disabled.")} ];\n'})}),"\n",(0,l.jsx)(a.h3,{id:"msgnotconnected",children:"MsgNotConnected"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property MsgNotConnected As %String [ InitialExpression = {$$$Text("The selected server cannot be reached.")} ];\n'})}),"\n",(0,l.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(a.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,l.jsx)(a.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(a.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,l.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(a.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"This is called when the template is first displayed; This provides a chance to set focus etc."}),"\n",(0,l.jsx)(a.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,l.jsxs)(a.p,{children:["This callback, if defined, is called when the user presses the OK or Apply action buttons.",(0,l.jsx)(a.br,{}),"\nIf this returns false, then the action is cancelled."]}),"\n",(0,l.jsx)(a.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"onresizehandler",children:"onresizeHandler"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onresizeHandler() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"This client event, if present, is fired when the page is resized."}),"\n",(0,l.jsx)(a.h3,{id:"changeserver",children:"changeServer"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeServer(dataCombo) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"disabledatabaseselect",children:"disableDatabaseSelect"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod disableDatabaseSelect(flag) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"showserverwarning",children:"showServerWarning"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod showServerWarning(flag) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"changedirectory",children:"changeDirectory"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeDirectory(dataCombo) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"changeselectlist",children:"changeSelectList"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeSelectList(radioSet) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"validate",children:"validate"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod validate() As %Boolean [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"dosave",children:"doSave"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"savedata",children:"SaveData"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(PID As %String, pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Call server save method. Subclass may override."}),"\n",(0,l.jsx)(a.h3,{id:"checkdbname",children:"CheckDBName"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod CheckDBName(Name As %String) As %Boolean [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Return 1 if the database name is OK"}),"\n",(0,l.jsx)(a.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,l.jsx)(a.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(a.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,l.jsx)(a.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsxs)(a.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,l.jsx)(a.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]})]})}function d(e={}){const{wrapper:a}={...(0,n.R)(),...e.components};return a?(0,l.jsx)(a,{...e,children:(0,l.jsx)(c,{...e})}):c(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>t,x:()=>r});var l=s(96540);const n={},i=l.createContext(n);function t(e){const a=l.useContext(i);return l.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function r(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:t(e.components),l.createElement(i.Provider,{value:a},e.children)}}}]);