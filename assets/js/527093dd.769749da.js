"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[14507],{42533:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>a,toc:()=>r});var t=s(74848),i=s(28453);const a={pagination_prev:null,pagination_next:null},l="%ZEN.SVGComponent.svgComponent",r=[{value:"Parameters",id:"parameters",level:2},{value:"POSTCOMPILEACTIONS",id:"postcompileactions",level:3},{value:"DEFAULTVISIBLE",id:"defaultvisible",level:3},{value:"DEFAULTWIDTH",id:"defaultwidth",level:3},{value:"DEFAULTHEIGHT",id:"defaultheight",level:3},{value:"DEFAULTVIEWBOXWIDTH",id:"defaultviewboxwidth",level:3},{value:"DEFAULTVIEWBOXHEIGHT",id:"defaultviewboxheight",level:3},{value:"DEFAULTHIDDEN",id:"defaulthidden",level:3},{value:"DEFAULTBOUNDLESS",id:"defaultboundless",level:3},{value:"DEFAULTASPECT",id:"defaultaspect",level:3},{value:"Properties",id:"properties",level:2},{value:"x",id:"x",level:3},{value:"y",id:"y",level:3},{value:"position",id:"position",level:3},{value:"width",id:"width",level:3},{value:"height",id:"height",level:3},{value:"viewBoxWidth",id:"viewboxwidth",level:3},{value:"viewBoxHeight",id:"viewboxheight",level:3},{value:"preserveAspectRatio",id:"preserveaspectratio",level:3},{value:"svgGroup",id:"svggroup",level:3},{value:"document",id:"document",level:3},{value:"hidden",id:"hidden",level:3},{value:"boundless",id:"boundless",level:3},{value:"onclick",id:"onclick",level:3},{value:"svgComponent",id:"svgcomponent",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"SVGStyle",id:"svgstyle",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"renderSVG",id:"rendersvg",level:3},{value:"createEnclosingGroup",id:"createenclosinggroup",level:3},{value:"clickHandler",id:"clickhandler",level:3},{value:"calculateViewBox",id:"calculateviewbox",level:3},{value:"renderContents",id:"rendercontents",level:3},{value:"unrender",id:"unrender",level:3},{value:"refreshContents",id:"refreshcontents",level:3},{value:"findSVGElement",id:"findsvgelement",level:3},{value:"setOverlayMode",id:"setoverlaymode",level:3},{value:"createOverlay",id:"createoverlay",level:3},{value:"updateOverlay",id:"updateoverlay",level:3},{value:"createSizingHandle",id:"createsizinghandle",level:3},{value:"overlayMouseDownHandler",id:"overlaymousedownhandler",level:3},{value:"sizingMouseDownHandler",id:"sizingmousedownhandler",level:3},{value:"getFrame",id:"getframe",level:3},{value:"setTextNode",id:"settextnode",level:3},{value:"wrapMethod",id:"wrapmethod",level:3},{value:"getSizeAbsolute",id:"getsizeabsolute",level:3},{value:"setPosition",id:"setposition",level:3},{value:"setSize",id:"setsize",level:3},{value:"setPositionHandler",id:"setpositionhandler",level:3},{value:"setSizeHandler",id:"setsizehandler",level:3},{value:"setProperty",id:"setproperty",level:3},{value:"beginWaitState",id:"beginwaitstate",level:3},{value:"updateWaitState",id:"updatewaitstate",level:3},{value:"drawWaitIcon",id:"drawwaiticon",level:3},{value:"endWaitState",id:"endwaitstate",level:3}];function c(e){const n={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"zensvgcomponentsvgcomponent",children:"%ZEN.SVGComponent.svgComponent"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.SVGComponent.svgComponent Extends %ZEN.Component.object [ Abstract, Deprecated, System = 3 ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Base class for SVG components.",(0,t.jsx)(n.br,{}),"\nUnlike HTML components, SVG components are completely dynamic; all rendering is done using client-side JavaScript.",(0,t.jsx)(n.br,{}),"\nEvery component is rendered within its own enclosing group (g) element."]}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"postcompileactions",children:"POSTCOMPILEACTIONS"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter POSTCOMPILEACTIONS = "schema,SVG";\n'})}),"\n",(0,t.jsx)(n.p,{children:"Internal parameter."}),"\n",(0,t.jsx)(n.h3,{id:"defaultvisible",children:"DEFAULTVISIBLE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTVISIBLE = 1;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Subclasses can set this to change default visibilty for a component."}),"\n",(0,t.jsx)(n.h3,{id:"defaultwidth",children:"DEFAULTWIDTH"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTWIDTH As INTEGER = 100;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Default width of this component."}),"\n",(0,t.jsx)(n.h3,{id:"defaultheight",children:"DEFAULTHEIGHT"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTHEIGHT As INTEGER = 100;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Default height of this component."}),"\n",(0,t.jsx)(n.h3,{id:"defaultviewboxwidth",children:"DEFAULTVIEWBOXWIDTH"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTVIEWBOXWIDTH As INTEGER;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Default viewBoxWidth of this component."}),"\n",(0,t.jsx)(n.h3,{id:"defaultviewboxheight",children:"DEFAULTVIEWBOXHEIGHT"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTVIEWBOXHEIGHT As INTEGER;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Default viewBoxHeight of this component."}),"\n",(0,t.jsx)(n.h3,{id:"defaulthidden",children:"DEFAULTHIDDEN"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTHIDDEN As BOOLEAN = 0;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Subclasses can set this to change the default value for the hidden property for a component."}),"\n",(0,t.jsx)(n.h3,{id:"defaultboundless",children:"DEFAULTBOUNDLESS"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTBOUNDLESS As BOOLEAN = 0;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Subclasses can set this to change the default value for the boundless property for a component."}),"\n",(0,t.jsx)(n.h3,{id:"defaultaspect",children:"DEFAULTASPECT"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter DEFAULTASPECT As STRING;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Subclasses can set this to change the default value for the preserveAspectRatio/ property for a component."}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"x",children:"x"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property x As %ZEN.Datatype.length [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsxs)(n.p,{children:["x position of this component's enclosing group.",(0,t.jsx)(n.br,{}),"\nThe actual position of the component depends on the layout applied by its containing svgGroup."]}),"\n",(0,t.jsx)(n.h3,{id:"y",children:"y"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property y As %ZEN.Datatype.length [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsxs)(n.p,{children:["y position of this component's enclosing group.",(0,t.jsx)(n.br,{}),"\nThe actual position of the component depends on the layout applied by its containing svgGroup."]}),"\n",(0,t.jsx)(n.h3,{id:"position",children:"position"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property position As %ZEN.Datatype.string(VALUELIST = ",fixed,relative", ZENSETTING = 0) [ InitialExpression = "relative" ];\n'})}),"\n",(0,t.jsxs)(n.p,{children:['If position is "fixed", then this shape will not scroll with its canvas nor can it be dragged with the mouse.',(0,t.jsx)(n.br,{}),"\nThis is used for placing fixed controller over the rest of an SVG canvas."]}),"\n",(0,t.jsx)(n.h3,{id:"width",children:"width"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property width As %ZEN.Datatype.length [ InitialExpression = {..#DEFAULTWIDTH} ];\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Width of this component.",(0,t.jsx)(n.br,{}),"\nThis value is used for layout purposes. The actual effect of setting this is up the specific component implementation."]}),"\n",(0,t.jsx)(n.h3,{id:"height",children:"height"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property height As %ZEN.Datatype.length [ InitialExpression = {..#DEFAULTHEIGHT} ];\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Width of this component.",(0,t.jsx)(n.br,{}),"\nThis value is used for layout purposes. The actual effect of setting this is up the specific component implementation."]}),"\n",(0,t.jsx)(n.h3,{id:"viewboxwidth",children:"viewBoxWidth"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property viewBoxWidth As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTVIEWBOXWIDTH} ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"If defined, this is used to calculate the width of the viewBox attribute of the enclosing svg element."}),"\n",(0,t.jsx)(n.h3,{id:"viewboxheight",children:"viewBoxHeight"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property viewBoxHeight As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTVIEWBOXHEIGHT} ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"If defined, this is used to calculate the height of the viewBox attribute of the enclosing svg element."}),"\n",(0,t.jsx)(n.h3,{id:"preserveaspectratio",children:"preserveAspectRatio"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property preserveAspectRatio As %ZEN.Datatype.string [ InitialExpression = {..#DEFAULTASPECT} ];\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Value to apply for this component's enclosing svg element's preserveAspectRatio attribute.",(0,t.jsx)(n.br,{}),'\nSet this to "none" if you do not want the SVG Engine to preserve the aspect ratio (height relative to width) for this component.']}),"\n",(0,t.jsx)(n.h3,{id:"svggroup",children:"svgGroup"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property svgGroup As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0);\n'})}),"\n",(0,t.jsx)(n.p,{children:"Client-side property that points to the enclosing SVG group element for this component."}),"\n",(0,t.jsx)(n.h3,{id:"document",children:"document"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property document As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0);\n'})}),"\n",(0,t.jsx)(n.p,{children:"Client-side property that points to SVG document this component is rendered on."}),"\n",(0,t.jsx)(n.h3,{id:"hidden",children:"hidden"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property hidden As %ZEN.Datatype.boolean [ InitialExpression = {..#DEFAULTHIDDEN} ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"If true, this component is hidden. That is, it's enclosing group's display style is set to \"none\"."}),"\n",(0,t.jsx)(n.h3,{id:"boundless",children:"boundless"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property boundless As %ZEN.Datatype.boolean(ZENSETTING = 0) [ InitialExpression = {..#DEFAULTBOUNDLESS} ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"If true, this component is boundless. That is, it's enclosing svg element is a simple group (g) instead of the usual svg element."}),"\n",(0,t.jsx)(n.h3,{id:"onclick",children:"onclick"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property onclick As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,t.jsx)(n.p,{children:"onclick event handler: This event is fired when the mouse is clicked on the shape. This is the default onclick event for svg components; subclasses may implement more specialized events (such as click on a specific part of the component)."}),"\n",(0,t.jsx)(n.h3,{id:"svgcomponent",children:"svgComponent"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property svgComponent As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0) [ InitialExpression = 1 ];\n'})}),"\n",(0,t.jsx)(n.p,{children:"Client-side property used to determine if a component is an SVG component."}),"\n",(0,t.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(n.h3,{id:"svgstyle",children:"SVGStyle"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"XData SVGStyle\n"})}),"\n",(0,t.jsx)(n.p,{children:"Define basic style block to ensure inclusion of core .css file."}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DrawHTML() [ Final ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Do not allow HTML methods for SVG components."}),"\n",(0,t.jsx)(n.h3,{id:"rendersvg",children:"renderSVG"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod renderSVG(document, parent) [ Final, Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Render the outer SVG enclosing group for this component as well as its inner contents.",(0,t.jsx)(n.br,{}),"\nThis is called by the svgFrame when the component is first loaded or created.",(0,t.jsx)(n.br,{}),"\nparent is the parent SVG object this component should be added to."]}),"\n",(0,t.jsx)(n.h3,{id:"createenclosinggroup",children:"createEnclosingGroup"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod createEnclosingGroup(parent) [ Final, Internal, Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Internal method:",(0,t.jsx)(n.br,{}),"\ncreate the enclosing group for this component."]}),"\n",(0,t.jsx)(n.h3,{id:"clickhandler",children:"clickHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod clickHandler(evt) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Default mouse click handler."}),"\n",(0,t.jsx)(n.h3,{id:"calculateviewbox",children:"calculateViewBox"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod calculateViewBox() [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Calculate the value of the viewBox attribute of this component's enclosing svg element.",(0,t.jsx)(n.br,{}),"\nSubclasses can override this, should they need to provide a different behavior. The default behavior is to use the width and height of this component to come up with a 1 to 1 coordinate mapping; If the component provides values for the viewboxWidth and viewboxHeight properties, then these are used to calculate the viewBox (and thus define a fixed coordinate system for the component)."]}),"\n",(0,t.jsx)(n.h3,{id:"rendercontents",children:"renderContents"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod renderContents() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Render the inner SVG contents of this component. This is implemented by subclasses."}),"\n",(0,t.jsx)(n.h3,{id:"unrender",children:"unrender"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod unrender() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Remove the inner SVG for this component."}),"\n",(0,t.jsx)(n.h3,{id:"refreshcontents",children:"refreshContents"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod refreshContents() [ Final, Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"This is not supported for SVG components"}),"\n",(0,t.jsx)(n.h3,{id:"findsvgelement",children:"findSVGElement"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod findSVGElement(subid) [ Final, Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Client-side utility method that finds an SVG element with a component-specific id."}),"\n",(0,t.jsx)(n.h3,{id:"setoverlaymode",children:"setOverlayMode"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setOverlayMode(mode) [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Display an overlay for this component to trap mouse events and/or support dragging/resizing with the mouse.",(0,t.jsx)(n.br,{}),"\nmode is the overlay mode:",(0,t.jsx)(n.br,{}),"\n0: turn off overlay.",(0,t.jsx)(n.br,{}),"\n1: turn on overlay.",(0,t.jsx)(n.br,{}),"\n2: turn on overlay, show indication that this component is ",(0,t.jsx)(n.em,{children:"selected"}),". 3: turn on overlay, show indication that this component can be dragged."]}),"\n",(0,t.jsx)(n.h3,{id:"createoverlay",children:"createOverlay"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod createOverlay() [ Internal, Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Internal method:",(0,t.jsx)(n.br,{}),"\nRender the SVG for the overlay/resize handles."]}),"\n",(0,t.jsx)(n.h3,{id:"updateoverlay",children:"updateOverlay"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod updateOverlay(x, y, width, height) [ Internal, Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Internal method:",(0,t.jsx)(n.br,{}),"\nUpdate size & position of overlay if present."]}),"\n",(0,t.jsx)(n.h3,{id:"createsizinghandle",children:"createSizingHandle"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod createSizingHandle(which, x, y) [ Internal, Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Internal method:",(0,t.jsx)(n.br,{}),'\nCreate SVG for one of the sizing "handles."']}),"\n",(0,t.jsx)(n.h3,{id:"overlaymousedownhandler",children:"overlayMouseDownHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod overlayMouseDownHandler(evt) [ Internal, Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Internal method:",(0,t.jsx)(n.br,{}),"\nOverlay mouse down handler."]}),"\n",(0,t.jsx)(n.h3,{id:"sizingmousedownhandler",children:"sizingMouseDownHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod sizingMouseDownHandler(evt, which) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Internal: sizing handle mouse down handler."}),"\n",(0,t.jsx)(n.h3,{id:"getframe",children:"getFrame"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getFrame() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Return the svgFrame object this component belongs to."}),"\n",(0,t.jsx)(n.h3,{id:"settextnode",children:"setTextNode"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setTextNode(id, str) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Utility method: Find the svg text element with id id and replace its text with str."}),"\n",(0,t.jsx)(n.h3,{id:"wrapmethod",children:"wrapMethod"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod wrapMethod(methodName) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Utility method: Construct a wrapper around an instance method of this object that can be used as an event listener."}),"\n",(0,t.jsx)(n.h3,{id:"getsizeabsolute",children:"getSizeAbsolute"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getSizeAbsolute() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Return an object containing (as x,y,width, and height properties) the absolute size and position (relative to the svg canvas) of this component."}),"\n",(0,t.jsx)(n.h3,{id:"setposition",children:"setPosition"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setPosition(x, y) [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Set the x,y position of this component.",(0,t.jsx)(n.br,{}),"\nApplications should not call this method."]}),"\n",(0,t.jsx)(n.h3,{id:"setsize",children:"setSize"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setSize(w, h) [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Set the size (width and height) of this component.",(0,t.jsx)(n.br,{}),"\nApplications should not call this method."]}),"\n",(0,t.jsx)(n.h3,{id:"setpositionhandler",children:"setPositionHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setPositionHandler() [ Abstract, Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Notification that this component has been moved. This can be implemented by subclasses."}),"\n",(0,t.jsx)(n.h3,{id:"setsizehandler",children:"setSizeHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setSizeHandler() [ Abstract, Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Notification that this component has been resized. This can be implemented by subclasses."}),"\n",(0,t.jsx)(n.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Set the value of a named property."}),"\n",(0,t.jsx)(n.h3,{id:"beginwaitstate",children:"beginWaitState"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod beginWaitState() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Begin a wait state for this component. This will display a waiting graphic in the center of this component. The wait state is ended with a call to endWaitState."}),"\n",(0,t.jsx)(n.h3,{id:"updatewaitstate",children:"updateWaitState"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod updateWaitState() [ Internal, Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Called by the wait state handler to animate the wait state icon."}),"\n",(0,t.jsx)(n.h3,{id:"drawwaiticon",children:"drawWaitIcon"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod drawWaitIcon(counter, draw) [ Internal, Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Draw the wait state icon for this component. counter is a counter increment each time this method is called. If draw is true, then draw the icon, otherwise only erase it."}),"\n",(0,t.jsx)(n.h3,{id:"endwaitstate",children:"endWaitState"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod endWaitState() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"End the current wait state for this component."})]})}function o(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>l,x:()=>r});var t=s(96540);const i={},a=t.createContext(i);function l(e){const n=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),t.createElement(a.Provider,{value:n},e.children)}}}]);