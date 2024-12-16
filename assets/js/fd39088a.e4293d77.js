"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[72468],{72495:(e,t,a)=>{a.r(t),a.d(t,{contentTitle:()=>l,default:()=>c,frontMatter:()=>r,toc:()=>i});var n=a(74848),s=a(28453);const r={pagination_prev:null,pagination_next:null},l="%ZEN.SVGComponent.meter",i=[{value:"Parameters",id:"parameters",level:2},{value:"DEFAULTVIEWBOXWIDTH",id:"defaultviewboxwidth",level:3},{value:"DEFAULTVIEWBOXHEIGHT",id:"defaultviewboxheight",level:3},{value:"Properties",id:"properties",level:2},{value:"value",id:"value",level:3},{value:"label",id:"label",level:3},{value:"labelStyle",id:"labelstyle",level:3},{value:"targetValue",id:"targetvalue",level:3},{value:"rangeLower",id:"rangelower",level:3},{value:"rangeUpper",id:"rangeupper",level:3},{value:"thresholdLower",id:"thresholdlower",level:3},{value:"thresholdUpper",id:"thresholdupper",level:3},{value:"scaleFactor",id:"scalefactor",level:3},{value:"animate",id:"animate",level:3},{value:"disabled",id:"disabled",level:3},{value:"dataBinding",id:"databinding",level:3},{value:"showConditionally",id:"showconditionally",level:3},{value:"onchange",id:"onchange",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"SVGStyle",id:"svgstyle",level:3},{value:"Methods",id:"methods",level:2},{value:"renderContents",id:"rendercontents",level:3},{value:"renderMeter",id:"rendermeter",level:3},{value:"getValue",id:"getvalue",level:3},{value:"setValue",id:"setvalue",level:3},{value:"acquireData",id:"acquiredata",level:3},{value:"renderLabel",id:"renderlabel",level:3},{value:"getLabelText",id:"getlabeltext",level:3},{value:"notifyViewHandler",id:"notifyviewhandler",level:3},{value:"onchangeHandler",id:"onchangehandler",level:3},{value:"setProperty",id:"setproperty",level:3}];function d(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"zensvgcomponentmeter",children:"%ZEN.SVGComponent.meter"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.SVGComponent.meter Extends (svgComponent, %ZEN.Component.dataView) [ Abstract, Deprecated, Inheritance = right, System = 3 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Base class for SVG meter components.",(0,n.jsx)(t.br,{}),"\nA meter is analogous to a control: it has a value as well as upper and lower ranges and thresholds. The display of the value is implemented by subclasses."]}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"defaultviewboxwidth",children:"DEFAULTVIEWBOXWIDTH"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter DEFAULTVIEWBOXWIDTH = 100;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Default viewBoxWidth of this component. This is set to 100 to provide a default, fixed coordinate system for meters."}),"\n",(0,n.jsx)(t.h3,{id:"defaultviewboxheight",children:"DEFAULTVIEWBOXHEIGHT"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter DEFAULTVIEWBOXHEIGHT = 100;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Default viewBoxHeight of this component. This is set to 100 to provide a fixed coordinate system for meters."}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"value",children:"value"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property value As %ZEN.Datatype.string [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Current value of the meter."}),"\n",(0,n.jsx)(t.h3,{id:"label",children:"label"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property label As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Label displayed by the meter."}),"\n",(0,n.jsx)(t.h3,{id:"labelstyle",children:"labelStyle"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property labelStyle As %ZEN.Datatype.svgStyle;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Optional: CSS style applied to the meter label."}),"\n",(0,n.jsx)(t.h3,{id:"targetvalue",children:"targetValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property targetValue As %ZEN.Datatype.string;\n"})}),"\n",(0,n.jsxs)(t.p,{children:["If defined, this is the target value for the meter. If this value is numeric, then it is used as the target value. If it is a string, then it is used as the name of a property within the data source connected to this meter.",(0,n.jsx)(t.br,{}),"\nCertain meters may display this value."]}),"\n",(0,n.jsx)(t.h3,{id:"rangelower",children:"rangeLower"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property rangeLower As %ZEN.Datatype.string;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Represents the lower value of the meter range. If this value is numeric, then it is used as the value. If it is a string, then it is used as the name of a property within the data source connected to this meter."}),"\n",(0,n.jsx)(t.h3,{id:"rangeupper",children:"rangeUpper"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property rangeUpper As %ZEN.Datatype.string;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Represents the upper value of the meter range. If this value is numeric, then it is used as the value. If it is a string, then it is used as the name of a property within the data source connected to this meter."}),"\n",(0,n.jsx)(t.h3,{id:"thresholdlower",children:"thresholdLower"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property thresholdLower As %ZEN.Datatype.string;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Represents the lower threshold level for the meter. If this value is numeric, then it is used as the value. If it is a string, then it is used as the name of a property within the data source connected to this meter."}),"\n",(0,n.jsx)(t.h3,{id:"thresholdupper",children:"thresholdUpper"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property thresholdUpper As %ZEN.Datatype.string;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Represents the upper threshold level for the meter. If this value is numeric, then it is used as the value. If it is a string, then it is used as the name of a property within the data source connected to this meter."}),"\n",(0,n.jsx)(t.h3,{id:"scalefactor",children:"scaleFactor"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property scaleFactor As %ZEN.Datatype.float [ InitialExpression = 1 ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"The displayed value is determined by multiplying the actual value and this scaling factor."}),"\n",(0,n.jsx)(t.h3,{id:"animate",children:"animate"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property animate As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If this meter supports animation, then this controls whether the animation is on or off."}),"\n",(0,n.jsx)(t.h3,{id:"disabled",children:"disabled"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property disabled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If true, disable this meter."}),"\n",(0,n.jsx)(t.h3,{id:"databinding",children:"dataBinding"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property dataBinding As %ZEN.Datatype.string;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Optional. If this meter is associated with a %ZEN.Auxiliary.dataController, this specifies the name of the property within the dataController that will provide the value for this control."}),"\n",(0,n.jsx)(t.h3,{id:"showconditionally",children:"showConditionally"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property showConditionally As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"If true, hide this meter if it is bound to a non-existant data property."}),"\n",(0,n.jsx)(t.h3,{id:"onchange",children:"onchange"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property onchange As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,n.jsx)(t.p,{children:"onchange event handler: For meters that allow user actions to modify their value, this event handler is called when the user changes the value of the slider."}),"\n",(0,n.jsx)(t.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(t.h3,{id:"svgstyle",children:"SVGStyle"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"XData SVGStyle\n"})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"rendercontents",children:"renderContents"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod renderContents() [ Final, Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Render the inner SVG contents of this component."}),"\n",(0,n.jsx)(t.h3,{id:"rendermeter",children:"renderMeter"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod renderMeter() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Render the inner SVG contents of this component. Subclasses should implement this method."}),"\n",(0,n.jsx)(t.h3,{id:"getvalue",children:"getValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getValue() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Short-cut method to get the current value of this meter."}),"\n",(0,n.jsx)(t.h3,{id:"setvalue",children:"setValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setValue(value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Short-cut method to set the current value of this meter."}),"\n",(0,n.jsx)(t.h3,{id:"acquiredata",children:"acquireData"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod acquireData() [ Language = javascript ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Acquire data for this meter.",(0,n.jsx)(t.br,{}),"\nIf the meter is connected to a dataController, then set the value of the meter to the current value of the dataController property specified by dataBinding."]}),"\n",(0,n.jsx)(t.h3,{id:"renderlabel",children:"renderLabel"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod renderLabel(x, y) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Create the label displayed by this meter. Subclasses should call this from their renderx and y specify the midpoint of the label."}),"\n",(0,n.jsx)(t.h3,{id:"getlabeltext",children:"getLabelText"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getLabelText() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the resolved label to display for this meter."}),"\n",(0,n.jsx)(t.h3,{id:"notifyviewhandler",children:"notifyViewHandler"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Notification that the dataController associated with this dataView has raised an event."}),"\n",(0,n.jsx)(t.h3,{id:"onchangehandler",children:"onchangeHandler"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onchangeHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This built-in event handler is called by meters that allow user interaction. It raises notification that the meter's value has changed."}),"\n",(0,n.jsx)(t.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Set the value of a named property."})]})}function c(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(d,{...e})}):d(e)}},28453:(e,t,a)=>{a.d(t,{R:()=>l,x:()=>i});var n=a(96540);const s={},r=n.createContext(s);function l(e){const t=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),n.createElement(r.Provider,{value:t},e.children)}}}]);