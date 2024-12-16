"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[52295],{2279:(e,n,l)=>{l.r(n),l.d(n,{contentTitle:()=>i,default:()=>d,frontMatter:()=>t,toc:()=>r});var a=l(74848),s=l(28453);const t={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.SQL.ExportStatement",r=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"AUTONS",id:"autons",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"HASH",id:"hash",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"EXPORTALL",id:"exportall",level:3},{value:"FILETYPE",id:"filetype",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"browseSelect",id:"browseselect",level:3},{value:"validateFile",id:"validatefile",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"GetTempFileName",id:"gettempfilename",level:3},{value:"doExport",id:"doexport",level:3},{value:"CheckFileStatus",id:"checkfilestatus",level:3},{value:"doDownload",id:"dodownload",level:3},{value:"DownloadStream",id:"downloadstream",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"doLocationChange",id:"dolocationchange",level:3},{value:"onstartHandler",id:"onstarthandler",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"onresizeHandler",id:"onresizehandler",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"DrawPageTitle",id:"drawpagetitle",level:3},{value:"SaveLastFile",id:"savelastfile",level:3},{value:"FileExists",id:"fileexists",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,s.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"cspuiportalsqlexportstatement",children:"%CSP.UI.Portal.SQL.ExportStatement"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.SQL.ExportStatement Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,a.jsx)(n.p,{children:"Export SQL Statement dialog for Management Portal SQL."}),"\n",(0,a.jsxs)(n.p,{children:[(0,a.jsx)(n.strong,{children:"Please do not modify any part of this dialog without COMPLETELY testing all cases!!!"}),"\n",(0,a.jsx)(n.strong,{children:"This dialog is used by SQL for exporting single SQL statement or all statements per namespace."})]}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"application",children:"APPLICATION"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Class name of application this page belongs to."}),"\n",(0,a.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.ExportStatement.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Development:USE";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "ExportSQLStatement";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 1;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(n.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"hash",children:"HASH"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property HASH As %ZEN.Datatype.string(ZENURL = "HASH");\n'})}),"\n",(0,a.jsx)(n.p,{children:"If export individual statement, HASH is not null"}),"\n",(0,a.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");\n'})}),"\n",(0,a.jsx)(n.h3,{id:"exportall",children:"EXPORTALL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property EXPORTALL As %ZEN.Datatype.string(ZENURL = "EXPORTALL");\n'})}),"\n",(0,a.jsx)(n.p,{children:"1 = Export All; 0 = Export individual statement where HASH should be defined."}),"\n",(0,a.jsx)(n.h3,{id:"filetype",children:"FILETYPE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property FILETYPE As %ZEN.Datatype.string [ InitialExpression = "SQLSTATEMENT" ];\n'})}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(n.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,a.jsx)(n.h3,{id:"contents",children:"Contents"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"browseselect",children:"browseSelect"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod browseSelect(name, wildcard) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"User clicked the Browse button."}),"\n",(0,a.jsx)(n.h3,{id:"validatefile",children:"validateFile"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod validateFile(fileName) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Check if file is empty."}),"\n",(0,a.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:'Returning from file select OR qualifers dialog and setting the value into the appropriate field. The id of the field that needs to be updated is saved in "dialogClicked".'}),"\n",(0,a.jsx)(n.h3,{id:"gettempfilename",children:"GetTempFileName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetTempFileName(pDocName) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"doexport",children:"doExport"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doExport() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"User clicked the Export or Export in Background button."}),"\n",(0,a.jsx)(n.h3,{id:"checkfilestatus",children:"CheckFileStatus"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method CheckFileStatus(pFilename) [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"dodownload",children:"doDownload"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doDownload(filename) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"downloadstream",children:"DownloadStream"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DownloadStream(pFilename As %String, pDocName As %String) [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,a.jsx)(n.h3,{id:"dolocationchange",children:"doLocationChange"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doLocationChange(flag) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"User changed to export file between Server or Browser"}),"\n",(0,a.jsx)(n.h3,{id:"onstarthandler",children:"onstartHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onstartHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,a.jsx)(n.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"onresizehandler",children:"onresizeHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onresizeHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the page is resized."}),"\n",(0,a.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsxs)(n.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,a.jsx)(n.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]}),"\n",(0,a.jsx)(n.h3,{id:"drawpagetitle",children:"DrawPageTitle"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DrawPageTitle(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"savelastfile",children:"SaveLastFile"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SaveLastFile(pFileName, pFileType) [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"fileexists",children:"FileExists"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod FileExists(filename) As %Integer [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Check to see if file exists"})]})}function d(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,l)=>{l.d(n,{R:()=>i,x:()=>r});var a=l(96540);const s={},t=a.createContext(s);function i(e){const n=a.useContext(t);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),a.createElement(t.Provider,{value:n},e.children)}}}]);