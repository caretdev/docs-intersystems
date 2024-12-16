"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[53667],{78502:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>c,frontMatter:()=>s,toc:()=>r});var i=t(74848),a=t(28453);const s={pagination_prev:null,pagination_next:null},l="%DeepSee.UI.Dialog.Analyzer",r=[{value:"Parameters",id:"parameters",level:2},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"DEFAULTVIEWMODE",id:"defaultviewmode",level:3},{value:"Properties",id:"properties",level:2},{value:"currViewMode",id:"currviewmode",level:3},{value:"cubeName",id:"cubename",level:3},{value:"widgetKey",id:"widgetkey",level:3},{value:"pivotName",id:"pivotname",level:3},{value:"localPivotName",id:"localpivotname",level:3},{value:"filterState",id:"filterstate",level:3},{value:"pivotDescription",id:"pivotdescription",level:3},{value:"pivotKeywords",id:"pivotkeywords",level:3},{value:"resetData",id:"resetdata",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"GetDimensionInfo",id:"getdimensioninfo",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"ondialogStart",id:"ondialogstart",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"treeDoubleClick",id:"treedoubleclick",level:3},{value:"getPivot",id:"getpivot",level:3},{value:"adjustSize",id:"adjustsize",level:3},{value:"SavePivotTable",id:"savepivottable",level:3},{value:"showFormatOptions",id:"showformatoptions",level:3},{value:"UpdateFilterControls",id:"updatefiltercontrols",level:3},{value:"filterChangeHandler",id:"filterchangehandler",level:3},{value:"showQuery",id:"showquery",level:3},{value:"showPivotOptions",id:"showpivotoptions",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"filterDropDown",id:"filterdropdown",level:3},{value:"resetLocalDataSource",id:"resetlocaldatasource",level:3},{value:"CreateQueryNonce",id:"createquerynonce",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"deepseeuidialoganalyzer",children:"%DeepSee.UI.Dialog.Analyzer"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.Dialog.Analyzer Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Special version of the analyzer that runs within a dialog. This is displayed when a user uses the Analyze option in a widget."}),"\n",(0,i.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(n.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 1;\n"})}),"\n",(0,i.jsx)(n.h3,{id:"defaultviewmode",children:"DEFAULTVIEWMODE"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DEFAULTVIEWMODE = "pivot";\n'})}),"\n",(0,i.jsx)(n.p,{children:"If this page has multiple views, this is its initial display mode."}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"currviewmode",children:"currViewMode"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property currViewMode As %ZEN.Datatype.string [ InitialExpression = {..#DEFAULTVIEWMODE} ];\n"})}),"\n",(0,i.jsx)(n.p,{children:'If this page has "views", this is the current view type.'}),"\n",(0,i.jsx)(n.h3,{id:"cubename",children:"cubeName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");\n'})}),"\n",(0,i.jsx)(n.p,{children:"Name of cube to explore."}),"\n",(0,i.jsx)(n.h3,{id:"widgetkey",children:"widgetKey"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property widgetKey As %ZEN.Datatype.string(ZENURL = "KEY");\n'})}),"\n",(0,i.jsx)(n.p,{children:"Key (within its dashboard) of widget that launched this dialog."}),"\n",(0,i.jsx)(n.h3,{id:"pivotname",children:"pivotName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property pivotName As %ZEN.Datatype.string(ZENURL = "PIVOT");\n'})}),"\n",(0,i.jsx)(n.p,{children:"Name of saved pivotTable to view (overrides CUBE if present)."}),"\n",(0,i.jsx)(n.h3,{id:"localpivotname",children:"localPivotName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property localPivotName As %ZEN.Datatype.string(ZENURL = "LOCALNAME");\n'})}),"\n",(0,i.jsx)(n.p,{children:"If provided, use this name to save the pivot."}),"\n",(0,i.jsx)(n.h3,{id:"filterstate",children:"filterState"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property filterState As %ZEN.Datatype.string(MAXLEN = 5000, ZENURL = "FILTERSTATE");\n'})}),"\n",(0,i.jsx)(n.p,{children:"If provided, state of filters on widget that launched this dialog."}),"\n",(0,i.jsx)(n.h3,{id:"pivotdescription",children:"pivotDescription"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property pivotDescription As %ZEN.Datatype.string;\n"})}),"\n",(0,i.jsx)(n.p,{children:"Description of the saved pivot (if any)."}),"\n",(0,i.jsx)(n.h3,{id:"pivotkeywords",children:"pivotKeywords"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property pivotKeywords As %ZEN.Datatype.string;\n"})}),"\n",(0,i.jsx)(n.p,{children:"Keywords of the saved pivot (if any)."}),"\n",(0,i.jsx)(n.h3,{id:"resetdata",children:"resetData"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property resetData As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"If true, reset the data source when the dialog is applied."}),"\n",(0,i.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,i.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,i.jsx)(n.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,i.jsx)(n.p,{children:"Contents of the dialog body."}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,i.jsx)(n.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,i.jsx)(n.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,i.jsx)(n.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,i.jsx)(n.h3,{id:"getdimensioninfo",children:"GetDimensionInfo"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetDimensionInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status\n"})}),"\n",(0,i.jsx)(n.p,{children:"Provide contents of the dimension tree."}),"\n",(0,i.jsx)(n.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,i.jsx)(n.h3,{id:"ondialogstart",children:"ondialogStart"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogStart() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"This callback, if defined, is called when the dialog page is loaded."}),"\n",(0,i.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,i.jsx)(n.h3,{id:"treedoubleclick",children:"treeDoubleClick"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod treeDoubleClick(tree) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"User has double-clicked on an element in the tree control. This is copied from the same method in the main Analyzer page."}),"\n",(0,i.jsx)(n.h3,{id:"getpivot",children:"getPivot"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getPivot() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Return the current pivot table."}),"\n",(0,i.jsx)(n.h3,{id:"adjustsize",children:"adjustSize"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod adjustSize() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Adjust sizes of analyzer components on the page."}),"\n",(0,i.jsx)(n.h3,{id:"savepivottable",children:"SavePivotTable"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method SavePivotTable(pResetData As %Boolean = 0) As %String [ ZenMethod ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Save the pivot table."}),"\n",(0,i.jsx)(n.h3,{id:"showformatoptions",children:"showFormatOptions"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod showFormatOptions() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Launch the cell format options dialog."}),"\n",(0,i.jsx)(n.h3,{id:"updatefiltercontrols",children:"UpdateFilterControls"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod UpdateFilterControls(pCubeName As %String, pGroup As %ZEN.Component.group, pPivotTable As %DeepSee.Component.pivotTable) As %String [ ZenMethod ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Called from client to update list of filters."}),"\n",(0,i.jsx)(n.h3,{id:"filterchangehandler",children:"filterChangeHandler"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod filterChangeHandler(ctrl, filterNo) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"User has changed a filter control value."}),"\n",(0,i.jsx)(n.h3,{id:"showquery",children:"showQuery"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod showQuery() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Launch the show query dialog."}),"\n",(0,i.jsx)(n.h3,{id:"showpivotoptions",children:"showPivotOptions"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod showPivotOptions() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Launch the pivot options dialog."}),"\n",(0,i.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"This client event is fired when the a popup page launched from this page fires an action."}),"\n",(0,i.jsx)(n.h3,{id:"filterdropdown",children:"filterDropDown"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod filterDropDown(ctrl) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Drop down is about to appear for filter control."}),"\n",(0,i.jsx)(n.h3,{id:"resetlocaldatasource",children:"resetLocalDataSource"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod resetLocalDataSource() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Reset the local data source for our widget."}),"\n",(0,i.jsx)(n.h3,{id:"createquerynonce",children:"CreateQueryNonce"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod CreateQueryNonce(pQuery As %String) As %String [ Internal, ZenMethod ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Generate a nonce for an MDX query."})]})}function c(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(o,{...e})}):o(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>r});var i=t(96540);const a={},s=i.createContext(a);function l(e){const n=i.useContext(s);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function r(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:l(e.components),i.createElement(s.Provider,{value:n},e.children)}}}]);