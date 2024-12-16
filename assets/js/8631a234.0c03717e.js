"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[56881],{52885:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>l,default:()=>o,frontMatter:()=>n,toc:()=>i});var r=s(74848),a=s(28453);const n={pagination_prev:null,pagination_next:null},l="SYS.History.PerfData",i=[{value:"Properties",id:"properties",level:2},{value:"DateTime",id:"datetime",level:3},{value:"Length",id:"length",level:3},{value:"ZDATE",id:"zdate",level:3},{value:"ZTIME",id:"ztime",level:3},{value:"Perf",id:"perf",level:3},{value:"WD",id:"wd",level:3},{value:"Methods",id:"methods",level:2},{value:"Sample",id:"sample",level:3},{value:"Purge",id:"purge",level:3},{value:"SetPurge",id:"setpurge",level:3},{value:"Export",id:"export",level:3},{value:"Summary",id:"summary",level:3},{value:"Demo",id:"demo",level:3},{value:"DemoSample",id:"demosample",level:3}];function c(e){const t={a:"a",br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"syshistoryperfdata",children:"SYS.History.PerfData"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class SYS.History.PerfData Extends (%Persistent, %XML.Adaptor) [ System = 4 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:'Basic detail collection class of Performance metrics for the Monitor History database. Properties represent metrics which get collected every few seconds by the %MONAPP Application Monitor process when the %Monitor.System.HistoryPerf class is "active". The values stored for most properties are deltas calculated from the last interval.'}),"\n",(0,r.jsxs)(t.p,{children:["For details, see ",(0,r.jsx)(t.a,{href:"/csp/docbook/Doc.View.cls?FIND=CLASSES+SYS.History.PerfData",children:"History Monitor"}),"."]}),"\n",(0,r.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(t.h3,{id:"datetime",children:"DateTime"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property DateTime As %TimeStamp [ SqlColumnNumber = 2 ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"Time of sample"}),"\n",(0,r.jsx)(t.h3,{id:"length",children:"Length"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property Length As %Integer;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Length of sample in seconds"}),"\n",(0,r.jsx)(t.h3,{id:"zdate",children:"ZDATE"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property ZDATE As %Integer;\n"})}),"\n",(0,r.jsx)(t.p,{children:"UTC date key"}),"\n",(0,r.jsx)(t.h3,{id:"ztime",children:"ZTIME"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property ZTIME As %Integer;\n"})}),"\n",(0,r.jsx)(t.p,{children:"UTC time key"}),"\n",(0,r.jsx)(t.h3,{id:"perf",children:"Perf"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property Perf As SYS.History.Performance;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Performance metrics"}),"\n",(0,r.jsx)(t.h3,{id:"wd",children:"WD"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property WD As array Of SYS.History.WriteDaemon;\n"})}),"\n",(0,r.jsx)(t.p,{children:"WriteDaemon metrics"}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"sample",children:"Sample"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Sample() As SYS.History.PerfData\n"})}),"\n",(0,r.jsx)(t.p,{children:"Instantiate the class and fetch current values for all metric properties."}),"\n",(0,r.jsx)(t.h3,{id:"purge",children:"Purge"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Purge(Keep As %Integer = 0) As %Integer\n"})}),"\n",(0,r.jsx)(t.p,{children:"Purge PerfData interval data, keeping the last 'Keep' days. This is typically called at the start of each day from the %Monitor.System.HistoryPerf class, using the current system default for 'Keep' (see the SetPurge() method). The 'Keep' argument allows you to over ride the system default (a value of \"0\" or \"\" uses the system default)"}),"\n",(0,r.jsx)(t.p,{children:"Returns the number of entries purged."}),"\n",(0,r.jsx)(t.h3,{id:"setpurge",children:"SetPurge"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod SetPurge(Keep As %Integer = "") As %Integer\n'})}),"\n",(0,r.jsx)(t.p,{children:'Set the system parameter for the number of days of detail data to keep. Initial system default is 7 days. Return value is the previous setting, and executing this method with a "" argument will return the current setting without modifying it.'}),"\n",(0,r.jsx)(t.h3,{id:"export",children:"Export"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Export(FileName As %String, Start As %TimeStamp, End As %TimeStamp) As %Status\n"})}),"\n",(0,r.jsx)(t.p,{children:"Export PerfData data for time range in CSV format. The default is all of the data currently in the PerfData class. Note that Write Daemon cycle properties are exported as the high-water mark for the cycles during an interval."}),"\n",(0,r.jsxs)(t.p,{children:["The default FileName is HistoryPerf_config_date_time.csv in the MGR directory.",(0,r.jsx)(t.br,{}),"\n'Start' and 'End' times (if necessary) are in YYYY-MM-DD HH:MM:SS format."]}),"\n",(0,r.jsx)(t.h3,{id:"summary",children:"Summary"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Summary(Day As %Integer = 0) As %Status\n"})}),"\n",(0,r.jsx)(t.p,{children:"Collect summaries of the PerfData metrics for a day into the Hourly/Daily database. This is typically done automatically by %Monitor.System.HistoryPerf at the beginning of each day (for the previous day), but could be called manually if there's a problem."}),"\n",(0,r.jsx)(t.p,{children:'The \'Day\' argument sets the end date of the collection, with the default of "0" being the start of today (i.e. $H+Day), which would collect everything for yesterday. A "-1" would collect the day before yesterday; a "1" would collect today (as much as there is).'}),"\n",(0,r.jsx)(t.h3,{id:"demo",children:"Demo"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Demo(Days As %Integer = 30) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Build a demo database for the Perf metrics. 'Days' is the number of days of history to generate."}),"\n",(0,r.jsx)(t.h3,{id:"demosample",children:"DemoSample"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DemoSample(pct As %Integer, dt As %String) As SYS.History.PerfData [ Internal ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Instantiate the class and fetch values for all metric properties. This fills in semi-random values from a base value for each metric for a demo database. 'pct' is a percentage value used to modify (+ or -) the base values. 'dt' is date,time of sampel in $H format Values for Perf metrics are per-second rates."})]})}function o(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>l,x:()=>i});var r=s(96540);const a={},n=r.createContext(a);function l(e){const t=r.useContext(n);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:l(e.components),r.createElement(n.Provider,{value:t},e.children)}}}]);