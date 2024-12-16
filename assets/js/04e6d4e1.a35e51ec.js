"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[41568],{5452:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>i,default:()=>o,frontMatter:()=>l,toc:()=>c});var t=s(74848),a=s(28453);const l={pagination_prev:null,pagination_next:null},i="%DeepSee.UI.Settings",c=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"DOCBOOKID",id:"docbookid",level:3},{value:"Properties",id:"properties",level:2},{value:"currSetting",id:"currsetting",level:3},{value:"currIcon",id:"curricon",level:3},{value:"btnNew",id:"btnnew",level:3},{value:"btnApply",id:"btnapply",level:3},{value:"btnRemove",id:"btnremove",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetProductName",id:"ongetproductname",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"onlayoutHandler",id:"onlayouthandler",level:3},{value:"adjustSizes",id:"adjustsizes",level:3},{value:"saveSettings",id:"savesettings",level:3},{value:"SaveToServer",id:"savetoserver",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%CreateOptions",id:"createoptions",level:3},{value:"optionChange",id:"optionchange",level:3},{value:"SetOption",id:"setoption",level:3},{value:"customChange",id:"customchange",level:3},{value:"SetCustom",id:"setcustom",level:3},{value:"GetUserIcons",id:"getusericons",level:3},{value:"GetUserSettings",id:"getusersettings",level:3},{value:"renderIconList",id:"rendericonlist",level:3},{value:"renderSettings",id:"rendersettings",level:3},{value:"selectIcon",id:"selecticon",level:3},{value:"selectSetting",id:"selectsetting",level:3},{value:"addIcon",id:"addicon",level:3},{value:"addSetting",id:"addsetting",level:3},{value:"applyIcon",id:"applyicon",level:3},{value:"applySetting",id:"applysetting",level:3},{value:"removeIcon",id:"removeicon",level:3},{value:"removeSetting",id:"removesetting",level:3},{value:"ApplyIconToServer",id:"applyicontoserver",level:3},{value:"ApplySettingToServer",id:"applysettingtoserver",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"%OnPreHTTP",id:"onprehttp",level:3}];function r(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"deepseeuisettings",children:"%DeepSee.UI.Settings"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.Settings Extends %DeepSee.UI.standardPage [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"DeepSee Settings page."}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Settings";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%DeepSee_Admin,%Development";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"docbookid",children:"DOCBOOKID"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DOCBOOKID = "D2GS_uis_settings";\n'})}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"currsetting",children:"currSetting"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property currSetting As %Integer;\n"})}),"\n",(0,t.jsx)(n.h3,{id:"curricon",children:"currIcon"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property currIcon As %Integer;\n"})}),"\n",(0,t.jsx)(n.h3,{id:"btnnew",children:"btnNew"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property btnNew As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("New")} ];\n'})}),"\n",(0,t.jsx)(n.h3,{id:"btnapply",children:"btnApply"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property btnApply As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Apply")} ];\n'})}),"\n",(0,t.jsx)(n.h3,{id:"btnremove",children:"btnRemove"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property btnRemove As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove")} ];\n'})}),"\n",(0,t.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,t.jsx)(n.p,{children:"This XML defines the contents of the contents pane for this page."}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get the (localized) title string for the page. This should be implemented in a subclass."}),"\n",(0,t.jsx)(n.h3,{id:"ongetproductname",children:"%OnGetProductName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetProductName() As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get the product name for the page."}),"\n",(0,t.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get the (localized) name of the page."}),"\n",(0,t.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,t.jsx)(n.h3,{id:"onlayouthandler",children:"onlayoutHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onlayoutHandler(load) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Adjust sizes of components on the page."}),"\n",(0,t.jsx)(n.h3,{id:"adjustsizes",children:"adjustSizes"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod adjustSizes() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Adjust sizes of components on the page."}),"\n",(0,t.jsx)(n.h3,{id:"savesettings",children:"saveSettings"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod saveSettings() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Save settings."}),"\n",(0,t.jsx)(n.h3,{id:"savetoserver",children:"SaveToServer"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SaveToServer(pData As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Save settings to the settings global."}),"\n",(0,t.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Decorate the page."}),"\n",(0,t.jsx)(n.h3,{id:"createoptions",children:"%CreateOptions"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %CreateOptions(pPage As %String, pWorklist As %Integer, pGroup As %ZEN.Component.group, ByRef pOptions) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Create list of worklist option controls."}),"\n",(0,t.jsx)(n.h3,{id:"optionchange",children:"optionChange"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod optionChange(page, worklist, n, cls, value) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Click on worklist option."}),"\n",(0,t.jsx)(n.h3,{id:"setoption",children:"SetOption"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SetOption(pPage As %String, pWorklist As %String, pClass As %String, pNum As %Integer, pValue As %Boolean) [ ZenMethod ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Click on worklist option."}),"\n",(0,t.jsx)(n.h3,{id:"customchange",children:"customChange"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod customChange(value) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Click on custom option."}),"\n",(0,t.jsx)(n.h3,{id:"setcustom",children:"SetCustom"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SetCustom(pValue As %Boolean) [ ZenMethod ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Set custom worklist option."}),"\n",(0,t.jsx)(n.h3,{id:"getusericons",children:"GetUserIcons"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetUserIcons(ByRef pParameters, Output pMetaData, Output pData) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Return the current user icons for the JSON provider."}),"\n",(0,t.jsx)(n.h3,{id:"getusersettings",children:"GetUserSettings"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetUserSettings(ByRef pParameters, Output pMetaData, Output pData) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Return the current user settings for the JSON provider."}),"\n",(0,t.jsx)(n.h3,{id:"rendericonlist",children:"renderIconList"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod renderIconList() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Draw list of user icons."}),"\n",(0,t.jsx)(n.h3,{id:"rendersettings",children:"renderSettings"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod renderSettings() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Draw list of user settings."}),"\n",(0,t.jsx)(n.h3,{id:"selecticon",children:"selectIcon"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod selectIcon(n) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Select an icon."}),"\n",(0,t.jsx)(n.h3,{id:"selectsetting",children:"selectSetting"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod selectSetting(n) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Select a setting."}),"\n",(0,t.jsx)(n.h3,{id:"addicon",children:"addIcon"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod addIcon() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Add a new user icon."}),"\n",(0,t.jsx)(n.h3,{id:"addsetting",children:"addSetting"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod addSetting() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Add a new setting."}),"\n",(0,t.jsx)(n.h3,{id:"applyicon",children:"applyIcon"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod applyIcon() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Apply current icon."}),"\n",(0,t.jsx)(n.h3,{id:"applysetting",children:"applySetting"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod applySetting() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Apply current setting."}),"\n",(0,t.jsx)(n.h3,{id:"removeicon",children:"removeIcon"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod removeIcon(idx) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Remove current icon."}),"\n",(0,t.jsx)(n.h3,{id:"removesetting",children:"removeSetting"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod removeSetting(idx) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Remove current setting."}),"\n",(0,t.jsx)(n.h3,{id:"applyicontoserver",children:"ApplyIconToServer"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ApplyIconToServer(pName As %String, pPath As %String, pOldName As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,t.jsx)(n.p,{children:'Apply a user icon value (if pName is not ""). If pOldName is non-"", delete it.'}),"\n",(0,t.jsx)(n.h3,{id:"applysettingtoserver",children:"ApplySettingToServer"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ApplySettingToServer(pName As %String, pValue As %String, pComment As %String, pContext As %String, pOldName As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,t.jsx)(n.p,{children:'Apply a setting value (if pName is not ""). If pOldName is non-"", delete it.'}),"\n",(0,t.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"onprehttp",children:"%OnPreHTTP"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Test for additional resources."})]})}function o(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(r,{...e})}):r(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>i,x:()=>c});var t=s(96540);const a={},l=t.createContext(a);function i(e){const n=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),t.createElement(l.Provider,{value:n},e.children)}}}]);