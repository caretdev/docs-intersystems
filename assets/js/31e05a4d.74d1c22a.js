"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[9914],{49096:(e,t,r)=>{r.r(t),r.d(t,{contentTitle:()=>i,default:()=>o,frontMatter:()=>a,toc:()=>l});var n=r(74848),s=r(28453);const a={pagination_prev:null,pagination_next:null},i="%ZEN.Component.repeatingGroup",l=[{value:"Properties",id:"properties",level:2},{value:"parameters",id:"parameters",level:3},{value:"selectedIndex",id:"selectedindex",level:3},{value:"onclickitem",id:"onclickitem",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"itemClickHandler",id:"itemclickhandler",level:3},{value:"selectItem",id:"selectitem",level:3},{value:"setProperty",id:"setproperty",level:3}];function c(e){const t={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"zencomponentrepeatinggroup",children:"%ZEN.Component.repeatingGroup"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.repeatingGroup Extends (group, querySource) [ Deprecated, Inheritance = right, System = 3 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["A specialized group that repeats its contents based on run-time data.",(0,n.jsx)(t.br,{}),"\nA repeating group executes a query and, for each row of the results, creates HTML for all of the members of the group. For example: `` Each row within the repeating group is referred to as a ",(0,n.jsx)(t.em,{children:"tuple"}),". For each tuple, the repeating group renders HTML for each of its child components. Note that only one object is created for each child of the repeating group but there are multiple HTML renderings (one per tuple) for each child. The rendered HTML incorporates the current tuple number into the id values used to identify HTML elements to keep track of them.",(0,n.jsx)(t.br,{}),"\nApplications should keep use of repeatingGroups reasonably simple. Repeating groups within repeating groups are not supported."]}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"parameters",children:"parameters"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property parameters As list Of %ZEN.Auxiliary.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,n.jsx)(t.p,{children:"User-defined list of parameters. These values are passed on to the user callback function that provides the query for this table."}),"\n",(0,n.jsx)(t.h3,{id:"selectedindex",children:"selectedIndex"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -1 ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Indicates which member (0-based) of this repeating group is selected, if any."}),"\n",(0,n.jsx)(t.h3,{id:"onclickitem",children:"onclickitem"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property onclickitem As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,n.jsx)(t.p,{children:"onclickitem event handler: If defined, this event is fired when the user clicks on an item within the repeating group."}),"\n",(0,n.jsx)(t.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(t.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,n.jsx)(t.p,{children:"Draw contents of the group."}),"\n",(0,n.jsx)(t.h3,{id:"itemclickhandler",children:"itemClickHandler"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod itemClickHandler(tuple) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"User has clicked on a member of this repeating group. tuple is 0-based."}),"\n",(0,n.jsx)(t.h3,{id:"selectitem",children:"selectItem"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod selectItem(tuple) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Select a member of this repeating group. tuple specifies which member (0-based)."}),"\n",(0,n.jsx)(t.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Set the value of a named property."})]})}function o(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,t,r)=>{r.d(t,{R:()=>i,x:()=>l});var n=r(96540);const s={},a=n.createContext(s);function i(e){const t=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),n.createElement(a.Provider,{value:t},e.children)}}}]);