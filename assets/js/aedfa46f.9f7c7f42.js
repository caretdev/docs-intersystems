"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[37128],{10058:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>d,frontMatter:()=>s,toc:()=>r});var a=n(74848),l=n(28453);const s={pagination_prev:null,pagination_next:null},i="%ZEN.Dialog.componentValueEditor",r=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"propertyName",id:"propertyname",level:3},{value:"className",id:"classname",level:3},{value:"type",id:"type",level:3},{value:"value",id:"value",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetDescHTML",id:"getdeschtml",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"ondialogStart",id:"ondialogstart",level:3},{value:"updateSample",id:"updatesample",level:3},{value:"editCSSValue",id:"editcssvalue",level:3},{value:"onPopupAction",id:"onpopupaction",level:3}];function c(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"zendialogcomponentvalueeditor",children:"%ZEN.Dialog.componentValueEditor"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.Dialog.componentValueEditor Extends standardDialog [ Deprecated, System = 4 ]\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Specialized page that displays an editor for a given component property.",(0,a.jsx)(t.br,{}),"\nThis is used by ZEN utilities."]}),"\n",(0,a.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(t.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%ZEN";\n'})}),"\n",(0,a.jsx)(t.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 1;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Show Apply button."}),"\n",(0,a.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(t.h3,{id:"propertyname",children:"propertyName"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property propertyName As %ZEN.Datatype.string(ZENURL = "property");\n'})}),"\n",(0,a.jsx)(t.p,{children:"Name of the property to be edited. Passed in via URL."}),"\n",(0,a.jsx)(t.h3,{id:"classname",children:"className"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property className As %ZEN.Datatype.string(ZENURL = "className");\n'})}),"\n",(0,a.jsx)(t.p,{children:"Name of the class that contains the property to be edited. Passed in via URL."}),"\n",(0,a.jsx)(t.h3,{id:"type",children:"type"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property type As %ZEN.Datatype.string(ZENURL = "type");\n'})}),"\n",(0,a.jsx)(t.p,{children:"Type of the property to be edited. Passed in via URL."}),"\n",(0,a.jsx)(t.h3,{id:"value",children:"value"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property value As %ZEN.Datatype.string(ZENURL = "value");\n'})}),"\n",(0,a.jsx)(t.p,{children:"Current value of the property to be edited. Passed in via URL."}),"\n",(0,a.jsx)(t.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(t.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(t.p,{children:"example of customized style sheet"}),"\n",(0,a.jsx)(t.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(t.p,{children:"Contents of the dialog body."}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,a.jsx)(t.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(t.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,a.jsx)(t.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(t.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"getdeschtml",children:"%GetDescHTML"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetDescHTML(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Provide contents of description component."}),"\n",(0,a.jsx)(t.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Get the value to be returned by this dialog."}),"\n",(0,a.jsx)(t.h3,{id:"ondialogstart",children:"ondialogStart"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod ondialogStart() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Called when dialog is loaded."}),"\n",(0,a.jsx)(t.h3,{id:"updatesample",children:"updateSample"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod updateSample() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Update the style for the sample text."}),"\n",(0,a.jsx)(t.h3,{id:"editcssvalue",children:"editCSSValue"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod editCSSValue(context) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:'Launch the CSS Value Editor popup. context is "HTML" or "SVG".'}),"\n",(0,a.jsx)(t.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."})]})}function d(e={}){const{wrapper:t}={...(0,l.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>r});var a=n(96540);const l={},s=a.createContext(l);function i(e){const t=a.useContext(s);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function r(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),a.createElement(s.Provider,{value:t},e.children)}}}]);