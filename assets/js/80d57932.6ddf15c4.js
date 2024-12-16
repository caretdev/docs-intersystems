"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[2825],{83268:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>l,default:()=>d,frontMatter:()=>r,toc:()=>i});var t=a(74848),n=a(28453);const r={pagination_prev:null,pagination_next:null},l="%ZEN.SVGComponent.bubbleChart",i=[{value:"Parameters",id:"parameters",level:2},{value:"DEFAULTPLOTTOEDGE",id:"defaultplottoedge",level:3},{value:"DEFAULTMARKERSVISIBLE",id:"defaultmarkersvisible",level:3},{value:"Properties",id:"properties",level:2},{value:"radius",id:"radius",level:3},{value:"opacity",id:"opacity",level:3},{value:"xCenterValue",id:"xcentervalue",level:3},{value:"yCenterValue",id:"ycentervalue",level:3},{value:"showQuadrant",id:"showquadrant",level:3},{value:"showRegression",id:"showregression",level:3},{value:"tag",id:"tag",level:3},{value:"upperRightStyle",id:"upperrightstyle",level:3},{value:"lowerLeftStyle",id:"lowerleftstyle",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"SVGStyle",id:"svgstyle",level:3},{value:"Methods",id:"methods",level:2},{value:"getXAxisType",id:"getxaxistype",level:3},{value:"getYAxisType",id:"getyaxistype",level:3},{value:"findDataRange",id:"finddatarange",level:3},{value:"renderSeries",id:"renderseries",level:3},{value:"getLegendLabels",id:"getlegendlabels",level:3},{value:"setProperty",id:"setproperty",level:3},{value:"renderBands",id:"renderbands",level:3},{value:"getSeriesNames",id:"getseriesnames",level:3},{value:"getXAxisTitle",id:"getxaxistitle",level:3},{value:"getYAxisTitle",id:"getyaxistitle",level:3},{value:"getToolTipInfo",id:"gettooltipinfo",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"zensvgcomponentbubblechart",children:"%ZEN.SVGComponent.bubbleChart"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.SVGComponent.bubbleChart Extends chart [ Deprecated, System = 3 ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["This is an SVG chart component that displays a bubble chart.",(0,t.jsx)(s.br,{}),"\nThis chart expects at least 2 data series, the first supplying x values and the second supplying y values.",(0,t.jsx)(s.br,{}),"\nAdditional series are interpreted as:",(0,t.jsx)(s.br,{}),"\nSeries 2: radius (radius of each bubble).",(0,t.jsx)(s.br,{}),"\nSeries 3: colors (items are grouped into buckets by value).",(0,t.jsx)(s.br,{}),"\nSeries 4: opacity (opacity of items from 0 to 1 -- values are not normalized)."]}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"defaultplottoedge",children:"DEFAULTPLOTTOEDGE"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter DEFAULTPLOTTOEDGE = 1;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Default value for plotToEdge property."}),"\n",(0,t.jsx)(s.h3,{id:"defaultmarkersvisible",children:"DEFAULTMARKERSVISIBLE"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter DEFAULTMARKERSVISIBLE = 0;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Default value for the markersVisible property."}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"radius",children:"radius"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property radius As %ZEN.Datatype.float [ InitialExpression = 3 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Default radius (in logical units) for bubbles. If there is a radius series, its values are scaled and multiplied by this value."}),"\n",(0,t.jsx)(s.h3,{id:"opacity",children:"opacity"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property opacity As %ZEN.Datatype.float [ InitialExpression = 0.75 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Default opacity (from 0 to 1) for bubbles. If there is a opacity series, its values are scaled and multiplied by this value."}),"\n",(0,t.jsx)(s.h3,{id:"xcentervalue",children:"xCenterValue"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property xCenterValue As %ZEN.Datatype.float;\n"})}),"\n",(0,t.jsx)(s.p,{children:'Center value along x-axis. Used to draw background "quadrants".'}),"\n",(0,t.jsx)(s.h3,{id:"ycentervalue",children:"yCenterValue"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property yCenterValue As %ZEN.Datatype.float;\n"})}),"\n",(0,t.jsx)(s.p,{children:'Center value along y-axis. Used to draw background "quadrants".'}),"\n",(0,t.jsx)(s.h3,{id:"showquadrant",children:"showQuadrant"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property showQuadrant As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:'If true, then draw background "quadrants".'}),"\n",(0,t.jsx)(s.h3,{id:"showregression",children:"showRegression"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property showRegression As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"If true, then draw a computed linear regression line."}),"\n",(0,t.jsx)(s.h3,{id:"tag",children:"tag"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property tag As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "bubbleChart", Internal ];\n'})}),"\n",(0,t.jsx)(s.h3,{id:"upperrightstyle",children:"upperRightStyle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property upperRightStyle As %ZEN.Datatype.svgStyle;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Optional: style applied to the upper right quadrant background."}),"\n",(0,t.jsx)(s.h3,{id:"lowerleftstyle",children:"lowerLeftStyle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property lowerLeftStyle As %ZEN.Datatype.svgStyle;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Optional: style applied to the lower left quadrant background."}),"\n",(0,t.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(s.h3,{id:"svgstyle",children:"SVGStyle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"XData SVGStyle\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"getxaxistype",children:"getXAxisType"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getXAxisType() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return the type of x axis (category or value) used by this chart."}),"\n",(0,t.jsx)(s.h3,{id:"getyaxistype",children:"getYAxisType"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getYAxisType() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return the type of y axis (category or value) used by this chart."}),"\n",(0,t.jsx)(s.h3,{id:"finddatarange",children:"findDataRange"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod findDataRange() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Internal method: return (as an object) the minimum and maximum data values for this chart. This is used for ranges that are automatically calculated."}),"\n",(0,t.jsx)(s.h3,{id:"renderseries",children:"renderSeries"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod renderSeries(group) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Draw data series for this chart. group is the SVG container for the chart components."}),"\n",(0,t.jsx)(s.h3,{id:"getlegendlabels",children:"getLegendLabels"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getLegendLabels() [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return an array of labels to display within the Legend box.",(0,t.jsx)(s.br,{}),"\nFor xy chart we have to skip the first series, as it contains x-values, and not a logical data series."]}),"\n",(0,t.jsx)(s.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Set the value of a named property."}),"\n",(0,t.jsx)(s.h3,{id:"renderbands",children:"renderBands"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod renderBands() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:'Draw the upper/lower bands for the chart. Override standard "bands" and replace with "quadrant" boxes.'}),"\n",(0,t.jsx)(s.h3,{id:"getseriesnames",children:"getSeriesNames"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getSeriesNames() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Override and use seriesNames only."}),"\n",(0,t.jsx)(s.h3,{id:"getxaxistitle",children:"getXAxisTitle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getXAxisTitle() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return the x axis title."}),"\n",(0,t.jsx)(s.h3,{id:"getyaxistitle",children:"getYAxisTitle"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getYAxisTitle() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return the y axis title."}),"\n",(0,t.jsx)(s.h3,{id:"gettooltipinfo",children:"getToolTipInfo"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getToolTipInfo(series, item, captions, values) [ Internal, Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return an object containing tooltip information for the given element."})]})}function d(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>l,x:()=>i});var t=a(96540);const n={},r=t.createContext(n);function l(e){const s=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:l(e.components),t.createElement(r.Provider,{value:s},e.children)}}}]);