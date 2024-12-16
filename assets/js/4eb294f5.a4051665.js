"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[84914],{74778:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>r,default:()=>d,frontMatter:()=>l,toc:()=>o});var s=n(74848),a=n(28453);const l={pagination_prev:null,pagination_next:null},r="%CSP.Portal.SourceControl.Dialog.ServerOutput",o=[{value:"Parameters",id:"parameters",level:2},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"CANCELBUTTON",id:"cancelbutton",level:3},{value:"Properties",id:"properties",level:2},{value:"isNotZenPopup",id:"isnotzenpopup",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"refreshOutput",id:"refreshoutput",level:3},{value:"clearOutput",id:"clearoutput",level:3},{value:"ClearSCOutput",id:"clearscoutput",level:3},{value:"DrawButtons",id:"drawbuttons",level:3},{value:"DrawOutput",id:"drawoutput",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"dialogFinish",id:"dialogfinish",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onunloadHandler",id:"onunloadhandler",level:3}];function i(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"cspportalsourcecontroldialogserveroutput",children:"%CSP.Portal.SourceControl.Dialog.ServerOutput"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %CSP.Portal.SourceControl.Dialog.ServerOutput Extends %ZEN.Dialog.standardDialog [ System = 4 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Helper dialog to display the server-side output from Source Control classes. This class should only be opened from a class which extends %CSP.Portal.SourceControl.Base. Note that any changes to this class should also be propagated to EnsPortal.Dialog.SourceControlOutput."}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON = 0;\n"})}),"\n",(0,s.jsx)(t.h3,{id:"cancelbutton",children:"CANCELBUTTON"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter CANCELBUTTON = 0;\n"})}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"isnotzenpopup",children:"isNotZenPopup"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property isNotZenPopup As %ZEN.Datatype.string(ZENURL = "NOTZENPOPUP");\n'})}),"\n",(0,s.jsx)(t.p,{children:"Flag to avoid certain Zen behaviours regarding the closing of the popup."}),"\n",(0,s.jsx)(t.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(t.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(t.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"refreshoutput",children:"refreshOutput"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod refreshOutput(array) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Refresh the output based on the data supplied in array or from the server. This method also hides the new output indicator on the source page. Note that this method is copied in the Interoperability subclass, so any changes also need to be implemented there as well."}),"\n",(0,s.jsx)(t.h3,{id:"clearoutput",children:"clearOutput"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod clearOutput() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"clear output from the session and update the display. Note that this method is copied in the Interoperability subclass, so any changes also need to be implemented there as well."}),"\n",(0,s.jsx)(t.h3,{id:"clearscoutput",children:"ClearSCOutput"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ClearSCOutput() As %Integer [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Remove the output data from the session."}),"\n",(0,s.jsx)(t.h3,{id:"drawbuttons",children:"DrawButtons"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method DrawButtons(pSeed As %String) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Draw the clear and refresh buttons."}),"\n",(0,s.jsx)(t.h3,{id:"drawoutput",children:"DrawOutput"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method DrawOutput(pSeed As %String) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Write out the contents of the current session's output. If there is no data, write out a non-breaking space for display purposes."}),"\n",(0,s.jsx)(t.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,s.jsx)(t.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This dialog doesn't return a value."}),"\n",(0,s.jsx)(t.h3,{id:"dialogfinish",children:"dialogFinish"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod dialogFinish() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Override the handling of firePopupAction for the default case where the popup has not been launched using zenLaunchPopupWindow()."}),"\n",(0,s.jsx)(t.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Close the window and update the parent when the user is finished with the page."}),"\n",(0,s.jsx)(t.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Ensure that we refresh the output (and thus update the parent flag) whenever the user comes back to the popup."}),"\n",(0,s.jsx)(t.h3,{id:"onunloadhandler",children:"onunloadHandler"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onunloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Ensure that the parent page knows when this page gets closed."})]})}function d(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>r,x:()=>o});var s=n(96540);const a={},l=s.createContext(a);function r(e){const t=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),s.createElement(l.Provider,{value:t},e.children)}}}]);