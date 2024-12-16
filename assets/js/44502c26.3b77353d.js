"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[61849],{29289:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>l,toc:()=>c});var t=a(74848),n=a(28453);const l={pagination_prev:null,pagination_next:null},i="%ZEN.Template.studioTemplate",c=[{value:"Parameters",id:"parameters",level:2},{value:"RESOURCE",id:"resource",level:3},{value:"AUTOLOGOUT",id:"autologout",level:3},{value:"CHARSET",id:"charset",level:3},{value:"VALIDATEXML",id:"validatexml",level:3},{value:"TEMPLATENAME",id:"templatename",level:3},{value:"AUTONS",id:"autons",level:3},{value:"TEMPLATETITLE",id:"templatetitle",level:3},{value:"TEMPLATEDESCRIPTION",id:"templatedescription",level:3},{value:"TEMPLATETYPE",id:"templatetype",level:3},{value:"TEMPLATEACCELERATOR",id:"templateaccelerator",level:3},{value:"TEMPLATENOOUTPUT",id:"templatenooutput",level:3},{value:"HELPID",id:"helpid",level:3},{value:"TEMPLATEMODE",id:"templatemode",level:3},{value:"TEMPLATEGROUP",id:"templategroup",level:3},{value:"GLOBALTEMPLATE",id:"globaltemplate",level:3},{value:"DELIM",id:"delim",level:3},{value:"Properties",id:"properties",level:2},{value:"Project",id:"project",level:3},{value:"DocumentName",id:"documentname",level:3},{value:"SelectedText",id:"selectedtext",level:3},{value:"Namespace",id:"namespace",level:3},{value:"User",id:"user",level:3},{value:"Language",id:"language",level:3},{value:"DocumentNamespace",id:"documentnamespace",level:3},{value:"helpId",id:"helpid-1",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"CSS3Style",id:"css3style",level:3},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawTitle",id:"drawtitle",level:3},{value:"LocalizeName",id:"localizename",level:3},{value:"IsEnabled",id:"isenabled",level:3},{value:"cancelTemplate",id:"canceltemplate",level:3},{value:"finishTemplate",id:"finishtemplate",level:3},{value:"updateState",id:"updatestate",level:3},{value:"onstartHandler",id:"onstarthandler",level:3},{value:"onfinishHandler",id:"onfinishhandler",level:3},{value:"formValidationHandler",id:"formvalidationhandler",level:3},{value:"hasMultiplePages",id:"hasmultiplepages",level:3},{value:"canFinish",id:"canfinish",level:3},{value:"canGoNext",id:"cangonext",level:3},{value:"canGoBack",id:"cangoback",level:3},{value:"nextPage",id:"nextpage",level:3},{value:"previousPage",id:"previouspage",level:3},{value:"showHelp",id:"showhelp",level:3},{value:"showDocumentation",id:"showdocumentation",level:3},{value:"IsValidClassName",id:"isvalidclassname",level:3},{value:"%OnSubmit",id:"onsubmit",level:3},{value:"%OnTemplateAction",id:"ontemplateaction",level:3},{value:"%AddToProject",id:"addtoproject",level:3},{value:"%AddToSourceControl",id:"addtosourcecontrol",level:3},{value:"%SetClassName",id:"setclassname",level:3},{value:"%TemplateHeader",id:"templateheader",level:3},{value:"%OnDrawHTMLMeta",id:"ondrawhtmlmeta",level:3},{value:"OnPage",id:"onpage",level:3},{value:"OnPreHTTP",id:"onprehttp",level:3},{value:"OnHTTPHeader",id:"onhttpheader",level:3},{value:"OnPostHTTP",id:"onposthttp",level:3},{value:"onkeydownHandler",id:"onkeydownhandler",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onlayoutHandler",id:"onlayouthandler",level:3},{value:"adjustSize",id:"adjustsize",level:3}];function r(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"zentemplatestudiotemplate",children:"%ZEN.Template.studioTemplate"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Template.studioTemplate Extends %ZEN.Component.page [ Abstract, Deprecated, System = 4 ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Base class for Zen-based Studio Templates.",(0,t.jsx)(s.br,{}),"\nZen-based Studio Templates extend this class."]}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Development:USE";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Users must have %Development:USE to access any Studio templates."}),"\n",(0,t.jsx)(s.h3,{id:"autologout",children:"AUTOLOGOUT"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter AUTOLOGOUT = 0;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Do not use AutoLogout logic for template pages."}),"\n",(0,t.jsx)(s.h3,{id:"charset",children:"CHARSET"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CHARSET = "UTF-8";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Prevent IE issues with non-UTF8 char-sets."}),"\n",(0,t.jsx)(s.h3,{id:"validatexml",children:"VALIDATEXML"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter VALIDATEXML = 0;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"templatename",children:"TEMPLATENAME"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter TEMPLATENAME As STRING;\n"})}),"\n",(0,t.jsxs)(s.p,{children:["This projection is used to keep track of when this page is compiled or uncompiled. In this case, this notifies the Studio Template Manager about the existence of this template. Name of the template to show in Studio.",(0,t.jsx)(s.br,{}),"\nIf DOMAIN is defined this will be localized."]}),"\n",(0,t.jsx)(s.h3,{id:"autons",children:"AUTONS"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter AUTONS = 1;\n"})}),"\n",(0,t.jsx)(s.p,{children:"If auto-switch namespace to whatever $NAMESPACE is passed in"}),"\n",(0,t.jsx)(s.h3,{id:"templatetitle",children:"TEMPLATETITLE"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter TEMPLATETITLE As STRING;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Title of the template to show in the template window."}),"\n",(0,t.jsx)(s.h3,{id:"templatedescription",children:"TEMPLATEDESCRIPTION"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter TEMPLATEDESCRIPTION As STRING;\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Short description of the template to show in Studio.",(0,t.jsx)(s.br,{}),"\nIf DOMAIN is defined this will be localized."]}),"\n",(0,t.jsx)(s.h3,{id:"templatetype",children:"TEMPLATETYPE"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter TEMPLATETYPE As STRING = "*";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Comma separated list of 'CSP', 'CSR', 'MAC', 'INT', 'INC', 'BAS', 'CLS' to say what type of code this template generates; CSP, CSR, Routine, or Class code. You can also specify '*' for all types."}),"\n",(0,t.jsx)(s.h3,{id:"templateaccelerator",children:"TEMPLATEACCELERATOR"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEACCELERATOR As STRING [ Constraint = ",0,1,2,3,4,5,6,7,8,9", Flags = ENUM ];\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Accelerator key for this template in Studio, 0-9.",(0,t.jsx)(s.br,{}),"\nUser will press Ctrl+Shift+key to activate."]}),"\n",(0,t.jsx)(s.h3,{id:"templatenooutput",children:"TEMPLATENOOUTPUT"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter TEMPLATENOOUTPUT As BOOLEAN = 0;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Set this true (1) if this template does not generate any output, only applies to 'template' types but it prevents Studio from needing to make the current file writable."}),"\n",(0,t.jsx)(s.h3,{id:"helpid",children:"HELPID"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter HELPID As STRING;\n"})}),"\n",(0,t.jsx)(s.p,{children:"DOCBOOK Topic Id that offers help for this template."}),"\n",(0,t.jsx)(s.h3,{id:"templatemode",children:"TEMPLATEMODE"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEMODE As STRING [ Constraint = ",template,new,addin", Flags = ENUM ] = "template";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Specifies what type of template this is: 'template', 'new', or 'addin'. 'template' is the default and this creates code that is inserted into the current document, 'new' is a template that appears on the dialog when you click the new button, 'addin' is a template that appears on the addin menu which does not generate any output."}),"\n",(0,t.jsx)(s.h3,{id:"templategroup",children:"TEMPLATEGROUP"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter TEMPLATEGROUP As STRING;\n"})}),"\n",(0,t.jsx)(s.p,{children:"If this is a TEMPLATEMODE=\"new\" then this is the name of the tab in Studio this template is dispayed on. If none specified then it displays on 'Custom' tab."}),"\n",(0,t.jsx)(s.h3,{id:"globaltemplate",children:"GLOBALTEMPLATE"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter GLOBALTEMPLATE As BOOLEAN = 1;\n"})}),"\n",(0,t.jsx)(s.p,{children:"If this is true then even if this template is tied to a specific namespace it will be available in any namespace and it will be up to the template to make sure it looks for any specific data in the target namespace."}),"\n",(0,t.jsx)(s.h3,{id:"delim",children:"DELIM"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DELIM [ Final, Internal ] = "##www.intersystems.com:template_delimiter##";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Internal value used for communication back to Studio."}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"project",children:"Project"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property Project As %ZEN.Datatype.string(ZENURL = "Project");\n'})}),"\n",(0,t.jsx)(s.p,{children:"Current project within Studio."}),"\n",(0,t.jsx)(s.h3,{id:"documentname",children:"DocumentName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property DocumentName As %ZEN.Datatype.string(ZENURL = "Name");\n'})}),"\n",(0,t.jsx)(s.p,{children:"Name of current document within Studio."}),"\n",(0,t.jsx)(s.h3,{id:"selectedtext",children:"SelectedText"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property SelectedText As %ZEN.Datatype.string(ZENURL = "SelectedText");\n'})}),"\n",(0,t.jsx)(s.p,{children:"Current selected text within Studio."}),"\n",(0,t.jsx)(s.h3,{id:"namespace",children:"Namespace"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property Namespace As %ZEN.Datatype.string(ZENURL = "Namespace");\n'})}),"\n",(0,t.jsx)(s.p,{children:"Current namespace within Studio."}),"\n",(0,t.jsx)(s.h3,{id:"user",children:"User"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property User As %ZEN.Datatype.string(ZENURL = "User");\n'})}),"\n",(0,t.jsx)(s.p,{children:"Current user within Studio."}),"\n",(0,t.jsx)(s.h3,{id:"language",children:"Language"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property Language As %ZEN.Datatype.string(ZENURL = "Language");\n'})}),"\n",(0,t.jsx)(s.p,{children:'Current language within Studio (e.g., "cache").'}),"\n",(0,t.jsx)(s.h3,{id:"documentnamespace",children:"DocumentNamespace"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property DocumentNamespace As %ZEN.Datatype.string(ZENURL = "DocumentNamespace");\n'})}),"\n",(0,t.jsx)(s.p,{children:"Namespace of current document within Studio."}),"\n",(0,t.jsx)(s.h3,{id:"helpid-1",children:"helpId"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property helpId As %ZEN.Datatype.string [ InitialExpression = {..#HELPID} ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"DocBook topic id used to show help for this template."}),"\n",(0,t.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(s.h3,{id:"css3style",children:"CSS3Style"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"XData CSS3Style\n"})}),"\n",(0,t.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(s.p,{children:"The standard template has three main divs: header,body, and footer. Subclasses typically place their content within the body div (pane)."}),"\n",(0,t.jsx)(s.h3,{id:"contents",children:"Contents"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(s.p,{children:'Contents of standard template page; Subclasses can override this if they wish or (more typically) implement the "body" pane with the desired content.'}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"drawtitle",children:"%DrawTitle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %DrawTitle(pSeed As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Provide HTML for standard template html title box."}),"\n",(0,t.jsx)(s.h3,{id:"localizename",children:"LocalizeName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LocalizeName(id As %String, ByRef name As %String, ByRef description As %String) As %Status [ CodeMode = objectgenerator ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Localize the name and description for this template."}),"\n",(0,t.jsx)(s.h3,{id:"isenabled",children:"IsEnabled"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsEnabled() As %Boolean\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return false from this method to disable this template (for example based on the server platform)"}),"\n",(0,t.jsx)(s.h3,{id:"canceltemplate",children:"cancelTemplate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod cancelTemplate() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Close the template window."}),"\n",(0,t.jsx)(s.h3,{id:"finishtemplate",children:"finishTemplate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod finishTemplate() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Finish the template: fire the template action code"}),"\n",(0,t.jsx)(s.h3,{id:"updatestate",children:"updateState"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod updateState() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Update the state of the template buttons. Subclasses should call this method when they need to update the state of the footer buttons."}),"\n",(0,t.jsx)(s.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is called when the template is first displayed; This provides a chance to set focus etc."}),"\n",(0,t.jsx)(s.h3,{id:"onfinishhandler",children:"onfinishHandler"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onfinishHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is called when the template is finished;"}),"\n",(0,t.jsx)(s.h3,{id:"formvalidationhandler",children:"formValidationHandler"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod formValidationHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Validation handler for form built-into template."}),"\n",(0,t.jsx)(s.h3,{id:"hasmultiplepages",children:"hasMultiplePages"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod hasMultiplePages() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:'Return true if this template has more than one "page". This will display Back and Next buttons. This is implemented by subclasses.'}),"\n",(0,t.jsx)(s.h3,{id:"canfinish",children:"canFinish"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod canFinish() [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return true if this template can Finish (i.e., enable the Finish button).",(0,t.jsx)(s.br,{}),"\nThis is implemented by subclasses."]}),"\n",(0,t.jsx)(s.h3,{id:"cangonext",children:"canGoNext"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod canGoNext() [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return true if this template can go to the next page (i.e., enable the Next button).",(0,t.jsx)(s.br,{}),"\nThis is implemented by subclasses."]}),"\n",(0,t.jsx)(s.h3,{id:"cangoback",children:"canGoBack"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod canGoBack() [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return true if this template can go to the previous page (i.e., enable the Back button).",(0,t.jsx)(s.br,{}),"\nThis is implemented by subclasses."]}),"\n",(0,t.jsx)(s.h3,{id:"nextpage",children:"nextPage"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod nextPage() [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Go to the next page of the template (if there is one).",(0,t.jsx)(s.br,{}),"\nThis is implemented by subclasses."]}),"\n",(0,t.jsx)(s.h3,{id:"previouspage",children:"previousPage"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod previousPage() [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Go to the previous page of the template (if there is one).",(0,t.jsx)(s.br,{}),"\nThis is implemented by subclasses."]}),"\n",(0,t.jsx)(s.h3,{id:"showhelp",children:"showHelp"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod showHelp() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Show the help message for this template. This opens a browser and goes to the DocBook application using the value given by helpId."}),"\n",(0,t.jsx)(s.h3,{id:"showdocumentation",children:"showDocumentation"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod showDocumentation(topic) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Open a browser window to show documentation."}),"\n",(0,t.jsx)(s.h3,{id:"isvalidclassname",children:"IsValidClassName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method IsValidClassName(pCls As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Validate that the given class name is valid.",(0,t.jsx)(s.br,{}),"\nReturns an error message if invalid."]}),"\n",(0,t.jsx)(s.h3,{id:"onsubmit",children:"%OnSubmit"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"ontemplateaction",children:"%OnTemplateAction"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnTemplateAction() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method is called when the template is complete. Any output to the principal device is returned to the Studio. This is implemented by subclasses."}),"\n",(0,t.jsx)(s.h3,{id:"addtoproject",children:"%AddToProject"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %AddToProject(Name As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Add this named item to the current project in Studio. If you have multiple items then call this method multiple times. The Name must contain the type of the item e.g. 'User.Test.cls' is a class, and 'TEST.mac' is a MAC routine."}),"\n",(0,t.jsx)(s.h3,{id:"addtosourcecontrol",children:"%AddToSourceControl"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %AddToSourceControl(Name As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Add this item to source control. If you have multiple items then call this method multiple times. The Name must contain the type of the item to add e.g. 'User.Test.cls'."}),"\n",(0,t.jsx)(s.h3,{id:"setclassname",children:"%SetClassName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %SetClassName(Name As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"If you are making a new class template then Studio needs to be told the name of this class. This is done by calling this method in the final page passing the name of the class."}),"\n",(0,t.jsx)(s.h3,{id:"templateheader",children:"%TemplateHeader"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %TemplateHeader()\n"})}),"\n",(0,t.jsx)(s.p,{children:"Internal method to output the start of the XML data section"}),"\n",(0,t.jsx)(s.h3,{id:"ondrawhtmlmeta",children:"%OnDrawHTMLMeta"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnDrawHTMLMeta() As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"onpage",children:"OnPage"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPage() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Render the contents of this ZEN page."}),"\n",(0,t.jsx)(s.h3,{id:"onprehttp",children:"OnPreHTTP"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPreHTTP() As %Boolean\n"})}),"\n",(0,t.jsx)(s.p,{children:"Make sure template runs in correct namespace."}),"\n",(0,t.jsx)(s.h3,{id:"onhttpheader",children:"OnHTTPHeader"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnHTTPHeader(ByRef OutputBody As %Boolean) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Make sure template generates correct format output."}),"\n",(0,t.jsx)(s.h3,{id:"onposthttp",children:"OnPostHTTP"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPostHTTP()\n"})}),"\n",(0,t.jsx)(s.p,{children:"For final page, make sure we send the correct info to the Studio."}),"\n",(0,t.jsx)(s.h3,{id:"onkeydownhandler",children:"onkeydownHandler"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onkeydownHandler(evt) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This client event, if present, is fired when a keydown event occurs on the page."}),"\n",(0,t.jsx)(s.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,t.jsx)(s.h3,{id:"onlayouthandler",children:"onlayoutHandler"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onlayoutHandler(load) [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["This client event, if present, is fired when the page is first loaded or whenever it is resized.",(0,t.jsx)(s.br,{}),"\nIf this is called at load time, then load will be true."]}),"\n",(0,t.jsx)(s.h3,{id:"adjustsize",children:"adjustSize"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod adjustSize() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Adjust size and position of components on this page."})]})}function d(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(r,{...e})}):r(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>i,x:()=>c});var t=a(96540);const n={},l=t.createContext(n);function i(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);