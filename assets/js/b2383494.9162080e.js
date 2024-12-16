"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[73828],{62429:(e,a,n)=>{n.r(a),n.d(a,{contentTitle:()=>i,default:()=>d,frontMatter:()=>s,toc:()=>c});var t=n(74848),l=n(28453);const s={pagination_prev:null,pagination_next:null},i="%ZEN.Template.ZENChartWizard",c=[{value:"Parameters",id:"parameters",level:2},{value:"TEMPLATENAME",id:"templatename",level:3},{value:"TEMPLATETITLE",id:"templatetitle",level:3},{value:"TEMPLATEDESCRIPTION",id:"templatedescription",level:3},{value:"TEMPLATETYPE",id:"templatetype",level:3},{value:"TEMPLATEMODE",id:"templatemode",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"HELPID",id:"helpid",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"templateBody",id:"templatebody",level:3},{value:"Methods",id:"methods",level:2},{value:"%GetDescHTML",id:"getdeschtml",level:3},{value:"%GetDescHTML2",id:"getdeschtml2",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"onlayoutHandler",id:"onlayouthandler",level:3},{value:"chartTypeChange",id:"charttypechange",level:3},{value:"changeChart",id:"changechart",level:3},{value:"tabChange",id:"tabchange",level:3},{value:"formValidationHandler",id:"formvalidationhandler",level:3},{value:"hasMultiplePages",id:"hasmultiplepages",level:3},{value:"canGoNext",id:"cangonext",level:3},{value:"canGoBack",id:"cangoback",level:3},{value:"nextPage",id:"nextpage",level:3},{value:"previousPage",id:"previouspage",level:3},{value:"getChartData",id:"getchartdata",level:3},{value:"inspectElement",id:"inspectelement",level:3},{value:"editProperty",id:"editproperty",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"onstartHandler",id:"onstarthandler",level:3},{value:"onfinishHandler",id:"onfinishhandler",level:3},{value:"SerializeChart",id:"serializechart",level:3},{value:"%OnTemplateAction",id:"ontemplateaction",level:3}];function r(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(a.header,{children:(0,t.jsx)(a.h1,{id:"zentemplatezenchartwizard",children:"%ZEN.Template.ZENChartWizard"})}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Class %ZEN.Template.ZENChartWizard Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]\n"})}),"\n",(0,t.jsxs)(a.p,{children:["Studio Template:",(0,t.jsx)(a.br,{}),"\nInserts a new chart definition within an XData definition."]}),"\n",(0,t.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(a.h3,{id:"templatename",children:"TEMPLATENAME"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATENAME = "Zen Chart Wizard";\n'})}),"\n",(0,t.jsx)(a.h3,{id:"templatetitle",children:"TEMPLATETITLE"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATETITLE = "Zen Chart Wizard";\n'})}),"\n",(0,t.jsx)(a.h3,{id:"templatedescription",children:"TEMPLATEDESCRIPTION"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEDESCRIPTION = "Inserts a Zen chart definition within a Contents document.";\n'})}),"\n",(0,t.jsx)(a.h3,{id:"templatetype",children:"TEMPLATETYPE"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATETYPE = "cls";\n'})}),"\n",(0,t.jsx)(a.h3,{id:"templatemode",children:"TEMPLATEMODE"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEMODE = "template";\n'})}),"\n",(0,t.jsx)(a.p,{children:"What type of template."}),"\n",(0,t.jsx)(a.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%ZEN";\n'})}),"\n",(0,t.jsx)(a.p,{children:"Domain used for localization."}),"\n",(0,t.jsx)(a.h3,{id:"helpid",children:"HELPID"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter HELPID = "GZEN_chart_wizard";\n'})}),"\n",(0,t.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(a.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,t.jsx)(a.h3,{id:"templatebody",children:"templateBody"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(a.p,{children:"This XML block defines the contents of the body pane of this Studio Template."}),"\n",(0,t.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(a.h3,{id:"getdeschtml",children:"%GetDescHTML"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Method %GetDescHTML(pSeed As %String) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"Provide contents of description component."}),"\n",(0,t.jsx)(a.h3,{id:"getdeschtml2",children:"%GetDescHTML2"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Method %GetDescHTML2(pSeed As %String) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"Provide contents of description component."}),"\n",(0,t.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,t.jsx)(a.h3,{id:"onlayouthandler",children:"onlayoutHandler"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onlayoutHandler(load) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"This client event, if present, is fired when the page is first loaded or whenever it is resized."}),"\n",(0,t.jsx)(a.h3,{id:"charttypechange",children:"chartTypeChange"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod chartTypeChange(cb) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Notification that the chart type has changed."}),"\n",(0,t.jsx)(a.h3,{id:"changechart",children:"changeChart"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeChart(chartType) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Create and display the specified chart type."}),"\n",(0,t.jsx)(a.h3,{id:"tabchange",children:"tabChange"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod tabChange(tabGroup) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Notification that a new tab was selected."}),"\n",(0,t.jsx)(a.h3,{id:"formvalidationhandler",children:"formValidationHandler"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod formValidationHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Validation handler for form built-into template."}),"\n",(0,t.jsx)(a.h3,{id:"hasmultiplepages",children:"hasMultiplePages"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod hasMultiplePages() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.h3,{id:"cangonext",children:"canGoNext"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod canGoNext() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Return true if this template can go to the next page (i.e., enable the Next button)."}),"\n",(0,t.jsx)(a.h3,{id:"cangoback",children:"canGoBack"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod canGoBack() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Return true if this template can go to the previous page (i.e., enable the Back button)."}),"\n",(0,t.jsx)(a.h3,{id:"nextpage",children:"nextPage"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod nextPage() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Go to the next page of the template (if there is one)."}),"\n",(0,t.jsx)(a.h3,{id:"previouspage",children:"previousPage"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod previousPage() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Go to the previous page of the template (if there is one)."}),"\n",(0,t.jsx)(a.h3,{id:"getchartdata",children:"getChartData"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getChartData(series) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Callback to provide random data for chart."}),"\n",(0,t.jsx)(a.h3,{id:"inspectelement",children:"inspectElement"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod inspectElement(name) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Point object inspector to given component."}),"\n",(0,t.jsx)(a.h3,{id:"editproperty",children:"editProperty"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod editProperty() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"User has pressed edit button in the objectInspector."}),"\n",(0,t.jsx)(a.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,t.jsx)(a.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"This is called when the template is first displayed; This provides a chance to set focus etc."}),"\n",(0,t.jsx)(a.h3,{id:"onfinishhandler",children:"onfinishHandler"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onfinishHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"This is called when the template is finished;"}),"\n",(0,t.jsx)(a.h3,{id:"serializechart",children:"SerializeChart"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SerializeChart(pChart As %ZEN.SVGComponent.chart) As %String [ ZenMethod ]\n"})}),"\n",(0,t.jsx)(a.p,{children:"Convert chart to xml representation."}),"\n",(0,t.jsx)(a.h3,{id:"ontemplateaction",children:"%OnTemplateAction"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnTemplateAction() As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method is called when the template is complete. Any output to the principal device is returned to the Studio."})]})}function d(e={}){const{wrapper:a}={...(0,l.R)(),...e.components};return a?(0,t.jsx)(a,{...e,children:(0,t.jsx)(r,{...e})}):r(e)}},28453:(e,a,n)=>{n.d(a,{R:()=>i,x:()=>c});var t=n(96540);const l={},s=t.createContext(l);function i(e){const a=t.useContext(s);return t.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function c(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),t.createElement(s.Provider,{value:a},e.children)}}}]);