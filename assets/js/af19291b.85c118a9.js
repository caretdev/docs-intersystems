"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[60218],{21965:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>i,default:()=>o,frontMatter:()=>n,toc:()=>c});var t=r(74848),a=r(28453);const n={pagination_prev:null,pagination_next:null},i="%CSP.UI.System.Mirror",c=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"Methods",id:"methods",level:2},{value:"MirrorActivateCatchupDB",id:"mirroractivatecatchupdb",level:3},{value:"MirrorMountDB",id:"mirrormountdb",level:3},{value:"MirrorRemoveDB",id:"mirrorremovedb",level:3},{value:"MirrorAddDatabases",id:"mirroradddatabases",level:3},{value:"LogMsg",id:"logmsg",level:3},{value:"GetDBs",id:"getdbs",level:3},{value:"MirroredDatabaseListExecute",id:"mirroreddatabaselistexecute",level:3},{value:"MirroredDatabaseListFetch",id:"mirroreddatabaselistfetch",level:3},{value:"MirroredDatabaseListClose",id:"mirroreddatabaselistclose",level:3},{value:"MemberStatusListExecute",id:"memberstatuslistexecute",level:3},{value:"MemberStatusListFetch",id:"memberstatuslistfetch",level:3},{value:"MemberStatusListClose",id:"memberstatuslistclose",level:3},{value:"MemberStatus",id:"memberstatus",level:3}];function l(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"cspuisystemmirror",children:"%CSP.UI.System.Mirror"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.System.Mirror [ Abstract, System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Methods used by mirror pages."}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,t.jsx)(s.p,{children:"Default Localization Domain"}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"mirroractivatecatchupdb",children:"MirrorActivateCatchupDB"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MirrorActivateCatchupDB(ByRef pParms, ByRef pItems) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Activate and/or catchup Mirror DBs."}),"\n",(0,t.jsx)(s.h3,{id:"mirrormountdb",children:"MirrorMountDB"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MirrorMountDB(ByRef pParms, ByRef pItems) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Mount mirrored databases"}),"\n",(0,t.jsx)(s.h3,{id:"mirrorremovedb",children:"MirrorRemoveDB"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MirrorRemoveDB(ByRef pParms, ByRef pItems) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Remove databases from the mirror"}),"\n",(0,t.jsx)(s.h3,{id:"mirroradddatabases",children:"MirrorAddDatabases"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MirrorAddDatabases(ByRef pParms, ByRef pItems) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Add databases to the mirror"}),"\n",(0,t.jsx)(s.h3,{id:"logmsg",children:"LogMsg"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod LogMsg(Msg As %String, ERROR As %String = "")\n'})}),"\n",(0,t.jsx)(s.p,{children:'Log msg into ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"ErrorCount") and ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"Details")'}),"\n",(0,t.jsx)(s.h3,{id:"getdbs",children:"GetDBs"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDBs(ByRef DBArray, SelectedMirror) As %Integer\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return DB array for Mirrorred DBs. Sort it so that the ones that need work are on top.",(0,t.jsx)(s.br,{}),"\nIn this order: Dismounted; those that need Activate and/or Catchup."]}),"\n",(0,t.jsx)(s.h3,{id:"mirroreddatabaselistexecute",children:"MirroredDatabaseListExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod MirroredDatabaseListExecute(ByRef qHandle As %Binary, MirrorSetName As %String = "*", Name As %String = "*", Action As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Return Mirrorred DBs. Sort it so that the ones that need work are on top.",(0,t.jsx)(s.br,{}),"\nIn this order: Dismounted; those that need Activate and/or Catchup.",(0,t.jsx)(s.br,{}),"\nMirrorSetName can be passed in for async members.",(0,t.jsx)(s.br,{}),"\nAction is (M)ount, (A)ctivate, (C)atchup, or (R)emove.",(0,t.jsx)(s.br,{}),"\nSpecifying one of these will only return DBs on which that action can currently be performed."]}),"\n",(0,t.jsx)(s.h3,{id:"mirroreddatabaselistfetch",children:"MirroredDatabaseListFetch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MirroredDatabaseListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = MirroredDatabaseListExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"mirroreddatabaselistclose",children:"MirroredDatabaseListClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MirroredDatabaseListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = MirroredDatabaseListExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"memberstatuslistexecute",children:"MemberStatusListExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod MemberStatusListExecute(ByRef qHandle As %Binary, MirrorName As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Wrapper for ##class(SYS.Mirror).MemberStatusList() to be used on failover members.",(0,t.jsx)(s.br,{}),"\nIt adds columns for Async Type and X.509 DN."]}),"\n",(0,t.jsx)(s.h3,{id:"memberstatuslistfetch",children:"MemberStatusListFetch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MemberStatusListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = MemberStatusListExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"memberstatuslistclose",children:"MemberStatusListClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MemberStatusListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = MemberStatusListExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"memberstatus",children:"MemberStatus"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MemberStatus() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return localized text representing the current mirror member status."})]})}function o(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(l,{...e})}):l(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>i,x:()=>c});var t=r(96540);const a={},n=t.createContext(a);function i(e){const s=t.useContext(n);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),t.createElement(n.Provider,{value:s},e.children)}}}]);