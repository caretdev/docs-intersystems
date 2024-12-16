"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[67583],{28893:(e,l,r)=>{r.r(l),r.d(l,{contentTitle:()=>a,default:()=>c,frontMatter:()=>o,toc:()=>i});var n=r(74848),s=r(28453);const o={pagination_prev:null,pagination_next:null},a="%CSP.UI.System.OpenJournalPane",i=[{value:"Methods",id:"methods",level:2},{value:"DrawHEAD",id:"drawhead",level:3},{value:"DrawBODY",id:"drawbody",level:3},{value:"HasDBPermission",id:"hasdbpermission",level:3},{value:"ShowRecordDetails",id:"showrecorddetails",level:3},{value:"DrawJournalProfile",id:"drawjournalprofile",level:3},{value:"RefreshProfile",id:"refreshprofile",level:3},{value:"CancelProfile",id:"cancelprofile",level:3},{value:"ComputeJournalProfileOld",id:"computejournalprofileold",level:3},{value:"ComputeJournalProfile",id:"computejournalprofile",level:3},{value:"GetJournalProfile",id:"getjournalprofile",level:3}];function t(e){const l={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(l.header,{children:(0,n.jsx)(l.h1,{id:"cspuisystemopenjournalpane",children:"%CSP.UI.System.OpenJournalPane"})}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Class %CSP.UI.System.OpenJournalPane Extends %CSP.Util.Pane [ System = 4 ]\n"})}),"\n",(0,n.jsx)(l.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,n.jsx)(l.p,{children:"This pane is used to display system journal file contents"}),"\n",(0,n.jsx)(l.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(l.h3,{id:"drawhead",children:"DrawHEAD"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Method DrawHEAD(pInstance As PageInstance) As %Status\n"})}),"\n",(0,n.jsx)(l.h3,{id:"drawbody",children:"DrawBODY"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"Method DrawBODY(pInstance As PageInstance) As %Status\n"})}),"\n",(0,n.jsx)(l.p,{children:"Draw the BODY of the detail pane"}),"\n",(0,n.jsx)(l.h3,{id:"hasdbpermission",children:"HasDBPermission"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"ClassMethod HasDBPermission(tDB As %String) As %Boolean\n"})}),"\n",(0,n.jsx)(l.p,{children:"Returns whether current user's base permissions allow access to given database (directory)"}),"\n",(0,n.jsx)(l.h3,{id:"showrecorddetails",children:"ShowRecordDetails"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"ClassMethod ShowRecordDetails(pFile As %String, pOffset As %Integer)\n"})}),"\n",(0,n.jsx)(l.p,{children:"Called by client to show details for a journal record"}),"\n",(0,n.jsx)(l.h3,{id:"drawjournalprofile",children:"DrawJournalProfile"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'ClassMethod DrawJournalProfile(pClear As %Boolean, pFile As %String, pSortBy As %String = "", pMode As %Integer = 0) As %Status\n'})}),"\n",(0,n.jsx)(l.p,{children:"Given a journal file name, Draw an HTML profile of the contents of the journal."}),"\n",(0,n.jsx)(l.h3,{id:"refreshprofile",children:"RefreshProfile"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:'ClassMethod RefreshProfile(pClear As %Boolean, pFile As %String, pSortBy As %String = "")\n'})}),"\n",(0,n.jsx)(l.p,{children:"Called from client to update the profile page"}),"\n",(0,n.jsx)(l.h3,{id:"cancelprofile",children:"CancelProfile"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"ClassMethod CancelProfile(pFile As %String)\n"})}),"\n",(0,n.jsx)(l.p,{children:"Called from client to stop a profile calculation."}),"\n",(0,n.jsx)(l.h3,{id:"computejournalprofileold",children:"ComputeJournalProfileOld"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"ClassMethod ComputeJournalProfileOld(pFile As %String)\n"})}),"\n",(0,n.jsxs)(l.p,{children:["Given a journal file name, build a profile of the contents of the journal within a temp global. This takes the form:",(0,n.jsx)(l.br,{}),"\n^IRIS.Temp.JournalProfile(pFile) = status: 0 running, 1 complete",(0,n.jsx)(l.br,{}),'\n^IRIS.Temp.JournalProfile(pFile,"ERROR") = error (if any)',(0,n.jsx)(l.br,{}),'\n^IRIS.Temp.JournalProfile(pFile,"PROFILE",database,global) = size of records for this db.global',(0,n.jsx)(l.br,{}),'\n^IRIS.Temp.JournalProfile(pFile,"PROFILE","OTHER") = size of other records']}),"\n",(0,n.jsx)(l.h3,{id:"computejournalprofile",children:"ComputeJournalProfile"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"ClassMethod ComputeJournalProfile(pFile As %String)\n"})}),"\n",(0,n.jsxs)(l.p,{children:["Given a journal file name, build a profile of the contents of the journal within a temp global. This takes the form:",(0,n.jsx)(l.br,{}),"\n^IRIS.Temp.JournalProfile(pFile) = status: 0 running, 1 complete",(0,n.jsx)(l.br,{}),'\n^IRIS.Temp.JournalProfile(pFile,"ERROR") = error (if any)',(0,n.jsx)(l.br,{}),'\n^IRIS.Temp.JournalProfile(pFile,"PROFILE",database,global) = size of records for this db.global',(0,n.jsx)(l.br,{}),'\n^IRIS.Temp.JournalProfile(pFile,"PROFILE","OTHER") = size of other records']}),"\n",(0,n.jsx)(l.h3,{id:"getjournalprofile",children:"GetJournalProfile"}),"\n",(0,n.jsx)(l.pre,{children:(0,n.jsx)(l.code,{className:"language-objectscript-class",children:"ClassMethod GetJournalProfile(pFile As %String, Output pProfile, pClear As %Boolean = 0) As %Status\n"})}),"\n",(0,n.jsxs)(l.p,{children:["Given a journal file name, build a profile of the contents of the journal. This takes the form:",(0,n.jsx)(l.br,{}),"\npProfile(database,global) = size of records for this db.global",(0,n.jsx)(l.br,{}),'\npProfile("OTHER") = size of other records']})]})}function c(e={}){const{wrapper:l}={...(0,s.R)(),...e.components};return l?(0,n.jsx)(l,{...e,children:(0,n.jsx)(t,{...e})}):t(e)}},28453:(e,l,r)=>{r.d(l,{R:()=>a,x:()=>i});var n=r(96540);const s={},o=n.createContext(s);function a(e){const l=n.useContext(o);return n.useMemo((function(){return"function"==typeof e?e(l):{...l,...e}}),[l,e])}function i(e){let l;return l=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:a(e.components),n.createElement(o.Provider,{value:l},e.children)}}}]);