"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[26098],{59296:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>a,toc:()=>l});var t=n(74848),r=n(28453);const a={pagination_prev:null,pagination_next:null},i="%ZEN.Component.snapGrid",l=[{value:"Parameters",id:"parameters",level:2},{value:"INCLUDEFILES",id:"includefiles",level:3},{value:"Properties",id:"properties",level:2},{value:"cols",id:"cols",level:3},{value:"colsLandscape",id:"colslandscape",level:3},{value:"colsPortrait",id:"colsportrait",level:3},{value:"rows",id:"rows",level:3},{value:"rowsLandscape",id:"rowslandscape",level:3},{value:"rowsPortrait",id:"rowsportrait",level:3},{value:"groupName",id:"groupname",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"setProperty",id:"setproperty",level:3},{value:"onloadHandler",id:"onloadhandler",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"zencomponentsnapgrid",children:"%ZEN.Component.snapGrid"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.snapGrid Extends abstractDragGroupMgr [ Deprecated, LegacyInstanceContext, System = 3 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"%ZEN.Component.snapGrid is a dynamic layout control designed to organize dragGroups in a tiled layout with an automatic snap to grid feature. The underlying grid is defined by the number of rows and columns requested. The resulting gird is a normalized space where, for example a four column layout would result in each column being 25% of the total width wide. The grid itself does not scroll, however the dragGroups themselves may. The layout may be further refined into portrait and landscape modes such that the number of columns and rows may change if the geometry of the widget itself becomes taller than it is wide (or vise versa). This is particularly useful for adapting layouts on tablet devices such as the iPad."}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"includefiles",children:"INCLUDEFILES"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter INCLUDEFILES = "zenSnapGrid.js";\n'})}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"cols",children:"cols"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property cols As %ZEN.Datatype.integer [ InitialExpression = 3 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"If defined, this is used to define the number of columns used for both portrait and landscape layouts"}),"\n",(0,t.jsx)(s.h3,{id:"colslandscape",children:"colsLandscape"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property colsLandscape As %ZEN.Datatype.integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"If defined, this is used to define the number of columns when the rendered width of the widget is greater than or equal to its height"}),"\n",(0,t.jsx)(s.h3,{id:"colsportrait",children:"colsPortrait"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property colsPortrait As %ZEN.Datatype.integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"If defined, this is used to define the number of columns when the rendered width of the widget is less than its height"}),"\n",(0,t.jsx)(s.h3,{id:"rows",children:"rows"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property rows As %ZEN.Datatype.integer [ InitialExpression = 2 ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"If defined, this is used to define the number of rows used for both portrait and landscape layouts"}),"\n",(0,t.jsx)(s.h3,{id:"rowslandscape",children:"rowsLandscape"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property rowsLandscape As %ZEN.Datatype.integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"If defined, this is used to define the number of rows when the rendered width of the widget is greater than or equal to its height"}),"\n",(0,t.jsx)(s.h3,{id:"rowsportrait",children:"rowsPortrait"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property rowsPortrait As %ZEN.Datatype.integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"If defined, this is used to define the number of rows when the rendered width of the widget is less than its height"}),"\n",(0,t.jsx)(s.h3,{id:"groupname",children:"groupName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property groupName As %ZEN.Datatype.string [ InitialExpression = "snapGrid" ];\n'})}),"\n",(0,t.jsx)(s.p,{children:"The logical name of the manager with respect to the external JavaScript code that actually manages the space"}),"\n",(0,t.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,t.jsx)(s.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Set the value of a named property."}),"\n",(0,t.jsx)(s.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This client event, if present, is fired when the page is loaded."})]})}function d(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>l});var t=n(96540);const r={},a=t.createContext(r);function i(e){const s=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),t.createElement(a.Provider,{value:s},e.children)}}}]);