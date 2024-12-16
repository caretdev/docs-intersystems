"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[77444],{27397:(e,r,t)=>{t.r(r),t.d(r,{contentTitle:()=>l,default:()=>d,frontMatter:()=>n,toc:()=>i});var s=t(74848),a=t(28453);const n={pagination_prev:null,pagination_next:null},l="%ZEN.Report.Display.Chart.lineChart",i=[{value:"Parameters",id:"parameters",level:2},{value:"DEFAULTPLOTTOEDGE",id:"defaultplottoedge",level:3},{value:"Properties",id:"properties",level:2},{value:"chartFilled",id:"chartfilled",level:3},{value:"chartStacked",id:"chartstacked",level:3},{value:"chartPivot",id:"chartpivot",level:3},{value:"Methods",id:"methods",level:2},{value:"renderSeries",id:"renderseries",level:3},{value:"renderSeriesLine",id:"renderseriesline",level:3},{value:"renderMarkers",id:"rendermarkers",level:3},{value:"getXAxisType",id:"getxaxistype",level:3},{value:"getYAxisType",id:"getyaxistype",level:3}];function c(e){const r={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(r.header,{children:(0,s.jsx)(r.h1,{id:"zenreportdisplaychartlinechart",children:"%ZEN.Report.Display.Chart.lineChart"})}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Display.Chart.lineChart Extends chart [ Deprecated, System = 4 ]\n"})}),"\n",(0,s.jsx)(r.p,{children:"Renders a line chart."}),"\n",(0,s.jsx)(r.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(r.h3,{id:"defaultplottoedge",children:"DEFAULTPLOTTOEDGE"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Parameter DEFAULTPLOTTOEDGE = 1;\n"})}),"\n",(0,s.jsx)(r.p,{children:"Default value for plotToEdge property."}),"\n",(0,s.jsx)(r.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(r.h3,{id:"chartfilled",children:"chartFilled"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Property chartFilled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(r.p,{children:"Specifies whether the area under the line is filled (as in an area chart) or not filled (as in a line chart)."}),"\n",(0,s.jsx)(r.h3,{id:"chartstacked",children:"chartStacked"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Property chartStacked As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsxs)(r.p,{children:["If true, this is a ",(0,s.jsx)(r.em,{children:"stacked"})," line chart. That is, data series are plotted above one another.",(0,s.jsx)(r.br,{}),"\nNote that negative values are ignored in stacked charts."]}),"\n",(0,s.jsx)(r.h3,{id:"chartpivot",children:"chartPivot"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(r.p,{children:"If true, pivot this chart: display categories vertically and values horizontally."}),"\n",(0,s.jsx)(r.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(r.h3,{id:"renderseries",children:"renderSeries"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Method renderSeries(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status\n"})}),"\n",(0,s.jsx)(r.h3,{id:"renderseriesline",children:"renderSeriesLine"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Method renderSeriesLine(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, pDataFields As %String, i As %Integer) As %Status\n"})}),"\n",(0,s.jsx)(r.h3,{id:"rendermarkers",children:"renderMarkers"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Method renderMarkers(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, pDataFields As %String, pI As %Integer)\n"})}),"\n",(0,s.jsx)(r.h3,{id:"getxaxistype",children:"getXAxisType"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Method getXAxisType() As %String\n"})}),"\n",(0,s.jsx)(r.p,{children:"Return the type of x axis (category or value) used by this chart."}),"\n",(0,s.jsx)(r.h3,{id:"getyaxistype",children:"getYAxisType"}),"\n",(0,s.jsx)(r.pre,{children:(0,s.jsx)(r.code,{className:"language-objectscript-class",children:"Method getYAxisType() As %String\n"})}),"\n",(0,s.jsx)(r.p,{children:"Return the type of y axis (category or value) used by this chart."})]})}function d(e={}){const{wrapper:r}={...(0,a.R)(),...e.components};return r?(0,s.jsx)(r,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,r,t)=>{t.d(r,{R:()=>l,x:()=>i});var s=t(96540);const a={},n=s.createContext(a);function l(e){const r=s.useContext(n);return s.useMemo((function(){return"function"==typeof e?e(r):{...r,...e}}),[r,e])}function i(e){let r;return r=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:l(e.components),s.createElement(n.Provider,{value:r},e.children)}}}]);