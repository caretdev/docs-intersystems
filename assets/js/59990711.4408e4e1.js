"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[40082],{35920:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>t,default:()=>d,frontMatter:()=>i,toc:()=>c});var n=a(74848),l=a(28453);const i={pagination_prev:null,pagination_next:null},t="%DeepSee.UI.Dialog.PivotAnalysis",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"cubeName",id:"cubename",level:3},{value:"queryKey",id:"querykey",level:3},{value:"selectedRange",id:"selectedrange",level:3},{value:"sortColumn",id:"sortcolumn",level:3},{value:"sortDir",id:"sortdir",level:3},{value:"analysisType",id:"analysistype",level:3},{value:"measureName",id:"measurename",level:3},{value:"withClause",id:"withclause",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"adjustSize",id:"adjustsize",level:3},{value:"CreateAnalysisMenu",id:"createanalysismenu",level:3},{value:"DrawAnalysisIcon",id:"drawanalysisicon",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"ondialogStart",id:"ondialogstart",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"selectAnalysisType",id:"selectanalysistype",level:3},{value:"%GetAnalysisClasses",id:"getanalysisclasses",level:3}];function r(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"deepseeuidialogpivotanalysis",children:"%DeepSee.UI.Dialog.PivotAnalysis"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.Dialog.PivotAnalysis Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This dialog displays an analysis of the selected cell(s) within a pivot table. This class is a wrapper that lets the user select one of the available options."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"cubename",children:"cubeName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");\n'})}),"\n",(0,n.jsx)(s.h3,{id:"querykey",children:"queryKey"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property queryKey As %ZEN.Datatype.string(ZENURL = "KEY");\n'})}),"\n",(0,n.jsx)(s.h3,{id:"selectedrange",children:"selectedRange"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property selectedRange As %ZEN.Datatype.string(ZENURL = "RANGE");\n'})}),"\n",(0,n.jsx)(s.h3,{id:"sortcolumn",children:"sortColumn"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property sortColumn As %ZEN.Datatype.integer(ZENURL = "SORTCOL") [ InitialExpression = 0 ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"sortdir",children:"sortDir"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property sortDir As %ZEN.Datatype.string(ZENURL = "SORTDIR") [ InitialExpression = "ASC" ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"analysistype",children:"analysisType"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property analysisType As %ZEN.Datatype.string(ZENURL = "TYPE");\n'})}),"\n",(0,n.jsx)(s.p,{children:"Class name of current analysis."}),"\n",(0,n.jsx)(s.h3,{id:"measurename",children:"measureName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property measureName As %ZEN.Datatype.string(ZENURL = "MEASURE");\n'})}),"\n",(0,n.jsx)(s.p,{children:"Measure to use for analysis."}),"\n",(0,n.jsx)(s.h3,{id:"withclause",children:"withClause"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property withClause As %ZEN.Datatype.string(ZENURL = "WITH");\n'})}),"\n",(0,n.jsx)(s.p,{children:"WITH clause for query"}),"\n",(0,n.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Contents of the dialog body."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"adjustsize",children:"adjustSize"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod adjustSize() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Adjust size and position of components on this page."}),"\n",(0,n.jsx)(s.h3,{id:"createanalysismenu",children:"CreateAnalysisMenu"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method CreateAnalysisMenu(pMenu As %ZEN.Component.lookoutMenu) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Add elements to the analysis menu."}),"\n",(0,n.jsx)(s.h3,{id:"drawanalysisicon",children:"DrawAnalysisIcon"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawAnalysisIcon(pInfo As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Draw an icon box. pInfo is type^name^title^icon"}),"\n",(0,n.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Apply changes to page."}),"\n",(0,n.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"ondialogstart",children:"ondialogStart"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogStart() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This callback, if defined, is called when the dialog page is loaded."}),"\n",(0,n.jsx)(s.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,n.jsx)(s.h3,{id:"selectanalysistype",children:"selectAnalysisType"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod selectAnalysisType(type) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Click on a new analysis type."}),"\n",(0,n.jsx)(s.h3,{id:"getanalysisclasses",children:"%GetAnalysisClasses"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetAnalysisClasses(Output pInfo As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return an array of all available analysis types pInfo(n) = $LB(class,caption,tooltip,icon)"})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(r,{...e})}):r(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>t,x:()=>c});var n=a(96540);const l={},i=n.createContext(l);function t(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:t(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);