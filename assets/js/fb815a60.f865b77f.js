"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[40098],{85846:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>c,default:()=>o,frontMatter:()=>s,toc:()=>i});var a=t(74848),r=t(28453);const s={pagination_prev:null,pagination_next:null},c="%DeepSee.UI.CaptionEditor",i=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"Properties",id:"properties",level:2},{value:"cubeFullName",id:"cubefullname",level:3},{value:"cubeName",id:"cubename",level:3},{value:"canWrite",id:"canwrite",level:3},{value:"readOnly",id:"readonly",level:3},{value:"currContext",id:"currcontext",level:3},{value:"currDim",id:"currdim",level:3},{value:"currHier",id:"currhier",level:3},{value:"currLevel",id:"currlevel",level:3},{value:"currProp",id:"currprop",level:3},{value:"currCaption",id:"currcaption",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%OnGetProductName",id:"ongetproductname",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"OnDrawRibbon",id:"ondrawribbon",level:3},{value:"DrawCubeName",id:"drawcubename",level:3},{value:"changeSubjectArea",id:"changesubjectarea",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"GetDimensionInfo",id:"getdimensioninfo",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"onlayoutHandler",id:"onlayouthandler",level:3},{value:"adjustSizes",id:"adjustsizes",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"contextChange",id:"contextchange",level:3},{value:"treeChange",id:"treechange",level:3},{value:"ParseValue",id:"parsevalue",level:3},{value:"deleteCaption",id:"deletecaption",level:3},{value:"DeleteItem",id:"deleteitem",level:3},{value:"saveCaption",id:"savecaption",level:3},{value:"SaveItem",id:"saveitem",level:3}];function l(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"deepseeuicaptioneditor",children:"%DeepSee.UI.CaptionEditor"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.CaptionEditor Extends %DeepSee.UI.standardPage [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"DeepSee Caption Editor page."}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Caption Editor";\n'})}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"cubefullname",children:"cubeFullName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property cubeFullName As %ZEN.Datatype.string(ZENURL = "CUBE");\n'})}),"\n",(0,a.jsx)(n.p,{children:'Parameter DOCBOOKID = "D2ANLY_ch_intro"; Name of Cube (with extension).'}),"\n",(0,a.jsx)(n.h3,{id:"cubename",children:"cubeName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property cubeName As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Name of cube to explore."}),"\n",(0,a.jsx)(n.h3,{id:"canwrite",children:"canWrite"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property canWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,a.jsx)(n.p,{children:"If true, user can modify (non-read-only) pivots."}),"\n",(0,a.jsx)(n.h3,{id:"readonly",children:"readOnly"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(n.p,{children:"If true, user cannot modify captions."}),"\n",(0,a.jsx)(n.h3,{id:"currcontext",children:"currContext"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property currContext As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Current context."}),"\n",(0,a.jsx)(n.h3,{id:"currdim",children:"currDim"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property currDim As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Current dimension."}),"\n",(0,a.jsx)(n.h3,{id:"currhier",children:"currHier"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property currHier As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Current hierarchy."}),"\n",(0,a.jsx)(n.h3,{id:"currlevel",children:"currLevel"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property currLevel As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Current level."}),"\n",(0,a.jsx)(n.h3,{id:"currprop",children:"currProp"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property currProp As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Current property."}),"\n",(0,a.jsx)(n.h3,{id:"currcaption",children:"currCaption"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property currCaption As %ZEN.Datatype.string;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Current caption."}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.p,{children:"This XML defines the contents of the contents pane for this page."}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) title string for the page."}),"\n",(0,a.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the name for the page."}),"\n",(0,a.jsx)(n.h3,{id:"ongetproductname",children:"%OnGetProductName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetProductName() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the product name for the page."}),"\n",(0,a.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,a.jsx)(n.h3,{id:"ondrawribbon",children:"OnDrawRibbon"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnDrawRibbon() As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Draw additional stuff in the ribbon bar"}),"\n",(0,a.jsx)(n.h3,{id:"drawcubename",children:"DrawCubeName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawCubeName(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Draw cube name above member tree."}),"\n",(0,a.jsx)(n.h3,{id:"changesubjectarea",children:"changeSubjectArea"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod changeSubjectArea() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Launch the subject area finder dialog."}),"\n",(0,a.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event is fired when a popup page launched from this page fires an action."}),"\n",(0,a.jsx)(n.h3,{id:"getdimensioninfo",children:"GetDimensionInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetDimensionInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Provide contents of the dimension tree."}),"\n",(0,a.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(n.h3,{id:"onlayouthandler",children:"onlayoutHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onlayoutHandler(load) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Adjust sizes of components on the page."}),"\n",(0,a.jsx)(n.h3,{id:"adjustsizes",children:"adjustSizes"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod adjustSizes() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Adjust sizes of components on the page."}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"This class method callback is called just before the server-side page object is created."}),"\n",(0,a.jsx)(n.h3,{id:"contextchange",children:"contextChange"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod contextChange(ctx) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"User has selected a new context."}),"\n",(0,a.jsx)(n.h3,{id:"treechange",children:"treeChange"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod treeChange(tree) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"User has selected a new element in the tree control."}),"\n",(0,a.jsx)(n.h3,{id:"parsevalue",children:"ParseValue"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ParseValue(pCube As %String, pContext As %String, pValue As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Pull apart the given member spec."}),"\n",(0,a.jsx)(n.h3,{id:"deletecaption",children:"deleteCaption"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod deleteCaption() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Delete the current caption."}),"\n",(0,a.jsx)(n.h3,{id:"deleteitem",children:"DeleteItem"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DeleteItem(pCube As %String, pContext As %String, pDim As %String, pHier As %String, pLevel As %String, pProp As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Delete a caption."}),"\n",(0,a.jsx)(n.h3,{id:"savecaption",children:"saveCaption"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod saveCaption() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Save the current caption."}),"\n",(0,a.jsx)(n.h3,{id:"saveitem",children:"SaveItem"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SaveItem(pCube As %String, pContext As %String, pDim As %String, pHier As %String, pLevel As %String, pProp As %String, pCaption As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Save a caption."})]})}function o(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(l,{...e})}):l(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>c,x:()=>i});var a=t(96540);const r={},s=a.createContext(r);function c(e){const n=a.useContext(s);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:c(e.components),a.createElement(s.Provider,{value:n},e.children)}}}]);