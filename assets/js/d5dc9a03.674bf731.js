"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[53892],{44556:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>c,frontMatter:()=>l,toc:()=>o});var n=s(74848),a=s(28453);const l={pagination_prev:null,pagination_next:null},r="%CSP.StudioTemplateInsert",o=[{value:"Parameters",id:"parameters",level:2},{value:"SECURITYRESOURCE",id:"securityresource",level:3},{value:"ERRORPAGE",id:"errorpage",level:3},{value:"DELIM",id:"delim",level:3},{value:"Methods",id:"methods",level:2},{value:"TemplateHeader",id:"templateheader",level:3},{value:"OnPostHTTP",id:"onposthttp",level:3},{value:"OnHTTPHeader",id:"onhttpheader",level:3},{value:"AddToProject",id:"addtoproject",level:3},{value:"AddToSourceControl",id:"addtosourcecontrol",level:3},{value:"SetClassName",id:"setclassname",level:3}];function d(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"cspstudiotemplateinsert",children:"%CSP.StudioTemplateInsert"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %CSP.StudioTemplateInsert Extends %CSP.StudioTemplateSuper [ Abstract, System = 3 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"The %CSP.StudioTemplateInsert outputs the template for CSP with certain tags in front and at the end of the template so Studio can recognise this template and insert it into the current document."}),"\n",(0,n.jsx)(t.p,{children:"This is automatically set as the superclass of the final page that generates the template by the rule."}),"\n",(0,n.jsxs)(t.p,{children:['Values can be returned to Studio by setting the %session.Data("Template") subnodes, for example to set the name of the class for a new class wizard use: ',(0,n.jsx)(t.code,{children:'Set %session.Data("Template","CLASS")="User.Test"'}),' These %session.Data("Template") values must be set in the last page that generates the actual template. We provide methods to set values into this %session.Data("Template") nodes that Studio understands. These are AddToProject and SetClassName.']}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"securityresource",children:"SECURITYRESOURCE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter SECURITYRESOURCE = "%Development";\n'})}),"\n",(0,n.jsx)(t.h3,{id:"errorpage",children:"ERRORPAGE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter ERRORPAGE [ Internal ] = "/csp/sys/%CSP.StudioTemplateError.cls";\n'})}),"\n",(0,n.jsx)(t.p,{children:"Error page for templates"}),"\n",(0,n.jsx)(t.h3,{id:"delim",children:"DELIM"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter DELIM [ Internal ] = "##www.intersystems.com:template_delimiter##";\n'})}),"\n",(0,n.jsx)(t.p,{children:"Delimits user template output"}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"templateheader",children:"TemplateHeader"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod TemplateHeader() [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Internal method to output the start of the XML data section"}),"\n",(0,n.jsx)(t.h3,{id:"onposthttp",children:"OnPostHTTP"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OnPostHTTP() [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Write end of template output"}),"\n",(0,n.jsx)(t.h3,{id:"onhttpheader",children:"OnHTTPHeader"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OnHTTPHeader(ByRef OutputBody As %Boolean) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Use OnHTTPHeader set content type, handle namespace write HTTP headers and begin XML."}),"\n",(0,n.jsx)(t.h3,{id:"addtoproject",children:"AddToProject"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod AddToProject(Name As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Add this named item to the current project in Studio. If you have multiple items then call this method multiple times. The Name must contain the type of the item e.g. 'User.Test.cls' is a class, and 'TEST.mac' is a MAC routine."}),"\n",(0,n.jsx)(t.h3,{id:"addtosourcecontrol",children:"AddToSourceControl"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod AddToSourceControl(Name As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Add this item to source control. If you have multiple items then call this method multiple times. The Name must containt eh type of the item to add e.g. 'User.Test.cls'."}),"\n",(0,n.jsx)(t.h3,{id:"setclassname",children:"SetClassName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetClassName(Name As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"If you are making a new class template then Studio needs to be told the name of this class. This is done by calling this method in the final page passing the name of the class."})]})}function c(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(d,{...e})}):d(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>o});var n=s(96540);const a={},l=n.createContext(a);function r(e){const t=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),n.createElement(l.Provider,{value:t},e.children)}}}]);