"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[33471],{27627:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>d,frontMatter:()=>t,toc:()=>r});var a=n(74848),l=n(28453);const t={pagination_prev:null,pagination_next:null},i="%ZEN.Dialog.routineSelect",r=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"AUTONS",id:"autons",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"MASK",id:"mask",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%GetDescHTML",id:"getdeschtml",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"CreateRS",id:"creaters",level:3},{value:"ExecuteRS",id:"executers",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"changeMask",id:"changemask",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"LoadMaskLinks",id:"loadmasklinks",level:3},{value:"loadMask",id:"loadmask",level:3},{value:"onkeydownHandler",id:"onkeydownhandler",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(s.header,{children:(0,a.jsx)(s.h1,{id:"zendialogroutineselect",children:"%ZEN.Dialog.routineSelect"})}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Dialog.routineSelect Extends standardDialog [ Deprecated, System = 4 ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["This utility dialog window displays and lets the user select from a set of routines.",(0,a.jsx)(s.br,{}),"\nThe user must have Use privileges for the %Development resource in order to use this page. If Namespace is passed in then switch to that namespace to run the query"]}),"\n",(0,a.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%ZEN";\n'})}),"\n",(0,a.jsx)(s.h3,{id:"autons",children:"AUTONS"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter AUTONS = 0;\n"})}),"\n",(0,a.jsx)(s.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,a.jsx)(s.p,{children:"No Apply button."}),"\n",(0,a.jsx)(s.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Development";\n'})}),"\n",(0,a.jsx)(s.p,{children:"User must hold Development to use this dialog."}),"\n",(0,a.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(s.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "NAMESPACE");\n'})}),"\n",(0,a.jsx)(s.p,{children:"Which namespace to search. Passed in via URL."}),"\n",(0,a.jsx)(s.h3,{id:"mask",children:"MASK"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property MASK As %ZEN.Datatype.string(ZENURL = "MASK");\n'})}),"\n",(0,a.jsx)(s.p,{children:"User may pass in a partial or full search mask."}),"\n",(0,a.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(s.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(s.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(s.p,{children:"Contents of the dialog."}),"\n",(0,a.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(s.h3,{id:"getdeschtml",children:"%GetDescHTML"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetDescHTML(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Provide contents of description component."}),"\n",(0,a.jsx)(s.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,a.jsx)(s.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(s.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,a.jsx)(s.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,a.jsx)(s.h3,{id:"creaters",children:"CreateRS"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method CreateRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet\n"})}),"\n",(0,a.jsx)(s.p,{children:"Create the result set used by the routine listbox."}),"\n",(0,a.jsx)(s.h3,{id:"executers",children:"ExecuteRS"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean\n"})}),"\n",(0,a.jsx)(s.p,{children:"Execute the routine listbox result set."}),"\n",(0,a.jsx)(s.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Return the value that should be returned by this dialog."}),"\n",(0,a.jsx)(s.h3,{id:"changemask",children:"changeMask"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod changeMask() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"User has clicked the Search button."}),"\n",(0,a.jsx)(s.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsxs)(s.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,a.jsx)(s.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]}),"\n",(0,a.jsx)(s.h3,{id:"loadmasklinks",children:"LoadMaskLinks"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method LoadMaskLinks(pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Build short cut Mask links."}),"\n",(0,a.jsx)(s.h3,{id:"loadmask",children:"loadMask"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod loadMask(flag) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"User has clicked a mask link. Put the selected mask into the Mask field then refresh list control."}),"\n",(0,a.jsx)(s.h3,{id:"onkeydownhandler",children:"onkeydownHandler"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod onkeydownHandler(evt) [ Language = javascript ]\n"})})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,a.jsx)(s,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>r});var a=n(96540);const l={},t=a.createContext(l);function i(e){const s=a.useContext(t);return a.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),a.createElement(t.Provider,{value:s},e.children)}}}]);