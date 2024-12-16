"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[93795],{30347:(e,l,s)=>{s.r(l),s.d(l,{contentTitle:()=>n,default:()=>o,frontMatter:()=>r,toc:()=>c});var t=s(74848),a=s(28453);const r={pagination_prev:null,pagination_next:null},n="%ZEN.Report.Display.smallMultiple",c=[{value:"Parameters",id:"parameters",level:2},{value:"XMLNAME",id:"xmlname",level:3},{value:"Properties",id:"properties",level:2},{value:"numrows",id:"numrows",level:3},{value:"numcols",id:"numcols",level:3},{value:"tableClass",id:"tableclass",level:3},{value:"tableStyle",id:"tablestyle",level:3},{value:"tableWidth",id:"tablewidth",level:3},{value:"rowClass",id:"rowclass",level:3},{value:"rowStyle",id:"rowstyle",level:3},{value:"rowWidth",id:"rowwidth",level:3},{value:"colClass",id:"colclass",level:3},{value:"colStyle",id:"colstyle",level:3},{value:"colWidth",id:"colwidth",level:3},{value:"name",id:"name",level:3},{value:"fillOrder",id:"fillorder",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawToHTML",id:"drawtohtml",level:3},{value:"%DrawToXSLFO",id:"drawtoxslfo",level:3}];function i(e){const l={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(l.header,{children:(0,t.jsx)(l.h1,{id:"zenreportdisplaysmallmultiple",children:"%ZEN.Report.Display.smallMultiple"})}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Display.smallMultiple Extends %ZEN.Report.Display.childrenNode [ Deprecated, System = 4 ]\n"})}),"\n",(0,t.jsx)(l.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(l.h3,{id:"xmlname",children:"XMLNAME"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter XMLNAME = "small-multiple";\n'})}),"\n",(0,t.jsx)(l.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(l.h3,{id:"numrows",children:"numrows"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property numrows As %ZEN.Datatype.integer(XMLNAME = "num-rows");\n'})}),"\n",(0,t.jsx)(l.p,{children:"num-rows: number of rows in table holding small multiple"}),"\n",(0,t.jsx)(l.h3,{id:"numcols",children:"numcols"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property numcols As %ZEN.Datatype.integer(XMLNAME = "num-cols");\n'})}),"\n",(0,t.jsx)(l.p,{children:"num-cols: number of columns in table holding small multiple"}),"\n",(0,t.jsx)(l.h3,{id:"tableclass",children:"tableClass"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property tableClass As %ZEN.Datatype.cssClass(XMLNAME = "table-class");\n'})}),"\n",(0,t.jsx)(l.p,{children:"table-class: table CSS class or attribute-set"}),"\n",(0,t.jsx)(l.h3,{id:"tablestyle",children:"tableStyle"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property tableStyle As %ZEN.Datatype.style(MAXLEN = 2048, XMLNAME = "table-style");\n'})}),"\n",(0,t.jsx)(l.p,{children:"table-style: table CSS style"}),"\n",(0,t.jsx)(l.h3,{id:"tablewidth",children:"tableWidth"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property tableWidth As %ZEN.Datatype.string(XMLNAME = "table-width");\n'})}),"\n",(0,t.jsx)(l.p,{children:"table-width: table width"}),"\n",(0,t.jsx)(l.h3,{id:"rowclass",children:"rowClass"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property rowClass As %ZEN.Datatype.cssClass(XMLNAME = "row-class");\n'})}),"\n",(0,t.jsx)(l.p,{children:"row-class: row CSS class or attribute-set"}),"\n",(0,t.jsx)(l.h3,{id:"rowstyle",children:"rowStyle"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property rowStyle As %ZEN.Datatype.style(XMLNAME = "row-style");\n'})}),"\n",(0,t.jsx)(l.p,{children:"row-style: row CSS style"}),"\n",(0,t.jsx)(l.h3,{id:"rowwidth",children:"rowWidth"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property rowWidth As %ZEN.Datatype.string(XMLNAME = "row-width");\n'})}),"\n",(0,t.jsx)(l.p,{children:"row-width: row width"}),"\n",(0,t.jsx)(l.h3,{id:"colclass",children:"colClass"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property colClass As %ZEN.Datatype.cssClass(XMLNAME = "col-class");\n'})}),"\n",(0,t.jsx)(l.p,{children:"col-class: column CSS class or attribute set"}),"\n",(0,t.jsx)(l.h3,{id:"colstyle",children:"colStyle"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property colStyle As %ZEN.Datatype.style(XMLNAME = "col-style");\n'})}),"\n",(0,t.jsx)(l.p,{children:"col-style: column CSS style"}),"\n",(0,t.jsx)(l.h3,{id:"colwidth",children:"colWidth"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property colWidth As %ZEN.Datatype.string(XMLNAME = "col-width");\n'})}),"\n",(0,t.jsx)(l.p,{children:"col-width: column width"}),"\n",(0,t.jsx)(l.h3,{id:"name",children:"name"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property name As %ZEN.Datatype.string(XMLNAME = "name") [ InitialExpression = "small-multiple" ];\n'})}),"\n",(0,t.jsx)(l.p,{children:'name: name of small-multiple defaults to "small-multiple". Must be specified to have more than one on a page.'}),"\n",(0,t.jsx)(l.h3,{id:"fillorder",children:"fillOrder"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property fillOrder As %ZEN.Datatype.string(VALUELIST = ",horizontal,vertical", XMLNAME = "fill-order") [ InitialExpression = "horizontal" ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"fill-order is used to define how the small multiple is filled by the temporary tree defined by the group which is a collection of zr:small-multiple XML elements; horizontal means that as elements are encountered, they should fill a small mutiple across rows before moving down columns; vertical means the first column on the small multiple should be filled before moving on to the next. The default is horizontal."}),"\n",(0,t.jsx)(l.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(l.h3,{id:"drawtohtml",children:"%DrawToHTML"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status\n"})}),"\n",(0,t.jsx)(l.h3,{id:"drawtoxslfo",children:"%DrawToXSLFO"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status\n"})})]})}function o(e={}){const{wrapper:l}={...(0,a.R)(),...e.components};return l?(0,t.jsx)(l,{...e,children:(0,t.jsx)(i,{...e})}):i(e)}},28453:(e,l,s)=>{s.d(l,{R:()=>n,x:()=>c});var t=s(96540);const a={},r=t.createContext(a);function n(e){const l=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(l):{...l,...e}}),[l,e])}function c(e){let l;return l=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:n(e.components),t.createElement(r.Provider,{value:l},e.children)}}}]);