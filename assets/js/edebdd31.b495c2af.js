"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[61825],{9641:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>a,frontMatter:()=>r,toc:()=>c});var t=n(74848),l=n(28453);const r={pagination_prev:null,pagination_next:null},i="SYS.Cluster",c=[{value:"Methods",id:"methods",level:2},{value:"ClearSwitch",id:"clearswitch",level:3},{value:"ClearSwitchSlaves",id:"clearswitchslaves",level:3},{value:"MembersInfo",id:"membersinfo",level:3},{value:"SetSwitch",id:"setswitch",level:3},{value:"SetSwitchSlaves",id:"setswitchslaves",level:3},{value:"NodeInfoConvert",id:"nodeinfoconvert",level:3},{value:"FindNode",id:"findnode",level:3},{value:"GetNodes",id:"getnodes",level:3},{value:"NodeListExecute",id:"nodelistexecute",level:3},{value:"NodeListFetch",id:"nodelistfetch",level:3},{value:"NodeListClose",id:"nodelistclose",level:3},{value:"JournalMarkersExecute",id:"journalmarkersexecute",level:3},{value:"JournalMarkersFetch",id:"journalmarkersfetch",level:3},{value:"JournalMarkersClose",id:"journalmarkersclose",level:3}];function o(e){const s={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,l.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"syscluster",children:"SYS.Cluster"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class SYS.Cluster Extends %RegisteredObject\n"})}),"\n",(0,t.jsx)(s.p,{children:"Cluster-specific"}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"clearswitch",children:"ClearSwitch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ClearSwitch(switch As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Clear a switch cluster wide (NOT including local system)"}),"\n",(0,t.jsx)(s.h3,{id:"clearswitchslaves",children:"ClearSwitchSlaves"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ClearSwitchSlaves(switch As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Clear a switch on slave nodes only (NOT including local system)"}),"\n",(0,t.jsx)(s.h3,{id:"membersinfo",children:"MembersInfo"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MembersInfo() As %RawString [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Information on live member systems of current cluster"}),"\n",(0,t.jsx)(s.p,{children:"Format of the return value:"}),"\n",(0,t.jsx)(s.p,{children:"port,ip,csn;..."}),"\n",(0,t.jsx)(s.p,{children:"where"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"port - Default Port Number of the cluster member"}),"\n",(0,t.jsx)(s.li,{children:"ip - IP address of the cluster member"}),"\n",(0,t.jsx)(s.li,{children:"csn - Cluster System Number of the cluster member\nThe first (port,IP,csn) value set always refers to the local system."}),"\n"]}),"\n",(0,t.jsx)(s.p,{children:"On a non-clustered system, returns its Default Port Number only."}),"\n",(0,t.jsx)(s.h3,{id:"setswitch",children:"SetSwitch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetSwitch(switch As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Set a switch cluster wide (NOT including local system)"}),"\n",(0,t.jsx)(s.h3,{id:"setswitchslaves",children:"SetSwitchSlaves"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetSwitchSlaves(switch As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"nodeinfoconvert",children:"NodeInfoConvert"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod NodeInfoConvert(NodeInfo As %String) As %String [ CodeMode = expression, Deprecated, Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Swap the Hostname and IP fields in a CluNodeInfoD-delimited node info string ",(0,t.jsx)(s.em,{children:"if"})," Hostname does NOT contain commas, the delimiter we will use. On exit, also convert the delimiter from CluNodeInfoD to comma. NOTE: This method is deprecated. Use %SYS.ClusterInfo instead."]}),"\n",(0,t.jsx)(s.h3,{id:"findnode",children:"FindNode"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FindNode(CSN As %Integer, ByRef NodeInfo As %String) As %Integer [ CodeMode = expression, Deprecated, Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return by reference the info piece about the cluster node of the given CSN, converted to a comma-delimited string (for backward compatibility)",(0,t.jsx)(s.br,{}),"\nReturn code:"]}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"0 if there no cluster node of CSN (that is alive at the moment) - NodeInfo is undefined;"}),"\n",(0,t.jsx)(s.li,{children:"1 if the cluster node of CSN is the first piece (meaning it is the local node);"}),"\n",(0,t.jsx)(s.li,{children:"n>1 if the cluster node of CSN is the n-th piece (n has no particular meaning).\nNOTE: This method is deprecated. Use %SYS.ClusterInfo instead."}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"getnodes",children:"GetNodes"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetNodes(ByRef NodeInfo As %String, NoConvert As %Boolean = 0, SkipSelf As %Boolean = 0) As %Integer [ CodeMode = expression, Deprecated, Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return by reference an array of info pieces about all cluster nodes (that are currently alive)",(0,t.jsx)(s.br,{}),"\nThe array NodeInfo is indexed by csn, with the value of each element being a comma-delimited string containing the info about the node of csn.",(0,t.jsx)(s.br,{}),"\nThe value of the top node NodeInfo is the csn of the local node",(0,t.jsx)(s.br,{}),"\nReturn code: the number of nodes in the cluster (that are alive at the moment) NOTE: This method is deprecated. Use %SYS.ClusterInfo instead."]}),"\n",(0,t.jsx)(s.h3,{id:"nodelistexecute",children:"NodeListExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod NodeListExecute(ByRef qHandle As %Binary, SkipSelf As %Boolean = 0) As %Status [ CodeMode = expression ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns info about member nodes of the cluster If SkipSelf = 1, skip the node where the query is run NOTE: This query is deprecated. Use %SYS.ClusterInfo instead."}),"\n",(0,t.jsx)(s.h3,{id:"nodelistfetch",children:"NodeListFetch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod NodeListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"nodelistclose",children:"NodeListClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod NodeListClose(ByRef qHandle As %Binary) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"journalmarkersexecute",children:"JournalMarkersExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod JournalMarkersExecute(ByRef qHandle As %Binary, LogFile As %SysPath = "") As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Returns info about cluster journal markers"}),"\n",(0,t.jsx)(s.h3,{id:"journalmarkersfetch",children:"JournalMarkersFetch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod JournalMarkersFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"journalmarkersclose",children:"JournalMarkersClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod JournalMarkersClose(ByRef qHandle As %Binary) As %Status\n"})})]})}function a(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>c});var t=n(96540);const l={},r=t.createContext(l);function i(e){const s=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),t.createElement(r.Provider,{value:s},e.children)}}}]);