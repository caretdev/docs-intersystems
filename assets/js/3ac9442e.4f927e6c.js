"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[84416],{26726:(e,l,n)=>{n.r(l),n.d(l,{contentTitle:()=>r,default:()=>o,frontMatter:()=>i,toc:()=>t});var a=n(74848),s=n(28453);const i={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.Mirror.Dialog.FailoverRemoveConfig",t=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"IsNotInitialized",id:"isnotinitialized",level:3},{value:"IsPrimary",id:"isprimary",level:3},{value:"DescText1",id:"desctext1",level:3},{value:"DescText2",id:"desctext2",level:3},{value:"RestartRequired",id:"restartrequired",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"ondialogCancel",id:"ondialogcancel",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"doClearFlag",id:"doclearflag",level:3},{value:"doRemove",id:"doremove",level:3},{value:"ClearFlag",id:"clearflag",level:3},{value:"SaveData",id:"savedata",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3}];function c(e){const l={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(l.header,{children:(0,a.jsx)(l.h1,{id:"cspuiportalmirrordialogfailoverremoveconfig",children:"%CSP.UI.Portal.Mirror.Dialog.FailoverRemoveConfig"})}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Mirror.Dialog.FailoverRemoveConfig Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]\n"})}),"\n",(0,a.jsx)(l.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(l.h3,{id:"application",children:"APPLICATION"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,a.jsx)(l.p,{children:"Class name of application this page belongs to."}),"\n",(0,a.jsx)(l.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mirror.Dialog.FailoverRemoveConfig.zen";\n'})}),"\n",(0,a.jsx)(l.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "RemoveConfig";\n'})}),"\n",(0,a.jsx)(l.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(l.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(l.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,a.jsx)(l.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,a.jsx)(l.p,{children:"Security requirement"}),"\n",(0,a.jsx)(l.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(l.h3,{id:"isnotinitialized",children:"IsNotInitialized"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:'Property IsNotInitialized As %Boolean [ InitialExpression = {$SYSTEM.Mirror.GetInfo()["NOTINIT"} ];\n'})}),"\n",(0,a.jsx)(l.h3,{id:"isprimary",children:"IsPrimary"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"Property IsPrimary As %Boolean [ InitialExpression = {$SYSTEM.Mirror.GetInfo()[$$$Primary} ];\n"})}),"\n",(0,a.jsx)(l.h3,{id:"desctext1",children:"DescText1"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:'Property DescText1 As %String [ InitialExpression = {$$$Text("Delete the mirror journal files except files in journal.log")} ];\n'})}),"\n",(0,a.jsx)(l.h3,{id:"desctext2",children:"DescText2"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:'Property DescText2 As %String [ InitialExpression = {$$$Text("Delete the mirror configuration information")} ];\n'})}),"\n",(0,a.jsx)(l.h3,{id:"restartrequired",children:"RestartRequired"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"Property RestartRequired As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(l.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(l.h3,{id:"contents",children:"Contents"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(l.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(l.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,a.jsx)(l.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(l.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(l.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,a.jsx)(l.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(l.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,a.jsx)(l.h3,{id:"ondialogcancel",children:"ondialogCancel"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"ClientMethod ondialogCancel() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(l.p,{children:"This callback, if defined, is called when the user presses the Cancel button. If this returns false, then the dialog is not cancelled."}),"\n",(0,a.jsx)(l.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(l.h3,{id:"doclearflag",children:"doClearFlag"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"ClientMethod doClearFlag() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(l.h3,{id:"doremove",children:"doRemove"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"ClientMethod doRemove() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(l.h3,{id:"clearflag",children:"ClearFlag"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"ClassMethod ClearFlag() As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(l.h3,{id:"savedata",children:"SaveData"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(l.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,a.jsx)(l.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(l.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,a.jsx)(l.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(l.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(l.pre,{children:(0,a.jsx)(l.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})})]})}function o(e={}){const{wrapper:l}={...(0,s.R)(),...e.components};return l?(0,a.jsx)(l,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,l,n)=>{n.d(l,{R:()=>r,x:()=>t});var a=n(96540);const s={},i=a.createContext(s);function r(e){const l=a.useContext(i);return a.useMemo((function(){return"function"==typeof e?e(l):{...l,...e}}),[l,e])}function t(e){let l;return l=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:r(e.components),a.createElement(i.Provider,{value:l},e.children)}}}]);