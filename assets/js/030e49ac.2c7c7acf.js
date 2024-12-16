"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[54580],{40189:(e,s,l)=>{l.r(s),l.d(s,{contentTitle:()=>a,default:()=>d,frontMatter:()=>i,toc:()=>c});var n=l(74848),t=l(28453);const i={pagination_prev:null,pagination_next:null},a="%DeepSee.UI.Dialog.SelectCubeList",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"Properties",id:"properties",level:2},{value:"CubesOnly",id:"cubesonly",level:3},{value:"CubeList",id:"cubelist",level:3},{value:"msgDefineRequest",id:"msgdefinerequest",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"GetCubeResource",id:"getcuberesource",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"onloadHandler",id:"onloadhandler",level:3}];function r(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"deepseeuidialogselectcubelist",children:"%DeepSee.UI.Dialog.SelectCubeList"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.Dialog.SelectCubeList Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This dialog allows the user to select from"}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"cubesonly",children:"CubesOnly"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property CubesOnly As %ZEN.Datatype.boolean(ZENURL = "CUBESONLY") [ InitialExpression = 0 ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"If true, the selection options will be limited to cubes only"}),"\n",(0,n.jsx)(s.h3,{id:"cubelist",children:"CubeList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property CubeList As %ZEN.Datatype.string(ZENURL = "CUBELIST");\n'})}),"\n",(0,n.jsx)(s.p,{children:"If supplied, these cubes will be pre-selected when the dialog loads"}),"\n",(0,n.jsx)(s.h3,{id:"msgdefinerequest",children:"msgDefineRequest"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property msgDefineRequest As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Select the cubes and subject areas which can use this listing group.")} ];\n'})}),"\n",(0,n.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(s.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Contents of the dialog body."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"getcuberesource",children:"GetCubeResource"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetCubeResource(pCubeName) As %String\n"})}),"\n",(0,n.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(s.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,n.jsx)(s.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This client event, if present, is fired when the page is loaded."})]})}function d(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(r,{...e})}):r(e)}},28453:(e,s,l)=>{l.d(s,{R:()=>a,x:()=>c});var n=l(96540);const t={},i=n.createContext(t);function a(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);