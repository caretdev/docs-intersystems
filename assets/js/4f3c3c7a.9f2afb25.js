"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[86277],{35334:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>o,frontMatter:()=>r,toc:()=>l});var a=n(74848),s=n(28453);const r={pagination_prev:null,pagination_next:null},i="%DeepSee.Component.Widget.meter",l=[{value:"Properties",id:"properties",level:2},{value:"meterCount",id:"metercount",level:3},{value:"Methods",id:"methods",level:2},{value:"%GetCatalogInfo",id:"getcataloginfo",level:3},{value:"%GetWidgetPropertyInfo",id:"getwidgetpropertyinfo",level:3},{value:"%OnCreateWidget",id:"oncreatewidget",level:3},{value:"%SubTypeToClass",id:"subtypetoclass",level:3},{value:"adjustContentSize",id:"adjustcontentsize",level:3},{value:"getDataController",id:"getdatacontroller",level:3},{value:"getMeter",id:"getmeter",level:3},{value:"%GetDataController",id:"getdatacontroller-1",level:3},{value:"navGetContentForLevel",id:"navgetcontentforlevel",level:3},{value:"navSelectItem",id:"navselectitem",level:3},{value:"navHeaderButtonClick",id:"navheaderbuttonclick",level:3},{value:"navCloseButtonClick",id:"navclosebuttonclick",level:3},{value:"navDataChange",id:"navdatachange",level:3},{value:"hasOverrides",id:"hasoverrides",level:3},{value:"resetOverrides",id:"resetoverrides",level:3},{value:"getOverrides",id:"getoverrides",level:3},{value:"getMeterCount",id:"getmetercount",level:3},{value:"newDataProperty",id:"newdataproperty",level:3},{value:"setMeterType",id:"setmetertype",level:3},{value:"onSetHighlight",id:"onsethighlight",level:3},{value:"meterSelected",id:"meterselected",level:3},{value:"exportPDF",id:"exportpdf",level:3},{value:"%OnCreateControls",id:"oncreatecontrols",level:3}];function c(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"deepseecomponentwidgetmeter",children:"%DeepSee.Component.Widget.meter"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.Component.Widget.meter Extends %DeepSee.Component.Widget.widget [ System = 4 ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"A specialized DeepSee Dashboard widget that displays a visual meter (such as a speedometer). There may be multiple meters displayed within the widget, each corresponding to a dataProperty in the widget definition's dataProperty list."}),"\n",(0,a.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(t.h3,{id:"metercount",children:"meterCount"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property meterCount As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,a.jsx)(t.p,{children:"Number of meters displayed in this widget (set automatically)."}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"getcataloginfo",children:"%GetCatalogInfo"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetCatalogInfo(Output pInfo As %List, Output pSubtypeList As %List) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:'Return information used to list this widget within the "widget catalog".'}),"\n",(0,a.jsx)(t.h3,{id:"getwidgetpropertyinfo",children:"%GetWidgetPropertyInfo"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetWidgetPropertyInfo(pSubtype As %String, Output pInfo As %List) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:'Return information on additional "properties" supported by this widget for the given subtype.'}),"\n",(0,a.jsx)(t.h3,{id:"oncreatewidget",children:"%OnCreateWidget"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnCreateWidget(pGroup As %ZEN.Component.group) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This callback is responsible for creating the contents of the widget."}),"\n",(0,a.jsx)(t.h3,{id:"subtypetoclass",children:"%SubTypeToClass"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SubTypeToClass(pSubtype As %String) As %String [ Private ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Translate a subtype into a Meter class name."}),"\n",(0,a.jsx)(t.h3,{id:"adjustcontentsize",children:"adjustContentSize"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod adjustContentSize(load, width, height) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Called when page is loaded or widget is resized."}),"\n",(0,a.jsx)(t.h3,{id:"getdatacontroller",children:"getDataController"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getDataController() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"If this widget contains a data controller, return it. This allows for generic capabilities in this base class."}),"\n",(0,a.jsx)(t.h3,{id:"getmeter",children:"getMeter"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getMeter(n) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the given meter object within this widget."}),"\n",(0,a.jsx)(t.h3,{id:"getdatacontroller-1",children:"%GetDataController"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetDataController() As %ZEN.Auxiliary.abstractController\n"})}),"\n",(0,a.jsx)(t.p,{children:"If this widget contains a data controller, return it."}),"\n",(0,a.jsx)(t.h3,{id:"navgetcontentforlevel",children:"navGetContentForLevel"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod navGetContentForLevel(level, key, value) [ Internal, Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return an object describing what to display for this level within the navigator. Invoked from dashboard viewer."}),"\n",(0,a.jsx)(t.h3,{id:"navselectitem",children:"navSelectItem"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod navSelectItem(key, value, which) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Select of item in navigator."}),"\n",(0,a.jsx)(t.h3,{id:"navheaderbuttonclick",children:"navHeaderButtonClick"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod navHeaderButtonClick(key) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Click on header button in navigator."}),"\n",(0,a.jsx)(t.h3,{id:"navclosebuttonclick",children:"navCloseButtonClick"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod navCloseButtonClick(key) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Click on close button in navigator."}),"\n",(0,a.jsx)(t.h3,{id:"navdatachange",children:"navDataChange"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod navDataChange(key, value, final) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Change of data value in navigator."}),"\n",(0,a.jsx)(t.h3,{id:"hasoverrides",children:"hasOverrides"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod hasOverrides() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Test if there are any style overrides for this widget."}),"\n",(0,a.jsx)(t.h3,{id:"resetoverrides",children:"resetOverrides"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod resetOverrides(themeOnly) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Reset any style overrides for this widget."}),"\n",(0,a.jsx)(t.h3,{id:"getoverrides",children:"getOverrides"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getOverrides() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return an array of current style overrides for this widget. Used to save to a theme."}),"\n",(0,a.jsx)(t.h3,{id:"getmetercount",children:"getMeterCount"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getMeterCount() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the number of meters displayed within this widget."}),"\n",(0,a.jsx)(t.h3,{id:"newdataproperty",children:"newDataProperty"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod newDataProperty() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.h3,{id:"setmetertype",children:"setMeterType"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setMeterType(svg, meter, type) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Set the type of the given meter."}),"\n",(0,a.jsx)(t.h3,{id:"onsethighlight",children:"onSetHighlight"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onSetHighlight(flag) [ Internal, Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Notification that this widget is selected / unselected."}),"\n",(0,a.jsx)(t.h3,{id:"meterselected",children:"meterSelected"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod meterSelected(meter) [ Internal, Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Notification that a meter is selected."}),"\n",(0,a.jsx)(t.h3,{id:"exportpdf",children:"exportPDF"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod exportPDF(printMultiple, preserveTempFiles) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"PDF export for SVG using the svgImageProvider"}),"\n",(0,a.jsx)(t.h3,{id:"oncreatecontrols",children:"%OnCreateControls"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnCreateControls(pGroup As %ZEN.Component.group) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This callback is called just before controls are added to the top of the widget. pGroup is the header in which new Zen control can be added."})]})}function o(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>l});var a=n(96540);const s={},r=a.createContext(s);function i(e){const t=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),a.createElement(r.Provider,{value:t},e.children)}}}]);