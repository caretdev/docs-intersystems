"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[34426],{51314:(e,n,i)=>{i.r(n),i.d(n,{contentTitle:()=>t,default:()=>r,frontMatter:()=>a,toc:()=>c});var l=i(74848),s=i(28453);const a={pagination_prev:null,pagination_next:null},t="%iKnow.UI.Dialog.compileDomain",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"domainDefinition",id:"domaindefinition",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"IsValidClassName",id:"isvalidclassname",level:3},{value:"ondialogStart",id:"ondialogstart",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"compile",id:"compile",level:3},{value:"onresizeHandler",id:"onresizehandler",level:3},{value:"timeout",id:"timeout",level:3},{value:"CheckStatus",id:"checkstatus",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3}];function d(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(n.header,{children:(0,l.jsx)(n.h1,{id:"iknowuidialogcompiledomain",children:"%iKnow.UI.Dialog.compileDomain"})}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.UI.Dialog.compileDomain Extends %ZEN.Dialog.standardDialog [ Deprecated, System = 4 ]\n"})}),"\n",(0,l.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(n.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,l.jsx)(n.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%iKnow";\n'})}),"\n",(0,l.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Development";\n'})}),"\n",(0,l.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(n.h3,{id:"domaindefinition",children:"domainDefinition"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property domainDefinition As %ZEN.Datatype.string(ZENURL = "DOMAINDEF");\n'})}),"\n",(0,l.jsx)(n.p,{children:"Domain Definition class"}),"\n",(0,l.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(n.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(n.p,{children:"Contents of the dialog body."}),"\n",(0,l.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,l.jsx)(n.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(n.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,l.jsx)(n.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,l.jsx)(n.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"isvalidclassname",children:"IsValidClassName"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod IsValidClassName(pClassName As %String) As %Boolean [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Test if the given class name is valid."}),"\n",(0,l.jsx)(n.h3,{id:"ondialogstart",children:"ondialogStart"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogStart() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"This callback, if defined, is called when the dialog page is loaded."}),"\n",(0,l.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsx)(n.h3,{id:"compile",children:"compile"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod compile() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Start the compile"}),"\n",(0,l.jsx)(n.h3,{id:"onresizehandler",children:"onresizeHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onresizeHandler() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"This client event, if present, is fired when the page is resized."}),"\n",(0,l.jsx)(n.h3,{id:"timeout",children:"timeout"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod timeout() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Check compile status periodically."}),"\n",(0,l.jsx)(n.h3,{id:"checkstatus",children:"CheckStatus"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod CheckStatus(pCubeClass) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."})]})}function r(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,l.jsx)(n,{...e,children:(0,l.jsx)(d,{...e})}):d(e)}},28453:(e,n,i)=>{i.d(n,{R:()=>t,x:()=>c});var l=i(96540);const s={},a=l.createContext(s);function t(e){const n=l.useContext(a);return l.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:t(e.components),l.createElement(a.Provider,{value:n},e.children)}}}]);