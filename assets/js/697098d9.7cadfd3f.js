"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[25967],{9509:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>c,default:()=>o,frontMatter:()=>n,toc:()=>i});var a=r(74848),t=r(28453);const n={pagination_prev:null,pagination_next:null},c="%SYS.DatabaseQuery",i=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"Methods",id:"methods",level:2},{value:"GetDatabaseFreeSpace",id:"getdatabasefreespace",level:3},{value:"GetFreeSpace",id:"getfreespace",level:3},{value:"FreeSpaceExecute",id:"freespaceexecute",level:3},{value:"FreeSpaceFetch",id:"freespacefetch",level:3},{value:"FreeSpaceClose",id:"freespaceclose",level:3}];function l(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(s.header,{children:(0,a.jsx)(s.h1,{id:"sysdatabasequery",children:"%SYS.DatabaseQuery"})}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYS.DatabaseQuery Extends %SYSTEM.Help [ Abstract, System = 4 ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Provides database queries from other namespaces than %SYS."}),"\n",(0,a.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,a.jsx)(s.p,{children:"Default Localization Domain"}),"\n",(0,a.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(s.h3,{id:"getdatabasefreespace",children:"GetDatabaseFreeSpace"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDatabaseFreeSpace(Directory As %String, ByRef FreeSpace As %Float) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Calculate remaining free space in a database."}),"\n",(0,a.jsxs)(s.p,{children:["Parameters:",(0,a.jsx)(s.br,{}),"\nDirectory - Physical directory of the database.",(0,a.jsx)(s.br,{}),"\nFreespace - (byref) Returned # of MB of freespace in the directory."]}),"\n",(0,a.jsx)(s.p,{children:"Note: This requires %Admin_Operate:USE permission"}),"\n",(0,a.jsx)(s.h3,{id:"getfreespace",children:"GetFreeSpace"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetFreeSpace(Directory As %String, ByRef FreeSpace As %Float, ByRef FreeBlocks As %Integer) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Calculate remaining free space in a database."}),"\n",(0,a.jsxs)(s.p,{children:["Parameters:",(0,a.jsx)(s.br,{}),"\nDirectory - Physical directory of the database.",(0,a.jsx)(s.br,{}),"\nFreespace - (byref) Returned # of MB of freespace in the directory.",(0,a.jsx)(s.br,{}),"\nFreeBlocks - (byref) Returned # of blocks of freespace in the directory."]}),"\n",(0,a.jsx)(s.p,{children:"Note: This requires %Admin_Operate:USE permission"}),"\n",(0,a.jsx)(s.h3,{id:"freespaceexecute",children:"FreeSpaceExecute"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod FreeSpaceExecute(ByRef qHandle As %Binary, Mask As %String = "*") As %Status [ Internal ]\n'})}),"\n",(0,a.jsx)(s.p,{children:"Provides a freespace list of all local databases mounted in this configuration."}),"\n",(0,a.jsxs)(s.p,{children:["Note that calculating the free space may take a while.",(0,a.jsx)(s.br,{}),"\nParameters:",(0,a.jsx)(s.br,{}),'\nMask="*" or $lb(directory1,directory2,...)',(0,a.jsx)(s.br,{}),"\nFor the FreeSpace Report, You can also enter the following in order to select by database name:",(0,a.jsx)(s.br,{}),'\n"String,String1" - Any name matching one of these elements',(0,a.jsx)(s.br,{}),'\n"String*" - Any Name starting with "String"',(0,a.jsx)(s.br,{}),'\n"String,String1*,String2" - Any Name matching one of these elements, or starting with "String1"',(0,a.jsx)(s.br,{}),"\nNotes: Databases which are not mounted are not returned by this query.",(0,a.jsx)(s.br,{}),"\nThis requires %Admin_Operate:USE permission"]}),"\n",(0,a.jsx)(s.h3,{id:"freespacefetch",children:"FreeSpaceFetch"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FreeSpaceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"freespaceclose",children:"FreeSpaceClose"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FreeSpaceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = FreeSpaceExecute ]\n"})})]})}function o(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,a.jsx)(s,{...e,children:(0,a.jsx)(l,{...e})}):l(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>c,x:()=>i});var a=r(96540);const t={},n=a.createContext(t);function c(e){const s=a.useContext(n);return a.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:c(e.components),a.createElement(n.Provider,{value:s},e.children)}}}]);