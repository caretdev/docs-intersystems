"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[76059],{47355:(e,r,t)=>{t.r(r),t.d(r,{contentTitle:()=>l,default:()=>c,frontMatter:()=>n,toc:()=>i});var a=t(74848),s=t(28453);const n={pagination_prev:null,pagination_next:null},l="%ZEN.Report.Display.Chart.chartUtil",i=[{value:"Methods",id:"methods",level:2},{value:"renderUtils",id:"renderutils",level:3},{value:"renderFindScaleUnits",id:"renderfindscaleunits",level:3},{value:"renderPower",id:"renderpower",level:3},{value:"renderGetPlotX",id:"rendergetplotx",level:3},{value:"renderGetPlotY",id:"rendergetploty",level:3},{value:"renderMaxMin",id:"rendermaxmin",level:3},{value:"renderLog",id:"renderlog",level:3},{value:"renderGetSeriesColor",id:"rendergetseriescolor",level:3},{value:"renderGetXLabelText",id:"rendergetxlabeltext",level:3},{value:"renderGetYLabelText",id:"rendergetylabeltext",level:3},{value:"renderDrawMarker",id:"renderdrawmarker",level:3},{value:"renderDrawLowMarker",id:"renderdrawlowmarker",level:3},{value:"renderGetSeriesCount",id:"rendergetseriescount",level:3},{value:"renderGetSeriesSize",id:"rendergetseriessize",level:3},{value:"renderDrawXLabels",id:"renderdrawxlabels",level:3},{value:"renderDrawYLabels",id:"renderdrawylabels",level:3},{value:"renderGridLinesTemplates",id:"rendergridlinestemplates",level:3},{value:"renderGetMaxMinValue",id:"rendergetmaxminvalue",level:3},{value:"qualify",id:"qualify",level:3},{value:"outputAttributesFromStyle",id:"outputattributesfromstyle",level:3},{value:"SvgPrefix",id:"svgprefix",level:3}];function d(e){const r={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(r.header,{children:(0,a.jsx)(r.h1,{id:"zenreportdisplaychartchartutil",children:"%ZEN.Report.Display.Chart.chartUtil"})}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Display.Chart.chartUtil Extends %RegisteredObject [ Deprecated, System = 4 ]\n"})}),"\n",(0,a.jsx)(r.p,{children:"Utility class that renders the various utility templates needed by a chart. Note: utility templates of the form 'zenReport...' have a number added to the template name to identify which chart they are a part of."}),"\n",(0,a.jsx)(r.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(r.h3,{id:"renderutils",children:"renderUtils"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderUtils(context As %String, XSL As %GlobalCharacterStream, chart As chart, plot As plot)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Entry method that renders all of the utility tempaltes provided by the other methods in this clas."}),"\n",(0,a.jsx)(r.h3,{id:"renderfindscaleunits",children:"renderFindScaleUnits"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderFindScaleUnits(XSL As %GlobalCharacterStream, chart As chart)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the zenReportFindScaleUnits template which finds the best scale units to use for given range."}),"\n",(0,a.jsx)(r.h3,{id:"renderpower",children:"renderPower"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderPower(XSL As %GlobalCharacterStream, chart As chart)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'util-power' template which raises 'base' to the power 'power.' Warning: very slow implementation."}),"\n",(0,a.jsx)(r.h3,{id:"rendergetplotx",children:"renderGetPlotX"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderGetPlotX(context As %String, XSL As %GlobalCharacterStream, chart As chart, plot As plot)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportGetPlotX' template. This template takes 'val' as a parameter, and returns the x coordinate within the chart."}),"\n",(0,a.jsx)(r.h3,{id:"rendergetploty",children:"renderGetPlotY"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderGetPlotY(context As %String, XSL As %GlobalCharacterStream, chart As chart, plot As plot)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportGetPlotY' template. This template takes 'val' as a parameter, and returns the y coordinate within the chart."}),"\n",(0,a.jsx)(r.h3,{id:"rendermaxmin",children:"renderMaxMin"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderMaxMin(XSL As %GlobalCharacterStream, chart As chart)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'util-min' and 'util-max' templates, which both take a 'nodes' parameter and return the maximum value across the nodes."}),"\n",(0,a.jsx)(r.h3,{id:"renderlog",children:"renderLog"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderLog(ByRef XSL As %GlobalCharacterStream, chart As chart)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'util-log10' (log base 10) and 'util-log' (natural log) templates, both of which take a 'number' parameter."}),"\n",(0,a.jsx)(r.h3,{id:"rendergetseriescolor",children:"renderGetSeriesColor"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:'ClassMethod renderGetSeriesColor(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, cc As %String = "")\n'})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportGetSeriesColor' template which takes a 'series' parameter. Color is determined by choosing the corresponding item in the list seriesColors. Color selection wraps around when the seriesColors list is exhausted."}),"\n",(0,a.jsx)(r.h3,{id:"rendergetxlabeltext",children:"renderGetXLabelText"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderGetXLabelText(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportGetXLabelText' template, which takes an 'item' parameter and returns the appropriate label text."}),"\n",(0,a.jsx)(r.h3,{id:"rendergetylabeltext",children:"renderGetYLabelText"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderGetYLabelText(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportGetYLabelText' template, which takes an 'item' parameter and returns the appropriate label text."}),"\n",(0,a.jsx)(r.h3,{id:"renderdrawmarker",children:"renderDrawMarker"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderDrawMarker(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportDrawMarker' template, which creates a plot marker. This template takes 'shape', 'color', 'x', and 'y' parameters. Shape can be 'up','down','circle','square'."}),"\n",(0,a.jsx)(r.h3,{id:"renderdrawlowmarker",children:"renderDrawLowMarker"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderDrawLowMarker(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, pivot)\n"})}),"\n",(0,a.jsx)(r.h3,{id:"rendergetseriescount",children:"renderGetSeriesCount"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderGetSeriesCount(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportGetSeriesCount' template which returns the number of series. Within a template, it is more efficient to use the $seriescount global variable than re-invoke this template."}),"\n",(0,a.jsx)(r.h3,{id:"rendergetseriessize",children:"renderGetSeriesSize"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderGetSeriesSize(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportGetSeriesSize' template which returns the number of series. Within a template, it is more efficient to use the $seriessize global variable than re-invoke this template."}),"\n",(0,a.jsx)(r.h3,{id:"renderdrawxlabels",children:"renderDrawXLabels"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderDrawXLabels(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, plot As plot)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportXValueLabels' and 'zenReportXCategoryLabels' templates. These loop over the data and display the appropriate labels."}),"\n",(0,a.jsx)(r.h3,{id:"renderdrawylabels",children:"renderDrawYLabels"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderDrawYLabels(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, plot As plot)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportYValueLabels' and 'zenReportYCategoryLabels' templates. These loop over the data and display the appropriate labels."}),"\n",(0,a.jsx)(r.h3,{id:"rendergridlinestemplates",children:"renderGridLinesTemplates"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderGridLinesTemplates(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, plot As plot)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportYValueLines', 'zenReportYCategoryLines', 'zenReportXValueLines', and 'zenReportXCategoryLines' templates which are invoked as necessary to draw the gridlines."}),"\n",(0,a.jsx)(r.h3,{id:"rendergetmaxminvalue",children:"renderGetMaxMinValue"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod renderGetMaxMinValue(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, chart As chart, plot As plot)\n"})}),"\n",(0,a.jsx)(r.p,{children:"Renders the 'zenReportGetMinValue' and 'zenReportGetMaxValue' templates which return the minimum and maximum data values across all series."}),"\n",(0,a.jsx)(r.h3,{id:"qualify",children:"qualify"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod qualify(xpath As %String, ByRef context As %String)\n"})}),"\n",(0,a.jsx)(r.h3,{id:"outputattributesfromstyle",children:"outputAttributesFromStyle"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod outputAttributesFromStyle(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, style As %String)\n"})}),"\n",(0,a.jsx)(r.p,{children:"following need for IE support"}),"\n",(0,a.jsx)(r.h3,{id:"svgprefix",children:"SvgPrefix"}),"\n",(0,a.jsx)(r.pre,{children:(0,a.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod SvgPrefix()\n"})})]})}function c(e={}){const{wrapper:r}={...(0,s.R)(),...e.components};return r?(0,a.jsx)(r,{...e,children:(0,a.jsx)(d,{...e})}):d(e)}},28453:(e,r,t)=>{t.d(r,{R:()=>l,x:()=>i});var a=t(96540);const s={},n=a.createContext(s);function l(e){const r=a.useContext(n);return a.useMemo((function(){return"function"==typeof e?e(r):{...r,...e}}),[r,e])}function i(e){let r;return r=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),a.createElement(n.Provider,{value:r},e.children)}}}]);