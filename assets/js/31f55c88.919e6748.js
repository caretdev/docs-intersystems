"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[9988],{82499:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>t,default:()=>r,frontMatter:()=>i,toc:()=>c});var l=a(74848),n=a(28453);const i={pagination_prev:null,pagination_next:null},t="%DeepSee.UI.Dialog.SubjectAreaAddItem",c=[{value:"Parameters",id:"parameters",level:2},{value:"CSSINCLUDES",id:"cssincludes",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"subjectAreaName",id:"subjectareaname",level:3},{value:"baseCube",id:"basecube",level:3},{value:"itemType",id:"itemtype",level:3},{value:"selectedClass",id:"selectedclass",level:3},{value:"numRows",id:"numrows",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"changeType",id:"changetype",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"ondialogStart",id:"ondialogstart",level:3},{value:"timeout",id:"timeout",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"checkSelected",id:"checkselected",level:3},{value:"markSelected",id:"markselected",level:3},{value:"markDimSelected",id:"markdimselected",level:3},{value:"markHierSelected",id:"markhierselected",level:3},{value:"markLevelSelected",id:"marklevelselected",level:3},{value:"toggleCheckboxes",id:"togglecheckboxes",level:3},{value:"getCBValues",id:"getcbvalues",level:3},{value:"DrawTable",id:"drawtable",level:3},{value:"DrawMeasures",id:"drawmeasures",level:3},{value:"DrawDimensions",id:"drawdimensions",level:3},{value:"DrawListings",id:"drawlistings",level:3}];function d(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(s.header,{children:(0,l.jsx)(s.h1,{id:"deepseeuidialogsubjectareaadditem",children:"%DeepSee.UI.Dialog.SubjectAreaAddItem"})}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.Dialog.SubjectAreaAddItem Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]\n"})}),"\n",(0,l.jsxs)(s.p,{children:["This dialog lets you select an item (such as a dimension) from base cube and add to a DeepSee subject area definition.",(0,l.jsx)(s.br,{}),"\nCan always add a new Measure;dataDimension;timeDimension",(0,l.jsx)(s.br,{}),"\nBut if you want to add a hierarchy, you need to first click a dimension or hierarchy,",(0,l.jsx)(s.br,{}),"\nand if you want to add a new level, you need to first click a hierarchy or level;"]}),"\n",(0,l.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(s.h3,{id:"cssincludes",children:"CSSINCLUDES"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CSSINCLUDES = "/csp/sys/intersystems.css";\n'})}),"\n",(0,l.jsx)(s.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,l.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(s.h3,{id:"subjectareaname",children:"subjectAreaName"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property subjectAreaName As %ZEN.Datatype.string(ZENURL = "CUBE");\n'})}),"\n",(0,l.jsx)(s.p,{children:"Cube name."}),"\n",(0,l.jsx)(s.h3,{id:"basecube",children:"baseCube"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property baseCube As %ZEN.Datatype.string(ZENURL = "BASECUBE");\n'})}),"\n",(0,l.jsx)(s.p,{children:"Base Cube name."}),"\n",(0,l.jsx)(s.h3,{id:"itemtype",children:"itemType"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Property itemType As %ZEN.Datatype.string;\n"})}),"\n",(0,l.jsx)(s.p,{children:"Item type."}),"\n",(0,l.jsx)(s.h3,{id:"selectedclass",children:"selectedClass"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property selectedClass As %ZEN.Datatype.string(ZENURL = "SELECTEDCLASS");\n'})}),"\n",(0,l.jsx)(s.p,{children:"SELECTEDCLASS"}),"\n",(0,l.jsx)(s.h3,{id:"numrows",children:"numRows"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'Property numRows As %ZEN.Datatype.integer [ InitialExpression = "0" ];\n'})}),"\n",(0,l.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(s.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(s.p,{children:"Contents of the dialog body."}),"\n",(0,l.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(s.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,l.jsx)(s.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(s.h3,{id:"changetype",children:"changeType"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod changeType() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,l.jsx)(s.h3,{id:"ondialogstart",children:"ondialogStart"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogStart() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"This callback, if defined, is called when the dialog page is loaded."}),"\n",(0,l.jsx)(s.h3,{id:"timeout",children:"timeout"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod timeout() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsx)(s.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,l.jsx)(s.h3,{id:"checkselected",children:"checkSelected"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod checkSelected() [ Language = javascript ]\n"})}),"\n",(0,l.jsxs)(s.p,{children:["For each item that is already on the Subject Area Architect, make it selected an disable the checkbox",(0,l.jsx)(s.br,{}),"\nThis method is called each time changeType is accessed."]}),"\n",(0,l.jsx)(s.h3,{id:"markselected",children:"markSelected"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod markSelected(item) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Check measure or listing to see if it is already selected. If yes, make it selected an disable the checkbox"}),"\n",(0,l.jsx)(s.h3,{id:"markdimselected",children:"markDimSelected"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod markDimSelected(dim) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Check Dimension to see if it is already selected. If yes, make it selected an disable the checkbox"}),"\n",(0,l.jsx)(s.h3,{id:"markhierselected",children:"markHierSelected"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod markHierSelected(dim, hier) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Check Dimension and Hier to see if it is already selected. If yes, make it selected an disable the checkbox"}),"\n",(0,l.jsx)(s.h3,{id:"marklevelselected",children:"markLevelSelected"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod markLevelSelected(dim, hier, level) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Check Dimension&Hier&Level to see if it is already selected. If yes, make it selected an disable the checkbox"}),"\n",(0,l.jsx)(s.h3,{id:"togglecheckboxes",children:"toggleCheckboxes"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod toggleCheckboxes() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.p,{children:"Select/Unselect all checkboxes"}),"\n",(0,l.jsx)(s.h3,{id:"getcbvalues",children:"getCBValues"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getCBValues() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(s.h3,{id:"drawtable",children:"DrawTable"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawTable(seed As %String) As %Status\n"})}),"\n",(0,l.jsx)(s.p,{children:"Start action and server method will pump out result."}),"\n",(0,l.jsx)(s.h3,{id:"drawmeasures",children:"DrawMeasures"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawMeasures(baseCube As %String) As %Integer\n"})}),"\n",(0,l.jsx)(s.h3,{id:"drawdimensions",children:"DrawDimensions"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawDimensions(baseCube As %String) As %Integer\n"})}),"\n",(0,l.jsx)(s.h3,{id:"drawlistings",children:"DrawListings"}),"\n",(0,l.jsx)(s.pre,{children:(0,l.jsx)(s.code,{className:"language-objectscript-class",children:"Method DrawListings(baseCube As %String) As %Integer\n"})})]})}function r(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,l.jsx)(s,{...e,children:(0,l.jsx)(d,{...e})}):d(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>t,x:()=>c});var l=a(96540);const n={},i=l.createContext(n);function t(e){const s=l.useContext(i);return l.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:t(e.components),l.createElement(i.Provider,{value:s},e.children)}}}]);