"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[23062],{3739:(e,l,n)=>{n.r(l),n.d(l,{contentTitle:()=>r,default:()=>o,frontMatter:()=>i,toc:()=>a});var t=n(74848),s=n(28453);const i={pagination_prev:null,pagination_next:null},r="%DeepSee.Dashboard.PivotLevel",a=[{value:"Parameters",id:"parameters",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"XMLNAME",id:"xmlname",level:3},{value:"XMLIGNORENULL",id:"xmlignorenull",level:3},{value:"Properties",id:"properties",level:2},{value:"spec",id:"spec",level:3},{value:"key",id:"key",level:3},{value:"position",id:"position",level:3},{value:"filterDim",id:"filterdim",level:3},{value:"filterHier",id:"filterhier",level:3},{value:"value",id:"value",level:3},{value:"text",id:"text",level:3},{value:"childLevels",id:"childlevels",level:3},{value:"headEnabled",id:"headenabled",level:3},{value:"headCount",id:"headcount",level:3},{value:"filterEnabled",id:"filterenabled",level:3},{value:"filterExpression",id:"filterexpression",level:3},{value:"orderEnabled",id:"orderenabled",level:3},{value:"orderExpression",id:"orderexpression",level:3},{value:"orderDirection",id:"orderdirection",level:3},{value:"aggEnabled",id:"aggenabled",level:3},{value:"aggFunction",id:"aggfunction",level:3},{value:"aggFunctionParm",id:"aggfunctionparm",level:3},{value:"levelCaption",id:"levelcaption",level:3},{value:"levelFormat",id:"levelformat",level:3},{value:"levelSummary",id:"levelsummary",level:3},{value:"levelType",id:"leveltype",level:3},{value:"drillLevel",id:"drilllevel",level:3},{value:"advanced",id:"advanced",level:3},{value:"levelStyle",id:"levelstyle",level:3},{value:"levelHeaderStyle",id:"levelheaderstyle",level:3},{value:"suppress8020",id:"suppress8020",level:3},{value:"drilldownSpec",id:"drilldownspec",level:3},{value:"enabled",id:"enabled",level:3},{value:"Methods",id:"methods",level:2},{value:"%CopyToComponent",id:"copytocomponent",level:3},{value:"%CopyFromComponent",id:"copyfromcomponent",level:3},{value:"%CopyToDao",id:"copytodao",level:3}];function c(e){const l={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(l.header,{children:(0,t.jsx)(l.h1,{id:"deepseedashboardpivotlevel",children:"%DeepSee.Dashboard.PivotLevel"})}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Class %DeepSee.Dashboard.PivotLevel Extends (%SerialObject, %XML.Adaptor) [ System = 4 ]\n"})}),"\n",(0,t.jsxs)(l.p,{children:["This class defines a level within a DeepSee saved pivot.",(0,t.jsx)(l.br,{}),"\nThis is used to fill in the values of a pivotLevel within a DeepSee pivot table."]}),"\n",(0,t.jsx)(l.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(l.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/deepsee/library";\n'})}),"\n",(0,t.jsx)(l.h3,{id:"xmlname",children:"XMLNAME"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Parameter XMLNAME = "pivot";\n'})}),"\n",(0,t.jsx)(l.h3,{id:"xmlignorenull",children:"XMLIGNORENULL"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Parameter XMLIGNORENULL = 1;\n"})}),"\n",(0,t.jsx)(l.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(l.h3,{id:"spec",children:"spec"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property spec As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsxs)(l.p,{children:["This specifies the dimension level displayed for this level of the pivot table.",(0,t.jsx)(l.br,{}),'\nFor example, "[Product]" or "[Time].[Year]"']}),"\n",(0,t.jsx)(l.h3,{id:"key",children:"key"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property key As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsxs)(l.p,{children:["Key value of the current dimension level.",(0,t.jsx)(l.br,{}),'\nThis can be a comma-delimited list of keys: "14,25"']}),"\n",(0,t.jsx)(l.h3,{id:"position",children:"position"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property position As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Internal property used to track order in which filters are displayed."}),"\n",(0,t.jsx)(l.h3,{id:"filterdim",children:"filterDim"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property filterDim As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Used to track the dimension number for a filter."}),"\n",(0,t.jsx)(l.h3,{id:"filterhier",children:"filterHier"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property filterHier As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Used to track the hierarchy number for a filter."}),"\n",(0,t.jsx)(l.h3,{id:"value",children:"value"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property value As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsxs)(l.p,{children:["Name value of the current dimension level.",(0,t.jsx)(l.br,{}),'\nThis can be a comma-delimited list of delimited values: "[2005],[2006]"']}),"\n",(0,t.jsx)(l.h3,{id:"text",children:"text"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property text As %ZEN.Datatype.caption(MAXLEN = "", XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Optional display name for this level. This is the text displayed by the pivot table when a level is used a filter, for example."}),"\n",(0,t.jsx)(l.h3,{id:"childlevels",children:"childLevels"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property childLevels As list Of PivotLevel(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Children of this level."}),"\n",(0,t.jsx)(l.h3,{id:"headenabled",children:"headEnabled"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property headEnabled As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"If true, apply the HEAD function to this level."}),"\n",(0,t.jsx)(l.h3,{id:"headcount",children:"headCount"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property headCount As %ZEN.Datatype.integer(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Count argument for HEAD function."}),"\n",(0,t.jsx)(l.h3,{id:"filterenabled",children:"filterEnabled"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property filterEnabled As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"If true, apply the FILTER function to this level."}),"\n",(0,t.jsx)(l.h3,{id:"filterexpression",children:"filterExpression"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property filterExpression As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Filter expression for FILTER function."}),"\n",(0,t.jsx)(l.h3,{id:"orderenabled",children:"orderEnabled"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property orderEnabled As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"If true, apply the ORDER function to this level."}),"\n",(0,t.jsx)(l.h3,{id:"orderexpression",children:"orderExpression"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property orderExpression As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Sort expression for ORDER function."}),"\n",(0,t.jsx)(l.h3,{id:"orderdirection",children:"orderDirection"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property orderDirection As %ZEN.Datatype.string(XMLPROJECTION = "attribute") [ InitialExpression = "BDESC" ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Direction argument for ORDER function."}),"\n",(0,t.jsx)(l.h3,{id:"aggenabled",children:"aggEnabled"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property aggEnabled As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"If true, apply the Aggregate function to this level."}),"\n",(0,t.jsx)(l.h3,{id:"aggfunction",children:"aggFunction"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property aggFunction As %ZEN.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Aggregate function."}),"\n",(0,t.jsx)(l.h3,{id:"aggfunctionparm",children:"aggFunctionParm"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property aggFunctionParm As %ZEN.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Aggregate function parameter."}),"\n",(0,t.jsx)(l.h3,{id:"levelcaption",children:"levelCaption"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property levelCaption As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Optional caption to apply to this element."}),"\n",(0,t.jsx)(l.h3,{id:"levelformat",children:"levelFormat"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property levelFormat As %ZEN.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Optional format to apply to this element."}),"\n",(0,t.jsx)(l.h3,{id:"levelsummary",children:"levelSummary"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property levelSummary As %ZEN.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Optional summary to apply to this element."}),"\n",(0,t.jsx)(l.h3,{id:"leveltype",children:"levelType"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property levelType As %ZEN.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Type of member to use for this element."}),"\n",(0,t.jsx)(l.h3,{id:"drilllevel",children:"drillLevel"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property drillLevel As %ZEN.Datatype.integer(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"Drill-level at which this level was defined."}),"\n",(0,t.jsx)(l.h3,{id:"advanced",children:"advanced"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property advanced As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"If true, this is an advanced filter."}),"\n",(0,t.jsx)(l.h3,{id:"levelstyle",children:"levelStyle"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property levelStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Optional style to apply to this element."}),"\n",(0,t.jsx)(l.h3,{id:"levelheaderstyle",children:"levelHeaderStyle"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property levelHeaderStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"Optional style to apply to this element's header."}),"\n",(0,t.jsx)(l.h3,{id:"suppress8020",children:"suppress8020"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property suppress8020 As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"If true, apply the 80/20 suppression to this level."}),"\n",(0,t.jsx)(l.h3,{id:"drilldownspec",children:"drilldownSpec"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property drilldownSpec As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(l.p,{children:"If defined, this is a ^-delimited list of MDX expressions to use when drilling (double-clicking) on a member defined by this level."}),"\n",(0,t.jsx)(l.h3,{id:"enabled",children:"enabled"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:'Property enabled As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];\n'})}),"\n",(0,t.jsx)(l.p,{children:"If true, this level is enabled. Only applies to filters at this time."}),"\n",(0,t.jsx)(l.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(l.h3,{id:"copytocomponent",children:"%CopyToComponent"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Method %CopyToComponent(pLevel As %DeepSee.Component.pivotLevel) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(l.p,{children:"Copy the contents of this pivot level definition to pivot table level pLevel."}),"\n",(0,t.jsx)(l.h3,{id:"copyfromcomponent",children:"%CopyFromComponent"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Method %CopyFromComponent(pLevel As %DeepSee.Component.pivotLevel) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(l.p,{children:"Set the contents of this pivot level definition from pivot table level pLevel."}),"\n",(0,t.jsx)(l.h3,{id:"copytodao",children:"%CopyToDao"}),"\n",(0,t.jsx)(l.pre,{children:(0,t.jsx)(l.code,{className:"language-objectscript-class",children:"Method %CopyToDao(Output pLevelJSON As %DynamicObject) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(l.p,{children:"Copy the contents of this pivot level definition to an Dao."})]})}function o(e={}){const{wrapper:l}={...(0,s.R)(),...e.components};return l?(0,t.jsx)(l,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,l,n)=>{n.d(l,{R:()=>r,x:()=>a});var t=n(96540);const s={},i=t.createContext(s);function r(e){const l=t.useContext(i);return t.useMemo((function(){return"function"==typeof e?e(l):{...l,...e}}),[l,e])}function a(e){let l;return l=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:r(e.components),t.createElement(i.Provider,{value:l},e.children)}}}]);