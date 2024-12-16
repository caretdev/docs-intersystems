"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[31890],{98613:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>c,default:()=>d,frontMatter:()=>l,toc:()=>r});var t=n(74848),a=n(28453);const l={pagination_prev:null,pagination_next:null},c="SYS.WSMon.wsDatabase",r=[{value:"Properties",id:"properties",level:2},{value:"Name",id:"name",level:3},{value:"Directory",id:"directory",level:3},{value:"SizeAllocated",id:"sizeallocated",level:3},{value:"Mounted",id:"mounted",level:3},{value:"ReadOnly",id:"readonly",level:3},{value:"Cluster",id:"cluster",level:3},{value:"FreeSpace",id:"freespace",level:3},{value:"Methods",id:"methods",level:2},{value:"ListExecute",id:"listexecute",level:3},{value:"ListClose",id:"listclose",level:3},{value:"ListFetch",id:"listfetch",level:3},{value:"Sample",id:"sample",level:3}];function i(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"syswsmonwsdatabase",children:"SYS.WSMon.wsDatabase"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class SYS.WSMon.wsDatabase Extends SYS.WSMon.wsResource [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Information about databases used by a InterSystems IRIS instance. The List() query is used by the SYS.WSMon.Service.EnumDatabase() Web method, to provide details on all databases. The Sample() method can be used to Get information about a specific database."}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"name",children:"Name"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Name As %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The name given to the database"}),"\n",(0,t.jsx)(s.h3,{id:"directory",children:"Directory"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Directory As %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The path and file name of of the database."}),"\n",(0,t.jsx)(s.h3,{id:"sizeallocated",children:"SizeAllocated"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SizeAllocated As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The amount of disk space (in MB) allocated for this database."}),"\n",(0,t.jsx)(s.h3,{id:"mounted",children:"Mounted"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Mounted As %Boolean;\n"})}),"\n",(0,t.jsx)(s.p,{children:"An indicator whether this database is currently mounted."}),"\n",(0,t.jsx)(s.h3,{id:"readonly",children:"ReadOnly"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ReadOnly As %Boolean;\n"})}),"\n",(0,t.jsx)(s.p,{children:"An indicator whether this database is mounted with only read access."}),"\n",(0,t.jsx)(s.h3,{id:"cluster",children:"Cluster"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Cluster As %Boolean;\n"})}),"\n",(0,t.jsx)(s.p,{children:"An indicator whether this database is monted with cluster access."}),"\n",(0,t.jsx)(s.h3,{id:"freespace",children:"FreeSpace"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property FreeSpace As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The available space (in MB) in this database. Note that the %Monitor FreeSpace property must be active."}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListExecute(ByRef qHandle As %Binary) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Sample counters for all Databases"}),"\n",(0,t.jsx)(s.h3,{id:"listclose",children:"ListClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = SampleExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = SampleExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"sample",children:"Sample"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Sample(index) As SYS.WSMon.wsDatabase\n"})}),"\n",(0,t.jsx)(s.p,{children:"Instantiate the class and fill in current values for all properties. 'index' is an integer index into the database list."})]})}function d(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(i,{...e})}):i(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>c,x:()=>r});var t=n(96540);const a={},l=t.createContext(a);function c(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:c(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);