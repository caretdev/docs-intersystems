"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[27356],{3097:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>o,default:()=>d,frontMatter:()=>a,toc:()=>i});var t=s(74848),l=s(28453);const a={pagination_prev:null,pagination_next:null},o="Config.Logging",i=[{value:"Properties",id:"properties",level:2},{value:"ChildProcessLaunchCommand",id:"childprocesslaunchcommand",level:3},{value:"Enabled",id:"enabled",level:3},{value:"Format",id:"format",level:3},{value:"Interval",id:"interval",level:3},{value:"Level",id:"level",level:3},{value:"Methods",id:"methods",level:2},{value:"ChildProcessLaunchCommandIsValid",id:"childprocesslaunchcommandisvalid",level:3},{value:"ParseChildProcessLaunchCommand",id:"parsechildprocesslaunchcommand",level:3},{value:"FormatNormalize",id:"formatnormalize",level:3},{value:"FormatSet",id:"formatset",level:3},{value:"IntervalIsValid",id:"intervalisvalid",level:3},{value:"LevelNormalize",id:"levelnormalize",level:3},{value:"LevelSet",id:"levelset",level:3},{value:"Load",id:"load",level:3},{value:"SetDefault",id:"setdefault",level:3},{value:"convertTo20337",id:"convertto20337",level:3}];function r(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,l.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"configlogging",children:"Config.Logging"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class Config.Logging Extends (%Persistent, Config.CommonSingleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"This is the API for setting and getting the configuration values for the log daemon. Use this class to set and get the configuration values for the log daemon. See SYS.LogDmn for the top level API for starts and stops the daemon."}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"childprocesslaunchcommand",children:"ChildProcessLaunchCommand"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property ChildProcessLaunchCommand As %String [ InitialExpression = {##Expression("""irislogd"_$SELECT($$$ISWINDOWS:".exe",1:"")_" -f /tmp/irislogd.log""")}, Internal ];\n'})}),"\n",(0,t.jsx)(n.p,{children:"This is the command the parent log daemon will use to invoke the daemon child process on start up. Everytime the parent log daemon scans the messages.log and %SYS.Audit database, it will send the new messages found in these places to the child process's stdin. While this child process could be the demo executable we provide"}),"\n",(0,t.jsx)(n.p,{children:"/bin/irislogd, it can technically be any executable so long as that executable is daemon (so it runs as long as the log daemon) and listens to its standard in."}),"\n",(0,t.jsx)(n.h3,{id:"enabled",children:"Enabled"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property Enabled As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"Property is 1 (true) if the logging daemon is enabled. If property is 0 (false), any attempt to start the daemon will fail. Setting Enabled to 1 will NOT start the daemon. To start the daemon that, invoke ##class(SYS.LogDmn).Start() after setting this property equal to 1."}),"\n",(0,t.jsx)(n.h3,{id:"format",children:"Format"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property Format As %String(VALUELIST = ",NVP,JSON") [ InitialExpression = "NVP", SqlComputeCode = {Set {*}=$ZCONVERT({*}, "U")}, SqlComputed ];\n'})}),"\n",(0,t.jsx)(n.p,{children:'This property determines the format of log entries. This property can currently take two values: "NVP" and "JSON" This property is not case sensitive. If Format="NVP", then entries will look like when="2023-10-17 19:25:16.190" pid=89734 level=INFO event=Audit.OSCommand text="Execute O/S command" ... If Format="JSON" then entries will look like { "when": "2023-10-17 18:47:26.244", "pid": "89317" }'}),"\n",(0,t.jsx)(n.h3,{id:"interval",children:"Interval"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property Interval As %Decimal(MAXVAL = 3600, MINVAL = 0.01) [ InitialExpression = 10 ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"The number of seconds the log daemon waits before scanning the messages.log file and %SYS.Audit log for new entries. The messages.log file can be determined by calling ##class(Config.config).GetConsoleFileName() Interval may be expressed as a decimal up to two digit points (to the 10th of a millisecond) and can be no larger than 3600 (equivalent to 1 hour). For example, the following values of Interval are valid 0.10 - Wait 100 ms before rescanning for the messages.log and %SYS.Audit log for new entries 0.01 - Wait 10 ms before rescanning for the messages.log and %SYS.Audit log for new entries 1.5 - Wait 1.5 seconds before rescanning the messages.log and %SYS.Audit log for new entries 10 - Wait 10 seconds before rescanning the messages.log and %SYS.Audit log for new entries 3600 - Wait 3600 seconds (1 hour) before rescanning the messages.log and %SYS.Audit for new entries"}),"\n",(0,t.jsx)(n.h3,{id:"level",children:"Level"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property Level As %String(VALUELIST = ",DEBUG2,DEBUG,INFO,WARN,SEVERE,FATAL") [ InitialExpression = "WARN", SqlComputeCode = {Set {*}=$ZCONVERT({*}, "U")}, SqlComputed ];\n'})}),"\n",(0,t.jsx)(n.p,{children:'This property sets the minimum level of message from the console.log that the logging daemon will emit. This property is case insensitive. For instance, if Level is "INFO", then the logging daemon will only emit messages from the console.log whose level is INFO, WARN, SEVERE, or FATAL. Set Level to be "FATAL" if you only wish the log daemon to be terse and only consider fatal errors, and set Level to be "DEBGUG2" if you wish the log daemon verbose and emit all messages from the messages.log and %SYS.Audit log'}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"childprocesslaunchcommandisvalid",children:"ChildProcessLaunchCommandIsValid"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ChildProcessLaunchCommandIsValid(value As %String) As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"parsechildprocesslaunchcommand",children:"ParseChildProcessLaunchCommand"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ParseChildProcessLaunchCommand(pipecmd As %String, ByRef argc As %Integer, ByRef argv As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Parses the command string and returns whether the pipe command input is valid"}),"\n",(0,t.jsx)(n.h3,{id:"formatnormalize",children:"FormatNormalize"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod FormatNormalize(value As %String(VALUELIST=",NVP,JSON")) As %String(VALUELIST=",NVP,JSON")\n'})}),"\n",(0,t.jsx)(n.h3,{id:"formatset",children:"FormatSet"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method FormatSet(value As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"intervalisvalid",children:"IntervalIsValid"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod IntervalIsValid(value As %Decimal(MAXVAL=3600,MINVAL=0.01)) As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"Ensure the bounds are respected for the Interval configuration setting"}),"\n",(0,t.jsx)(n.h3,{id:"levelnormalize",children:"LevelNormalize"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod LevelNormalize(value As %String(VALUELIST=",DEBUG2,DEBUG,INFO,WARN,SEVERE,FATAL")) As %String(VALUELIST=",DEBUG2,DEBUG,INFO,WARN,SEVERE,FATAL")\n'})}),"\n",(0,t.jsx)(n.h3,{id:"levelset",children:"LevelSet"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method LevelSet(value As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(n.h3,{id:"load",children:"Load"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]\n'})}),"\n",(0,t.jsxs)(n.p,{children:["Load the parameters into memory and activate.",(0,t.jsx)(n.br,{}),"\nParameters:",(0,t.jsx)(n.br,{}),"\n",(0,t.jsx)(n.strong,{children:"Obj"}),' = Handle to the object which caused the load. If "", then load everything, only called from STU.',(0,t.jsx)(n.br,{}),"\n",(0,t.jsx)(n.strong,{children:"Flags"})," = Type of modification.",(0,t.jsx)(n.br,{}),"\n0 - Modify",(0,t.jsx)(n.br,{}),"\n1 - Create/Insert"]}),"\n",(0,t.jsx)(n.h3,{id:"setdefault",children:"SetDefault"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod SetDefault() As %Status\n"})}),"\n",(0,t.jsx)(n.p,{children:"This method sets the log daemon configuration options to their default values. You can find the default value for each configurable property by looking at the InitialExpression property keyword in this class (Config.Logging)"}),"\n",(0,t.jsx)(n.h3,{id:"convertto20337",children:"convertTo20337"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod convertTo20337(Output kvPairs) [ Internal ]\n"})}),"\n",(0,t.jsx)(n.p,{children:'This helper method should not be invoked directly It is called by Config.CPF convertTo202337 and populates kvPairs with kvPairs()= It contains the domain logic necessary to translate from the old log daemon configuration system and values found in ^SYS("LOGDMN", "config") to the new one which will now be stored in this CPF. If there is no pre-existing log daemon configuration, the default (and sane) values for each config property are used.'})]})}function d(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(r,{...e})}):r(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>o,x:()=>i});var t=s(96540);const l={},a=t.createContext(l);function o(e){const n=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:o(e.components),t.createElement(a.Provider,{value:n},e.children)}}}]);