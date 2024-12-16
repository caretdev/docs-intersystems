"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[96913],{89363:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>i,default:()=>d,frontMatter:()=>t,toc:()=>c});var n=s(74848),l=s(28453);const t={pagination_prev:null,pagination_next:null},i="%CSP.UI.Portal.Mappings.Package",c=[{value:"Parameters",id:"parameters",level:2},{value:"CSPURL",id:"cspurl",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"Properties",id:"properties",level:2},{value:"SelectMapping",id:"selectmapping",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"changeSelectList",id:"changeselectlist",level:3},{value:"checkFields",id:"checkfields",level:3},{value:"doChangeDB",id:"dochangedb",level:3},{value:"validate",id:"validate",level:3},{value:"doSave",id:"dosave",level:3},{value:"SaveData",id:"savedata",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"DrawPageTitle",id:"drawpagetitle",level:3}];function r(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"cspuiportalmappingspackage",children:"%CSP.UI.Portal.Mappings.Package"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Mappings.Package Extends %CSP.UI.Portal.Mappings.Template [ System = 4 ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,n.jsx)(a.p,{children:"Edit Service Popup Dialog for Management Portal"}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mappings.Package.zen";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Package Mapping";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"selectmapping",children:"SelectMapping"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property SelectMapping As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(a.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,n.jsx)(a.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"changeselectlist",children:"changeSelectList"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeSelectList(radioSet) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"checkfields",children:"checkFields"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod checkFields() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"dochangedb",children:"doChangeDB"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doChangeDB(newVal) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"validate",children:"validate"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod validate() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"dosave",children:"doSave"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.h3,{id:"savedata",children:"SaveData"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Call server save method."}),"\n",(0,n.jsx)(a.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,n.jsx)(a.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,n.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,n.jsxs)(a.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,n.jsx)(a.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]}),"\n",(0,n.jsx)(a.h3,{id:"drawpagetitle",children:"DrawPageTitle"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DrawPageTitle(pSeed As %String) As %Status\n"})})]})}function d(e={}){const{wrapper:a}={...(0,l.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(r,{...e})}):r(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>i,x:()=>c});var n=s(96540);const l={},t=n.createContext(l);function i(e){const a=n.useContext(t);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function c(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),n.createElement(t.Provider,{value:a},e.children)}}}]);