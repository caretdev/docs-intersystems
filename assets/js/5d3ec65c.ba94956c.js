"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[49499],{1914:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>d,default:()=>c,frontMatter:()=>a,toc:()=>l});var i=r(74848),n=r(28453);const a={pagination_prev:null,pagination_next:null},d="%CSP.UI.Portal.Mirror.Utils",l=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"Properties",id:"properties",level:2},{value:"DisableRemove",id:"disableremove",level:3},{value:"DisableSave",id:"disablesave",level:3},{value:"ModifiedPrivateAddress",id:"modifiedprivateaddress",level:3},{value:"ModifiedAgentAddress",id:"modifiedagentaddress",level:3},{value:"ShowVAI",id:"showvai",level:3},{value:"SSLLink",id:"ssllink",level:3},{value:"SSLDefined",id:"ssldefined",level:3},{value:"CurrentFOCmpMode",id:"currentfocmpmode",level:3},{value:"CurrentASYNCmpMode",id:"currentasyncmpmode",level:3},{value:"CurrentFOCmpType",id:"currentfocmptype",level:3},{value:"CurrentASYNCmpType",id:"currentasyncmptype",level:3},{value:"CurrentMultiDejournal",id:"currentmultidejournal",level:3},{value:"OldMemberName",id:"oldmembername",level:3},{value:"OldPrivateAddr",id:"oldprivateaddr",level:3},{value:"OldECPAddr",id:"oldecpaddr",level:3},{value:"OldAgentAddr",id:"oldagentaddr",level:3},{value:"Methods",id:"methods",level:2},{value:"updateAddress",id:"updateaddress",level:3},{value:"CompressMode",id:"compressmode",level:3},{value:"CompressType",id:"compresstype",level:3},{value:"MultiDejournal",id:"multidejournal",level:3},{value:"modifiedAddress",id:"modifiedaddress",level:3},{value:"modifiedECPAddress",id:"modifiedecpaddress",level:3},{value:"modifiedAgentAddress",id:"modifiedagentaddress-1",level:3},{value:"modifiedMemberName",id:"modifiedmembername",level:3},{value:"cleanInput",id:"cleaninput",level:3},{value:"toggle",id:"toggle",level:3},{value:"toggleSSL",id:"togglessl",level:3},{value:"openSSL",id:"openssl",level:3},{value:"selectVIP",id:"selectvip",level:3},{value:"GetSSLLink",id:"getssllink",level:3},{value:"DrawNetworkInterface",id:"drawnetworkinterface",level:3},{value:"SSLverification",id:"sslverification",level:3},{value:"InitialSSLverification",id:"initialsslverification",level:3},{value:"DisplayError",id:"displayerror",level:3},{value:"AnyDNUpdates",id:"anydnupdates",level:3},{value:"GetDefaultAgentAddress",id:"getdefaultagentaddress",level:3},{value:"ValidateMemberName",id:"validatemembername",level:3},{value:"ValidateAddress",id:"validateaddress",level:3},{value:"ValidateMirror",id:"validatemirror",level:3},{value:"GetMirrorFailureInfo",id:"getmirrorfailureinfo",level:3},{value:"GetJoinInfo",id:"getjoininfo",level:3},{value:"getFailureMessages",id:"getfailuremessages",level:3},{value:"doRemoveLocalConfig",id:"doremovelocalconfig",level:3},{value:"doJoinNewMember",id:"dojoinnewmember",level:3},{value:"doChangeBaseDir",id:"dochangebasedir",level:3},{value:"doUpdateNode",id:"doupdatenode",level:3},{value:"changeArbiter",id:"changearbiter",level:3},{value:"ValidateArbiterAddress",id:"validatearbiteraddress",level:3},{value:"DeleteLocalConfig",id:"deletelocalconfig",level:3},{value:"FixBaseDirectory",id:"fixbasedirectory",level:3}];function t(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(s.header,{children:(0,i.jsx)(s.h1,{id:"cspuiportalmirrorutils",children:"%CSP.UI.Portal.Mirror.Utils"})}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Mirror.Utils [ Abstract, System = 4 ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"Utility class for System Management Portal mirroring pages"}),"\n",(0,i.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,i.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(s.h3,{id:"disableremove",children:"DisableRemove"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DisableRemove As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"disablesave",children:"DisableSave"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DisableSave As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"modifiedprivateaddress",children:"ModifiedPrivateAddress"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property ModifiedPrivateAddress As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"modifiedagentaddress",children:"ModifiedAgentAddress"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property ModifiedAgentAddress As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"showvai",children:"ShowVAI"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'Property ShowVAI As %ZEN.Datatype.boolean [ InitialExpression = {$ZCVT($ZV,"U")["HP-UX"} ];\n'})}),"\n",(0,i.jsx)(s.h3,{id:"ssllink",children:"SSLLink"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property SSLLink As %ZEN.Datatype.string;\n"})}),"\n",(0,i.jsx)(s.h3,{id:"ssldefined",children:"SSLDefined"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property SSLDefined As %ZEN.Datatype.boolean [ InitialExpression = {$$$SSLDefined} ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"currentfocmpmode",children:"CurrentFOCmpMode"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property CurrentFOCmpMode As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"currentasyncmpmode",children:"CurrentASYNCmpMode"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property CurrentASYNCmpMode As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"currentfocmptype",children:"CurrentFOCmpType"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property CurrentFOCmpType As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"currentasyncmptype",children:"CurrentASYNCmpType"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property CurrentASYNCmpType As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"currentmultidejournal",children:"CurrentMultiDejournal"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property CurrentMultiDejournal As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"oldmembername",children:"OldMemberName"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property OldMemberName As %ZEN.Datatype.string;\n"})}),"\n",(0,i.jsx)(s.h3,{id:"oldprivateaddr",children:"OldPrivateAddr"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property OldPrivateAddr As %ZEN.Datatype.string;\n"})}),"\n",(0,i.jsx)(s.h3,{id:"oldecpaddr",children:"OldECPAddr"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property OldECPAddr As %ZEN.Datatype.string;\n"})}),"\n",(0,i.jsx)(s.h3,{id:"oldagentaddr",children:"OldAgentAddr"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property OldAgentAddr As %ZEN.Datatype.string;\n"})}),"\n",(0,i.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(s.h3,{id:"updateaddress",children:"updateAddress"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod updateAddress(val, isZen) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"make Superserver address the default for Private address, if user has not manually changed the Private address."}),"\n",(0,i.jsx)(s.h3,{id:"compressmode",children:"CompressMode"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod CompressMode(val, isAsync) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"User modified compression mode."}),"\n",(0,i.jsx)(s.h3,{id:"compresstype",children:"CompressType"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod CompressType(val, isAsync) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"User modified compression type."}),"\n",(0,i.jsx)(s.h3,{id:"multidejournal",children:"MultiDejournal"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod MultiDejournal(val) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"modifiedaddress",children:"modifiedAddress"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod modifiedAddress(NewVal, Type, useZen) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"user modified Private Address"}),"\n",(0,i.jsx)(s.h3,{id:"modifiedecpaddress",children:"modifiedECPAddress"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod modifiedECPAddress(NewVal, Type, useZen) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"user modified Superserver Address"}),"\n",(0,i.jsx)(s.h3,{id:"modifiedagentaddress-1",children:"modifiedAgentAddress"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod modifiedAgentAddress(NewVal, Type, useZen) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"user modified Agent Address"}),"\n",(0,i.jsx)(s.h3,{id:"modifiedmembername",children:"modifiedMemberName"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod modifiedMemberName(NewVal, Type, useZen) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"cleaninput",children:"cleanInput"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod cleanInput(field) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"toggle",children:"toggle"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod toggle(id) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"show/hide advanced or connectivity setting box"}),"\n",(0,i.jsx)(s.h3,{id:"togglessl",children:"toggleSSL"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod toggleSSL(value) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"show/hide SSL/TLS Config link. value = 1 is to show."}),"\n",(0,i.jsx)(s.h3,{id:"openssl",children:"openSSL"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod openSSL() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"selectvip",children:"selectVIP"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod selectVIP(value, useZen) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"user selected a VIP from drop-down. put it into the textbox and show when ShowVAI is true."}),"\n",(0,i.jsx)(s.h3,{id:"getssllink",children:"GetSSLLink"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSSLLink(Output linkSSL As %String, Output lblSSL As %String) As %Status\n"})}),"\n",(0,i.jsx)(s.p,{children:'This method is called by Mirror pages to return linkSSL and labelSSL by reference If both %MirrorClient and %MirrorServer are defined, we will return "View Mirror..." link text. Otherwise it is "Create...".'}),"\n",(0,i.jsx)(s.h3,{id:"drawnetworkinterface",children:"DrawNetworkInterface"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawNetworkInterface(pSeed As %String) As %Status\n"})}),"\n",(0,i.jsx)(s.p,{children:"This method is called by Mirror pages to build drop-down list for Interfaces"}),"\n",(0,i.jsx)(s.h3,{id:"sslverification",children:"SSLverification"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SSLverification(mirrorname) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"initialsslverification",children:"InitialSSLverification"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method InitialSSLverification(mirrorname As %String, instance As %String, ipaddr As %String, port As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"displayerror",children:"DisplayError"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method DisplayError(error As %Status) As %Status\n"})}),"\n",(0,i.jsx)(s.h3,{id:"anydnupdates",children:"AnyDNUpdates"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AnyDNUpdates(MirrorName As %String) As %Integer [ ZenMethod ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"getdefaultagentaddress",children:"GetDefaultAgentAddress"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetDefaultAgentAddress(ECPAddr As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"validatemembername",children:"ValidateMemberName"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ValidateMemberName(Name As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"validateaddress",children:"ValidateAddress"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ValidateAddress(Addr As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"validatemirror",children:"ValidateMirror"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ValidateMirror(Output pObject As %ZEN.proxyObject) As %Status\n"})}),"\n",(0,i.jsx)(s.p,{children:"***** The following methods deal with failure management. ***** /// ***** Currently they are shared by EditFailover and Monitor. ***** /// ***** If you make changes, please re-test both pages. ***** /// This method returns information regarding mirror failure, if any, for the UI."}),"\n",(0,i.jsx)(s.h3,{id:"getmirrorfailureinfo",children:"GetMirrorFailureInfo"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMirrorFailureInfo(pFailureCode As %String, pMirrorName As %String, pInfo As %String, Output pFail As %ZEN.proxyObject) As %Status\n"})}),"\n",(0,i.jsx)(s.h3,{id:"getjoininfo",children:"GetJoinInfo"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetJoinInfo(mirname, ByRef pObject As %ZEN.proxyObject) As %Status\n"})}),"\n",(0,i.jsx)(s.p,{children:"Return information about PrimaryId and Failover member count"}),"\n",(0,i.jsx)(s.h3,{id:"getfailuremessages",children:"getFailureMessages"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod getFailureMessages(json) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"Return options to deal with mirroring faiture situations json representing failure object should be passed in."}),"\n",(0,i.jsx)(s.h3,{id:"doremovelocalconfig",children:"doRemoveLocalConfig"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doRemoveLocalConfig() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"handle special case of failure to remove local config"}),"\n",(0,i.jsx)(s.h3,{id:"dojoinnewmember",children:"doJoinNewMember"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doJoinNewMember() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"handle special case of failure to allow join this mirror as a new member."}),"\n",(0,i.jsx)(s.h3,{id:"dochangebasedir",children:"doChangeBaseDir"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doChangeBaseDir() [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:'handle possible "BADDIR" failure code. (currently not used)'}),"\n",(0,i.jsx)(s.h3,{id:"doupdatenode",children:"doUpdateNode"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod doUpdateNode(nodeName) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:'Access edit node dialog directly from the "Update network address" link when failureMessage includes it. Maybe called from EditFailover or EditAsync or Monitor'}),"\n",(0,i.jsx)(s.h3,{id:"changearbiter",children:"changeArbiter"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClientMethod changeArbiter(newVal) [ Language = javascript ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"Updating arbiter address, we need to validate the address."}),"\n",(0,i.jsx)(s.h3,{id:"validatearbiteraddress",children:"ValidateArbiterAddress"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ValidateArbiterAddress(Address) As %String [ ZenMethod ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"deletelocalconfig",children:"DeleteLocalConfig"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteLocalConfig(pDeleteDBs, pDeleteJournals) As %Status\n"})}),"\n",(0,i.jsx)(s.p,{children:"This method is created based on DeleteLocalConfig^MIRROR for SMP to use"}),"\n",(0,i.jsx)(s.h3,{id:"fixbasedirectory",children:"FixBaseDirectory"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FixBaseDirectory(pMirrorName, pSysName, pBaseDir) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,i.jsx)(s.p,{children:'Fix failure code "BADDIR" with new base directory. (currently not used)'})]})}function c(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,i.jsx)(s,{...e,children:(0,i.jsx)(t,{...e})}):t(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>d,x:()=>l});var i=r(96540);const n={},a=i.createContext(n);function d(e){const s=i.useContext(a);return i.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:d(e.components),i.createElement(a.Provider,{value:s},e.children)}}}]);