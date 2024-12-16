"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[7057],{68604:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>r,default:()=>c,frontMatter:()=>s,toc:()=>o});var i=t(74848),a=t(28453);const s={pagination_prev:null,pagination_next:null},r="%iKnow.UI.Dialog.openDomain",o=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Methods",id:"methods",level:2},{value:"GetFinderArray",id:"getfinderarray",level:3},{value:"getItemIcon",id:"getitemicon",level:3},{value:"getDeepSeeIcon",id:"getdeepseeicon",level:3},{value:"drawDetails",id:"drawdetails",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"OnGetCategoryInfo",id:"ongetcategoryinfo",level:3},{value:"%OnPreHTTP",id:"onprehttp",level:3},{value:"GetItemInfo",id:"getiteminfo",level:3},{value:"%OnDrawHTMLHead",id:"ondrawhtmlhead",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3}];function l(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"iknowuidialogopendomain",children:"%iKnow.UI.Dialog.openDomain"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.UI.Dialog.openDomain Extends %ZEN.Dialog.finderDialog [ Deprecated, System = 4 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"This class help users open the selected iKnow domain and text classifiers"}),"\n",(0,i.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 1;\n"})}),"\n",(0,i.jsx)(n.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%iKnow";\n'})}),"\n",(0,i.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Development";\n'})}),"\n",(0,i.jsx)(n.p,{children:"Security requirement"}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"getfinderarray",children:"GetFinderArray"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetFinderArray(ByRef pParameters, Output pMetaData, Output pData) As %Status\n"})}),"\n",(0,i.jsx)(n.p,{children:"Provide the source data (as an array) that will drive the finder."}),"\n",(0,i.jsx)(n.h3,{id:"getitemicon",children:"getItemIcon"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getItemIcon(item) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:'Return the icon for the item in "icons" mode.'}),"\n",(0,i.jsx)(n.h3,{id:"getdeepseeicon",children:"getDeepSeeIcon"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getDeepSeeIcon(item) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Return the icon for a DeepSee item or null if this is not a DeepSee item."}),"\n",(0,i.jsx)(n.h3,{id:"drawdetails",children:"drawDetails"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod drawDetails(item, finder, index) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Provide HTML for details on selected item in finder."}),"\n",(0,i.jsx)(n.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,i.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,i.jsx)(n.p,{children:"Add components to page."}),"\n",(0,i.jsx)(n.h3,{id:"ongetcategoryinfo",children:"OnGetCategoryInfo"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetCategoryInfo(pCategory As %String, Output pDisplay As %Boolean, Output pIcons As %List) As %Status\n"})}),"\n",(0,i.jsx)(n.p,{children:"Get information to display in the category box."}),"\n",(0,i.jsx)(n.h3,{id:"onprehttp",children:"%OnPreHTTP"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Zen page notification of an HTTP request."}),"\n",(0,i.jsx)(n.h3,{id:"getiteminfo",children:"GetItemInfo"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod GetItemInfo(pMode As %String, pItemName As %String, pItemCategory As %String = "") As %ZEN.proxyObject [ Internal, ZenMethod ]\n'})}),"\n",(0,i.jsx)(n.p,{children:"Look up additional information for a given item."}),"\n",(0,i.jsx)(n.h3,{id:"ondrawhtmlhead",children:"%OnDrawHTMLHead"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnDrawHTMLHead() As %Status\n"})}),"\n",(0,i.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String) As %Status\n"})}),"\n",(0,i.jsx)(n.p,{children:"Get information to display in the ribbon bar."})]})}function c(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(l,{...e})}):l(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>r,x:()=>o});var i=t(96540);const a={},s=i.createContext(a);function r(e){const n=i.useContext(s);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),i.createElement(s.Provider,{value:n},e.children)}}}]);