"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[89305],{89975:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>c,default:()=>o,frontMatter:()=>l,toc:()=>i});var r=t(74848),n=t(28453);const l={pagination_prev:null,pagination_next:null},c="%Studio.General",i=[{value:"Methods",id:"methods",level:2},{value:"GetStudioInfo",id:"getstudioinfo",level:3},{value:"CheckDeveloperRole",id:"checkdeveloperrole",level:3},{value:"FeatureBits",id:"featurebits",level:3},{value:"ConstructCSPSession",id:"constructcspsession",level:3},{value:"ReturnCSPSessionId",id:"returncspsessionid",level:3},{value:"GetWebServerPort",id:"getwebserverport",level:3},{value:"ServerIP",id:"serverip",level:3},{value:"KillProcess",id:"killprocess",level:3},{value:"Execute",id:"execute",level:3},{value:"DumpObjectExecute",id:"dumpobjectexecute",level:3},{value:"DumpObjectSlot",id:"dumpobjectslot",level:3},{value:"DumpObjectClose",id:"dumpobjectclose",level:3},{value:"DumpObjectFetch",id:"dumpobjectfetch",level:3},{value:"AnalyzeObjectPropertiesExecute",id:"analyzeobjectpropertiesexecute",level:3},{value:"AnalyzeObjectProperty",id:"analyzeobjectproperty",level:3},{value:"AnalyzeObjectPropertyValues",id:"analyzeobjectpropertyvalues",level:3},{value:"AnalyzeObjectPropertiesClose",id:"analyzeobjectpropertiesclose",level:3},{value:"AnalyzeObjectPropertiesFetch",id:"analyzeobjectpropertiesfetch",level:3},{value:"GetFileDateModified",id:"getfiledatemodified",level:3},{value:"DecomposeStatus",id:"decomposestatus",level:3}];function a(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"studiogeneral",children:"%Studio.General"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Studio.General [ System = 3 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Collection of ClassMethods used by Studio"}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"getstudioinfo",children:"GetStudioInfo"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetStudioInfo() As %String\n"})}),"\n",(0,r.jsx)(s.p,{children:'return $c(1) delimetered string p1 - %SYSTEM.Version.GetNumber() p2 - Is MVB installed p3 - Is Ensamble installed p4 - Is Activate available p5 - Is Other Enabled p6 - Feetback URL p7 - _$SYSTEM.Version.Format(4) p8 - ^%SYS("Studio","NoXecute") p9 - U2 Enabled. Bit 30'}),"\n",(0,r.jsx)(s.h3,{id:"checkdeveloperrole",children:"CheckDeveloperRole"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CheckDeveloperRole() As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"featurebits",children:"FeatureBits"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod FeatureBits(bit As %Integer = "") As %Binary\n'})}),"\n",(0,r.jsx)(s.h3,{id:"constructcspsession",children:"ConstructCSPSession"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ConstructCSPSession(page As %String = "") As %String [ CodeMode = expression ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"Internal method to construct a CSP session with current security permissions and return the session id"}),"\n",(0,r.jsx)(s.h3,{id:"returncspsessionid",children:"ReturnCSPSessionId"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ReturnCSPSessionId(id As %String) As %String [ CodeMode = expression, Deprecated ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Deprecated internal method to return the CSP session id of the session constructed with ConstructCSPSession. This is no longer needed as ConstructCSPSession returns the CSP sessionId directly now."}),"\n",(0,r.jsx)(s.h3,{id:"getwebserverport",children:"GetWebServerPort"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetWebServerPort(ByRef port As %Integer, ByRef server As %String, ByRef urlprefix As %String, ByRef url As %String) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return the port the InterSystems IRIS web server is running on or 0 if the web server is not active. Also returns the server name which is useful if the web server is running on a different machine. It can also return a urlprefix which is added to the url to goto at the start and is required if one web server is serving multiple InterSystems IRIS instances to differential between these versions. It also returns url which is the constructed url as a string, you just need to append the page you are going to request to this."}),"\n",(0,r.jsx)(s.h3,{id:"serverip",children:"ServerIP"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ServerIP() As %String [ Private ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Try to return the current servers IP address/name"}),"\n",(0,r.jsx)(s.h3,{id:"killprocess",children:"KillProcess"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod KillProcess(pid As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"execute",children:"Execute"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Execute(%cmd As %String) [ ProcedureBlock = 0 ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"dumpobjectexecute",children:"DumpObjectExecute"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DumpObjectExecute(ByRef qHandle As %Binary, oref As %String) As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"dumpobjectslot",children:"DumpObjectSlot"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DumpObjectSlot(ByRef qHandle As %String, oref As %String, ivar As %String, slot As %Integer)\n"})}),"\n",(0,r.jsx)(s.h3,{id:"dumpobjectclose",children:"DumpObjectClose"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DumpObjectClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = DumpObjectExecute ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"dumpobjectfetch",children:"DumpObjectFetch"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DumpObjectFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = DumpObjectExecute ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"analyzeobjectpropertiesexecute",children:"AnalyzeObjectPropertiesExecute"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AnalyzeObjectPropertiesExecute(ByRef qHandle As %Binary, oref As %String) As %Status\n"})}),"\n",(0,r.jsxs)(s.p,{children:["For each property of ",(0,r.jsx)(s.strong,{children:"oref"}),", return its name, value, ",(0,r.jsx)(s.code,{children:"$DATA(value)"}),", ",(0,r.jsx)(s.code,{children:"$ISOBJECT(value)"}),", ",(0,r.jsx)(s.code,{children:"$CLASSNAME(value)"})," and if the property is calculated"]}),"\n",(0,r.jsx)(s.h3,{id:"analyzeobjectproperty",children:"AnalyzeObjectProperty"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AnalyzeObjectProperty(ByRef qHandle As %Binary, oref As %String, ivar As %String, pd As %String, type As %Integer)\n"})}),"\n",(0,r.jsx)(s.h3,{id:"analyzeobjectpropertyvalues",children:"AnalyzeObjectPropertyValues"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AnalyzeObjectPropertyValues(ByRef qHandle As %Binary, oref As %String, ivar As %String, slot As %Integer, refprop As %Boolean, type As %Integer)\n"})}),"\n",(0,r.jsx)(s.h3,{id:"analyzeobjectpropertiesclose",children:"AnalyzeObjectPropertiesClose"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AnalyzeObjectPropertiesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = AnalyzeObjectPropertiesExecute ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"analyzeobjectpropertiesfetch",children:"AnalyzeObjectPropertiesFetch"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AnalyzeObjectPropertiesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = AnalyzeObjectPropertiesExecute ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"getfiledatemodified",children:"GetFileDateModified"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetFileDateModified(filename As %String, utc As %Boolean = 0) As %String\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return the date last modified of file filename in %Timestamp format. By default this is local time, if you pass utc as true it returns it in UTC time"}),"\n",(0,r.jsx)(s.h3,{id:"decomposestatus",children:"DecomposeStatus"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DecomposeStatus(status As %String) As %Status\n"})})]})}function o(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(a,{...e})}):a(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>c,x:()=>i});var r=t(96540);const n={},l=r.createContext(n);function c(e){const s=r.useContext(l);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:c(e.components),r.createElement(l.Provider,{value:s},e.children)}}}]);