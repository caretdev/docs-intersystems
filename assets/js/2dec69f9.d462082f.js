"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[91949],{65287:(e,a,t)=>{t.r(a),t.d(a,{contentTitle:()=>i,default:()=>d,frontMatter:()=>l,toc:()=>c});var n=t(74848),s=t(28453);const l={pagination_prev:null,pagination_next:null},i="%DeepSee.Template.DeepSeeKPIWizard",c=[{value:"Parameters",id:"parameters",level:2},{value:"TEMPLATENAME",id:"templatename",level:3},{value:"TEMPLATETITLE",id:"templatetitle",level:3},{value:"TEMPLATEDESCRIPTION",id:"templatedescription",level:3},{value:"TEMPLATETYPE",id:"templatetype",level:3},{value:"TEMPLATEMODE",id:"templatemode",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"HELPID",id:"helpid",level:3},{value:"Properties",id:"properties",level:2},{value:"ResourcePage",id:"resourcepage",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"templateBody",id:"templatebody",level:3},{value:"Methods",id:"methods",level:2},{value:"%GetDescHTML",id:"getdeschtml",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"onstartHandler",id:"onstarthandler",level:3},{value:"formValidationHandler",id:"formvalidationhandler",level:3},{value:"editItem",id:"edititem",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"%OnTemplateAction",id:"ontemplateaction",level:3},{value:"CreatePackageRS",id:"createpackagers",level:3}];function r(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"deepseetemplatedeepseekpiwizard",children:"%DeepSee.Template.DeepSeeKPIWizard"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %DeepSee.Template.DeepSeeKPIWizard Extends %ZEN.Template.studioTemplate [ System = 4 ]\n"})}),"\n",(0,n.jsxs)(a.p,{children:["Studio Template:",(0,n.jsx)(a.br,{}),"\nCreate a new DeepSee KPI class."]}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"templatename",children:"TEMPLATENAME"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATENAME = "DeepSee KPI";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"templatetitle",children:"TEMPLATETITLE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATETITLE = "DeepSee KPI Wizard";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"templatedescription",children:"TEMPLATEDESCRIPTION"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEDESCRIPTION = "Create a new DeepSee KPI class.";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"templatetype",children:"TEMPLATETYPE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATETYPE = "cls";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"templatemode",children:"TEMPLATEMODE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEMODE = "new";\n'})}),"\n",(0,n.jsx)(a.p,{children:"What type of template."}),"\n",(0,n.jsx)(a.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%DeepSee";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Domain used for localization."}),"\n",(0,n.jsx)(a.h3,{id:"helpid",children:"HELPID"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter HELPID = "D2MODADV_ch_kpi";\n'})}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"resourcepage",children:"ResourcePage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property ResourcePage As %String [ InitialExpression = {..Link("_DeepSee.UI.Dialog.GetResource.cls?CSPSHARE=1")} ];\n'})}),"\n",(0,n.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(a.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,n.jsx)(a.h3,{id:"templatebody",children:"templateBody"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(a.p,{children:"This XML block defines the contents of the body pane of this Studio Template."}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"getdeschtml",children:"%GetDescHTML"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %GetDescHTML(pSeed As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"Provide contents of description component."}),"\n",(0,n.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsx)(a.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This is called when the template is first displayed; This provides a chance to set focus etc."}),"\n",(0,n.jsx)(a.h3,{id:"formvalidationhandler",children:"formValidationHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod formValidationHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Validation handler for form built-into template."}),"\n",(0,n.jsx)(a.h3,{id:"edititem",children:"editItem"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod editItem(what) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This client event is fired when the a popup page launched from this page fires an action."}),"\n",(0,n.jsx)(a.h3,{id:"ontemplateaction",children:"%OnTemplateAction"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnTemplateAction() As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"This method is called when the template is complete. Any output to the principal device is returned to the Studio."}),"\n",(0,n.jsx)(a.h3,{id:"createpackagers",children:"CreatePackageRS"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method CreatePackageRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet\n"})}),"\n",(0,n.jsx)(a.p,{children:"Create the result set used by the Package dataCombo."})]})}function d(e={}){const{wrapper:a}={...(0,s.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(r,{...e})}):r(e)}},28453:(e,a,t)=>{t.d(a,{R:()=>i,x:()=>c});var n=t(96540);const s={},l=n.createContext(s);function i(e){const a=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function c(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),n.createElement(l.Provider,{value:a},e.children)}}}]);