"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[63020],{18218:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>r,default:()=>c,frontMatter:()=>l,toc:()=>i});var t=s(74848),n=s(28453);const l={pagination_prev:null,pagination_next:null},r="%ZEN.Report.Display.COSChart.scoreCardColumn",i=[{value:"Properties",id:"properties",level:2},{value:"label",id:"label",level:3},{value:"cellCaption",id:"cellcaption",level:3},{value:"valueColumn",id:"valuecolumn",level:3},{value:"summary",id:"summary",level:3},{value:"summaryValue",id:"summaryvalue",level:3},{value:"width",id:"width",level:3},{value:"align",id:"align",level:3},{value:"headerAlign",id:"headeralign",level:3},{value:"style",id:"style",level:3},{value:"display",id:"display",level:3},{value:"showAs",id:"showas",level:3},{value:"format",id:"format",level:3},{value:"dataValue",id:"datavalue",level:3},{value:"targetValue",id:"targetvalue",level:3},{value:"baseValue",id:"basevalue",level:3},{value:"thresholdLower",id:"thresholdlower",level:3},{value:"thresholdUpper",id:"thresholdupper",level:3},{value:"rangeLower",id:"rangelower",level:3},{value:"rangeUpper",id:"rangeupper",level:3}];function o(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(a.header,{children:(0,t.jsx)(a.h1,{id:"zenreportdisplaycoschartscorecardcolumn",children:"%ZEN.Report.Display.COSChart.scoreCardColumn"})}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Display.COSChart.scoreCardColumn Extends %ZEN.Report.Display.node [ Deprecated, System = 4 ]\n"})}),"\n",(0,t.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(a.h3,{id:"label",children:"label"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property label As %ZEN.Datatype.caption;\n"})}),"\n",(0,t.jsx)(a.p,{children:"XML namespace used for Zen Report display definitions. Defines characteristics for a column within a %DeepSee.Component.SVG.scoreCard component. Default header label displayed for column."}),"\n",(0,t.jsx)(a.h3,{id:"cellcaption",children:"cellCaption"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property cellCaption As %ZEN.Datatype.caption;\n"})}),"\n",(0,t.jsx)(a.p,{children:"Caption to display within the cell for this column."}),"\n",(0,t.jsx)(a.h3,{id:"valuecolumn",children:"valueColumn"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property valueColumn As %ZEN.Datatype.boolean;\n"})}),"\n",(0,t.jsx)(a.p,{children:"If true, then this column supplies the logical value used to identify a row within the score card. This may be used to tie actions to the scorecard."}),"\n",(0,t.jsx)(a.h3,{id:"summary",children:"summary"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Property summary As %ZEN.Datatype.string(VALUELIST = ",sum,avg,min,max,value");\n'})}),"\n",(0,t.jsxs)(a.p,{children:["Type of summary to display for this column.",(0,t.jsx)(a.br,{}),'\nIf "", then no summary is displayed.',(0,t.jsx)(a.br,{}),'\n"sum" computes and displays the sum of the values within the column.',(0,t.jsx)(a.br,{}),'\n"avg" computes and displays the average of the values within the column.',(0,t.jsx)(a.br,{}),'\n"min" finds and displays the minimum of the values within the column.',(0,t.jsx)(a.br,{}),'\n"max" finds and displays the maximum of values within the column.',(0,t.jsx)(a.br,{}),'\n"value" evaluates and displays the value of the summaryValue property.']}),"\n",(0,t.jsx)(a.h3,{id:"summaryvalue",children:"summaryValue"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property summaryValue As %ZEN.Datatype.string;\n"})}),"\n",(0,t.jsxs)(a.p,{children:['Value to use for the summary of the column (if summary is "value").',(0,t.jsx)(a.br,{}),'\nThis can be a literal number, a literal string (enclosed within ""), the name of the property in data source that supplies the value for this column, or an expression (starting with =).']}),"\n",(0,t.jsx)(a.h3,{id:"width",children:"width"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property width As %ZEN.Datatype.length;\n"})}),"\n",(0,t.jsx)(a.p,{children:"Width of column."}),"\n",(0,t.jsx)(a.h3,{id:"align",children:"align"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Property align As %ZEN.Datatype.string(VALUELIST = ",left,right,center");\n'})}),"\n",(0,t.jsx)(a.p,{children:"Alignment of text (and footer) within this column. If not specified, a default alignment is used."}),"\n",(0,t.jsx)(a.h3,{id:"headeralign",children:"headerAlign"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Property headerAlign As %ZEN.Datatype.string(VALUELIST = ",left,right,center");\n'})}),"\n",(0,t.jsx)(a.p,{children:"Alignment of header text within this column. If not specified, a default alignment is used."}),"\n",(0,t.jsx)(a.h3,{id:"style",children:"style"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property style As %ZEN.Datatype.style;\n"})}),"\n",(0,t.jsxs)(a.p,{children:["Style to apply to cells in this column.",(0,t.jsx)(a.br,{}),'\nThis is a CSS style string: e.g., "color: red;" Note that column style overrides row style.']}),"\n",(0,t.jsx)(a.h3,{id:"display",children:"display"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Property display As %ZEN.Datatype.string(VALUELIST = ",itemNo,label,value,arrow,lamp,trendLine,trendBars,plotBox,hidden");\n'})}),"\n",(0,t.jsx)(a.p,{children:"Specify what to display in this column."}),"\n",(0,t.jsx)(a.h3,{id:"showas",children:"showAs"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'Property showAs As %ZEN.Datatype.string(VALUELIST = ",value,conditional,sum,target,target%,sum%");\n'})}),"\n",(0,t.jsxs)(a.p,{children:["Specify how to display values for this column.",(0,t.jsx)(a.br,{}),'\nIf "value" then the value for the column is displayed.',(0,t.jsx)(a.br,{}),'\nIf "conditional" then the value for the column is displayed ',(0,t.jsx)(a.strong,{children:"if"})," the property this columns depends on exists.",(0,t.jsx)(a.br,{}),'\nIf "sum" then the total of all values for the column is displayed.',(0,t.jsx)(a.br,{}),'\nIf "target" then the target value is displayed.',(0,t.jsx)(a.br,{}),'\nIf "target%" then the value as a percentage of the target is displayed.',(0,t.jsx)(a.br,{}),'\nIf "sum%" then the value as a percentage of the sum is displayed.']}),"\n",(0,t.jsx)(a.h3,{id:"format",children:"format"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property format As %ZEN.Datatype.string;\n"})}),"\n",(0,t.jsx)(a.p,{children:"Specify how to format a numeric value for this property."}),"\n",(0,t.jsx)(a.h3,{id:"datavalue",children:"dataValue"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property dataValue As %ZEN.Datatype.string;\n"})}),"\n",(0,t.jsxs)(a.p,{children:["Value used for this column.",(0,t.jsx)(a.br,{}),'\nThis can be a literal number, a literal string (enclosed within ""), the name of the property in data source that supplies the value for this column, or an expression (starting with =).']}),"\n",(0,t.jsx)(a.h3,{id:"targetvalue",children:"targetValue"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property targetValue As %ZEN.Datatype.string;\n"})}),"\n",(0,t.jsxs)(a.p,{children:["Optional. Target value for this column. This is used for columns that display a target value. If this is not supplied, the default target value for the data source is used.",(0,t.jsx)(a.br,{}),"\nThis can contain an actual value (numeric) or the name of a property within the dataSource."]}),"\n",(0,t.jsx)(a.h3,{id:"basevalue",children:"baseValue"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property baseValue As %ZEN.Datatype.string;\n"})}),"\n",(0,t.jsx)(a.p,{children:"Optional. Base value for this column. This is used for columns that display values graphically, such as a plotBox. If this is defined, then values are plotted against this base value. Typically this is set to 0 to display negative values as bars in the opposite direction. This can contain an actual value (numeric) or the name of a property within the dataSource."}),"\n",(0,t.jsx)(a.h3,{id:"thresholdlower",children:"thresholdLower"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property thresholdLower As %ZEN.Datatype.string;\n"})}),"\n",(0,t.jsxs)(a.p,{children:["Optional. Lower threshold value for this column. If this is not supplied, the default value for the data source is used.",(0,t.jsx)(a.br,{}),"\nThis can contain an actual value (numeric) or the name of a property within the dataSource."]}),"\n",(0,t.jsx)(a.h3,{id:"thresholdupper",children:"thresholdUpper"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property thresholdUpper As %ZEN.Datatype.string;\n"})}),"\n",(0,t.jsxs)(a.p,{children:["Optional. Upper threshold value for this column. If this is not supplied, the default value for the data source is used.",(0,t.jsx)(a.br,{}),"\nThis can contain an actual value (numeric) or the name of a property within the dataSource."]}),"\n",(0,t.jsx)(a.h3,{id:"rangelower",children:"rangeLower"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property rangeLower As %ZEN.Datatype.string;\n"})}),"\n",(0,t.jsxs)(a.p,{children:["Optional. Lower range value for this column. If this is not supplied, the default value for the data source is used.",(0,t.jsx)(a.br,{}),"\nThis can contain an actual value (numeric) or the name of a property within the dataSource."]}),"\n",(0,t.jsx)(a.h3,{id:"rangeupper",children:"rangeUpper"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Property rangeUpper As %ZEN.Datatype.string;\n"})}),"\n",(0,t.jsxs)(a.p,{children:["Optional. Upper range value for this column. If this is not supplied, the default value for the data source is used.",(0,t.jsx)(a.br,{}),"\nThis can contain an actual value (numeric) or the name of a property within the dataSource."]})]})}function c(e={}){const{wrapper:a}={...(0,n.R)(),...e.components};return a?(0,t.jsx)(a,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>r,x:()=>i});var t=s(96540);const n={},l=t.createContext(n);function r(e){const a=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function i(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:r(e.components),t.createElement(l.Provider,{value:a},e.children)}}}]);