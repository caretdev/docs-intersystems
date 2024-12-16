"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[51617],{67160:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>n,default:()=>h,frontMatter:()=>l,toc:()=>i});var r=t(74848),a=t(28453);const l={pagination_prev:null,pagination_next:null},n="%ZEN.Report.Display.COSChart.chilowChart",i=[{value:"Parameters",id:"parameters",level:2},{value:"DEFAULTPLOTTOEDGE",id:"defaultplottoedge",level:3},{value:"Properties",id:"properties",level:2},{value:"chartPivot",id:"chartpivot",level:3},{value:"invertedBarStyle",id:"invertedbarstyle",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"SVGStyle",id:"svgstyle",level:3},{value:"Methods",id:"methods",level:2},{value:"renderSeries",id:"renderseries",level:3},{value:"getLegendLabels",id:"getlegendlabels",level:3},{value:"getChartElementStyle",id:"getchartelementstyle",level:3},{value:"getXAxisType",id:"getxaxistype",level:3},{value:"getYAxisType",id:"getyaxistype",level:3},{value:"useSumForRange",id:"usesumforrange",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,a.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"zenreportdisplaycoschartchilowchart",children:"%ZEN.Report.Display.COSChart.chilowChart"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Display.COSChart.chilowChart Extends cchart [ Deprecated, System = 4 ]\n"})}),"\n",(0,r.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(s.h3,{id:"defaultplottoedge",children:"DEFAULTPLOTTOEDGE"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter DEFAULTPLOTTOEDGE = 0;\n"})}),"\n",(0,r.jsxs)(s.p,{children:["This is an SVG chart component that displays a hi-low-close chart.",(0,r.jsx)(s.br,{}),"\nThis chart displays three data series as a set of rectangles: the top of each rectangle represents the high value; the bottom, the low value; a marker is drawn for the closing value.",(0,r.jsx)(s.br,{}),"\nThe three data series are interpreted as:"]}),"\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:"First series: set of high values."}),"\n",(0,r.jsx)(s.li,{children:"Second series: set of low values. Each low value is assumed to be smaller than its corresponding high value."}),"\n",(0,r.jsxs)(s.li,{children:["Third series: set of optional closing values. Each closing value is assumed to between its corresponding high and low values.\nYou can view pivot the chart using the chartPivot property.",(0,r.jsx)(s.br,{}),"\nDefault value for plotToEdge property."]}),"\n"]}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"chartpivot",children:"chartPivot"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"If true, pivot this chart: display categories vertically and values horizontally."}),"\n",(0,r.jsx)(s.h3,{id:"invertedbarstyle",children:"invertedBarStyle"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property invertedBarStyle As %ZEN.Datatype.svgStyle;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Optional: style used for bars where the high value is less than the low value."}),"\n",(0,r.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,r.jsx)(s.h3,{id:"svgstyle",children:"SVGStyle"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"XData SVGStyle\n"})}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"renderseries",children:"renderSeries"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method renderSeries(group)\n"})}),"\n",(0,r.jsx)(s.p,{children:"Draw data series for this chart. group is the SVG container for the chart components."}),"\n",(0,r.jsx)(s.h3,{id:"getlegendlabels",children:"getLegendLabels"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method getLegendLabels()\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Return an array of labels to display within the Legend box.",(0,r.jsx)(s.br,{}),"\nA hilow chart only displays one logical data series, so only one item is displayed in the legend box."]}),"\n",(0,r.jsx)(s.h3,{id:"getchartelementstyle",children:"getChartElementStyle"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method getChartElementStyle(series, item)\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return default style for a bar element."}),"\n",(0,r.jsx)(s.h3,{id:"getxaxistype",children:"getXAxisType"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method getXAxisType()\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return the type of x axis (category or value) used by this chart."}),"\n",(0,r.jsx)(s.h3,{id:"getyaxistype",children:"getYAxisType"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method getYAxisType()\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return the type of y axis (category or value) used by this chart."}),"\n",(0,r.jsx)(s.h3,{id:"usesumforrange",children:"useSumForRange"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method useSumForRange()\n"})}),"\n",(0,r.jsx)(s.p,{children:"This method returns true if data series should be summed when calculating data range for the chart."})]})}function h(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>n,x:()=>i});var r=t(96540);const a={},l=r.createContext(a);function n(e){const s=r.useContext(l);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:n(e.components),r.createElement(l.Provider,{value:s},e.children)}}}]);