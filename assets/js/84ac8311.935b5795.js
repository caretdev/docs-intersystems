"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[35226],{57645:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>r,default:()=>o,frontMatter:()=>s,toc:()=>i});var l=t(74848),a=t(28453);const s={pagination_prev:null,pagination_next:null},r="%CSP.Portal.SourceControl.Dialog.Manager",i=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"Properties",id:"properties",level:2},{value:"targetURL",id:"targeturl",level:3},{value:"%UseIEEdge",id:"useieedge",level:3},{value:"%CSSLevel",id:"csslevel",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"Methods",id:"methods",level:2},{value:"onlayoutHandler",id:"onlayouthandler",level:3},{value:"initializeFrame",id:"initializeframe",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"addCompletionCheck",id:"addcompletioncheck",level:3},{value:"clearCompletionChecks",id:"clearcompletionchecks",level:3},{value:"checkCompletion",id:"checkcompletion",level:3},{value:"updateTitle",id:"updatetitle",level:3},{value:"%OnDetermineCSSLevel",id:"ondeterminecsslevel",level:3},{value:"%OnDrawHTMLMeta",id:"ondrawhtmlmeta",level:3},{value:"onunloadHandler",id:"onunloadhandler",level:3},{value:"CheckExtends",id:"checkextends",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(n.header,{children:(0,l.jsx)(n.h1,{id:"cspportalsourcecontroldialogmanager",children:"%CSP.Portal.SourceControl.Dialog.Manager"})}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.Portal.SourceControl.Dialog.Manager Extends %CSP.Portal.Template [ System = 4 ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Wrapper class to correctly manage popups requested by Source Control hooks."}),"\n",(0,l.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Source Control Dialog";\n'})}),"\n",(0,l.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(n.h3,{id:"targeturl",children:"targetURL"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property targetURL As %String(MAXLEN = "", ZENURL = "TARGET");\n'})}),"\n",(0,l.jsx)(n.h3,{id:"useieedge",children:"%UseIEEdge"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property %UseIEEdge As %Boolean [ InitialExpression = 1, Internal, ServerOnly = 1 ];\n"})}),"\n",(0,l.jsx)(n.p,{children:"Flag to indicate whether the IE=Edge meta tag should be written out to force Internet Explorer to use its most recent rendering engine. By default, the portal does write out this flag, but users can disable the flag by implementing the GetPortalPageOptions() callback defined in %Studio.SourceControl.Base to specify that IE Compatibility should be permitted."}),"\n",(0,l.jsx)(n.h3,{id:"csslevel",children:"%CSSLevel"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property %CSSLevel As %String [ ServerOnly = 1 ];\n"})}),"\n",(0,l.jsx)(n.p,{children:"Property to indicate whether a specific CSS Level should be used for the page. By default, we will attempt to use CSS Level 3 if we can detect the browser supports HTML 5. The value can be modified by implementing the GetPortalPageOptions() callback defined in %Studio.SourceControl.Base."}),"\n",(0,l.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(n.h3,{id:"contents",children:"Contents"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,l.jsx)(n.p,{children:"Contents of this page:"}),"\n",(0,l.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(n.h3,{id:"onlayouthandler",children:"onlayoutHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onlayoutHandler(load) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"initializeframe",children:"initializeFrame"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod initializeFrame(newSrc) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Code to resize the iframe based on the window size and check whether a title"}),"\n",(0,l.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,l.jsx)(n.p,{children:"Point the iframe at the URL specified in targetURL."}),"\n",(0,l.jsx)(n.h3,{id:"addcompletioncheck",children:"addCompletionCheck"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod addCompletionCheck(checkFunc, time) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Adds a JS Interval which executes the supplied function at the supplied interval."}),"\n",(0,l.jsx)(n.h3,{id:"clearcompletionchecks",children:"clearCompletionChecks"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod clearCompletionChecks() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Remove any intervals created while waiting for source control frames to load. Primarily used to check on the status of the popup."}),"\n",(0,l.jsx)(n.h3,{id:"checkcompletion",children:"checkCompletion"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod checkCompletion() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Check whether the contents of the iframe have been completely loaded, and close the window if it's a Studio template, otherwise add the source control specific onbeforeunload event handling."}),"\n",(0,l.jsx)(n.h3,{id:"updatetitle",children:"updateTitle"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod updateTitle() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Update the title of the main window based on the title of the inner iframe."}),"\n",(0,l.jsx)(n.h3,{id:"ondeterminecsslevel",children:"%OnDetermineCSSLevel"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnDetermineCSSLevel() As %Integer\n"})}),"\n",(0,l.jsx)(n.p,{children:"If the source control hooks a specific CSS level is specified in %CSSLevel, return the value, otherwise use the default for the portal."}),"\n",(0,l.jsx)(n.h3,{id:"ondrawhtmlmeta",children:"%OnDrawHTMLMeta"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnDrawHTMLMeta() As %Status\n"})}),"\n",(0,l.jsx)(n.h3,{id:"onunloadhandler",children:"onunloadHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onunloadHandler() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"checkextends",children:"CheckExtends"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method CheckExtends(pCls As %String, pSuper As %String) As %Boolean [ ZenMethod ]\n"})})]})}function o(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,l.jsx)(n,{...e,children:(0,l.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>r,x:()=>i});var l=t(96540);const a={},s=l.createContext(a);function r(e){const n=l.useContext(s);return l.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),l.createElement(s.Provider,{value:n},e.children)}}}]);