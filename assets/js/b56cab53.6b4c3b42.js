"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[69336],{74017:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>t,default:()=>d,frontMatter:()=>i,toc:()=>r});var l=n(74848),a=n(28453);const i={pagination_prev:null,pagination_next:null},t="%ZEN.Dialog.errorDialog",r=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"AUTONS",id:"autons",level:3},{value:"dialogTitle",id:"dialogtitle",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"adjustSize",id:"adjustsize",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3}];function o(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(s.header,{children:(0,l.jsx)(s.h1,{id:"zendialogerrordialog",children:"%ZEN.Dialog.errorDialog"})}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Dialog.errorDialog Extends standardDialog [ Deprecated, System = 4 ]\n"})}),"\n",(0,l.jsxs)(s.p,{children:['This is the error dialog page. It displays an error message and a prompt which user can answer Yes or No. If error details are available in %session.Data("Errors","Details") then they are displayed in a listbox.',(0,l.jsx)(s.br,{}),"\nTo use this class:"]}),"\n",(0,l.jsxs)(s.ol,{children:["\n",(0,l.jsx)(s.li,{children:"Set the following before calling this dialog:"}),"\n",(0,l.jsx)(s.li,{children:'%session.Data("Errors","Messages",1) - Message title such as "WARNING".'}),"\n",(0,l.jsx)(s.li,{children:'%session.Data("Errors","Messages",2) - Message line.'}),"\n",(0,l.jsx)(s.li,{children:'%session.Data("Errors","Messages",3) - Prompt such as "Proceed?"'}),"\n"]}),"\n",(0,l.jsxs)(s.p,{children:["Example calling this dialog:",(0,l.jsx)(s.br,{}),"\nzenLaunchPopupWindow('%ZEN.Dialog.errorDialog.cls','errorDialog','resizable,width=780,height=280');"]}),"\n",(0,l.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%ZEN";\n'})}),"\n",(0,l.jsx)(s.h3,{id:"autons",children:"AUTONS"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter AUTONS = 0;\n"})}),"\n",(0,l.jsx)(s.h3,{id:"dialogtitle",children:"dialogTitle"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter dialogTitle = "errorDialog";\n'})}),"\n",(0,l.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(s.h3,{id:"contents",children:"Contents"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(s.p,{children:"Contents of this page:"}),"\n",(0,l.jsx)(s.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(s.p,{children:"Contents of the dialog."}),"\n",(0,l.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsx)(s.p,{children:"Load error message prompts set by the calling class. Load error details. Hide list box if nothing."}),"\n",(0,l.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(s.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(s.h3,{id:"adjustsize",children:"adjustSize"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod adjustSize() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Adjust size and position of components on this page."}),"\n",(0,l.jsx)(s.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,l.jsx)(s.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})})]})}function d(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,l.jsx)(s,{...e,children:(0,l.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>t,x:()=>r});var l=n(96540);const a={},i=l.createContext(a);function t(e){const s=l.useContext(i);return l.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:t(e.components),l.createElement(i.Provider,{value:s},e.children)}}}]);