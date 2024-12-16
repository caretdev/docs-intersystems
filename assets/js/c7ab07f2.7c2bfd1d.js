"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[53547],{95381:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>t,default:()=>d,frontMatter:()=>i,toc:()=>c});var n=s(74848),l=s(28453);const i={pagination_prev:null,pagination_next:null},t="%CSP.UI.Portal.Dialog.SQLView",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"isNew",id:"isnew",level:3},{value:"SCHEMA",id:"schema",level:3},{value:"VIEWNAME",id:"viewname",level:3},{value:"BuilderPage",id:"builderpage",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"showNewSchema",id:"shownewschema",level:3},{value:"doQueryBuilder",id:"doquerybuilder",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"validate",id:"validate",level:3},{value:"doSave",id:"dosave",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"DrawPageTitle",id:"drawpagetitle",level:3},{value:"SaveData",id:"savedata",level:3},{value:"ListSchemas",id:"listschemas",level:3}];function r(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"cspuiportaldialogsqlview",children:"%CSP.UI.Portal.Dialog.SQLView"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Dialog.SQLView Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,n.jsx)(a.p,{children:"Edit SQL View for Management Portal"}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"application",children:"APPLICATION"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Class name of application this page belongs to."}),"\n",(0,n.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.Dialog.SQLView.zen";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "SQLViewEdit";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,n.jsx)(a.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(a.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,n.jsx)(a.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Development";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Security requirement"}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "NAMESPACE");\n'})}),"\n",(0,n.jsx)(a.h3,{id:"isnew",children:"isNew"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property isNew As %ZEN.Datatype.string(ZENURL = "isNew");\n'})}),"\n",(0,n.jsx)(a.p,{children:"Indicate whether this is to create or edit view."}),"\n",(0,n.jsx)(a.h3,{id:"schema",children:"SCHEMA"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property SCHEMA As %ZEN.Datatype.string(ZENURL = "SCHEMA");\n'})}),"\n",(0,n.jsx)(a.p,{children:"Schema name, may or may not be available."}),"\n",(0,n.jsx)(a.h3,{id:"viewname",children:"VIEWNAME"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property VIEWNAME As %ZEN.Datatype.string(ZENURL = "VIEWNAME");\n'})}),"\n",(0,n.jsx)(a.p,{children:"When editing, this is passed in."}),"\n",(0,n.jsx)(a.h3,{id:"builderpage",children:"BuilderPage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property BuilderPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/exp/%25CSP.UI.SQL.QueryBuilderWindow.cls",,1)} ];\n'})}),"\n",(0,n.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(a.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,n.jsx)(a.h3,{id:"contents",children:"Contents"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(a.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(a.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"shownewschema",children:"showNewSchema"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod showNewSchema() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"doquerybuilder",children:"doQueryBuilder"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doQueryBuilder() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,n.jsx)(a.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,n.jsx)(a.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"validate",children:"validate"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod validate() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"If creating a new view, make sure that the view name is not empty."}),"\n",(0,n.jsx)(a.h3,{id:"dosave",children:"doSave"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(a.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsxs)(a.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,n.jsx)(a.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]}),"\n",(0,n.jsx)(a.h3,{id:"drawpagetitle",children:"DrawPageTitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DrawPageTitle(pSeed As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.h3,{id:"savedata",children:"SaveData"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(isNew, Schema, ViewName, ViewText, CheckOption, GrantPublic) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"VIEWNAME, Schema, ViewName, ViewText, CheckOption, ReadOnly"}),"\n",(0,n.jsx)(a.h3,{id:"listschemas",children:"ListSchemas"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method ListSchemas(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean\n"})}),"\n",(0,n.jsx)(a.p,{children:"Method for executing the schemas query."})]})}function d(e={}){const{wrapper:a}={...(0,l.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(r,{...e})}):r(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>t,x:()=>c});var n=s(96540);const l={},i=n.createContext(l);function t(e){const a=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function c(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:t(e.components),n.createElement(i.Provider,{value:a},e.children)}}}]);