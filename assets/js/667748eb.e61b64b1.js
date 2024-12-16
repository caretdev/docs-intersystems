"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[76188],{46822:(e,n,a)=>{a.r(n),a.d(n,{contentTitle:()=>t,default:()=>d,frontMatter:()=>l,toc:()=>c});var s=a(74848),i=a(28453);const l={pagination_prev:null,pagination_next:null},t="%CSP.UI.Portal.Mirror.Dialog.SSL",c=[{value:"Parameters",id:"parameters",level:2},{value:"APPLICATION",id:"application",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"APPLYBUTTON",id:"applybutton",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"isNew",id:"isnew",level:3},{value:"isECP",id:"isecp",level:3},{value:"isClient",id:"isclient",level:3},{value:"needEnable",id:"needenable",level:3},{value:"pwModified",id:"pwmodified",level:3},{value:"Min",id:"min",level:3},{value:"Max",id:"max",level:3},{value:"CipherDefault",id:"cipherdefault",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Contents",id:"contents",level:3},{value:"dialogBody",id:"dialogbody",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"ondialogFinish",id:"ondialogfinish",level:3},{value:"ondialogCancel",id:"ondialogcancel",level:3},{value:"getDialogValue",id:"getdialogvalue",level:3},{value:"browseSelect",id:"browseselect",level:3},{value:"changedCAFile",id:"changedcafile",level:3},{value:"changePW",id:"changepw",level:3},{value:"togglePW",id:"togglepw",level:3},{value:"toggleOCSP",id:"toggleocsp",level:3},{value:"changeVersion",id:"changeversion",level:3},{value:"getVersion",id:"getversion",level:3},{value:"doSave",id:"dosave",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"validate",id:"validate",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetSubtitle",id:"ongetsubtitle",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"LoadData",id:"loaddata",level:3},{value:"SaveData",id:"savedata",level:3},{value:"DrawPageTitle",id:"drawpagetitle",level:3}];function r(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"cspuiportalmirrordialogssl",children:"%CSP.UI.Portal.Mirror.Dialog.SSL"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Mirror.Dialog.SSL Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,s.jsx)(n.p,{children:"Edit Service Popup Dialog for Management Portal"}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"application",children:"APPLICATION"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter APPLICATION = "%CSP.UI.Portal.Application";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Class name of application this page belongs to."}),"\n",(0,s.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Mirror.Dialog.SSL.zen";\n'})}),"\n",(0,s.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "SSL";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,s.jsx)(n.h3,{id:"applybutton",children:"APPLYBUTTON"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter APPLYBUTTON As BOOLEAN = 0;\n"})}),"\n",(0,s.jsx)(n.p,{children:"If true, then this dialog displays an Apply button."}),"\n",(0,s.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Secure";\n'})}),"\n",(0,s.jsx)(n.p,{children:"Security requirement"}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"isnew",children:"isNew"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"isecp",children:"isECP"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property isECP As %ZEN.Datatype.boolean(ZENURL = "isECP") [ InitialExpression = "0" ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"isclient",children:"isClient"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property isClient As %ZEN.Datatype.boolean(ZENURL = "isClient") [ InitialExpression = "0" ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"needenable",children:"needEnable"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property needEnable As %ZEN.Datatype.boolean(ZENURL = "needEnable") [ InitialExpression = "0" ];\n'})}),"\n",(0,s.jsx)(n.h3,{id:"pwmodified",children:"pwModified"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property pwModified As %ZEN.Datatype.boolean [ InitialExpression = "0" ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Indicate if password is modified. If pwModified is 0 then at save time we won't save password."}),"\n",(0,s.jsx)(n.h3,{id:"min",children:"Min"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property Min As %String;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Keep TLSMinVersion"}),"\n",(0,s.jsx)(n.h3,{id:"max",children:"Max"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property Max As %String;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Keep TLSMinVersion"}),"\n",(0,s.jsx)(n.h3,{id:"cipherdefault",children:"CipherDefault"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property CipherDefault As %String;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Default Ciphersuites value"}),"\n",(0,s.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(n.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,s.jsx)(n.h3,{id:"contents",children:"Contents"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(n.h3,{id:"dialogbody",children:"dialogBody"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(n.p,{children:"This XML block defines the contents of this pane."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,s.jsx)(n.h3,{id:"ondialogfinish",children:"ondialogFinish"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This callback, if defined, is called when the user presses the OK or Apply action buttons. If this returns false, then the action is cancelled."}),"\n",(0,s.jsx)(n.h3,{id:"ondialogcancel",children:"ondialogCancel"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ondialogCancel() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This callback, if defined, is called when the user presses the Cancel button. If this returns false, then the dialog is not cancelled."}),"\n",(0,s.jsx)(n.h3,{id:"getdialogvalue",children:"getDialogValue"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getDialogValue() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"browseselect",children:"browseSelect"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod browseSelect(name, wildcard) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"User clicked one of the Browse buttons. Save the name of the textfield so that when you return you know which textfield to update."}),"\n",(0,s.jsx)(n.h3,{id:"changedcafile",children:"changedCAFile"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod changedCAFile() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"User changed CAFile. If not null, enable CRL file. OW, disable"}),"\n",(0,s.jsx)(n.h3,{id:"changepw",children:"changePW"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod changePW() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"User changed password. Update flag."}),"\n",(0,s.jsx)(n.h3,{id:"togglepw",children:"togglePW"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod togglePW() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"User changed PWOptions option. If they want to enter new password, show password fields. Otherwise hide them."}),"\n",(0,s.jsx)(n.h3,{id:"toggleocsp",children:"toggleOCSP"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod toggleOCSP() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"User changed OCSP option."}),"\n",(0,s.jsx)(n.h3,{id:"changeversion",children:"changeVersion"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod changeVersion(MinVersion) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Change Min or Max Version"}),"\n",(0,s.jsx)(n.h3,{id:"getversion",children:"getVersion"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getVersion(value) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"dosave",children:"doSave"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doSave() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get user input and send to server to save settings."}),"\n",(0,s.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,s.jsx)(n.h3,{id:"validate",children:"validate"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod validate() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the (localized) title string for the dialog. This should be implemented in a subclass."}),"\n",(0,s.jsx)(n.h3,{id:"ongetsubtitle",children:"%OnGetSubtitle"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetSubtitle() As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the (localized) subtitle string for the dialog. This should be implemented in a subclass."}),"\n",(0,s.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsxs)(n.p,{children:["This callback is called after the server-side page object and all of its children are created.",(0,s.jsx)(n.br,{}),"\nSubclasses can override this to add, remove, or modify items within the page object model, or to provide values for controls."]}),"\n",(0,s.jsx)(n.h3,{id:"loaddata",children:"LoadData"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method LoadData() As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Used when Editing an existing SSL/TLS configuration. Load previously defined values into fields."}),"\n",(0,s.jsx)(n.h3,{id:"savedata",children:"SaveData"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SaveData(Enabled, CAFile, CRLFile, CertificateFile, PrivateKeyFile, PrivateKeyType, PrivateKeyPassword, CipherList, Ciphersuites, TLSMinVersion, TLSMaxVersion, pwModified, PWOptions, isECP, isClient, OCSP, OCSPIssuer, OCSPResp, OCSPTimeout, DHBits) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Save general association data to server"}),"\n",(0,s.jsx)(n.h3,{id:"drawpagetitle",children:"DrawPageTitle"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod DrawPageTitle(pSeed As %String) As %Status\n"})})]})}function d(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(r,{...e})}):r(e)}},28453:(e,n,a)=>{a.d(n,{R:()=>t,x:()=>c});var s=a(96540);const i={},l=s.createContext(i);function t(e){const n=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:t(e.components),s.createElement(l.Provider,{value:n},e.children)}}}]);