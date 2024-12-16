"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[46120],{8877:(e,n,a)=>{a.r(n),a.d(n,{contentTitle:()=>r,default:()=>o,frontMatter:()=>t,toc:()=>i});var s=a(74848),l=a(28453);const t={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.Databases",i=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"MirrorName",id:"mirrorname",level:3},{value:"colDelete",id:"coldelete",level:3},{value:"colGlobals",id:"colglobals",level:3},{value:"colVolumes",id:"colvolumes",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"filterChanged",id:"filterchanged",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"OnDrawRibbon",id:"ondrawribbon",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"doDelete",id:"dodelete",level:3},{value:"doEdit",id:"doedit",level:3},{value:"doNew",id:"donew",level:3},{value:"doMirrorAdd",id:"domirroradd",level:3},{value:"doVolumes",id:"dovolumes",level:3},{value:"onPopupAction",id:"onpopupaction",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"cspuiportaldatabases",children:"%CSP.UI.Portal.Databases"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Databases Extends %CSP.UI.Portal.Utils [ System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"System Management Portal - System Administration - Local Databases"}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,s.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Databases.zen";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Configuration,Local Databases";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE = "Namespace";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Managing Local Databases";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,s.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Security requirement"}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"mirrorname",children:"MirrorName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property MirrorName As %String;\n"})}),"\n",(0,s.jsx)(n.h3,{id:"coldelete",children:"colDelete"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Store translated targetCol linkCaption for"}),"\n",(0,s.jsx)(n.h3,{id:"colglobals",children:"colGlobals"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property colGlobals As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Globals")} ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"colvolumes",children:"colVolumes"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property colVolumes As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Volumes")} ];\n'})}),"\n",(0,s.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"filterchanged",children:"filterChanged"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod filterChanged(value, tableID) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"User entered something in to the filter. Re-load the table with filter value."}),"\n",(0,s.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsx)(n.h3,{id:"ondrawribbon",children:"OnDrawRibbon"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnDrawRibbon() As %Status\n"})}),"\n",(0,s.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,s.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,s.jsx)(n.h3,{id:"dodelete",children:"doDelete"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doDelete(dir, dbname) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"doedit",children:"doEdit"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doEdit(dir, dbname, mirror) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"donew",children:"doNew"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doNew() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"domirroradd",children:"doMirrorAdd"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doMirrorAdd() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"dovolumes",children:"doVolumes"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doVolumes(dir) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."})]})}function o(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,a)=>{a.d(n,{R:()=>r,x:()=>i});var s=a(96540);const l={},t=s.createContext(l);function r(e){const n=s.useContext(t);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),s.createElement(t.Provider,{value:n},e.children)}}}]);