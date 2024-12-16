"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[52453],{46310:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>t,toc:()=>i});var a=s(74848),r=s(28453);const t={pagination_prev:null,pagination_next:null},l="%CSP.UI.Portal.BackgroundTaskError",i=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"PARENTPAGE",id:"parentpage",level:3},{value:"RECENT",id:"recent",level:3},{value:"Properties",id:"properties",level:2},{value:"CurrentColumn",id:"currentcolumn",level:3},{value:"TablePageSize",id:"tablepagesize",level:3},{value:"TableMaxRows",id:"tablemaxrows",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"OnDrawRibbon",id:"ondrawribbon",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"cspuiportalbackgroundtaskerror",children:"%CSP.UI.Portal.BackgroundTaskError"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.BackgroundTaskError Extends %CSP.UI.Portal.Utils [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"System Management Portal - System Operations - Background Tasks - Error Log"}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,a.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/%CSP.UI.Portal.BackgroundTaskError.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Background Tasks";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Background Task Error Log";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(n.h3,{id:"parentpage",children:"PARENTPAGE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PARENTPAGE = "/csp/sys/%CSP.UI.Portal.BackgroundTaskList.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"recent",children:"RECENT"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter RECENT = 0;\n"})}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"currentcolumn",children:"CurrentColumn"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CurrentColumn As %ZEN.Datatype.string [ InitialExpression = "Pid" ];\n'})}),"\n",(0,a.jsx)(n.p,{children:'Column the table is sorted by. Default is the "Process ID" column. User may change and the value is saved and reloaded for this page.'}),"\n",(0,a.jsx)(n.h3,{id:"tablepagesize",children:"TablePageSize"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property TablePageSize As %Integer [ InitialExpression = "0" ];\n'})}),"\n",(0,a.jsx)(n.p,{children:'Page size value user entered into the "Page size" field in the table navigator. This value is saved and reloaded for this page.'}),"\n",(0,a.jsx)(n.h3,{id:"tablemaxrows",children:"TableMaxRows"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property TableMaxRows As %Integer [ InitialExpression = "1000" ];\n'})}),"\n",(0,a.jsx)(n.p,{children:'Max rows value user entered into the "Max rows" field in the table navigator. This value is saved and reloaded for this page.'}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,a.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"ondrawribbon",children:"OnDrawRibbon"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnDrawRibbon() As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Add to the contents of the tool ribbon."})]})}function o(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>l,x:()=>i});var a=s(96540);const r={},t=a.createContext(r);function l(e){const n=a.useContext(t);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),a.createElement(t.Provider,{value:n},e.children)}}}]);