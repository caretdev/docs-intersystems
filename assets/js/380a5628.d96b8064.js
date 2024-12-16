"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[76876],{86596:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>t,default:()=>i,frontMatter:()=>r,toc:()=>c});var l=n(74848),a=n(28453);const r={pagination_prev:null,pagination_next:null},t="%CSP.UI.System.ExpResultPane",c=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"Methods",id:"methods",level:2},{value:"OnPreHTTP",id:"onprehttp",level:3},{value:"OnPage",id:"onpage",level:3},{value:"DoneMsg",id:"donemsg",level:3},{value:"DrawCloseButton",id:"drawclosebutton",level:3},{value:"DrawProgressImg",id:"drawprogressimg",level:3},{value:"DrawErrorLog",id:"drawerrorlog",level:3},{value:"DrawDeleteSelections",id:"drawdeleteselections",level:3},{value:"DrawSelectedTable",id:"drawselectedtable",level:3},{value:"HelpTextCancel",id:"helptextcancel",level:3},{value:"LocalizePage",id:"localizepage",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(s.header,{children:(0,l.jsx)(s.h1,{id:"cspuisystemexpresultpane",children:"%CSP.UI.System.ExpResultPane"})}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.System.ExpResultPane Extends %CSP.Page [ System = 4 ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,l.jsx)(s.p,{children:"This is the pane to prepare for action result. Display what user selected, with additional parameter prompts if needed, and prompt the user to proceed or cancle."}),"\n",(0,l.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,l.jsx)(s.p,{children:"Default domain for the Portal's localization."}),"\n",(0,l.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(s.h3,{id:"onprehttp",children:"OnPreHTTP"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Ensure user has either %Admin_Manage:USE or %Admin_Operate:USE."}),"\n",(0,l.jsx)(s.h3,{id:"onpage",children:"OnPage"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OnPage() As %Status\n"})}),"\n",(0,l.jsx)(s.h3,{id:"donemsg",children:"DoneMsg"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DoneMsg(tSC)\n"})}),"\n",(0,l.jsx)(s.p,{children:"For Integrity check, if user selected more than one database, then disable the Global button Disable or enable db checkboxes. If globals selected, then disable other DB checkboxes. If user unchecked the only DB they have globals selected, then enable all and lose global selections. returning from select globals page. Update the total for the database. Write common message after action is commited."}),"\n",(0,l.jsx)(s.h3,{id:"drawclosebutton",children:"DrawCloseButton"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawCloseButton()\n"})}),"\n",(0,l.jsx)(s.h3,{id:"drawprogressimg",children:"DrawProgressImg"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawProgressImg()\n"})}),"\n",(0,l.jsx)(s.h3,{id:"drawerrorlog",children:"DrawErrorLog"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawErrorLog(err)\n"})}),"\n",(0,l.jsx)(s.p,{children:"Write out error log"}),"\n",(0,l.jsx)(s.h3,{id:"drawdeleteselections",children:"DrawDeleteSelections"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawDeleteSelections(tNamespace As %String, tMode As %String, cbState As %String) As %Integer\n"})}),"\n",(0,l.jsx)(s.h3,{id:"drawselectedtable",children:"DrawSelectedTable"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawSelectedTable(cbState) As %Integer\n"})}),"\n",(0,l.jsx)(s.p,{children:"Draw what user has selected"}),"\n",(0,l.jsx)(s.h3,{id:"helptextcancel",children:"HelpTextCancel"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HelpTextCancel()\n"})}),"\n",(0,l.jsx)(s.h3,{id:"localizepage",children:"LocalizePage"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LocalizePage(ByRef msgPage As %String) As %String\n"})}),"\n",(0,l.jsx)(s.p,{children:"Return displable Mode Title"})]})}function i(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,l.jsx)(s,{...e,children:(0,l.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>t,x:()=>c});var l=n(96540);const a={},r=l.createContext(a);function t(e){const s=l.useContext(r);return l.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:t(e.components),l.createElement(r.Provider,{value:s},e.children)}}}]);