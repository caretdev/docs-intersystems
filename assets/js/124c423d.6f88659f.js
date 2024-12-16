"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[78190],{54073:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>t,default:()=>d,frontMatter:()=>i,toc:()=>c});var a=n(74848),l=n(28453);const i={pagination_prev:null,pagination_next:null},t="%ZEN.Template.WebServicePolicyWizard",c=[{value:"Parameters",id:"parameters",level:2},{value:"TEMPLATENAME",id:"templatename",level:3},{value:"TEMPLATETITLE",id:"templatetitle",level:3},{value:"TEMPLATEDESCRIPTION",id:"templatedescription",level:3},{value:"TEMPLATETYPE",id:"templatetype",level:3},{value:"TEMPLATEMODE",id:"templatemode",level:3},{value:"TEMPLATEGROUP",id:"templategroup",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"HELPID",id:"helpid",level:3},{value:"Properties",id:"properties",level:2},{value:"NumSOAPClasses",id:"numsoapclasses",level:3},{value:"ConfigClass",id:"configclass",level:3},{value:"IsClient",id:"isclient",level:3},{value:"lblNONE",id:"lblnone",level:3},{value:"lblSEC",id:"lblsec",level:3},{value:"FINALRESULTS",id:"finalresults",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"CSS3Style",id:"css3style",level:3},{value:"Style",id:"style",level:3},{value:"templateBody",id:"templatebody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"changeService",id:"changeservice",level:3},{value:"changeType",id:"changetype",level:3},{value:"changePolicy",id:"changepolicy",level:3},{value:"changeSecConv",id:"changesecconv",level:3},{value:"onstartHandler",id:"onstarthandler",level:3},{value:"onfinishHandler",id:"onfinishhandler",level:3},{value:"getFinalValue",id:"getfinalvalue",level:3},{value:"hasMultiplePages",id:"hasmultiplepages",level:3},{value:"canGoNext",id:"cangonext",level:3},{value:"nextPage",id:"nextpage",level:3},{value:"previousPage",id:"previouspage",level:3},{value:"canGoBack",id:"cangoback",level:3},{value:"canFinish",id:"canfinish",level:3},{value:"formValidationHandler",id:"formvalidationhandler",level:3},{value:"showMsg",id:"showmsg",level:3},{value:"resetMsg",id:"resetmsg",level:3},{value:"validateConfigurationName",id:"validateconfigurationname",level:3},{value:"LoadList",id:"loadlist",level:3},{value:"DrawPageTitle",id:"drawpagetitle",level:3},{value:"DrawNumSOAPClasses",id:"drawnumsoapclasses",level:3},{value:"GetPolicyMessage",id:"getpolicymessage",level:3},{value:"DrawMessage",id:"drawmessage",level:3},{value:"DrawDetailsContent",id:"drawdetailscontent",level:3},{value:"GetSSLInfo",id:"getsslinfo",level:3},{value:"GetX509Info",id:"getx509info",level:3},{value:"GetProtectionInfo",id:"getprotectioninfo",level:3},{value:"GetSymmetricInfo",id:"getsymmetricinfo",level:3},{value:"GetMutualInfo",id:"getmutualinfo",level:3},{value:"%OnTemplateAction",id:"ontemplateaction",level:3}];function r(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(s.header,{children:(0,a.jsx)(s.h1,{id:"zentemplatewebservicepolicywizard",children:"%ZEN.Template.WebServicePolicyWizard"})}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Template.WebServicePolicyWizard Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Studio Template: New Web Service/Client Configuration."}),"\n",(0,a.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(s.h3,{id:"templatename",children:"TEMPLATENAME"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter TEMPLATENAME = "Web Service/Client Configuration";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"templatetitle",children:"TEMPLATETITLE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter TEMPLATETITLE = "Web Service/Client Configuration Wizard";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"templatedescription",children:"TEMPLATEDESCRIPTION"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEDESCRIPTION = "Create a new Web Service/Client Configuration.";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"templatetype",children:"TEMPLATETYPE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter TEMPLATETYPE = "cls";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"templatemode",children:"TEMPLATEMODE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEMODE = "new";\n'})}),"\n",(0,a.jsx)(s.p,{children:"What type of template."}),"\n",(0,a.jsx)(s.h3,{id:"templategroup",children:"TEMPLATEGROUP"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter TEMPLATEGROUP = "General";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%ZEN";\n'})}),"\n",(0,a.jsx)(s.p,{children:"Domain used for localization."}),"\n",(0,a.jsx)(s.h3,{id:"helpid",children:"HELPID"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter HELPID = "GSOAPSEC_wsp_creating_policies";\n'})}),"\n",(0,a.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(s.h3,{id:"numsoapclasses",children:"NumSOAPClasses"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property NumSOAPClasses As %ZEN.Datatype.integer [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsxs)(s.p,{children:["If NumSOAPClasses is greater than 1, then the Config Class field and Finish button are disabled.",(0,a.jsx)(s.br,{}),"\nIf NumSOAPClasses is 1, then the Config Class is set to the first piece of ConfigId found, and modification of it is not allowed.",(0,a.jsx)(s.br,{}),'\nElse the Config Class is set to TargetClass_"Config"']}),"\n",(0,a.jsx)(s.h3,{id:"configclass",children:"ConfigClass"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property ConfigClass As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(s.h3,{id:"isclient",children:"IsClient"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property IsClient As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(s.h3,{id:"lblnone",children:"lblNONE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property lblNONE As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("(No security is required.)")} ];\n'})}),"\n",(0,a.jsx)(s.h3,{id:"lblsec",children:"lblSEC"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property lblSEC As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("(Click [Next] to specify more policy details.)")} ];\n'})}),"\n",(0,a.jsx)(s.h3,{id:"finalresults",children:"FINALRESULTS"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property FINALRESULTS As %String;\n"})}),"\n",(0,a.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(s.h3,{id:"css3style",children:"CSS3Style"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"XData CSS3Style\n"})}),"\n",(0,a.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(s.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,a.jsx)(s.h3,{id:"templatebody",children:"templateBody"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(s.p,{children:"This XML block defines the contents of the body pane of this Studio Template."}),"\n",(0,a.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(s.h3,{id:"changeservice",children:"changeService"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod changeService(CLASS) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"user changed SERVER <=> CLIENT. need to reset any policy selection back to NONE."}),"\n",(0,a.jsx)(s.h3,{id:"changetype",children:"changeType"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod changeType(type, targetclass) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"prepare for tab 2."}),"\n",(0,a.jsx)(s.h3,{id:"changepolicy",children:"changePolicy"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod changePolicy(policy) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"load, show/hide fiels based on policy selected."}),"\n",(0,a.jsx)(s.h3,{id:"changesecconv",children:"changeSecConv"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod changeSecConv(flag) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"enable/disable DERIVEDKEYS based on Secure Conversation"}),"\n",(0,a.jsx)(s.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"This is called when the template is first displayed; This provides a chance to set focus etc."}),"\n",(0,a.jsx)(s.h3,{id:"onfinishhandler",children:"onfinishHandler"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onfinishHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["This is called when the template is finished - gather selected values and put into hidden Zen fields for %OnTemplateAction.",(0,a.jsx)(s.br,{}),"\nThe extra work is needed because most policy specific fields are html controls rather than Zen controls."]}),"\n",(0,a.jsx)(s.h3,{id:"getfinalvalue",children:"getFinalValue"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getFinalValue(fieldName, fieldType) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Return value of the given html field name and type."}),"\n",(0,a.jsx)(s.h3,{id:"hasmultiplepages",children:"hasMultiplePages"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod hasMultiplePages() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"cangonext",children:"canGoNext"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod canGoNext() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Return true if this template can go to the next page (i.e., enable the Next button)."}),"\n",(0,a.jsx)(s.h3,{id:"nextpage",children:"nextPage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod nextPage() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Go to the next page of the template (if there is one)."}),"\n",(0,a.jsx)(s.h3,{id:"previouspage",children:"previousPage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod previousPage() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Go to the previous page of the template (if there is one)."}),"\n",(0,a.jsx)(s.h3,{id:"cangoback",children:"canGoBack"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod canGoBack() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Return true if this template can go to the previous page (i.e., enable the Back button)."}),"\n",(0,a.jsx)(s.h3,{id:"canfinish",children:"canFinish"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod canFinish() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Return true if this template can Finish (i.e., enable the Finish button)."}),"\n",(0,a.jsx)(s.h3,{id:"formvalidationhandler",children:"formValidationHandler"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod formValidationHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Validation handler for form built-into template."}),"\n",(0,a.jsx)(s.h3,{id:"showmsg",children:"showMsg"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod showMsg(msg) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"resetmsg",children:"resetMsg"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod resetMsg() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"validateconfigurationname",children:"validateConfigurationName"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod validateConfigurationName(classname As %String, replace As %Boolean) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"loadlist",children:"LoadList"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LoadList(Output Services) As %String\n"})}),"\n",(0,a.jsx)(s.p,{children:"Return Services and Clients valueList to be loaded into drop-downs."}),"\n",(0,a.jsx)(s.h3,{id:"drawpagetitle",children:"DrawPageTitle"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawPageTitle(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.h3,{id:"drawnumsoapclasses",children:"DrawNumSOAPClasses"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawNumSOAPClasses(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This method is processed when user selects a CLASS type and clicks Next. TargetClass is passed in."}),"\n",(0,a.jsx)(s.h3,{id:"getpolicymessage",children:"GetPolicyMessage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetPolicyMessage(pCode As %String) As %String\n"})}),"\n",(0,a.jsx)(s.h3,{id:"drawmessage",children:"DrawMessage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawMessage(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Passing in code or policy type, display description of it."}),"\n",(0,a.jsx)(s.h3,{id:"drawdetailscontent",children:"DrawDetailsContent"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawDetailsContent(code As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This method draws policy detailed content."}),"\n",(0,a.jsx)(s.h3,{id:"getsslinfo",children:"GetSSLInfo"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSSLInfo(code As %String)\n"})}),"\n",(0,a.jsx)(s.p,{children:"code passed in is the Security Policy code."}),"\n",(0,a.jsx)(s.h3,{id:"getx509info",children:"GetX509Info"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetX509Info(code As %String, desc As %String)\n"})}),"\n",(0,a.jsx)(s.p,{children:"code passed may contain code_R_ or code_I (if IsClient)."}),"\n",(0,a.jsx)(s.h3,{id:"getprotectioninfo",children:"GetProtectionInfo"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetProtectionInfo(code As %String)\n"})}),"\n",(0,a.jsx)(s.h3,{id:"getsymmetricinfo",children:"GetSymmetricInfo"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSymmetricInfo(code As %String)\n"})}),"\n",(0,a.jsx)(s.h3,{id:"getmutualinfo",children:"GetMutualInfo"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMutualInfo(code As %String)\n"})}),"\n",(0,a.jsx)(s.h3,{id:"ontemplateaction",children:"%OnTemplateAction"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnTemplateAction() As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This method is called when the template is complete. Any output to the principal device is returned to the Studio."})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,a.jsx)(s,{...e,children:(0,a.jsx)(r,{...e})}):r(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>t,x:()=>c});var a=n(96540);const l={},i=a.createContext(l);function t(e){const s=a.useContext(i);return a.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:t(e.components),a.createElement(i.Provider,{value:s},e.children)}}}]);