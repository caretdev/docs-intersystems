"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[16087],{24080:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>l,default:()=>a,frontMatter:()=>i,toc:()=>r});var t=s(74848),o=s(28453);const i={pagination_prev:null,pagination_next:null},l="%SYS.ClusterInfo",r=[{value:"Methods",id:"methods",level:2},{value:"IsMember",id:"ismember",level:3},{value:"IsMaster",id:"ismaster",level:3},{value:"MasterNodeName",id:"masternodename",level:3},{value:"NodeStatus",id:"nodestatus",level:3},{value:"NodeInfoConvert",id:"nodeinfoconvert",level:3},{value:"FindNode",id:"findnode",level:3},{value:"GetNodes",id:"getnodes",level:3},{value:"NodeListExecute",id:"nodelistexecute",level:3},{value:"NodeListFetch",id:"nodelistfetch",level:3},{value:"NodeListClose",id:"nodelistclose",level:3}];function d(e){const n={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,o.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"sysclusterinfo",children:"%SYS.ClusterInfo"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SYS.ClusterInfo Extends %RegisteredObject [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Cluster-specific Information"}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"ismember",children:"IsMember"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod IsMember() As %Boolean [ CodeMode = expression ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Is the system part of a cluster or not"}),"\n",(0,t.jsx)(n.h3,{id:"ismaster",children:"IsMaster"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod IsMaster() As %Boolean\n"})}),"\n",(0,t.jsx)(n.p,{children:"True when this system is the cluster master"}),"\n",(0,t.jsx)(n.h3,{id:"masternodename",children:"MasterNodeName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod MasterNodeName() As %String\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Return node name of the current master in the cluster.",(0,t.jsx)(n.br,{}),"\nReturned null string if this system is not a cluster member."]}),"\n",(0,t.jsx)(n.h3,{id:"nodestatus",children:"NodeStatus"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod NodeStatus() As %String [ Internal ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"nodeinfoconvert",children:"NodeInfoConvert"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod NodeInfoConvert(NodeInfo As %String) As %String [ Internal ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Swap the Hostname and IP fields in a CluNodeInfoD-delimited node info string ",(0,t.jsx)(n.em,{children:"if"})," Hostname does NOT contain commas, the delimiter we will use. On exit, also convert the delimiter from CluNodeInfoD to comma."]}),"\n",(0,t.jsx)(n.h3,{id:"findnode",children:"FindNode"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod FindNode(CSN As %Integer, ByRef NodeInfo As %String) As %Integer [ Internal ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Return by reference the info piece about the cluster node of the given CSN, converted to a comma-delimited string (for backward compatibility)",(0,t.jsx)(n.br,{}),"\nReturn code:"]}),"\n",(0,t.jsxs)(n.ul,{children:["\n",(0,t.jsx)(n.li,{children:"0 if there no cluster node of CSN (that is alive at the moment) - NodeInfo is undefined;"}),"\n",(0,t.jsx)(n.li,{children:"1 if the cluster node of CSN is the first piece (meaning it is the local node);"}),"\n",(0,t.jsx)(n.li,{children:"n>1 if the cluster node of CSN is the n-th piece (n has no particular meaning)."}),"\n"]}),"\n",(0,t.jsx)(n.h3,{id:"getnodes",children:"GetNodes"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetNodes(ByRef NodeInfo As %String, NoConvert As %Boolean = 0, SkipSelf As %Boolean = 0) As %Integer [ Internal ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Return by reference an array of info pieces about all cluster nodes (that are currently alive)",(0,t.jsx)(n.br,{}),"\nThe array NodeInfo is indexed by csn, with the value of each element being a comma-delimited string containing the info about the node of csn.",(0,t.jsx)(n.br,{}),"\nThe value of the top node NodeInfo is the csn of the local node",(0,t.jsx)(n.br,{}),"\nReturn code: the number of nodes in the cluster (that are alive at the moment)"]}),"\n",(0,t.jsx)(n.h3,{id:"nodelistexecute",children:"NodeListExecute"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod NodeListExecute(ByRef qHandle As %Binary, SkipSelf As %Boolean = 0) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Returns information about member nodes of the cluster using DNS resolution of the members' hostnames. If SkipSelf = 1, skip the node where the query is run"}),"\n",(0,t.jsx)(n.h3,{id:"nodelistfetch",children:"NodeListFetch"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod NodeListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"nodelistclose",children:"NodeListClose"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod NodeListClose(ByRef qHandle As %Binary) As %Status\n"})})]})}function a(e={}){const{wrapper:n}={...(0,o.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(d,{...e})}):d(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>l,x:()=>r});var t=s(96540);const o={},i=t.createContext(o);function l(e){const n=t.useContext(i);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:l(e.components),t.createElement(i.Provider,{value:n},e.children)}}}]);