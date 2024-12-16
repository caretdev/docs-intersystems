"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[13438],{56346:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>l,toc:()=>r});var t=n(74848),a=n(28453);const l={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.Dialog.ProcessTerminate",r=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"AUTONS",id:"autons",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"PID",id:"pid",level:3},{value:"DISPLAYID",id:"displayid",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"doTerminate",id:"doterminate",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"DrawPageTitle",id:"drawpagetitle",level:3},{value:"StartTerminate",id:"startterminate",level:3},{value:"onstartHandler",id:"onstarthandler",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"cspuiportaldialogprocessterminate",children:"%CSP.UI.Portal.Dialog.ProcessTerminate"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Dialog.ProcessTerminate Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,t.jsx)(s.p,{children:"Process Terminate dialog for Management Portal."}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"application",children:"APPLICATION"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Class name of application this page belongs to."}),"\n",(0,t.jsx)(s.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Dialog.ProcessTerminate.zen";\n'})}),"\n",(0,t.jsx)(s.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Operate:USE";\n'})}),"\n",(0,t.jsx)(s.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "TerminateProcess";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Displayed name of this page."}),"\n",(0,t.jsx)(s.h3,{id:"autons",children:"AUTONS"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,t.jsx)(s.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"pid",children:"PID"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property PID As %String(ZENURL = "PID");\n'})}),"\n",(0,t.jsx)(s.h3,{id:"displayid",children:"DISPLAYID"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property DISPLAYID As %String(ZENURL = "DISPLAYID");\n'})}),"\n",(0,t.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(s.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,t.jsx)(s.h3,{id:"contents",children:"Contents"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(s.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"doterminate",children:"doTerminate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doTerminate() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Use clicked the Terminate button. Process it. If successful, close this dialog and the Process Details page, and then refresh the Process list page."}),"\n",(0,t.jsx)(s.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,t.jsx)(s.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,t.jsx)(s.h3,{id:"drawpagetitle",children:"DrawPageTitle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawPageTitle(pSeed As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"startterminate",children:"StartTerminate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod StartTerminate(PID, DISPLAYID, chkResjob) As %String [ ZenMethod ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Process Termination. If failed, return error message. Otherwise, return 1."}),"\n",(0,t.jsx)(s.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is called when the template is first displayed; This provides a chance to set focus etc."})]})}function d(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>r});var t=n(96540);const a={},l=t.createContext(a);function i(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);