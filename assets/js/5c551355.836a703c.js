"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[52067],{56663:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>i,default:()=>o,frontMatter:()=>s,toc:()=>c});var l=t(74848),a=t(28453);const s={pagination_prev:null,pagination_next:null},i="%DeepSee.UI.Dialog.WidgetSaveToTheme",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"theme",id:"theme",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"ondialogStart",id:"ondialogstart",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"changeChoice",id:"changechoice",level:3}];function d(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(n.header,{children:(0,l.jsx)(n.h1,{id:"deepseeuidialogwidgetsavetotheme",children:"%DeepSee.UI.Dialog.WidgetSaveToTheme"})}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.Dialog.WidgetSaveToTheme Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"This dialog lets the user save a theme to save DeepSee widget styles to."}),"\n",(0,l.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(n.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,l.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(n.h3,{id:"theme",children:"theme"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property theme As %ZEN.Datatype.string(ZENURL = "THEME");\n'})}),"\n",(0,l.jsx)(n.p,{children:"Current theme."}),"\n",(0,l.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(n.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(n.p,{children:"Contents of the dialog body."}),"\n",(0,l.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,l.jsx)(n.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(n.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,l.jsx)(n.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(n.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,l.jsx)(n.h3,{id:"ondialogstart",children:"ondialogStart"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogStart() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"This callback, if defined, is called when the dialog page is loaded."}),"\n",(0,l.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsx)(n.h3,{id:"changechoice",children:"changeChoice"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod changeChoice() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Change in radio button."})]})}function o(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,l.jsx)(n,{...e,children:(0,l.jsx)(d,{...e})}):d(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>i,x:()=>c});var l=t(96540);const a={},s=l.createContext(a);function i(e){const n=l.useContext(s);return l.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),l.createElement(s.Provider,{value:n},e.children)}}}]);