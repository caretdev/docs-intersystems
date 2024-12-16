"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[51631],{59259:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>a,default:()=>d,frontMatter:()=>r,toc:()=>i});var l=t(74848),s=t(28453);const r={pagination_prev:null,pagination_next:null},a="%ZEN.SVGComponent.abstractSVGGroup",i=[{value:"Parameters",id:"parameters",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"DEFAULTLAYOUT",id:"defaultlayout",level:3},{value:"Properties",id:"properties",level:2},{value:"children",id:"children",level:3},{value:"layout",id:"layout",level:3},{value:"disabled",id:"disabled",level:3},{value:"%partial",id:"partial",level:3},{value:"Methods",id:"methods",level:2},{value:"renderSVG",id:"rendersvg",level:3},{value:"layoutChildren",id:"layoutchildren",level:3},{value:"setOverlayMode",id:"setoverlaymode",level:3},{value:"%AddChild",id:"addchild",level:3},{value:"%RemoveChild",id:"removechild",level:3},{value:"addChild",id:"addchild-1",level:3},{value:"removeChild",id:"removechild-1",level:3},{value:"setPropertyAll",id:"setpropertyall",level:3}];function o(e){const n={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(n.header,{children:(0,l.jsx)(n.h1,{id:"zensvgcomponentabstractsvggroup",children:"%ZEN.SVGComponent.abstractSVGGroup"})}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.SVGComponent.abstractSVGGroup Extends %XML.Adaptor [ Abstract, Deprecated, PropertyClass = %ZEN.componentParameters, System = 3 ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Base implementation of SVG group behavior."}),"\n",(0,l.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/zen";\n'})}),"\n",(0,l.jsx)(n.p,{children:"XML namespace used for library components."}),"\n",(0,l.jsx)(n.h3,{id:"defaultlayout",children:"DEFAULTLAYOUT"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTLAYOUT As STRING;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Subclasses can set this to change default layout for a group."}),"\n",(0,l.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(n.h3,{id:"children",children:"children"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property children As list Of svgComponent(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);\n'})}),"\n",(0,l.jsx)(n.p,{children:"Set of svg components within this group."}),"\n",(0,l.jsx)(n.h3,{id:"layout",children:"layout"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property layout As %ZEN.Datatype.string(VALUELIST = ",vertical,horizontal,flow,none") [ InitialExpression = {..#DEFAULTLAYOUT} ];\n'})}),"\n",(0,l.jsxs)(n.p,{children:["Specifies how components within this group should be layed out.",(0,l.jsx)(n.br,{}),'\n"none" indicates that no layout is provided.',(0,l.jsx)(n.br,{}),'\n"vertical" indicates that components within this group are layed out vertically.',(0,l.jsx)(n.br,{}),'\n"horizontal" indicates that components within this group are layed out horizontally.',(0,l.jsx)(n.br,{}),'\n"flow" indicates that components within this group are placed within multiple rows. Items are placed horizontally until the width of the container is exceeded and then components are placed on the next row.']}),"\n",(0,l.jsx)(n.h3,{id:"disabled",children:"disabled"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property disabled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(n.p,{children:"If true, this group and its children are disabled."}),"\n",(0,l.jsx)(n.h3,{id:"partial",children:"%partial"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property %partial As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];\n'})}),"\n",(0,l.jsxs)(n.p,{children:["Internal property.",(0,l.jsx)(n.br,{}),"\nIf true, this group was only partially serialized on the client (it is the ancestor of the object being serialized) and we should ignore changes made to the children array when shipping changes back to the client."]}),"\n",(0,l.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(n.h3,{id:"rendersvg",children:"renderSVG"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod renderSVG(document, parent) [ Final, Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Draw an enclosing SVG group and then render the SVG children of the group."}),"\n",(0,l.jsx)(n.h3,{id:"layoutchildren",children:"layoutChildren"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod layoutChildren() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Apply layout to the child components within this group. Updates the value of width and height for this group;"}),"\n",(0,l.jsx)(n.h3,{id:"setoverlaymode",children:"setOverlayMode"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setOverlayMode(mode) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Set overlay mode for each child of this group."}),"\n",(0,l.jsx)(n.h3,{id:"addchild",children:"%AddChild"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %AddChild(pComponent As %ZEN.Component.object)\n"})}),"\n",(0,l.jsxs)(n.p,{children:["Add a child component pComponent to this group. This is called when the server component tree is being created. This also adds pComponent to the page that this group belongs to; this group must be added to a page before adding any child components to it. In addition, the id property of the component ",(0,l.jsx)(n.em,{children:"must"})," be set before calling this method."]}),"\n",(0,l.jsx)(n.h3,{id:"removechild",children:"%RemoveChild"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %RemoveChild(pComponent As %ZEN.Component.object) As %Boolean\n"})}),"\n",(0,l.jsx)(n.p,{children:"Remove child component pComponent from this group. Returns true if the component was found and removed."}),"\n",(0,l.jsx)(n.h3,{id:"addchild-1",children:"addChild"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod addChild(component) [ Language = javascript ]\n"})}),"\n",(0,l.jsxs)(n.p,{children:["Client-side method.",(0,l.jsx)(n.br,{}),"\nDynamically add a component to this group on the client."]}),"\n",(0,l.jsx)(n.h3,{id:"removechild-1",children:"removeChild"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod removeChild(component) [ Language = javascript ]\n"})}),"\n",(0,l.jsxs)(n.p,{children:["Client-side method.",(0,l.jsx)(n.br,{}),"\nDynamically remove a component from this group on the client."]}),"\n",(0,l.jsx)(n.h3,{id:"setpropertyall",children:"setPropertyAll"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setPropertyAll(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,l.jsxs)(n.p,{children:["Apply the given value to the specified property for this group and all of its children.",(0,l.jsx)(n.br,{}),"\nNote that this will not work for 'disabled'; for that use setProperty."]})]})}function d(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,l.jsx)(n,{...e,children:(0,l.jsx)(o,{...e})}):o(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>a,x:()=>i});var l=t(96540);const s={},r=l.createContext(s);function a(e){const n=l.useContext(r);return l.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:a(e.components),l.createElement(r.Provider,{value:n},e.children)}}}]);