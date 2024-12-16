"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[55106],{7100:(e,a,t)=>{t.r(a),t.d(a,{contentTitle:()=>l,default:()=>c,frontMatter:()=>n,toc:()=>i});var s=t(74848),r=t(28453);const n={pagination_prev:null,pagination_next:null},l="%DeepSee.Component.dataPropertyDefinition",i=[{value:"Parameters",id:"parameters",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"Properties",id:"properties",level:2},{value:"label",id:"label",level:3},{value:"format",id:"format",level:3},{value:"subtype",id:"subtype",level:3},{value:"width",id:"width",level:3},{value:"align",id:"align",level:3},{value:"valueColumn",id:"valuecolumn",level:3},{value:"summary",id:"summary",level:3},{value:"summaryValue",id:"summaryvalue",level:3},{value:"style",id:"style",level:3},{value:"display",id:"display",level:3},{value:"showAs",id:"showas",level:3},{value:"dataValue",id:"datavalue",level:3},{value:"targetValue",id:"targetvalue",level:3},{value:"thresholdLower",id:"thresholdlower",level:3},{value:"thresholdUpper",id:"thresholdupper",level:3},{value:"rangeLower",id:"rangelower",level:3},{value:"rangeUpper",id:"rangeupper",level:3},{value:"baseValue",id:"basevalue",level:3}];function o(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(a.header,{children:(0,s.jsx)(a.h1,{id:"deepseecomponentdatapropertydefinition",children:"%DeepSee.Component.dataPropertyDefinition"})}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Class %DeepSee.Component.dataPropertyDefinition Extends %ZEN.Component.object [ System = 3 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Defines a dataProperty definition within a Dashboard widget definition. This is used by the Widget editor. It is not the saved state of the dataProperty."}),"\n",(0,s.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(a.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/deepsee";\n'})}),"\n",(0,s.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(a.h3,{id:"label",children:"label"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property label As %ZEN.Datatype.caption;\n"})}),"\n",(0,s.jsx)(a.p,{children:"Label displayed for this item within the widget."}),"\n",(0,s.jsx)(a.h3,{id:"format",children:"format"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property format As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(a.p,{children:"Specify how to format the value for this item."}),"\n",(0,s.jsx)(a.h3,{id:"subtype",children:"subtype"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property subtype As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(a.p,{children:"Local override of widget subtype (used by meters)."}),"\n",(0,s.jsx)(a.h3,{id:"width",children:"width"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property width As %ZEN.Datatype.length;\n"})}),"\n",(0,s.jsx)(a.p,{children:"Width of column within the widget if appropriate."}),"\n",(0,s.jsx)(a.h3,{id:"align",children:"align"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property align As %ZEN.Datatype.string(VALUELIST = ",left,right,center");\n'})}),"\n",(0,s.jsx)(a.p,{children:"Alignment of text within a column within the widget if appropriate. If not specified, a default alignment is used."}),"\n",(0,s.jsx)(a.h3,{id:"valuecolumn",children:"valueColumn"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property valueColumn As %ZEN.Datatype.boolean;\n"})}),"\n",(0,s.jsx)(a.p,{children:"If true, then this column supplies the logical value used to identify a row within the score card. This may be used to tie actions to the scorecard."}),"\n",(0,s.jsx)(a.h3,{id:"summary",children:"summary"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property summary As %ZEN.Datatype.string(VALUELIST = ",sum,avg,min,max,value");\n'})}),"\n",(0,s.jsx)(a.p,{children:'Type of summary to display for this column. If "", then no summary is displayed.'}),"\n",(0,s.jsx)(a.h3,{id:"summaryvalue",children:"summaryValue"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property summaryValue As %ZEN.Datatype.string(VALUELIST = ",sum,avg,min,max,value");\n'})}),"\n",(0,s.jsx)(a.p,{children:'Value to use for summary (if summary is "value").'}),"\n",(0,s.jsx)(a.h3,{id:"style",children:"style"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property style As %ZEN.Datatype.style;\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Style to apply to this property if appropriate.",(0,s.jsx)(a.br,{}),'\nThis is a CSS style string: e.g., "color: red;"']}),"\n",(0,s.jsx)(a.h3,{id:"display",children:"display"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property display As %ZEN.Datatype.string(VALUELIST = ",itemNo,label,value,arrow,lamp,trendLine,plotBox,hidden");\n'})}),"\n",(0,s.jsx)(a.p,{children:"Specify what to display for this property."}),"\n",(0,s.jsx)(a.h3,{id:"showas",children:"showAs"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property showAs As %ZEN.Datatype.string(VALUELIST = ",value,sum,target,target%,sum%");\n'})}),"\n",(0,s.jsxs)(a.p,{children:["Specify how to display values for this property.",(0,s.jsx)(a.br,{}),'\nIf "value" then the value for the property is displayed.',(0,s.jsx)(a.br,{}),'\nIf "sum" then the total of all values for the property is displayed.',(0,s.jsx)(a.br,{}),'\nIf "target" then the target value is displayed.',(0,s.jsx)(a.br,{}),'\nIf "target%" then the value as a percentage of the target is displayed.',(0,s.jsx)(a.br,{}),'\nIf "sum%" then the value as a percentage of the sum is displayed.']}),"\n",(0,s.jsx)(a.h3,{id:"datavalue",children:"dataValue"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property dataValue As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(a.p,{children:"Value used for this property. This can be a number or the name of the property in data source that supplies the value for this column."}),"\n",(0,s.jsx)(a.h3,{id:"targetvalue",children:"targetValue"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property targetValue As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Optional. Target value for this property. This is used for columns that display a target value. If this is not supplied, the default target value for the data source is used.",(0,s.jsx)(a.br,{}),"\nThis can contain an actual value (numeric) or the name of a property within the dataSource."]}),"\n",(0,s.jsx)(a.h3,{id:"thresholdlower",children:"thresholdLower"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property thresholdLower As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Optional. Lower threshold value for this property. If this is not supplied, the default value for the data source is used.",(0,s.jsx)(a.br,{}),"\nThis can contain an actual value (numeric) or the name of a property within the dataSource."]}),"\n",(0,s.jsx)(a.h3,{id:"thresholdupper",children:"thresholdUpper"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property thresholdUpper As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Optional. Upper threshold value for this property. If this is not supplied, the default value for the data source is used.",(0,s.jsx)(a.br,{}),"\nThis can contain an actual value (numeric) or the name of a property within the dataSource."]}),"\n",(0,s.jsx)(a.h3,{id:"rangelower",children:"rangeLower"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property rangeLower As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Optional. Lower range value for this property. If this is not supplied, the default value for the data source is used.",(0,s.jsx)(a.br,{}),"\nThis can contain an actual value (numeric) or the name of a property within the dataSource."]}),"\n",(0,s.jsx)(a.h3,{id:"rangeupper",children:"rangeUpper"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property rangeUpper As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Optional. Upper range value for this property. If this is not supplied, the default value for the data source is used.",(0,s.jsx)(a.br,{}),"\nThis can contain an actual value (numeric) or the name of a property within the dataSource."]}),"\n",(0,s.jsx)(a.h3,{id:"basevalue",children:"baseValue"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property baseValue As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(a.p,{children:"Optional. Base value for this property. This can contain an actual value (numeric) or the name of a property within the dataSource."})]})}function c(e={}){const{wrapper:a}={...(0,r.R)(),...e.components};return a?(0,s.jsx)(a,{...e,children:(0,s.jsx)(o,{...e})}):o(e)}},28453:(e,a,t)=>{t.d(a,{R:()=>l,x:()=>i});var s=t(96540);const r={},n=s.createContext(r);function l(e){const a=s.useContext(n);return s.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function i(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),s.createElement(n.Provider,{value:a},e.children)}}}]);