"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[96776],{78408:(e,t,r)=>{r.r(t),r.d(t,{contentTitle:()=>l,default:()=>c,frontMatter:()=>n,toc:()=>i});var a=r(74848),s=r(28453);const n={pagination_prev:null,pagination_next:null},l="%ZEN.Report.Display.report",i=[{value:"Properties",id:"properties",level:2},{value:"name",id:"name",level:3},{value:"primaryGroup",id:"primarygroup",level:3},{value:"primaryGroupifxpath",id:"primarygroupifxpath",level:3},{value:"pageNumberFormat",id:"pagenumberformat",level:3},{value:"writingMode",id:"writingmode",level:3},{value:"title",id:"title",level:3},{value:"terminateIfEmpty",id:"terminateifempty",level:3},{value:"fontFamilyName",id:"fontfamilyname",level:3},{value:"StripSpace;",id:"stripspace",level:3},{value:"PreserveSpace;",id:"preservespace",level:3},{value:"Indent;",id:"indent",level:3},{value:"Encoding;",id:"encoding",level:3},{value:"parentClass",id:"parentclass",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawToXSLFO",id:"drawtoxslfo",level:3},{value:"%DrawToHTML",id:"drawtohtml",level:3},{value:"%stdStyleSheetCSS",id:"stdstylesheetcss",level:3},{value:"%stdStyleSheetFO",id:"stdstylesheetfo",level:3},{value:"processContext",id:"processcontext",level:3},{value:"GetDocForXSLFO",id:"getdocforxslfo",level:3},{value:"DoDocForHTML",id:"dodocforhtml",level:3},{value:"%CopyXsltXdata",id:"copyxsltxdata",level:3},{value:"%CopyReportPageXdata",id:"copyreportpagexdata",level:3},{value:"%CopyXdataFromClass",id:"copyxdatafromclass",level:3},{value:"GenerateInit",id:"generateinit",level:3},{value:"GenerateBookmarkTree",id:"generatebookmarktree",level:3},{value:"%DrawToAnnotatedXML",id:"drawtoannotatedxml",level:3},{value:"GetPageMaster",id:"getpagemaster",level:3},{value:"GetFirstSection",id:"getfirstsection",level:3},{value:"IsIE",id:"isie",level:3}];function o(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",report:"report",...(0,s.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"zenreportdisplayreport",children:"%ZEN.Report.Display.report"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Display.report Extends childrenNode [ Deprecated, System = 4 ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Renders the XSLT stylesheet that displays a ZEN report."}),"\n",(0,a.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(t.h3,{id:"name",children:"name"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property name As %ZEN.Datatype.name;\n"})}),"\n",(0,a.jsx)(t.p,{children:"This property must match the name of the outermost tag of the report data. In the case of ZEN generated data, this attribute must match the name attribute of the <report< tag in the ReportDefinition XData block."}),"\n",(0,a.jsx)(t.h3,{id:"primarygroup",children:"primaryGroup"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property primaryGroup As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Primary outer sort group name that XSL:for-each statement will work with"}),"\n",(0,a.jsx)(t.h3,{id:"primarygroupifxpath",children:"primaryGroupifxpath"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property primaryGroupifxpath As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Primary outer sort group name ifxpath condition to determine if a group iteration should be included and a page sequnce generated"}),"\n",(0,a.jsx)(t.h3,{id:"pagenumberformat",children:"pageNumberFormat"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property pageNumberFormat As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Allow setting page number format: use i or I for roman use a or A for alphabetic use 1 for numeric"}),"\n",(0,a.jsx)(t.h3,{id:"writingmode",children:"writingMode"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property writingMode As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode");\n'})}),"\n",(0,a.jsxs)(t.p,{children:["writing-mode XML attribute. It has the following possible values. Note that not all XSL-FO renderers will support all possible values.",(0,a.jsx)(t.br,{}),'\nlr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text)',(0,a.jsx)(t.br,{}),"\nrl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text)",(0,a.jsx)(t.br,{}),"\ntb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text)",(0,a.jsx)(t.br,{}),"\nlr Same as lr-tb",(0,a.jsx)(t.br,{}),"\nrl Same as rl-tb",(0,a.jsx)(t.br,{}),"\ntb Same as tb-rl",(0,a.jsx)(t.br,{}),"\ninherit"]}),"\n",(0,a.jsx)(t.h3,{id:"title",children:"title"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property title As %ZEN.Datatype.caption;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Report title"}),"\n",(0,a.jsx)(t.h3,{id:"terminateifempty",children:"terminateIfEmpty"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property terminateIfEmpty As %ZEN.Datatype.boolean;\n"})}),"\n",(0,a.jsx)(t.p,{children:"Terminate if empty"}),"\n",(0,a.jsx)(t.h3,{id:"fontfamilyname",children:"fontFamilyName"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property fontFamilyName As %ZEN.Datatype.string(XMLNAME = "font-family-name") [ InitialExpression = "Arial" ];\n'})}),"\n",(0,a.jsxs)(t.p,{children:["font-family for fo:root, default value is \"'Arial'\"",(0,a.jsx)(t.br,{}),"\nfont-family-name is optional and does not have to be specified, in which case its value will be \"'Arial'\"",(0,a.jsx)(t.br,{}),"\nExample: ",(0,a.jsxs)(t.report,{name:"MyReport",sql:"SELECT WH,PNO FROM PARTS","font-family-name":"Calibri",children:[(0,a.jsx)(t.br,{}),'\nif font-family-name is "", i.e., null, no font-family attribute will be generated']})]}),"\n",(0,a.jsx)(t.h3,{id:"stripspace",children:"StripSpace;"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property StripSpace;\n"})}),"\n",(0,a.jsx)(t.h3,{id:"preservespace",children:"PreserveSpace;"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property PreserveSpace;\n"})}),"\n",(0,a.jsx)(t.h3,{id:"indent",children:"Indent;"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property Indent;\n"})}),"\n",(0,a.jsx)(t.h3,{id:"encoding",children:"Encoding;"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property Encoding;\n"})}),"\n",(0,a.jsx)(t.h3,{id:"parentclass",children:"parentClass"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property parentClass As %String;\n"})}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"drawtoxslfo",children:"%DrawToXSLFO"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, ByRef incell As %Boolean, SubReport As %String, MainReport As %String, pUseInstalledFOP) As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"drawtohtml",children:"%DrawToHTML"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean, embedXSL As %Boolean = 0, UseInternalXSLT As %Boolean = 0, SubReport As %String, MainReport As %String, pXSLTMode) As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"stdstylesheetcss",children:"%stdStyleSheetCSS"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %stdStyleSheetCSS(ByRef XSL As %GlobalCharacterStream) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Outputs the standard stylesheet for HTML reports"}),"\n",(0,a.jsx)(t.h3,{id:"stdstylesheetfo",children:"%stdStyleSheetFO"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %stdStyleSheetFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Outputs the standard stylesheet for PDF reports"}),"\n",(0,a.jsx)(t.h3,{id:"processcontext",children:"processContext"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod processContext(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode)\n"})}),"\n",(0,a.jsx)(t.h3,{id:"getdocforxslfo",children:"GetDocForXSLFO"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDocForXSLFO(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String) As document\n"})}),"\n",(0,a.jsx)(t.h3,{id:"dodocforhtml",children:"DoDocForHTML"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DoDocForHTML(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String)\n"})}),"\n",(0,a.jsx)(t.h3,{id:"copyxsltxdata",children:"%CopyXsltXdata"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %CopyXsltXdata(ByRef XSL As %GlobalCharacterStream, AllTag As %String, XdataName As %String) [ Internal ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"copyreportpagexdata",children:"%CopyReportPageXdata"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %CopyReportPageXdata(ByRef XSL As %GlobalCharacterStream, XdataName As %String)\n"})}),"\n",(0,a.jsx)(t.h3,{id:"copyxdatafromclass",children:"%CopyXdataFromClass"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %CopyXdataFromClass(ByRef XSL As %GlobalCharacterStream, XdataName As %String, Classname As %String)\n"})}),"\n",(0,a.jsx)(t.h3,{id:"generateinit",children:"GenerateInit"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method GenerateInit(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, isFO As %Boolean) As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"generatebookmarktree",children:"GenerateBookmarkTree"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method GenerateBookmarkTree(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"drawtoannotatedxml",children:"%DrawToAnnotatedXML"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawToAnnotatedXML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"getpagemaster",children:"GetPageMaster"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetPageMaster(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String) As pagemaster\n"})}),"\n",(0,a.jsx)(t.h3,{id:"getfirstsection",children:"GetFirstSection"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetFirstSection(this, ByRef context As %String, ByRef XSL As %GlobalCharacterStream, children As %ZEN.Report.Display.childrenNode, xpath As %String) As pagemaster\n"})}),"\n",(0,a.jsx)(t.h3,{id:"isie",children:"IsIE"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod IsIE()\n"})})]})}function c(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(o,{...e})}):o(e)}},28453:(e,t,r)=>{r.d(t,{R:()=>l,x:()=>i});var a=r(96540);const s={},n=a.createContext(s);function l(e){const t=a.useContext(n);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),a.createElement(n.Provider,{value:t},e.children)}}}]);