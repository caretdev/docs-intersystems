"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[80571],{9054:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>d,default:()=>c,frontMatter:()=>t,toc:()=>i});var l=s(74848),a=s(28453);const t={pagination_prev:null,pagination_next:null},d="%ZEN.SVGComponent.radialNavigator",i=[{value:"Parameters",id:"parameters",level:2},{value:"DEFAULTVIEWBOXWIDTH",id:"defaultviewboxwidth",level:3},{value:"DEFAULTVIEWBOXHEIGHT",id:"defaultviewboxheight",level:3},{value:"Properties",id:"properties",level:2},{value:"nodes",id:"nodes",level:3},{value:"title",id:"title",level:3},{value:"mainLabel",id:"mainlabel",level:3},{value:"backgroundStyle",id:"backgroundstyle",level:3},{value:"titleStyle",id:"titlestyle",level:3},{value:"mainLabelStyle",id:"mainlabelstyle",level:3},{value:"hubStyle",id:"hubstyle",level:3},{value:"nodeStyle",id:"nodestyle",level:3},{value:"scaleNodes",id:"scalenodes",level:3},{value:"selectedIndex",id:"selectedindex",level:3},{value:"onselectNode",id:"onselectnode",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"SVGStyle",id:"svgstyle",level:3},{value:"Methods",id:"methods",level:2},{value:"renderContents",id:"rendercontents",level:3},{value:"drawConnector",id:"drawconnector",level:3},{value:"drawNode",id:"drawnode",level:3},{value:"selectNode",id:"selectnode",level:3},{value:"nodeMouseHandler",id:"nodemousehandler",level:3},{value:"nodeClickHandler",id:"nodeclickhandler",level:3},{value:"clearNodes",id:"clearnodes",level:3},{value:"getCurrNode",id:"getcurrnode",level:3},{value:"getNode",id:"getnode",level:3},{value:"removeNode",id:"removenode",level:3},{value:"appendNode",id:"appendnode",level:3},{value:"setProperty",id:"setproperty",level:3}];function r(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(n.header,{children:(0,l.jsx)(n.h1,{id:"zensvgcomponentradialnavigator",children:"%ZEN.SVGComponent.radialNavigator"})}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.SVGComponent.radialNavigator Extends svgComponent [ Deprecated, System = 3 ]\n"})}),"\n",(0,l.jsxs)(n.p,{children:["This is a specialized SVG component that displays the relationship between a set of data items as a radial diagram.",(0,l.jsx)(n.br,{}),"\nThe data is displayed as a central circular hub surrounded by a set of evenly spaced nodes. The number and contents of the nodes is specified by an array of %ZEN.Auxiliary.radialNode objects."]}),"\n",(0,l.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(n.h3,{id:"defaultviewboxwidth",children:"DEFAULTVIEWBOXWIDTH"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTVIEWBOXWIDTH As INTEGER = 100;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Default viewBoxWidth of this component. This is set to 100 to provide a fixed coordinate system."}),"\n",(0,l.jsx)(n.h3,{id:"defaultviewboxheight",children:"DEFAULTVIEWBOXHEIGHT"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTVIEWBOXHEIGHT As INTEGER = 100;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Default viewBoxHeight of this component. This is set to 100 to provide a fixed coordinate system."}),"\n",(0,l.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(n.h3,{id:"nodes",children:"nodes"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property nodes As list Of %ZEN.Auxiliary.radialNode(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE");\n'})}),"\n",(0,l.jsx)(n.p,{children:"List of node information objects. Each object specifies details about a node displayed by the Navigator."}),"\n",(0,l.jsx)(n.h3,{id:"title",children:"title"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property title As %ZEN.Datatype.caption;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Title displayed by navigator."}),"\n",(0,l.jsx)(n.h3,{id:"mainlabel",children:"mainLabel"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property mainLabel As %ZEN.Datatype.caption;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Label for central hub."}),"\n",(0,l.jsx)(n.h3,{id:"backgroundstyle",children:"backgroundStyle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property backgroundStyle As %ZEN.Datatype.svgStyle;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Optional: style used for background panel."}),"\n",(0,l.jsx)(n.h3,{id:"titlestyle",children:"titleStyle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property titleStyle As %ZEN.Datatype.svgStyle;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Optional: style used for title text."}),"\n",(0,l.jsx)(n.h3,{id:"mainlabelstyle",children:"mainLabelStyle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property mainLabelStyle As %ZEN.Datatype.svgStyle;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Optional: style used for main hub label text."}),"\n",(0,l.jsx)(n.h3,{id:"hubstyle",children:"hubStyle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property hubStyle As %ZEN.Datatype.svgStyle;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Optional: style applied to central hub."}),"\n",(0,l.jsx)(n.h3,{id:"nodestyle",children:"nodeStyle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property nodeStyle As %ZEN.Datatype.svgStyle;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Optional: style applied to nodes."}),"\n",(0,l.jsx)(n.h3,{id:"scalenodes",children:"scaleNodes"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property scaleNodes As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(n.p,{children:"Optional: if true, then scale the size of the outer nodes proportionally to their value."}),"\n",(0,l.jsx)(n.h3,{id:"selectedindex",children:"selectedIndex"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -2 ];\n"})}),"\n",(0,l.jsx)(n.p,{children:"Index (0-based) of selected node. -1 means that the central node is selected. -2 means that no node is selected."}),"\n",(0,l.jsx)(n.h3,{id:"onselectnode",children:"onselectNode"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property onselectNode As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,l.jsxs)(n.p,{children:["onselectNode event handler: This event is fired when the mouse is clicked on a Node.",(0,l.jsx)(n.br,{}),"\nWhen this event is invoked, the selectedIndex will contain the index (0-based) of the current node. If the user clicks on the central node then selectedIndex will be -1;"]}),"\n",(0,l.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(n.h3,{id:"svgstyle",children:"SVGStyle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"XData SVGStyle\n"})}),"\n",(0,l.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(n.h3,{id:"rendercontents",children:"renderContents"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod renderContents() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Render the inner SVG contents of this component."}),"\n",(0,l.jsx)(n.h3,{id:"drawconnector",children:"drawConnector"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod drawConnector(group, angle) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Draw a connector."}),"\n",(0,l.jsx)(n.h3,{id:"drawnode",children:"drawNode"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod drawNode(group, type, angle, node, num, size) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Draw a node."}),"\n",(0,l.jsx)(n.h3,{id:"selectnode",children:"selectNode"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod selectNode(index) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Select the specified node."}),"\n",(0,l.jsx)(n.h3,{id:"nodemousehandler",children:"nodeMouseHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod nodeMouseHandler(evt, flag, nodeIndex) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Highlight/unhighlight node (called by mouseover, mouseout events)."}),"\n",(0,l.jsx)(n.h3,{id:"nodeclickhandler",children:"nodeClickHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod nodeClickHandler(evt, type, nodeIndex) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Onclick handler for nodes."}),"\n",(0,l.jsx)(n.h3,{id:"clearnodes",children:"clearNodes"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod clearNodes() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Remove the set of nodes associated with this Navigator."}),"\n",(0,l.jsx)(n.h3,{id:"getcurrnode",children:"getCurrNode"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getCurrNode() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Return the current selected node object associated with this Navigator."}),"\n",(0,l.jsx)(n.h3,{id:"getnode",children:"getNode"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getNode(index) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Return a node object associated with this Navigator given its index number (0-based)."}),"\n",(0,l.jsx)(n.h3,{id:"removenode",children:"removeNode"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod removeNode(index) [ Language = javascript ]\n"})}),"\n",(0,l.jsxs)(n.p,{children:["Remove a node from this navigator.",(0,l.jsx)(n.br,{}),"\nindex is the index number (0-based) of the node."]}),"\n",(0,l.jsx)(n.h3,{id:"appendnode",children:"appendNode"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod appendNode(node) [ Language = javascript ]\n"})}),"\n",(0,l.jsxs)(n.p,{children:["Append a new node object to this navigator.",(0,l.jsx)(n.br,{}),"\nThe node object should be created by calling: ",(0,l.jsx)(n.code,{children:"node = zenPage.createComponent('radialNode');"})]}),"\n",(0,l.jsx)(n.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Set the value of a named property."})]})}function c(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,l.jsx)(n,{...e,children:(0,l.jsx)(r,{...e})}):r(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>d,x:()=>i});var l=s(96540);const a={},t=l.createContext(a);function d(e){const n=l.useContext(t);return l.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:d(e.components),l.createElement(t.Provider,{value:n},e.children)}}}]);