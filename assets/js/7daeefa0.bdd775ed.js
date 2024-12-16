"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[58702],{97771:(e,a,l)=>{l.r(a),l.d(a,{contentTitle:()=>i,default:()=>d,frontMatter:()=>t,toc:()=>c});var n=l(74848),s=l(28453);const t={pagination_prev:null,pagination_next:null},i="%ZEN.Template.ObjectGatewayWizard.JavaHome",c=[{value:"Parameters",id:"parameters",level:2},{value:"TEMPLATENAME",id:"templatename",level:3},{value:"TEMPLATETITLE",id:"templatetitle",level:3},{value:"TEMPLATEDESCRIPTION",id:"templatedescription",level:3},{value:"PAGETITLE",id:"pagetitle",level:3},{value:"HELPID",id:"helpid",level:3},{value:"Properties",id:"properties",level:2},{value:"lblFile1",id:"lblfile1",level:3},{value:"lblFile2",id:"lblfile2",level:3},{value:"lastTab",id:"lasttab",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"templateBody",id:"templatebody",level:3},{value:"Methods",id:"methods",level:2},{value:"changedFileType",id:"changedfiletype",level:3},{value:"doBrowse",id:"dobrowse",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnTemplateAction",id:"ontemplateaction",level:3},{value:"canGoNext",id:"cangonext",level:3},{value:"canGoBack",id:"cangoback",level:3},{value:"canFinish",id:"canfinish",level:3},{value:"formValidationHandler",id:"formvalidationhandler",level:3},{value:"finishTemplate",id:"finishtemplate",level:3},{value:"onstartHandler",id:"onstarthandler",level:3},{value:"hasMultiplePages",id:"hasmultiplepages",level:3},{value:"nextPage",id:"nextpage",level:3},{value:"loadTable",id:"loadtable",level:3},{value:"previousPage",id:"previouspage",level:3},{value:"hasSelected",id:"hasselected",level:3},{value:"rowChecked",id:"rowchecked",level:3},{value:"SetSelected",id:"setselected",level:3},{value:"FileExists",id:"fileexists",level:3},{value:"CheckGateway",id:"checkgateway",level:3},{value:"IsEnabled",id:"isenabled",level:3}];function r(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"zentemplateobjectgatewaywizardjavahome",children:"%ZEN.Template.ObjectGatewayWizard.JavaHome"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %ZEN.Template.ObjectGatewayWizard.JavaHome Extends %ZEN.Template.ObjectGatewayWizard.Template [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsxs)(a.p,{children:["Studio Template.",(0,n.jsx)(a.br,{}),"\nWizard to help you import a class file or a jar file from Java and create a set of corresponding classes."]}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"templatename",children:"TEMPLATENAME"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATENAME = "Java Gateway Wizard";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"templatetitle",children:"TEMPLATETITLE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATETITLE = "Java Gateway Wizard";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"templatedescription",children:"TEMPLATEDESCRIPTION"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEDESCRIPTION = "Import a class file or a jar file from Java.";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"pagetitle",children:"PAGETITLE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGETITLE = "Java Gateway Wizard";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Display title of this page"}),"\n",(0,n.jsx)(a.h3,{id:"helpid",children:"HELPID"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter HELPID = "EJVG_instructions_wizard";\n'})}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"lblfile1",children:"lblFile1"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property lblFile1 As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Enter the path and name of the Jar file:")} ];\n'})}),"\n",(0,n.jsx)(a.h3,{id:"lblfile2",children:"lblFile2"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property lblFile2 As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Enter a fully qualified class name:")} ];\n'})}),"\n",(0,n.jsx)(a.h3,{id:"lasttab",children:"lastTab"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property lastTab As %ZEN.Datatype.string;\n"})}),"\n",(0,n.jsx)(a.p,{children:"Tab number when Finish is clicked. This dictate which tab to return to when Back is clicked from the Done page."}),"\n",(0,n.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(a.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,n.jsx)(a.h3,{id:"templatebody",children:"templateBody"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(a.p,{children:"This XML block defines the contents of the body pane of this Studio Template."}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"changedfiletype",children:"changedFileType"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changedFileType(thisObj) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"User changed file type. Change label."}),"\n",(0,n.jsx)(a.h3,{id:"dobrowse",children:"doBrowse"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doBrowse() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Launching a file selector window."}),"\n",(0,n.jsx)(a.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:'Returning from file select OR qualifers dialog and setting the value into the appropriate field. The id of the field that needs to be updated is saved in "dialogClicked".'}),"\n",(0,n.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsx)(a.h3,{id:"ontemplateaction",children:"%OnTemplateAction"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnTemplateAction() As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"This method is called when the template is complete. It adds classes to the project, allows classes to be added to source control, and cleans up some session data"}),"\n",(0,n.jsx)(a.h3,{id:"cangonext",children:"canGoNext"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod canGoNext() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Return true if this template can go to the next page (i.e., enable the Next button)."}),"\n",(0,n.jsx)(a.h3,{id:"cangoback",children:"canGoBack"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod canGoBack() [ Language = javascript ]\n"})}),"\n",(0,n.jsxs)(a.p,{children:["Return true if this template can go to the previous page (i.e., enable the Back button).",(0,n.jsx)(a.br,{}),"\nThis is implemented by subclasses."]}),"\n",(0,n.jsx)(a.h3,{id:"canfinish",children:"canFinish"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod canFinish() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Return true if this template can Finish (i.e., enable the Finish button)."}),"\n",(0,n.jsx)(a.h3,{id:"formvalidationhandler",children:"formValidationHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod formValidationHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Validation handler for form built-into template."}),"\n",(0,n.jsx)(a.h3,{id:"finishtemplate",children:"finishTemplate"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod finishTemplate() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"User clicked the Finish button. Start Import."}),"\n",(0,n.jsx)(a.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This is called when the template is first displayed; This provides a chance to set focus etc."}),"\n",(0,n.jsx)(a.h3,{id:"hasmultiplepages",children:"hasMultiplePages"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod hasMultiplePages() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"nextpage",children:"nextPage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod nextPage() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Go to the next page of the template (if there is one)."}),"\n",(0,n.jsx)(a.h3,{id:"loadtable",children:"loadTable"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod loadTable() As %Boolean [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"If file exists, load table based on the jar file entered."}),"\n",(0,n.jsx)(a.h3,{id:"previouspage",children:"previousPage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod previousPage() [ Language = javascript ]\n"})}),"\n",(0,n.jsxs)(a.p,{children:["Go to the previous page of the template (if there is one).",(0,n.jsx)(a.br,{}),"\nThis is implemented by subclasses."]}),"\n",(0,n.jsx)(a.h3,{id:"hasselected",children:"hasSelected"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod hasSelected() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Return true if at least one selection is made."}),"\n",(0,n.jsx)(a.h3,{id:"rowchecked",children:"rowChecked"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod rowChecked(table) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"User checked a checkbox in a row in the table. Show the location and update Finish button."}),"\n",(0,n.jsx)(a.h3,{id:"setselected",children:"SetSelected"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Method SetSelected(selectedRows As %String, FileType As %String = "j", FileName As %String, Host As %String, Port As %String, Classpaths As %String, Excludes As %String) As %Boolean [ ZenMethod ]\n'})}),"\n",(0,n.jsx)(a.p,{children:"Set the selected rows into %session data for the result page Save all relevant values."}),"\n",(0,n.jsx)(a.h3,{id:"fileexists",children:"FileExists"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod FileExists(filename) As %Boolean [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Check if file user entered exists."}),"\n",(0,n.jsx)(a.h3,{id:"checkgateway",children:"CheckGateway"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod CheckGateway(pServer, pPort) As %Boolean [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Check if server and port is running and responsive"}),"\n",(0,n.jsx)(a.h3,{id:"isenabled",children:"IsEnabled"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod IsEnabled() As %Boolean\n"})}),"\n",(0,n.jsx)(a.p,{children:"Return false from this method to disable this template (for example based on the server platform)"})]})}function d(e={}){const{wrapper:a}={...(0,s.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(r,{...e})}):r(e)}},28453:(e,a,l)=>{l.d(a,{R:()=>i,x:()=>c});var n=l(96540);const s={},t=n.createContext(s);function i(e){const a=n.useContext(t);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function c(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),n.createElement(t.Provider,{value:a},e.children)}}}]);