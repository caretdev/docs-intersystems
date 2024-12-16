"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[85619],{53482:(e,n,l)=>{l.r(n),l.d(n,{contentTitle:()=>a,default:()=>d,frontMatter:()=>s,toc:()=>r});var t=l(74848),i=l(28453);const s={pagination_prev:null,pagination_next:null},a="%DeepSee.UI.Dialog.GetDictionaryList",r=[{value:"Parameters",id:"parameters",level:2},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"cubeName",id:"cubename",level:3},{value:"ELEMENT",id:"element",level:3},{value:"VALUE",id:"value",level:3},{value:"WHAT",id:"what",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"ondialogStart",id:"ondialogstart",level:3},{value:"arrowClick",id:"arrowclick",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"deepseeuidialoggetdictionarylist",children:"%DeepSee.UI.Dialog.GetDictionaryList"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.Dialog.GetDictionaryList Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["This dialog lets the user select multiples from a list of definition, primarily used to select iKnow Dictionaries.",(0,t.jsx)(n.br,{}),"\nAn existing list (delimited by comma) may be passed in."]}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"cubename",children:"cubeName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");\n'})}),"\n",(0,t.jsx)(n.p,{children:"Cube name."}),"\n",(0,t.jsx)(n.h3,{id:"element",children:"ELEMENT"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property ELEMENT As %ZEN.Datatype.string(ZENURL = "ELEMENT");\n'})}),"\n",(0,t.jsx)(n.h3,{id:"value",children:"VALUE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property VALUE As %ZEN.Datatype.string(ZENURL = "VALUE");\n'})}),"\n",(0,t.jsx)(n.h3,{id:"what",children:"WHAT"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property WHAT As %ZEN.Datatype.string(ZENURL = "WHAT");\n'})}),"\n",(0,t.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(n.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(n.p,{children:"Contents of the dialog body."}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,t.jsx)(n.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,t.jsx)(n.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,t.jsx)(n.h3,{id:"ondialogstart",children:"ondialogStart"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogStart() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"This callback, if defined, is called when the dialog page is loaded."}),"\n",(0,t.jsx)(n.h3,{id:"arrowclick",children:"arrowClick"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod arrowClick(from, to) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"------------------ Utility Methods for Moving between lstboxes ------------------ /// Moving a list item from one box to the next, then remove it from the original box ///"}),"\n",(0,t.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})})]})}function d(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,n,l)=>{l.d(n,{R:()=>a,x:()=>r});var t=l(96540);const i={},s=t.createContext(i);function a(e){const n=t.useContext(s);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),t.createElement(s.Provider,{value:n},e.children)}}}]);