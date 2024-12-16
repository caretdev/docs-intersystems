"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[29768],{90359:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>c,default:()=>i,frontMatter:()=>r,toc:()=>t});var l=n(74848),o=n(28453);const r={pagination_prev:null,pagination_next:null},c="%CSP.UI.Portal.Locks",t=[{value:"Parameters",id:"parameters",level:2},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"Properties",id:"properties",level:2},{value:"colProcess",id:"colprocess",level:3},{value:"colRemoteClient",id:"colremoteclient",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"doRemoveRemote",id:"doremoveremote",level:3},{value:"doRemove",id:"doremove",level:3},{value:"InTransaction",id:"intransaction",level:3},{value:"RemoveLocks",id:"removelocks",level:3}];function a(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,o.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(s.header,{children:(0,l.jsx)(s.h1,{id:"cspuiportallocks",children:"%CSP.UI.Portal.Locks"})}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Locks Extends %CSP.UI.Portal.LocksView [ System = 4 ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"System Management Portal - System Operations - Manage Locks"}),"\n",(0,l.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(s.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Locks.zen";\n'})}),"\n",(0,l.jsx)(s.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Locks";\n'})}),"\n",(0,l.jsx)(s.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Manage Locks";\n'})}),"\n",(0,l.jsx)(s.p,{children:"Displayed name of this page."}),"\n",(0,l.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(s.h3,{id:"colprocess",children:"colProcess"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property colProcess As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove_all_locks_for_process")} ];\n'})}),"\n",(0,l.jsx)(s.p,{children:"Store translated targetCol linkCaption for"}),"\n",(0,l.jsx)(s.h3,{id:"colremoteclient",children:"colRemoteClient"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property colRemoteClient As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove_all_locks_from_remote_client")} ];\n'})}),"\n",(0,l.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsx)(s.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String [ CodeMode = expression ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,l.jsx)(s.h3,{id:"doremoveremote",children:"doRemoveRemote"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doRemoveRemote(DeleteID, RemoveAll, RemoteOwner) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:'To remove all remote add "C" as preface.'}),"\n",(0,l.jsx)(s.h3,{id:"doremove",children:"doRemove"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doRemove(DeleteID, RemoveAll, RemoteOwner) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:'Remove a lock. If "RemoveAll" is 1 then all locks for that process is removed. If RemoveAll is 0, then DeleteID is the lock reference. If RemoveAll is 1, then DeleteID is the Pid/Client or Owner.'}),"\n",(0,l.jsx)(s.h3,{id:"intransaction",children:"InTransaction"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod InTransaction(DeleteID) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"This method is called to check whether a local lock is currently in an option transaction."}),"\n",(0,l.jsx)(s.h3,{id:"removelocks",children:"RemoveLocks"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RemoveLocks(DeleteID, RemoveAllLocksForProcess) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Remove locks from server. If RemoveAllLocksForProcess, then DeleteID is PID. OW DeleteID contains three pieces lock reference delimited by comma."})]})}function i(e={}){const{wrapper:s}={...(0,o.R)(),...e.components};return s?(0,l.jsx)(s,{...e,children:(0,l.jsx)(a,{...e})}):a(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>c,x:()=>t});var l=n(96540);const o={},r=l.createContext(o);function c(e){const s=l.useContext(r);return l.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function t(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:c(e.components),l.createElement(r.Provider,{value:s},e.children)}}}]);