"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[56447],{11131:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>l,toc:()=>r});var n=a(74848),t=a(28453);const l={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.Dialog.Broadcast",r=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"onstartHandler",id:"onstarthandler",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"BroadcastMsg",id:"broadcastmsg",level:3},{value:"doBroadcast",id:"dobroadcast",level:3},{value:"DrawPageTitle",id:"drawpagetitle",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"cspuiportaldialogbroadcast",children:"%CSP.UI.Portal.Dialog.Broadcast"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Dialog.Broadcast Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Broadcast message to principal devices of processes."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"application",children:"APPLICATION"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Class name of application this page belongs to."}),"\n",(0,n.jsx)(s.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Dialog.Broadcast.zen";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Operate:USE";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Broadcast Message";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Displayed name of this page."}),"\n",(0,n.jsx)(s.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(s.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,n.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(s.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,n.jsx)(s.h3,{id:"contents",children:"Contents"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,n.jsx)(s.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,n.jsx)(s.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]}),"\n",(0,n.jsx)(s.h3,{id:"broadcastmsg",children:"BroadcastMsg"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod BroadcastMsg(Msg As %String, selectedRows As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Send message"}),"\n",(0,n.jsx)(s.h3,{id:"dobroadcast",children:"doBroadcast"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doBroadcast() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"drawpagetitle",children:"DrawPageTitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawPageTitle(pSeed As %String) As %Status\n"})})]})}function d(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>i,x:()=>r});var n=a(96540);const t={},l=n.createContext(t);function i(e){const s=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:i(e.components),n.createElement(l.Provider,{value:s},e.children)}}}]);