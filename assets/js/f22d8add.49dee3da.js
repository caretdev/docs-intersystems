"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[91540],{1137:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>r,default:()=>l,frontMatter:()=>i,toc:()=>c});var n=t(74848),a=t(28453);const i={pagination_prev:null,pagination_next:null},r="%Exception.AbstractException",c=[{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"OutputToDevice",id:"outputtodevice",level:3},{value:"OutputToStream",id:"outputtostream",level:3},{value:"DisplayString",id:"displaystring",level:3},{value:"BinDisplayString",id:"bindisplaystring",level:3},{value:"SQLMessageString",id:"sqlmessagestring",level:3},{value:"AsStatus",id:"asstatus",level:3},{value:"OnAsStatus",id:"onasstatus",level:3},{value:"AsSQLCODE",id:"assqlcode",level:3},{value:"OnAsSQLCODE",id:"onassqlcode",level:3},{value:"AsSQLMessage",id:"assqlmessage",level:3},{value:"OnAsSQLMessage",id:"onassqlmessage",level:3},{value:"Log",id:"log",level:3},{value:"StackAsArray",id:"stackasarray",level:3}];function o(e){const s={br:"br",break:"break",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"exceptionabstractexception",children:"%Exception.AbstractException"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Exception.AbstractException Extends %Exception.CPPException [ Abstract ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"The %Exception.AbstractException defines the interface to exceptions that may be caught and thrown via the Try/Catch exception handling facilities. Users wishing to define new exception classes should inherit from this interface class. Only instances of classes that inherit from %Exception.AbstractException may be thrown with the 'throw' command."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method %OnNew(pName As %String = "", pCode As %String = "", pLocation As %String = "", pData As %String = "", pInnerException As %Exception.AbstractException = {$$$NULLOREF}) As %Status [ Private ]\n'})}),"\n",(0,n.jsx)(s.h3,{id:"outputtodevice",children:"OutputToDevice"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OutputToDevice(pLevel As %Integer = 0) [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This outputs the string representation of the exception to the current device, recursively outputing any inner exceptions."}),"\n",(0,n.jsx)(s.h3,{id:"outputtostream",children:"OutputToStream"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OutputToStream(pStream As %CharacterStream, pLevel As %Integer = 0)\n"})}),"\n",(0,n.jsx)(s.p,{children:"This outputs the string representation of the exception to the supplied stream, recursively outputting any inner exceptions."}),"\n",(0,n.jsx)(s.h3,{id:"displaystring",children:"DisplayString"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method DisplayString(pLevel As %Integer = 0) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"This returns a string that represents the exception. Users should feel free to modify the format in subclasses."}),"\n",(0,n.jsx)(s.h3,{id:"bindisplaystring",children:"BinDisplayString"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method BinDisplayString(pLevel As %Integer = 0) As %Binary [ Internal ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"sqlmessagestring",children:"SQLMessageString"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method SQLMessageString(pLevel As %Integer = 0) [ Deprecated ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["This returns a string that represents the SQL %msg string. Users should feel free to modify the format and content in subclasses.",(0,n.jsx)(s.br,{}),"\nDEPRECATED - use AsSQLMessage() instead. Override OnAsSQLMessage() to customize the value returned by AsSQLMessage()."]}),"\n",(0,n.jsx)(s.h3,{id:"asstatus",children:"AsStatus"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method AsStatus() As %Status [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Convert this exception to a %Status compatible value."}),"\n",(0,n.jsx)(s.h3,{id:"onasstatus",children:"OnAsStatus"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnAsStatus() As %Status [ CodeMode = expression, Private ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Override this method to provide a custom conversion of an exception to a status."}),"\n",(0,n.jsx)(s.h3,{id:"assqlcode",children:"AsSQLCODE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method AsSQLCODE() As %Integer [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return the SQLCODE value corresponding to the exception."}),"\n",(0,n.jsx)(s.h3,{id:"onassqlcode",children:"OnAsSQLCODE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnAsSQLCODE() As %Integer [ CodeMode = expression, Private ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Override this method to provide a custom conversion of an exception to an SQLCODE value."}),"\n",(0,n.jsx)(s.h3,{id:"assqlmessage",children:"AsSQLMessage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method AsSQLMessage() As %String(MAXLEN="") [ Final ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Return the SQL %msg string describing details of the exception."}),"\n",(0,n.jsx)(s.h3,{id:"onassqlmessage",children:"OnAsSQLMessage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method OnAsSQLMessage() As %String(MAXLEN="") [ CodeMode = expression, Private ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Override this method to provide a custom conversion of an exception to the SQL %msg string."}),"\n",(0,n.jsx)(s.h3,{id:"log",children:"Log"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method Log() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Call the log function (LOG^%ETN) to log this exception. You can view this log at the terminal with 'Do ^%ER' utility or from the system management portal."}),"\n",(0,n.jsx)(s.h3,{id:"stackasarray",children:"StackAsArray"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method StackAsArray(ByRef array) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"This method sets an array that is passed by reference to the execution stack at the time of the exception. The top unsubscripted value is the number of execution levels."}),"\n",(0,n.jsxs)(s.p,{children:["array(n) is a string that indicates how the next level was created. It is empty for the current level. The value may be:",(0,n.jsx)(s.br,{}),"\nDO - issued a DO command",(0,n.jsx)(s.br,{}),"\n$$ - called an extrinsic function",(0,n.jsx)(s.br,{}),"\nXECUTE - issued an XECUTE command",(0,n.jsx)(s.br,{}),"\nBREAK - entered a debug prompt because of a ",(0,n.jsxs)(s.break,{children:[(0,n.jsx)(s.br,{}),"\nERROR - entered a debug prompt because of an error",(0,n.jsx)(s.br,{}),"\n$ETRAP - executed a $ETRAP",(0,n.jsx)(s.br,{}),"\nCALLIN - entered via a callin"]})]}),"\n",(0,n.jsx)(s.p,{children:'array(n,"PLACE") is the location of the last command executed at this level. It is a line reference followed by the command number on that line.'})]})}function l(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>r,x:()=>c});var n=t(96540);const a={},i=n.createContext(a);function r(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);