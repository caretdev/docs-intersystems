"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[99934],{32880:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>a,default:()=>o,frontMatter:()=>l,toc:()=>c});var t=r(74848),n=r(28453);const l={pagination_prev:null,pagination_next:null},a="%WebStress.Playback",c=[{value:"Properties",id:"properties",level:2},{value:"ProcessID",id:"processid",level:3},{value:"RunID",id:"runid",level:3},{value:"Run",id:"run",level:3},{value:"TestID",id:"testid",level:3},{value:"Test",id:"test",level:3},{value:"ScriptID",id:"scriptid",level:3},{value:"Script",id:"script",level:3},{value:"Generator",id:"generator",level:3},{value:"WebServer",id:"webserver",level:3},{value:"WebServerPort",id:"webserverport",level:3},{value:"Sessions",id:"sessions",level:3},{value:"StartDate",id:"startdate",level:3},{value:"StopDate",id:"stopdate",level:3},{value:"StartTime",id:"starttime",level:3},{value:"StopTime",id:"stoptime",level:3},{value:"RunMins",id:"runmins",level:3},{value:"WarmUpMins",id:"warmupmins",level:3},{value:"CoolDownMins",id:"cooldownmins",level:3},{value:"ScriptPause",id:"scriptpause",level:3},{value:"LoopBackURL",id:"loopbackurl",level:3},{value:"LoopBackPcnt",id:"loopbackpcnt",level:3},{value:"TimeDiff",id:"timediff",level:3},{value:"debug",id:"debug",level:3},{value:"SavePage",id:"savepage",level:3},{value:"SavePageDir",id:"savepagedir",level:3},{value:"NoDelay",id:"nodelay",level:3},{value:"NoResults",id:"noresults",level:3},{value:"HttpSessions",id:"httpsessions",level:3},{value:"RecordStart",id:"recordstart",level:3},{value:"RecordStop",id:"recordstop",level:3},{value:"TestStop",id:"teststop",level:3},{value:"ProxyAddress",id:"proxyaddress",level:3},{value:"ProxyPort",id:"proxyport",level:3},{value:"SSLConfiguration",id:"sslconfiguration",level:3},{value:"NextInvoke",id:"nextinvoke",level:3},{value:"Status",id:"status",level:3},{value:"Methods",id:"methods",level:2},{value:"Run",id:"run-1",level:3},{value:"Playback",id:"playback",level:3},{value:"RunStop",id:"runstop",level:3},{value:"RunWait",id:"runwait",level:3},{value:"CheckRecordStatus",id:"checkrecordstatus",level:3},{value:"GetTimes",id:"gettimes",level:3},{value:"PreExecute",id:"preexecute",level:3},{value:"PostExecute",id:"postexecute",level:3},{value:"ErrorCheck",id:"errorcheck",level:3},{value:"PreRunCode",id:"preruncode",level:3},{value:"PostRunCode",id:"postruncode",level:3},{value:"SetError",id:"seterror",level:3}];function i(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"webstressplayback",children:"%WebStress.Playback"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %WebStress.Playback Extends (%Persistent, %XML.Adaptor) [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"processid",children:"ProcessID"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ProcessID As %String [ InitialExpression = {$job} ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"This process ID"}),"\n",(0,t.jsx)(s.h3,{id:"runid",children:"RunID"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property RunID As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"A unique number representing this run"}),"\n",(0,t.jsx)(s.h3,{id:"run",children:"Run"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Run As %WebStress.Run;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Container for the Run object"}),"\n",(0,t.jsx)(s.h3,{id:"testid",children:"TestID"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property TestID As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Pointer to %WebStress.Tests"}),"\n",(0,t.jsx)(s.h3,{id:"test",children:"Test"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Test As %WebStress.Tests;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Container for the %WebStress.Tests object"}),"\n",(0,t.jsx)(s.h3,{id:"scriptid",children:"ScriptID"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ScriptID As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Pointer to %WebStress.Scripts"}),"\n",(0,t.jsx)(s.h3,{id:"script",children:"Script"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Script As %WebStress.Scripts;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Container for the %WebStress.Script object"}),"\n",(0,t.jsx)(s.h3,{id:"generator",children:"Generator"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Generator As %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The name of the generator that will be used to generate the traffic"}),"\n",(0,t.jsx)(s.h3,{id:"webserver",children:"WebServer"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property WebServer As %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The address of the web server that will be used"}),"\n",(0,t.jsx)(s.h3,{id:"webserverport",children:"WebServerPort"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property WebServerPort As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The port number on the web server"}),"\n",(0,t.jsx)(s.h3,{id:"sessions",children:"Sessions"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Sessions As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The number of sessions per process"}),"\n",(0,t.jsx)(s.h3,{id:"startdate",children:"StartDate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property StartDate As %Date;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The date that the test run will start. Can be blank."}),"\n",(0,t.jsx)(s.h3,{id:"stopdate",children:"StopDate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property StopDate As %Date;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The date that the test run will stop. Can be blank."}),"\n",(0,t.jsx)(s.h3,{id:"starttime",children:"StartTime"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property StartTime As %Time;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The time that the test run will start. Can be blank."}),"\n",(0,t.jsx)(s.h3,{id:"stoptime",children:"StopTime"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property StopTime As %Time;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The time that the test run will stop. Can be blank."}),"\n",(0,t.jsx)(s.h3,{id:"runmins",children:"RunMins"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property RunMins As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The number of minutes that the test will run. Used instead of start/stop date/time or can be blank if start/stop date/time are used."}),"\n",(0,t.jsx)(s.h3,{id:"warmupmins",children:"WarmUpMins"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property WarmUpMins As %Integer;\n"})}),"\n",(0,t.jsxs)(s.p,{children:["The number of minutes that the test will run for before recording the statistics starts.",(0,t.jsx)(s.br,{}),"\nThis is to ensure that all the processes are running and that a consistent load is being applied to the server before the recording starts.",(0,t.jsx)(s.br,{}),"\nThe value should be long enough to ensure that each script is able to run through to completion at least once"]}),"\n",(0,t.jsx)(s.h3,{id:"cooldownmins",children:"CoolDownMins"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property CoolDownMins As %Integer;\n"})}),"\n",(0,t.jsxs)(s.p,{children:["The number of minutes that the test will run for at the end of recording the statistics.",(0,t.jsx)(s.br,{}),"\nThis ensures that we do not get any abnormally 'quick' timings at the end of statistics recording due to a lower load on the server."]}),"\n",(0,t.jsx)(s.h3,{id:"scriptpause",children:"ScriptPause"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ScriptPause As %Integer;\n"})}),"\n",(0,t.jsxs)(s.p,{children:["The number of seconds to pause at the end of each script.",(0,t.jsx)(s.br,{}),"\nThis gives a more realistic playback as 'human' input would normally pause before running the same workflow again."]}),"\n",(0,t.jsx)(s.h3,{id:"loopbackurl",children:"LoopBackURL"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property LoopBackURL As %Integer;\n"})}),"\n",(0,t.jsxs)(s.p,{children:["This is a pointer to the URL in the script that we will loop back to rather than just back to the first URL.",(0,t.jsx)(s.br,{}),"\nThis may because the first URL is thestart of the user login process and we don't want to have the 'virtual user' logging in every time."]}),"\n",(0,t.jsx)(s.h3,{id:"loopbackpcnt",children:"LoopBackPcnt"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property LoopBackPcnt As %Integer;\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is the percentage of the time that the LoopBackURL will be used rather than the first URL"}),"\n",(0,t.jsx)(s.h3,{id:"timediff",children:"TimeDiff"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property TimeDiff As %Float;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The difference between the time on this machine and the time on the 'controller' (The system that initiated the run)"}),"\n",(0,t.jsx)(s.h3,{id:"debug",children:"debug"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property debug As %Boolean;\n"})}),"\n",(0,t.jsx)(s.p,{children:"This property used internally for debugging and logging purposes."}),"\n",(0,t.jsx)(s.h3,{id:"savepage",children:"SavePage"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SavePage As %Boolean;\n"})}),"\n",(0,t.jsx)(s.p,{children:"A flag that indicates whether or not to save the returned page information into disk files."}),"\n",(0,t.jsx)(s.h3,{id:"savepagedir",children:"SavePageDir"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SavePageDir As %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"The root directory of where to sabe the returned page details if indicated to do so by the SavePage property"}),"\n",(0,t.jsx)(s.h3,{id:"nodelay",children:"NoDelay"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property NoDelay As array Of %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Used to hold an array of all the page types where we specify no delay before making the call"}),"\n",(0,t.jsx)(s.h3,{id:"noresults",children:"NoResults"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property NoResults As array Of %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Used to hold an array of all the page types where we don't want to record statistics"}),"\n",(0,t.jsx)(s.h3,{id:"httpsessions",children:"HttpSessions"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property HttpSessions As list Of %WebStress.Playback.Session;\n"})}),"\n",(0,t.jsx)(s.p,{children:"A collection of sessions for this process"}),"\n",(0,t.jsx)(s.h3,{id:"recordstart",children:"RecordStart"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property RecordStart As %Integer;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"recordstop",children:"RecordStop"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property RecordStop As %Integer;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"teststop",children:"TestStop"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property TestStop As %Integer;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"proxyaddress",children:"ProxyAddress"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ProxyAddress As %String;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"proxyport",children:"ProxyPort"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ProxyPort As %Integer;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"sslconfiguration",children:"SSLConfiguration"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SSLConfiguration As %String;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"nextinvoke",children:"NextInvoke"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property NextInvoke As %String [ MultiDimensional ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"status",children:"Status"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Status As %WebStress.Playback.Status;\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"run-1",children:"Run"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Run(RunID As %Integer, TestID As %Integer, ScriptID As %Integer, Generator As %String, WebServer As %String, WebServerPort As %Integer = 80, Sessions As %Integer = 1, StartDate As %Date = "", StopDate As %Date = "", StartTime As %Time = "", StopTime As %Time = "", RunMins As %Integer, WarmUpMins As %Integer, CoolDownMins As %Integer, ScriptPause As %Integer, LoopBackUrl As %Integer = "", LoopBackPcnt As %Integer = "", TimeDiff As %Integer, debug As %Boolean = 0, Visual As %Boolean = 0, SavePage As %Boolean = 0, SavePageDir As %String, ProxyAddress As %String, ProxyPort As %Integer, SSLConfiguration As %String)\n'})}),"\n",(0,t.jsx)(s.p,{children:"The array showing which session is to be run next Enter here to start the run processing"}),"\n",(0,t.jsx)(s.h3,{id:"playback",children:"Playback"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method Playback()\n"})}),"\n",(0,t.jsx)(s.p,{children:"This runs the playback"}),"\n",(0,t.jsx)(s.h3,{id:"runstop",children:"RunStop"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method RunStop(controller As %Boolean = 0) As %Boolean\n"})}),"\n",(0,t.jsx)(s.h3,{id:"runwait",children:"RunWait"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RunWait(TestID As %Integer, StartDate As %Integer, StopDate As %Integer, StartTime As %Integer, StopTime As %Integer, debug As %Boolean) As %Integer\n"})}),"\n",(0,t.jsx)(s.h3,{id:"checkrecordstatus",children:"CheckRecordStatus"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method CheckRecordStatus()\n"})}),"\n",(0,t.jsx)(s.h3,{id:"gettimes",children:"GetTimes"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetTimes()\n"})}),"\n",(0,t.jsx)(s.h3,{id:"preexecute",children:"PreExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method PreExecute(ByRef objUrl As %WebStress.Scripts.URLS, ByRef params As %String) [ ProcedureBlock = 0 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is called before a URL call is made to the server. Normally to reset any parameters"}),"\n",(0,t.jsx)(s.h3,{id:"postexecute",children:"PostExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method PostExecute(ByRef objUrl As %WebStress.Scripts.URLS) [ ProcedureBlock = 0 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Called after a URL call has been made to the server"}),"\n",(0,t.jsx)(s.h3,{id:"errorcheck",children:"ErrorCheck"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method ErrorCheck(ByRef errorStatus As %Integer = 0, errorText As %String = "", ByRef objUrl As %WebStress.Scripts.URLS, session As %Integer, urlId As %Integer) [ ProcedureBlock = 0 ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"Called after each call to check the page error status"}),"\n",(0,t.jsx)(s.h3,{id:"preruncode",children:"PreRunCode"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method PreRunCode(ByRef objUrl As %WebStress.Scripts.URLS, session As %Integer, urlId As %Integer) [ ProcedureBlock = 0 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is called at the start of the full script"}),"\n",(0,t.jsx)(s.h3,{id:"postruncode",children:"PostRunCode"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method PostRunCode() [ ProcedureBlock = 0 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is called at the end of the full script"}),"\n",(0,t.jsx)(s.h3,{id:"seterror",children:"SetError"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method SetError(session As %Integer, urlId As %Integer, objUrl As %WebStress.Scripts.URLS, errorStatus As %Integer, errorText As %String)\n"})})]})}function o(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(i,{...e})}):i(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>a,x:()=>c});var t=r(96540);const n={},l=t.createContext(n);function a(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:a(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);