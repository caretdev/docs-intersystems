"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[87380],{97344:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>i,default:()=>d,frontMatter:()=>t,toc:()=>c});var l=s(74848),n=s(28453);const t={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.Dialog.DatabaseDelete",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"Properties",id:"properties",level:2},{value:"DBName",id:"dbname",level:3},{value:"Directory",id:"directory",level:3},{value:"CacheDatExists",id:"cachedatexists",level:3},{value:"Remote",id:"remote",level:3},{value:"SynonymDBs",id:"synonymdbs",level:3},{value:"TotalNamespaces",id:"totalnamespaces",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"doSave",id:"dosave",level:3},{value:"DrawPageTitle",id:"drawpagetitle",level:3},{value:"DrawCheckDatabase",id:"drawcheckdatabase",level:3},{value:"GetWebApp",id:"getwebapp",level:3},{value:"DrawMappings",id:"drawmappings",level:3},{value:"Delete",id:"delete",level:3},{value:"DisableEnsNamespace",id:"disableensnamespace",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3}];function r(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(a.header,{children:(0,l.jsx)(a.h1,{id:"cspuiportaldialogdatabasedelete",children:"%CSP.UI.Portal.Dialog.DatabaseDelete"})}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Dialog.DatabaseDelete Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Actions for Local Databases: Delete DB."}),"\n",(0,l.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(a.h3,{id:"application",children:"APPLICATION"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,l.jsx)(a.p,{children:"Class name of application this page belongs to."}),"\n",(0,l.jsx)(a.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,l.jsx)(a.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,l.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Dialog.DatabaseDelete.zen";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE = "Namespace";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage:USE";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Delete Database";\n'})}),"\n",(0,l.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,l.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(a.h3,{id:"dbname",children:"DBName"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property DBName As %ZEN.Datatype.string(ZENURL = "DBName");\n'})}),"\n",(0,l.jsx)(a.h3,{id:"directory",children:"Directory"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property Directory As %ZEN.Datatype.string(ZENURL = "Dir");\n'})}),"\n",(0,l.jsx)(a.h3,{id:"cachedatexists",children:"CacheDatExists"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Property CacheDatExists As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,l.jsx)(a.h3,{id:"remote",children:"Remote"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property Remote As %ZEN.Datatype.boolean(ZENURL = "Remote");\n'})}),"\n",(0,l.jsx)(a.h3,{id:"synonymdbs",children:"SynonymDBs"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Property SynonymDBs As %ZEN.Datatype.string;\n"})}),"\n",(0,l.jsx)(a.h3,{id:"totalnamespaces",children:"TotalNamespaces"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Property TotalNamespaces As %ZEN.Datatype.integer [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(a.p,{children:"Total number of namespaces associated with the DB"}),"\n",(0,l.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(a.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,l.jsx)(a.h3,{id:"contents",children:"Contents"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(a.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(a.p,{children:"Contents of this page:"}),"\n",(0,l.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,l.jsx)(a.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"dosave",children:"doSave"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Commit Deletion now"}),"\n",(0,l.jsx)(a.h3,{id:"drawpagetitle",children:"DrawPageTitle"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DrawPageTitle(pSeed As %String) As %Status\n"})}),"\n",(0,l.jsx)(a.h3,{id:"drawcheckdatabase",children:"DrawCheckDatabase"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DrawCheckDatabase(pSeed) As %Status\n"})}),"\n",(0,l.jsx)(a.p,{children:"This method checks the state of the database and draw necessary message or prompts."}),"\n",(0,l.jsx)(a.h3,{id:"getwebapp",children:"GetWebApp"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod GetWebApp(ByRef Nsp, ByRef WebApp) As %Status\n"})}),"\n",(0,l.jsx)(a.h3,{id:"drawmappings",children:"DrawMappings"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DrawMappings(mappings As %String) As %Status\n"})}),"\n",(0,l.jsx)(a.h3,{id:"delete",children:"Delete"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod Delete(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Delete database from server."}),"\n",(0,l.jsx)(a.h3,{id:"disableensnamespace",children:"DisableEnsNamespace"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DisableEnsNamespace(namespace As %String) As %Status\n"})}),"\n",(0,l.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsxs)(a.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,l.jsx)(a.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]}),"\n",(0,l.jsx)(a.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,l.jsx)(a.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(a.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,l.jsx)(a.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."})]})}function d(e={}){const{wrapper:a}={...(0,n.R)(),...e.components};return a?(0,l.jsx)(a,{...e,children:(0,l.jsx)(r,{...e})}):r(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>i,x:()=>c});var l=s(96540);const n={},t=l.createContext(n);function i(e){const a=l.useContext(t);return l.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function c(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),l.createElement(t.Provider,{value:a},e.children)}}}]);