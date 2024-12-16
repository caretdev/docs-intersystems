"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[79035],{31908:(e,s,l)=>{l.r(s),l.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>r,toc:()=>a});var t=l(74848),n=l(28453);const r={pagination_prev:null,pagination_next:null},i="%ZEN.Report.Display.COSChart.cswirlChart",a=[{value:"Properties",id:"properties",level:2},{value:"invert",id:"invert",level:3},{value:"separateSeriesScale",id:"separateseriesscale",level:3},{value:"gap",id:"gap",level:3},{value:"legendVisible",id:"legendvisible",level:3},{value:"plotBy",id:"plotby",level:3},{value:"Methods",id:"methods",level:2},{value:"hasAxes",id:"hasaxes",level:3},{value:"is3D",id:"is3d",level:3},{value:"hasMultiples",id:"hasmultiples",level:3},{value:"renderSeries",id:"renderseries",level:3},{value:"getChartElementStyle",id:"getchartelementstyle",level:3},{value:"getYLabelText",id:"getylabeltext",level:3},{value:"getLegendsCount",id:"getlegendscount",level:3},{value:"getSeriesNamesSize",id:"getseriesnamessize",level:3},{value:"getLegendLabels",id:"getlegendlabels",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"zenreportdisplaycoschartcswirlchart",children:"%ZEN.Report.Display.COSChart.cswirlChart"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Display.COSChart.cswirlChart Extends %ZEN.Report.Display.COSChart.cchart [ Deprecated, System = 4 ]\n"})}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"invert",children:"invert"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property invert As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Whether or not to 'invert' the swirl. In an inverted swirl, the labels are on the outside and the slices are lines rather than real surfaces.",(0,t.jsx)(s.br,{}),"\nNote, that the invert property is only active when labels are visible (labelsVisible=1)"]}),"\n",(0,t.jsx)(s.h3,{id:"separateseriesscale",children:"separateSeriesScale"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property separateSeriesScale As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"gap",children:"gap"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property gap As %ZEN.Datatype.integer(MAXVAL = 135, MINVAL = 0) [ InitialExpression = 30 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"space between first slice and last slice in degrees"}),"\n",(0,t.jsx)(s.h3,{id:"legendvisible",children:"legendVisible"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property legendVisible As %ZEN.Datatype.string(VALUELIST = ",auto,false,true") [ InitialExpression = "false" ];\n'})}),"\n",(0,t.jsx)(s.p,{children:"Overriding default value: now FALSE"}),"\n",(0,t.jsx)(s.h3,{id:"plotby",children:"plotBy"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property plotBy As %ZEN.Datatype.string(VALUELIST = ",items,series") [ InitialExpression = "items" ];\n'})}),"\n",(0,t.jsxs)(s.p,{children:["plotBy - items - this is default, it results in slices that are colored by items and a legend that is organized by labels on the slices",(0,t.jsx)(s.br,{}),"\nplotBy - series - it results in slices where slices of the same series are the same color, and legend shows labels for each series (not labels on the slices)"]}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"hasaxes",children:"hasAxes"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method hasAxes()\n"})}),"\n",(0,t.jsx)(s.p,{children:"Indicates that this chart has no axes and associated grids"}),"\n",(0,t.jsx)(s.h3,{id:"is3d",children:"is3D"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method is3D()\n"})}),"\n",(0,t.jsx)(s.p,{children:"Do not show 3-D plot area."}),"\n",(0,t.jsx)(s.h3,{id:"hasmultiples",children:"hasMultiples"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method hasMultiples()\n"})}),"\n",(0,t.jsx)(s.p,{children:'Indicates that this chart supports "show multiples" mode.'}),"\n",(0,t.jsx)(s.h3,{id:"renderseries",children:"renderSeries"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method renderSeries(group)\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getchartelementstyle",children:"getChartElementStyle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method getChartElementStyle(series, item) As %String\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getylabeltext",children:"getYLabelText"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method getYLabelText(val, yAxisNo, base)\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getlegendscount",children:"getLegendsCount"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method getLegendsCount(legends)\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getseriesnamessize",children:"getSeriesNamesSize"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method getSeriesNamesSize()\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getlegendlabels",children:"getLegendLabels"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method getLegendLabels()\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return an array of labels to display within the Legend box.",(0,t.jsx)(s.br,{}),"\nDefault implementation is to return a list of series names."]})]})}function d(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,l)=>{l.d(s,{R:()=>i,x:()=>a});var t=l(96540);const n={},r=t.createContext(n);function i(e){const s=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),t.createElement(r.Provider,{value:s},e.children)}}}]);