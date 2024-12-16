"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[97433],{74590:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>c,default:()=>a,frontMatter:()=>o,toc:()=>l});var s=n(74848),i=n(28453);const o={pagination_prev:null,pagination_next:null},c="%SYS.Monitor.AbstractNotification",l=[{value:"Properties",id:"properties",level:2},{value:"Logfile",id:"logfile",level:3},{value:"Notifications",id:"notifications",level:3},{value:"State",id:"state",level:3},{value:"Methods",id:"methods",level:2},{value:"Start",id:"start",level:3},{value:"Post",id:"post",level:3},{value:"ClearNotifications",id:"clearnotifications",level:3},{value:"OpenLog",id:"openlog",level:3},{value:"LogMsg",id:"logmsg",level:3},{value:"LogCon",id:"logcon",level:3},{value:"GetNextNotification",id:"getnextnotification",level:3}];function r(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"sysmonitorabstractnotification",children:"%SYS.Monitor.AbstractNotification"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %SYS.Monitor.AbstractNotification Extends %RegisteredObject [ Abstract, System = 3 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Abstract class for a Notifier"}),"\n",(0,s.jsx)(t.p,{children:"User classes inherit from this class to become a Notifier for System Monitor."}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"logfile",children:"Logfile"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property Logfile As %String [ InitialExpression = {$zu(12)_"SystemMonitor.log"}, Internal ];\n'})}),"\n",(0,s.jsx)(t.p,{children:"logfile"}),"\n",(0,s.jsx)(t.h3,{id:"notifications",children:"Notifications"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Notifications [ MultiDimensional ];\n"})}),"\n",(0,s.jsx)(t.h3,{id:"state",children:"State"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property State As %String [ InitialExpression = " " ];\n'})}),"\n",(0,s.jsx)(t.p,{children:"Runtime state"}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"start",children:"Start"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Start() As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"USER MAY IMPLEMENT THIS METHOD This method is called when the notifier class is created."}),"\n",(0,s.jsx)(t.h3,{id:"post",children:"Post"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Post() As %Status [ Abstract ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"USER MUST IMPLEMENT THIS METHOD Post a notification"}),"\n",(0,s.jsx)(t.h3,{id:"clearnotifications",children:"ClearNotifications"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method ClearNotifications() As %Integer [ Final ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"USER DOES NOT IMPLEMENT THIS METHOD This method is called to clear notifications for the SYS.Monitor Controller"}),"\n",(0,s.jsx)(t.h3,{id:"openlog",children:"OpenLog"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method OpenLog() As %Status [ Final ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"logmsg",children:"LogMsg"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method LogMsg(msg As %String = "") As %Status [ Final ]\n'})}),"\n",(0,s.jsx)(t.h3,{id:"logcon",children:"LogCon"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method LogCon(Msg As %String = "", Severity As %Integer = 0) As %Status [ Final ]\n'})}),"\n",(0,s.jsx)(t.h3,{id:"getnextnotification",children:"GetNextNotification"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method GetNextNotification(ByRef Sensor As %String = "", Output Severity As %Integer, Output Msg As %String) As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"Get Next Notification"})]})}function a(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(r,{...e})}):r(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>c,x:()=>l});var s=n(96540);const i={},o=s.createContext(i);function c(e){const t=s.useContext(o);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:c(e.components),s.createElement(o.Provider,{value:t},e.children)}}}]);