"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[30113],{60673:(e,n,l)=>{l.r(n),l.d(n,{contentTitle:()=>t,default:()=>c,frontMatter:()=>r,toc:()=>i});var a=l(74848),s=l(28453);const r={pagination_prev:null,pagination_next:null},t="%CSP.UI.Portal.EncryptionManage",i=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"CurrentKeyFile",id:"currentkeyfile",level:3},{value:"CurrentKeyList",id:"currentkeylist",level:3},{value:"LocatorHeader",id:"locatorheader",level:3},{value:"lblDefined",id:"lbldefined",level:3},{value:"lblKeyTable",id:"lblkeytable",level:3},{value:"lblDelete",id:"lbldelete",level:3},{value:"lblDeleted",id:"lbldeleted",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"browseSelect",id:"browseselect",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"doAdd",id:"doadd",level:3},{value:"doDelete",id:"dodelete",level:3},{value:"doDeleteKey",id:"dodeletekey",level:3},{value:"doOK",id:"dook",level:3},{value:"loadAdmin",id:"loadadmin",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"AdminRemove",id:"adminremove",level:3},{value:"KeyRemove",id:"keyremove",level:3},{value:"LoadFile",id:"loadfile",level:3},{value:"DrawAdmin",id:"drawadmin",level:3},{value:"DrawKeys",id:"drawkeys",level:3}];function d(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"cspuiportalencryptionmanage",children:"%CSP.UI.Portal.EncryptionManage"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.EncryptionManage Extends %CSP.UI.Portal.Template [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Manage Existing Encryption Key File. You may view existing adminstrators defined for a key file, delete or add more administrators to an existing key file."}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Manage Encryption Key File";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.EncryptionManage.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "System Administration,Encryption,Manage Encryption Key File";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Secure";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Security requirement"}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"currentkeyfile",children:"CurrentKeyFile"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property CurrentKeyFile As %String;\n"})}),"\n",(0,a.jsx)(n.p,{children:"This is the current key file name after user clicked the OK button."}),"\n",(0,a.jsx)(n.h3,{id:"currentkeylist",children:"CurrentKeyList"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property CurrentKeyList As %String;\n"})}),"\n",(0,a.jsx)(n.p,{children:"This is the current key list from the current key file."}),"\n",(0,a.jsx)(n.h3,{id:"locatorheader",children:"LocatorHeader"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property LocatorHeader As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Manage Encryption Key File")} ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"lbldefined",children:"lblDefined"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property lblDefined As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Administrators Defined in Key File %1")} ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"lblkeytable",children:"lblKeyTable"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property lblKeyTable As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Encryption Keys Defined in Key File %1")} ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"lbldelete",children:"lblDelete"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property lblDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to delete administrator %1 from %2?")} ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"lbldeleted",children:"lblDeleted"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property lblDeleted As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Deleted administrator: ")} ];\n'})}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(n.h3,{id:"browseselect",children:"browseSelect"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod browseSelect(name, wildcard) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"User clicked one of the Browse buttons. Save the name of the textfield so that when you return you know which textfield to update."}),"\n",(0,a.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,a.jsx)(n.h3,{id:"doadd",children:"doAdd"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doAdd(what) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"dodelete",children:"doDelete"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doDelete(deleteUser) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"dodeletekey",children:"doDeleteKey"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doDeleteKey(deleteKey) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"dook",children:"doOK"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doOK() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Load key file."}),"\n",(0,a.jsx)(n.h3,{id:"loadadmin",children:"loadAdmin"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod loadAdmin() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Load or reload Key and Admin tables after user clicked OK for Key File, or after Add or Delete."}),"\n",(0,a.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,a.jsx)(n.h3,{id:"adminremove",children:"AdminRemove"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod AdminRemove(KeyFile, Username) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"keyremove",children:"KeyRemove"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod KeyRemove(KeyFile, KeyID) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"loadfile",children:"LoadFile"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod LoadFile(KeyFile) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Load key file"}),"\n",(0,a.jsx)(n.h3,{id:"drawadmin",children:"DrawAdmin"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawAdmin(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"drawkeys",children:"DrawKeys"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawKeys(pSeed As %String) As %Status\n"})})]})}function c(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(d,{...e})}):d(e)}},28453:(e,n,l)=>{l.d(n,{R:()=>t,x:()=>i});var a=l(96540);const s={},r=a.createContext(s);function t(e){const n=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:t(e.components),a.createElement(r.Provider,{value:n},e.children)}}}]);