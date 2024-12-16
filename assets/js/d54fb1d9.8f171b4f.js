"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[30409],{30484:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>t,default:()=>c,frontMatter:()=>i,toc:()=>d});var n=a(74848),l=a(28453);const i={pagination_prev:null,pagination_next:null},t="%DeepSee.UI.Dialog.ListingGroupAdd",d=[{value:"Parameters",id:"parameters",level:2},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"msgClass",id:"msgclass",level:3},{value:"msgGroup",id:"msggroup",level:3},{value:"msgDefineRequest",id:"msgdefinerequest",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"nameChanged",id:"namechanged",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"IsValidClassName",id:"isvalidclassname",level:3},{value:"SaveData",id:"savedata",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"TrimSpaces",id:"trimspaces",level:3}];function r(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"deepseeuidialoglistinggroupadd",children:"%DeepSee.UI.Dialog.ListingGroupAdd"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.Dialog.ListingGroupAdd Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This dialog allows the user to define a new Listing Group"}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"msgclass",children:"msgClass"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgClass As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a valid class name.")} ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"msggroup",children:"msgGroup"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgGroup As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("A listing group name must be defined.")} ];\n'})}),"\n",(0,n.jsx)(s.h3,{id:"msgdefinerequest",children:"msgDefineRequest"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgDefineRequest As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please define a new Listing Group.")} ];\n'})}),"\n",(0,n.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Contents of the dialog body."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"namechanged",children:"nameChanged"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod nameChanged(value, field) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Take steps to clean the user modified name for the listing group."}),"\n",(0,n.jsx)(s.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,n.jsx)(s.h3,{id:"isvalidclassname",children:"IsValidClassName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsValidClassName(pClassName As %String) As %Boolean [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test if the given class name is valid."}),"\n",(0,n.jsx)(s.h3,{id:"savedata",children:"SaveData"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method SaveData(pClassName) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Save general association data to server and compile."}),"\n",(0,n.jsx)(s.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,n.jsx)(s.h3,{id:"trimspaces",children:"TrimSpaces"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod TrimSpaces(pName As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Remove all spaces inside a string."})]})}function c(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(r,{...e})}):r(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>t,x:()=>d});var n=a(96540);const l={},i=n.createContext(l);function t(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function d(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:t(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);