"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[19576],{44978:(e,a,n)=>{n.r(a),n.d(a,{contentTitle:()=>r,default:()=>d,frontMatter:()=>t,toc:()=>i});var l=n(74848),s=n(28453);const t={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.Background.Dialog.DatabaseTruncate",i=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"DBName",id:"dbname",level:3},{value:"Directory",id:"directory",level:3},{value:"Size",id:"size",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"DrawAbortError",id:"drawaborterror",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"StartCleanup",id:"startcleanup",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"validate",id:"validate",level:3},{value:"GetSize",id:"getsize",level:3}];function c(e){const a={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(a.header,{children:(0,l.jsx)(a.h1,{id:"cspuiportalbackgrounddialogdatabasetruncate",children:"%CSP.UI.Portal.Background.Dialog.DatabaseTruncate"})}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Background.Dialog.DatabaseTruncate Extends (%CSP.Portal.standardDialog, %CSP.UI.Portal.Background.Utils)\n"})}),"\n",(0,l.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(a.h3,{id:"application",children:"APPLICATION"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Background.Dialog.DatabaseTruncate.zen";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "DatabaseTruncate";\n'})}),"\n",(0,l.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,l.jsx)(a.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Operate:USE";\n'})}),"\n",(0,l.jsx)(a.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,l.jsx)(a.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,l.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(a.h3,{id:"dbname",children:"DBName"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property DBName As %String(ZENURL = "DBName");\n'})}),"\n",(0,l.jsx)(a.p,{children:"ID for edit. DBName for this page."}),"\n",(0,l.jsx)(a.h3,{id:"directory",children:"Directory"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'Property Directory As %String(ZENURL = "Directory");\n'})}),"\n",(0,l.jsx)(a.p,{children:"DBDirectory passed in."}),"\n",(0,l.jsx)(a.h3,{id:"size",children:"Size"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Property Size As %String;\n"})}),"\n",(0,l.jsx)(a.p,{children:"Current size."}),"\n",(0,l.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(a.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(a.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,l.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsx)(a.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,l.jsx)(a.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(a.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,l.jsx)(a.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(a.h3,{id:"drawaborterror",children:"DrawAbortError"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawAbortError(seed As %String) As %Status\n"})}),"\n",(0,l.jsx)(a.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,l.jsx)(a.h3,{id:"startcleanup",children:"StartCleanup"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod StartCleanup(DBName, Directory, Target) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Start background job to cleanup a selected directory"}),"\n",(0,l.jsx)(a.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.h3,{id:"validate",children:"validate"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod validate(size, target) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(a.p,{children:"Make sure that the Target size is smaller than that of the current size."}),"\n",(0,l.jsx)(a.h3,{id:"getsize",children:"GetSize"}),"\n",(0,l.jsx)(a.pre,{children:(0,l.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod GetSize(Directory As %String, Output Size As %Integer) As %String\n"})}),"\n",(0,l.jsx)(a.p,{children:"Return current size since the size may have changed since the table was drawn"})]})}function d(e={}){const{wrapper:a}={...(0,s.R)(),...e.components};return a?(0,l.jsx)(a,{...e,children:(0,l.jsx)(c,{...e})}):c(e)}},28453:(e,a,n)=>{n.d(a,{R:()=>r,x:()=>i});var l=n(96540);const s={},t=l.createContext(s);function r(e){const a=l.useContext(t);return l.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function i(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:r(e.components),l.createElement(t.Provider,{value:a},e.children)}}}]);