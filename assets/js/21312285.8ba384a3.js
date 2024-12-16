"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[40821],{62818:(e,n,l)=>{l.r(n),l.d(n,{contentTitle:()=>t,default:()=>c,frontMatter:()=>o,toc:()=>r});var a=l(74848),s=l(28453);const o={pagination_prev:null,pagination_next:null},t="%CSP.Util.SQLQueryPane",r=[{value:"Parameters",id:"parameters",level:2},{value:"COLUMNDOMAIN",id:"columndomain",level:3},{value:"COLUMNHELPDOMAIN",id:"columnhelpdomain",level:3},{value:"Properties",id:"properties",level:2},{value:"LocalizeColumns",id:"localizecolumns",level:3},{value:"Methods",id:"methods",level:2},{value:"OnDrawHEADTablePane",id:"ondrawheadtablepane",level:3},{value:"DrawBODY",id:"drawbody",level:3},{value:"GetColorByColumn",id:"getcolorbycolumn",level:3},{value:"LocalizeColumnName",id:"localizecolumnname",level:3}];function i(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"csputilsqlquerypane",children:"%CSP.Util.SQLQueryPane"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.Util.SQLQueryPane Extends %CSP.Util.TablePane [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,a.jsx)(n.p,{children:"This pane displays the results of an SQL query within an HTML table."}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"columndomain",children:"COLUMNDOMAIN"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter COLUMNDOMAIN = "%UtilityColumns";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Default localization domain used for column headers"}),"\n",(0,a.jsx)(n.h3,{id:"columnhelpdomain",children:"COLUMNHELPDOMAIN"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter COLUMNHELPDOMAIN = "%UtilityColumnHelp";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Default localization domain used for column headers help messages"}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"localizecolumns",children:"LocalizeColumns"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property LocalizeColumns As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,a.jsx)(n.p,{children:"If true (default) run column name through localization"}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"ondrawheadtablepane",children:"OnDrawHEADTablePane"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnDrawHEADTablePane(pInstance As %CSP.Util.PageInstance) As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"drawbody",children:"DrawBODY"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawBODY(pInstance As PageInstance) As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Draw the BODY of the detail pane"}),"\n",(0,a.jsx)(n.h3,{id:"getcolorbycolumn",children:"GetColorByColumn"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetColorByColumn() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Subclass can override this to specify the name of column used to distinctly color rows"}),"\n",(0,a.jsx)(n.h3,{id:"localizecolumnname",children:"LocalizeColumnName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod LocalizeColumnName(pName As %String, Output pHelpMsg) As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Lookup a column name in the localization global and return localized version if present"})]})}function c(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(i,{...e})}):i(e)}},28453:(e,n,l)=>{l.d(n,{R:()=>t,x:()=>r});var a=l(96540);const s={},o=a.createContext(s);function t(e){const n=a.useContext(o);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:t(e.components),a.createElement(o.Provider,{value:n},e.children)}}}]);