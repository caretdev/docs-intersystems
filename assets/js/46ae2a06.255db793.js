"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[57722],{51274:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>r,toc:()=>t});var a=n(74848),l=n(28453);const r={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.Resources",t=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"FILETYPE",id:"filetype",level:3},{value:"msgConfirm",id:"msgconfirm",level:3},{value:"msgDeleteMsgs",id:"msgdeletemsgs",level:3},{value:"msgDBDefault",id:"msgdbdefault",level:3},{value:"Spec",id:"spec",level:3},{value:"PermissionRead",id:"permissionread",level:3},{value:"PermissionWrite",id:"permissionwrite",level:3},{value:"PermissionUse",id:"permissionuse",level:3},{value:"PermissionNo",id:"permissionno",level:3},{value:"colDelete",id:"coldelete",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"searchPane",id:"searchpane",level:3},{value:"resultPane",id:"resultpane",level:3},{value:"Methods",id:"methods",level:2},{value:"doSearch",id:"dosearch",level:3},{value:"keyUp",id:"keyup",level:3},{value:"GetLastSearch",id:"getlastsearch",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"ExecuteRS",id:"executers",level:3},{value:"doDelete",id:"dodelete",level:3},{value:"doEdit",id:"doedit",level:3},{value:"doExport",id:"doexport",level:3},{value:"doImport",id:"doimport",level:3},{value:"doProfile",id:"doprofile",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"reloadTable",id:"reloadtable",level:3},{value:"DrawTableHeader",id:"drawtableheader",level:3},{value:"Delete",id:"delete",level:3},{value:"onloadHandler",id:"onloadhandler",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(s.header,{children:(0,a.jsx)(s.h1,{id:"cspuiportalresources",children:"%CSP.UI.Portal.Resources"})}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Resources Extends %CSP.UI.Template.List [ System = 4 ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"System Management Portal - System Administration - Resources"}),"\n",(0,a.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(s.h3,{id:"autons",children:"AUTONS"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(s.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,a.jsx)(s.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Resources.zen";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "System Administration,Security,Resources";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE = "Security";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Managing Resources";\n'})}),"\n",(0,a.jsx)(s.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(s.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Secure";\n'})}),"\n",(0,a.jsx)(s.p,{children:"Security requirement"}),"\n",(0,a.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(s.h3,{id:"filetype",children:"FILETYPE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property FILETYPE As %String [ InitialExpression = "Resource" ];\n'})}),"\n",(0,a.jsx)(s.h3,{id:"msgconfirm",children:"msgConfirm"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgConfirm As %String [ InitialExpression = {$$$TextJS("Are you sure you want to delete resource code %1?")} ];\n'})}),"\n",(0,a.jsx)(s.h3,{id:"msgdeletemsgs",children:"msgDeleteMsgs"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgDeleteMsgs As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to delete the selected %1 resource(s)?")} ];\n'})}),"\n",(0,a.jsx)(s.h3,{id:"msgdbdefault",children:"msgDBDefault"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgDBDefault As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("(%DB_%DEFAULT cannot be deleted.)")} ];\n'})}),"\n",(0,a.jsx)(s.h3,{id:"spec",children:"Spec"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property Spec As %ZEN.Datatype.string [ InitialExpression = "*" ];\n'})}),"\n",(0,a.jsxs)(s.p,{children:["Resource Name Spec on the Search pane. User can enter any of the following:",(0,a.jsx)(s.br,{}),"\nNames - Comma separated list of resource names"]}),"\n",(0,a.jsxs)(s.ul,{children:["\n",(0,a.jsx)(s.li,{children:'"*" - All records match'}),"\n",(0,a.jsx)(s.li,{children:'"String,String1" - Any records matching one of these elements'}),"\n",(0,a.jsx)(s.li,{children:'"String*" - Any record starting with "String"'}),"\n",(0,a.jsx)(s.li,{children:'"String,String1*,String2" - Any record matching one of these elements, or starting with "String1"'}),"\n"]}),"\n",(0,a.jsx)(s.h3,{id:"permissionread",children:"PermissionRead"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property PermissionRead As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,a.jsx)(s.p,{children:"Read public permission on the Search pane. Default to checked."}),"\n",(0,a.jsx)(s.h3,{id:"permissionwrite",children:"PermissionWrite"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property PermissionWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,a.jsx)(s.p,{children:"Write public permission on the Search pane. Default to checked."}),"\n",(0,a.jsx)(s.h3,{id:"permissionuse",children:"PermissionUse"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property PermissionUse As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,a.jsx)(s.p,{children:"Use public permission on the Search pane. Default to checked."}),"\n",(0,a.jsx)(s.h3,{id:"permissionno",children:"PermissionNo"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property PermissionNo As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,a.jsx)(s.p,{children:"No public permission on the Search pane. Default to checked."}),"\n",(0,a.jsx)(s.h3,{id:"coldelete",children:"colDelete"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];\n'})}),"\n",(0,a.jsx)(s.p,{children:"Store translated targetCol linkCaption for"}),"\n",(0,a.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(s.h3,{id:"searchpane",children:"searchPane"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'XData searchPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(s.p,{children:"This pane displays the search criteria. We provide defaults and user can change them. User's values are saved and used as future defaults for this user. Subclass to override."}),"\n",(0,a.jsx)(s.h3,{id:"resultpane",children:"resultPane"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'XData resultPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(s.h3,{id:"dosearch",children:"doSearch"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doSearch() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"User clicked Go to start search."}),"\n",(0,a.jsx)(s.h3,{id:"keyup",children:"keyUp"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod keyUp(zenEvent) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Check if user hit [Enter]."}),"\n",(0,a.jsx)(s.h3,{id:"getlastsearch",children:"GetLastSearch"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetLastSearch() As %String\n"})}),"\n",(0,a.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(s.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(s.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(s.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,a.jsx)(s.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,a.jsx)(s.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,a.jsx)(s.h3,{id:"executers",children:"ExecuteRS"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean\n"})}),"\n",(0,a.jsx)(s.p,{children:"Method for executing the query."}),"\n",(0,a.jsx)(s.h3,{id:"dodelete",children:"doDelete"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doDelete(resource) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Delete selected resource(s)."}),"\n",(0,a.jsx)(s.h3,{id:"doedit",children:"doEdit"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doEdit(resource) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"doexport",children:"doExport"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doExport() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"doimport",children:"doImport"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doImport() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"doprofile",children:"doProfile"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doProfile() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,a.jsx)(s.h3,{id:"reloadtable",children:"reloadTable"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod reloadTable() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"drawtableheader",children:"DrawTableHeader"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawTableHeader(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Draw the contents of the Table Header (the region between the diagram and the table)."}),"\n",(0,a.jsx)(s.h3,{id:"delete",children:"Delete"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Delete(resource As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Delete selected resource/s now."}),"\n",(0,a.jsx)(s.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["When page is loaded, check if this is a ReadOnly for EMS. If it is then disable the multiple select.",(0,a.jsx)(s.br,{}),"\nElse disable the checkbox for %DB_%DEFAULT."]})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,a.jsx)(s,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>t});var a=n(96540);const l={},r=a.createContext(l);function i(e){const s=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function t(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),a.createElement(r.Provider,{value:s},e.children)}}}]);