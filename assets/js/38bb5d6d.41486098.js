"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[47875],{3905:(e,a,l)=>{l.r(a),l.d(a,{contentTitle:()=>t,default:()=>c,frontMatter:()=>i,toc:()=>d});var n=l(74848),s=l(28453);const i={pagination_prev:null,pagination_next:null},t="%CSP.UI.Portal.Dialog.EscalateLogin",d=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"UserName",id:"username",level:3},{value:"AvailableRoles",id:"availableroles",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"doModified",id:"domodified",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"SaveData",id:"savedata",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3}];function r(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"cspuiportaldialogescalatelogin",children:"%CSP.UI.Portal.Dialog.EscalateLogin"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Dialog.EscalateLogin Extends %CSP.Portal.standardDialog [ System = 4 ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Login Escalation dialog for Management Portal"}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"application",children:"APPLICATION"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Class name of application this page belongs to."}),"\n",(0,n.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "EscalateLogin";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,n.jsx)(a.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Domain used for localization."}),"\n",(0,n.jsx)(a.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(a.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"username",children:"UserName"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property UserName As %ZEN.Datatype.string(MAXLEN = 160) [ InitialExpression = {$Username} ];\n"})}),"\n",(0,n.jsx)(a.h3,{id:"availableroles",children:"AvailableRoles"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property AvailableRoles As %ZEN.Datatype.csv(MAXLEN = "");\n'})}),"\n",(0,n.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(a.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,n.jsx)(a.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(a.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"domodified",children:"doModified"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doModified(control) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(a.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,n.jsx)(a.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,n.jsx)(a.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"savedata",children:"SaveData"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(escalationRole, password) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsxs)(a.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,n.jsx)(a.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]})]})}function c(e={}){const{wrapper:a}={...(0,s.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(r,{...e})}):r(e)}},28453:(e,a,l)=>{l.d(a,{R:()=>t,x:()=>d});var n=l(96540);const s={},i=n.createContext(s);function t(e){const a=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function d(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:t(e.components),n.createElement(i.Provider,{value:a},e.children)}}}]);