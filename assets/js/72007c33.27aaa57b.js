"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[7180],{15569:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>r,default:()=>d,frontMatter:()=>s,toc:()=>c});var a=n(74848),l=n(28453);const s={pagination_prev:null,pagination_next:null},r="%ZEN.Template.ZENElementInspector",c=[{value:"Parameters",id:"parameters",level:2},{value:"TEMPLATENAME",id:"templatename",level:3},{value:"TEMPLATETITLE",id:"templatetitle",level:3},{value:"TEMPLATEDESCRIPTION",id:"templatedescription",level:3},{value:"TEMPLATETYPE",id:"templatetype",level:3},{value:"TEMPLATEMODE",id:"templatemode",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"Properties",id:"properties",level:2},{value:"editLabel",id:"editlabel",level:3},{value:"preText",id:"pretext",level:3},{value:"postText",id:"posttext",level:3},{value:"elName",id:"elname",level:3},{value:"attrs",id:"attrs",level:3},{value:"currElementClass",id:"currelementclass",level:3},{value:"currElementName",id:"currelementname",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"templateBody",id:"templatebody",level:3},{value:"Methods",id:"methods",level:2},{value:"%GetDescHTML",id:"getdeschtml",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"elementChange",id:"elementchange",level:3},{value:"htmlRefreshHandler",id:"htmlrefreshhandler",level:3},{value:"%GetElementHelpHTML",id:"getelementhelphtml",level:3},{value:"tabChange",id:"tabchange",level:3},{value:"drawPropCell",id:"drawpropcell",level:3},{value:"showValueEditor",id:"showvalueeditor",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"GetElementInfo",id:"getelementinfo",level:3},{value:"computeGridValue",id:"computegridvalue",level:3},{value:"formValidationHandler",id:"formvalidationhandler",level:3},{value:"hasMultiplePages",id:"hasmultiplepages",level:3},{value:"canGoNext",id:"cangonext",level:3},{value:"canGoBack",id:"cangoback",level:3},{value:"nextPage",id:"nextpage",level:3},{value:"previousPage",id:"previouspage",level:3},{value:"onstartHandler",id:"onstarthandler",level:3},{value:"%OnTemplateAction",id:"ontemplateaction",level:3},{value:"CreateElementRS",id:"createelementrs",level:3}];function i(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"zentemplatezenelementinspector",children:"%ZEN.Template.ZENElementInspector"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.Template.ZENElementInspector Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Studio Template:",(0,a.jsx)(t.br,{}),"\nInsert a new ZEN Element within an XData definition."]}),"\n",(0,a.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(t.h3,{id:"templatename",children:"TEMPLATENAME"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter TEMPLATENAME = "Zen Element Wizard";\n'})}),"\n",(0,a.jsx)(t.h3,{id:"templatetitle",children:"TEMPLATETITLE"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter TEMPLATETITLE = "Zen Element Wizard";\n'})}),"\n",(0,a.jsx)(t.h3,{id:"templatedescription",children:"TEMPLATEDESCRIPTION"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEDESCRIPTION = "Inserts a Zen XML element within a Contents document.";\n'})}),"\n",(0,a.jsx)(t.h3,{id:"templatetype",children:"TEMPLATETYPE"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter TEMPLATETYPE = "cls";\n'})}),"\n",(0,a.jsx)(t.h3,{id:"templatemode",children:"TEMPLATEMODE"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEMODE = "template";\n'})}),"\n",(0,a.jsx)(t.p,{children:"What type of template."}),"\n",(0,a.jsx)(t.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%ZEN";\n'})}),"\n",(0,a.jsx)(t.p,{children:"Domain used for localization."}),"\n",(0,a.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(t.h3,{id:"editlabel",children:"editLabel"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property editLabel As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Edit...")} ];\n'})}),"\n",(0,a.jsx)(t.p,{children:"Localized label for edit button."}),"\n",(0,a.jsx)(t.h3,{id:"pretext",children:"preText"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property preText As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Portion of selected text *before* the target element."}),"\n",(0,a.jsx)(t.h3,{id:"posttext",children:"postText"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property postText As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Portion of selected text *after* the target element."}),"\n",(0,a.jsx)(t.h3,{id:"elname",children:"elName"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property elName As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Name of the target element from selectedText."}),"\n",(0,a.jsx)(t.h3,{id:"attrs",children:"attrs"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property attrs As array Of %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Array of attributes and values from the target element."}),"\n",(0,a.jsx)(t.h3,{id:"currelementclass",children:"currElementClass"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property currElementClass As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Class name of selected element."}),"\n",(0,a.jsx)(t.h3,{id:"currelementname",children:"currElementName"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property currElementName As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Name of selected element."}),"\n",(0,a.jsx)(t.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(t.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(t.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,a.jsx)(t.h3,{id:"templatebody",children:"templateBody"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(t.p,{children:"This XML block defines the contents of the body pane of this Studio Template."}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"getdeschtml",children:"%GetDescHTML"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetDescHTML(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Provide contents of description component."}),"\n",(0,a.jsx)(t.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"elementchange",children:"elementChange"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod elementChange(cb) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Notification that the element combo has changed."}),"\n",(0,a.jsx)(t.h3,{id:"htmlrefreshhandler",children:"htmlRefreshHandler"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod htmlRefreshHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"htmlRefreshHandler This is called when the HTML help component is refreshed from the server."}),"\n",(0,a.jsx)(t.h3,{id:"getelementhelphtml",children:"%GetElementHelpHTML"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Method %GetElementHelpHTML(pSeed As %String = "") As %Status\n'})}),"\n",(0,a.jsx)(t.p,{children:"Provide contents of element help component."}),"\n",(0,a.jsx)(t.h3,{id:"tabchange",children:"tabChange"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod tabChange(tabGroup) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Notification that a new tab was selected."}),"\n",(0,a.jsx)(t.h3,{id:"drawpropcell",children:"drawPropCell"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod drawPropCell(grid, data) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"called when cell is about to be drawn in dynaGrid"}),"\n",(0,a.jsx)(t.h3,{id:"showvalueeditor",children:"showValueEditor"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod showValueEditor(propNo) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Launch property editor. propNo is index of property in dataSet."}),"\n",(0,a.jsx)(t.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,a.jsx)(t.h3,{id:"getelementinfo",children:"GetElementInfo"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetElementInfo(pClass As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return csv-list of properties for the given element."}),"\n",(0,a.jsx)(t.h3,{id:"computegridvalue",children:"computeGridValue"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod computeGridValue(grid) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Convert the value within the property grid to something we can submit!"}),"\n",(0,a.jsx)(t.h3,{id:"formvalidationhandler",children:"formValidationHandler"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod formValidationHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Validation handler for form built-into template."}),"\n",(0,a.jsx)(t.h3,{id:"hasmultiplepages",children:"hasMultiplePages"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod hasMultiplePages() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"cangonext",children:"canGoNext"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod canGoNext() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return true if this template can go to the next page (i.e., enable the Next button)."}),"\n",(0,a.jsx)(t.h3,{id:"cangoback",children:"canGoBack"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod canGoBack() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return true if this template can go to the previous page (i.e., enable the Back button)."}),"\n",(0,a.jsx)(t.h3,{id:"nextpage",children:"nextPage"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod nextPage() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Go to the next page of the template (if there is one)."}),"\n",(0,a.jsx)(t.h3,{id:"previouspage",children:"previousPage"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod previousPage() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Go to the previous page of the template (if there is one)."}),"\n",(0,a.jsx)(t.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This is called when the template is first displayed; This provides a chance to set focus etc."}),"\n",(0,a.jsx)(t.h3,{id:"ontemplateaction",children:"%OnTemplateAction"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnTemplateAction() As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method is called when the template is complete. Any output to the principal device is returned to the Studio."}),"\n",(0,a.jsx)(t.h3,{id:"createelementrs",children:"CreateElementRS"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method CreateElementRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet\n"})}),"\n",(0,a.jsx)(t.p,{children:"Create the result set used by the Element dataCombo."})]})}function d(e={}){const{wrapper:t}={...(0,l.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(i,{...e})}):i(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>r,x:()=>c});var a=n(96540);const l={},s=a.createContext(l);function r(e){const t=a.useContext(s);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),a.createElement(s.Provider,{value:t},e.children)}}}]);