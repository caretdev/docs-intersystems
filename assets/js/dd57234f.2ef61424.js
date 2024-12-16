"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[11764],{15071:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>o,frontMatter:()=>l,toc:()=>r});var t=n(74848),a=n(28453);const l={pagination_prev:null,pagination_next:null},i="%DeepSee.UI.Dialog.GetProperties",r=[{value:"Parameters",id:"parameters",level:2},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"cubeName",id:"cubename",level:3},{value:"ELEMENT",id:"element",level:3},{value:"Expression",id:"expression",level:3},{value:"WHAT",id:"what",level:3},{value:"dataSource",id:"datasource",level:3},{value:"itemNumber",id:"itemnumber",level:3},{value:"msgHasEmpty",id:"msghasempty",level:3},{value:"lblProperty",id:"lblproperty",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"transformToSQLExpression",id:"transformtosqlexpression",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"ondialogStart",id:"ondialogstart",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"GetDataSourceInfo",id:"getdatasourceinfo",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"deepseeuidialoggetproperties",children:"%DeepSee.UI.Dialog.GetProperties"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.Dialog.GetProperties Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["This dialog lets the user add or edit a list for definition.",(0,t.jsx)(s.br,{}),"\nAn existing list (delimited by comma) may be passed in."]}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"cubename",children:"cubeName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");\n'})}),"\n",(0,t.jsx)(s.p,{children:"Cube name."}),"\n",(0,t.jsx)(s.h3,{id:"element",children:"ELEMENT"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property ELEMENT As %ZEN.Datatype.string(ZENURL = "ELEMENT");\n'})}),"\n",(0,t.jsx)(s.h3,{id:"expression",children:"Expression"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property Expression As %ZEN.Datatype.string(ZENURL = "VALUE");\n'})}),"\n",(0,t.jsx)(s.h3,{id:"what",children:"WHAT"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property WHAT As %ZEN.Datatype.string(ZENURL = "WHAT");\n'})}),"\n",(0,t.jsx)(s.h3,{id:"datasource",children:"dataSource"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property dataSource As %ZEN.Datatype.string(ZENURL = "DATASOURCE");\n'})}),"\n",(0,t.jsx)(s.h3,{id:"itemnumber",children:"itemNumber"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property itemNumber As %ZEN.Datatype.integer [ InitialExpression = "1" ];\n'})}),"\n",(0,t.jsx)(s.h3,{id:"msghasempty",children:"msgHasEmpty"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgHasEmpty As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("There is at least one empty field. Proceed?")} ];\n'})}),"\n",(0,t.jsx)(s.h3,{id:"lblproperty",children:"lblProperty"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property lblProperty As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Enter a data source Property:")} ];\n'})}),"\n",(0,t.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(s.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"Contents of the dialog body."}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,t.jsx)(s.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,t.jsx)(s.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"transformtosqlexpression",children:"transformToSQLExpression"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod transformToSQLExpression(expr) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,t.jsx)(s.h3,{id:"ondialogstart",children:"ondialogStart"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogStart() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback, if defined, is called when the dialog page is loaded."}),"\n",(0,t.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getdatasourceinfo",children:"GetDataSourceInfo"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDataSourceInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Provide contents of the data source tree."})]})}function o(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>r});var t=n(96540);const a={},l=t.createContext(a);function i(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);