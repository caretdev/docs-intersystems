"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[37785],{34278:(e,a,n)=>{n.r(a),n.d(a,{contentTitle:()=>c,default:()=>d,frontMatter:()=>l,toc:()=>t});var s=n(74848),r=n(28453);const l={pagination_prev:null,pagination_next:null},c="%CSP.UI.Portal.Database",t=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"Properties",id:"properties",level:2},{value:"CanBeMirrored",id:"canbemirrored",level:3},{value:"MirrorSetName",id:"mirrorsetname",level:3},{value:"NoJournalWarningDBs",id:"nojournalwarningdbs",level:3},{value:"ResourcePage",id:"resourcepage",level:3},{value:"OldMaxSize",id:"oldmaxsize",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"changeJournal",id:"changejournal",level:3},{value:"changeMaxSize",id:"changemaxsize",level:3},{value:"changeReadOnly",id:"changereadonly",level:3},{value:"doAddMirror",id:"doaddmirror",level:3},{value:"doSave",id:"dosave",level:3},{value:"validate",id:"validate",level:3},{value:"getDBSizeLimit",id:"getdbsizelimit",level:3},{value:"updateDirectory",id:"updatedirectory",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"SaveData",id:"savedata",level:3},{value:"doResource",id:"doresource",level:3},{value:"checkCACHETEMP",id:"checkcachetemp",level:3}];function i(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(a.header,{children:(0,s.jsx)(a.h1,{id:"cspuiportaldatabase",children:"%CSP.UI.Portal.Database"})}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Database Extends %CSP.UI.Portal.DatabaseTemplate [ System = 4 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Zen page for System Management Portal - Edit Local Database Properties"}),"\n",(0,s.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Database Properties";\n'})}),"\n",(0,s.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,s.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Database.zen";\n'})}),"\n",(0,s.jsx)(a.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Configuration,Local Databases,Database Properties";\n'})}),"\n",(0,s.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(a.h3,{id:"canbemirrored",children:"CanBeMirrored"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property CanBeMirrored As %Boolean;\n"})}),"\n",(0,s.jsx)(a.h3,{id:"mirrorsetname",children:"MirrorSetName"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property MirrorSetName As %ZEN.Datatype.boolean(ZENURL = "MirrorSetName");\n'})}),"\n",(0,s.jsx)(a.p,{children:"MirrorSetName is not null if this window is called from Mirroring Settings"}),"\n",(0,s.jsx)(a.h3,{id:"nojournalwarningdbs",children:"NoJournalWarningDBs"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property NoJournalWarningDBs As %ZEN.Datatype.string [ InitialExpression = ",IRISLIB,IRISTEMP,DOCBOOK,IRISLOCALDATA," ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"resourcepage",children:"ResourcePage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property ResourcePage As %ZEN.Datatype.caption [ InitialExpression = {..Link("/csp/sys/sec/%CSP.UI.Portal.Dialog.Resource.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"oldmaxsize",children:"OldMaxSize"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property OldMaxSize As %ZEN.Datatype.integer;\n"})}),"\n",(0,s.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(a.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(a.h3,{id:"changejournal",children:"changeJournal"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeJournal(newVal) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"if user unchecked Journal State, show warning"}),"\n",(0,s.jsx)(a.h3,{id:"changemaxsize",children:"changeMaxSize"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeMaxSize(newVal) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"changereadonly",children:"changeReadOnly"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeReadOnly(newVal) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"doaddmirror",children:"doAddMirror"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doAddMirror() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Add db to mirror"}),"\n",(0,s.jsx)(a.h3,{id:"dosave",children:"doSave"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"validate",children:"validate"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod validate(proxy) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"getdbsizelimit",children:"getDBSizeLimit"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getDBSizeLimit() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Get the max size for the DB, based on the current block size."}),"\n",(0,s.jsx)(a.h3,{id:"updatedirectory",children:"updateDirectory"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod updateDirectory(NewDirectory) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Set focus to the Name field."}),"\n",(0,s.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsx)(a.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Return the array of links to show in the locator bar.",(0,s.jsx)(a.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,s.jsx)(a.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,s.jsx)(a.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,s.jsx)(a.h3,{id:"savedata",children:"SaveData"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Save general association data to server.",(0,s.jsx)(a.br,{}),"\nReturns proxy.ok = 1 (save successful) or 0 (error occurred)",(0,s.jsx)(a.br,{}),"\nproxy.Message (save successful, with warning message: require restart)",(0,s.jsx)(a.br,{}),"\nproxy.ErrorMessage (save failed and display this error message). If proxy.ok is 1 and no messages returned then we return to Database list page."]}),"\n",(0,s.jsx)(a.h3,{id:"doresource",children:"doResource"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doResource() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"checkcachetemp",children:"checkCACHETEMP"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod checkCACHETEMP(newdir As %String) As %Integer [ ZenMethod ]\n"})}),"\n",(0,s.jsxs)(a.p,{children:["This method is called from JavaScript if user is modifying IRISEMP and changed to a different directory",(0,s.jsx)(a.br,{}),"\nWe check here to see if the newly selected directory is a IRISTEMP type of database. Returns a number."]})]})}function d(e={}){const{wrapper:a}={...(0,r.R)(),...e.components};return a?(0,s.jsx)(a,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,a,n)=>{n.d(a,{R:()=>c,x:()=>t});var s=n(96540);const r={},l=s.createContext(r);function c(e){const a=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function t(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:c(e.components),s.createElement(l.Provider,{value:a},e.children)}}}]);