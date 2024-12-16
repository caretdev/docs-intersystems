"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[11901],{17098:(e,a,n)=>{n.r(a),n.d(a,{contentTitle:()=>r,default:()=>o,frontMatter:()=>t,toc:()=>i});var l=n(74848),s=n(28453);const t={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.Dialog.SQLParametersPrompt",i=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"PromptCount",id:"promptcount",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"DrawQuery",id:"drawquery",level:3},{value:"SaveParameterValues",id:"saveparametervalues",level:3}];function c(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(a.header,{children:(0,l.jsx)(a.h1,{id:"cspuiportaldialogsqlparametersprompt",children:"%CSP.UI.Portal.Dialog.SQLParametersPrompt"})}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Dialog.SQLParametersPrompt Extends %CSP.Portal.standardDialog [ System = 4 ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"This dialog prompts for user to enter dynamic SQL statement's parameter values. The calling page should pass in the number of parameters need to be prompted."}),"\n",(0,l.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(a.h3,{id:"application",children:"APPLICATION"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,l.jsx)(a.p,{children:"Class name of application this page belongs to."}),"\n",(0,l.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.Dialog.SQLParametersPrompt.zen";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Development:USE";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "SQLParametersPrompt";\n'})}),"\n",(0,l.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,l.jsx)(a.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,l.jsx)(a.p,{children:"Domain used for localization."}),"\n",(0,l.jsx)(a.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,l.jsx)(a.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,l.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(a.h3,{id:"promptcount",children:"PromptCount"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property PromptCount As %ZEN.Datatype.string(ZENURL = "PromptCount");\n'})}),"\n",(0,l.jsx)(a.p,{children:"Total number of input prompt we should generate"}),"\n",(0,l.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(a.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,l.jsx)(a.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(a.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,l.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(a.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,l.jsx)(a.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(a.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,l.jsx)(a.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,l.jsx)(a.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,l.jsx)(a.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsxs)(a.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,l.jsx)(a.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]}),"\n",(0,l.jsx)(a.h3,{id:"drawquery",children:"DrawQuery"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawQuery(pSeed) As %Status\n"})}),"\n",(0,l.jsx)(a.h3,{id:"saveparametervalues",children:"SaveParameterValues"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveParameterValues(pPromptCount, pValues) As %String [ ZenMethod ]\n"})})]})}function o(e={}){const{wrapper:a}={...(0,s.R)(),...e.components};return a?(0,l.jsx)(a,{...e,children:(0,l.jsx)(c,{...e})}):c(e)}},28453:(e,a,n)=>{n.d(a,{R:()=>r,x:()=>i});var l=n(96540);const s={},t=l.createContext(s);function r(e){const a=l.useContext(t);return l.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function i(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:r(e.components),l.createElement(t.Provider,{value:a},e.children)}}}]);