"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[52110],{46223:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>i,default:()=>c,frontMatter:()=>l,toc:()=>r});var n=s(74848),t=s(28453);const l={pagination_prev:null,pagination_next:null},i="%DeepSee.UI.Dialog.DashboardEditDataSeries",r=[{value:"Parameters",id:"parameters",level:2},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"seriesNumber",id:"seriesnumber",level:3},{value:"chartType",id:"charttype",level:3},{value:"dashboardName",id:"dashboardname",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"ondialogStart",id:"ondialogstart",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3}];function d(e){const a={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"deepseeuidialogdashboardeditdataseries",children:"%DeepSee.UI.Dialog.DashboardEditDataSeries"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.Dialog.DashboardEditDataSeries Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This dialog adds (or edits) a new chart data series definition for a DeepSee dashboard widget."}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"seriesnumber",children:"seriesNumber"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property seriesNumber As %ZEN.Datatype.string(ZENURL = "NUMBER");\n'})}),"\n",(0,n.jsx)(a.p,{children:'Index of series within parent dialog list or "" for new.'}),"\n",(0,n.jsx)(a.h3,{id:"charttype",children:"chartType"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property chartType As %ZEN.Datatype.string(ZENURL = "CHARTTYPE");\n'})}),"\n",(0,n.jsx)(a.p,{children:"Type of chart being displayed."}),"\n",(0,n.jsx)(a.h3,{id:"dashboardname",children:"dashboardName"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");\n'})}),"\n",(0,n.jsx)(a.p,{children:"Dashboard name."}),"\n",(0,n.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(a.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(a.p,{children:"Contents of the dialog body."}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(a.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(a.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,n.jsx)(a.h3,{id:"ondialogstart",children:"ondialogStart"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod ondialogStart() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This callback, if defined, is called when the dialog page is loaded."}),"\n",(0,n.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})})]})}function c(e={}){const{wrapper:a}={...(0,t.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(d,{...e})}):d(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>i,x:()=>r});var n=s(96540);const t={},l=n.createContext(t);function i(e){const a=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function r(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:i(e.components),n.createElement(l.Provider,{value:a},e.children)}}}]);