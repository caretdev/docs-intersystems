"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[88251],{19543:(e,r,s)=>{s.r(r),s.d(r,{contentTitle:()=>a,default:()=>i,frontMatter:()=>l,toc:()=>o});var n=s(74848),t=s(28453);const l={pagination_prev:null,pagination_next:null},a="%SYS.PTools.SQLBenchMarkResults",o=[{value:"Properties",id:"properties",level:2},{value:"Run",id:"run",level:3},{value:"StartTS",id:"startts",level:3},{value:"GlobalRefs",id:"globalrefs",level:3},{value:"FRGlobalRefs",id:"frglobalrefs",level:3},{value:"Lines",id:"lines",level:3},{value:"FRLines",id:"frlines",level:3},{value:"Rowcount",id:"rowcount",level:3},{value:"RunTime",id:"runtime",level:3},{value:"FRRunTime",id:"frruntime",level:3},{value:"QueryId",id:"queryid",level:3},{value:"Triggers",id:"triggers",level:2},{value:"OnDelete",id:"ondelete",level:3},{value:"Methods",id:"methods",level:2},{value:"clearSQLBenchMarkRslt",id:"clearsqlbenchmarkrslt",level:3},{value:"TriggerOnDelete",id:"triggerondelete",level:3}];function c(e){const r={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(r.header,{children:(0,n.jsx)(r.h1,{id:"sysptoolssqlbenchmarkresults",children:"%SYS.PTools.SQLBenchMarkResults"})}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Class %SYS.PTools.SQLBenchMarkResults Extends %Persistent [ System = 4 ]\n"})}),"\n",(0,n.jsx)(r.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(r.h3,{id:"run",children:"Run"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property Run As %Integer;\n"})}),"\n",(0,n.jsx)(r.h3,{id:"startts",children:"StartTS"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property StartTS As %TimeStamp;\n"})}),"\n",(0,n.jsx)(r.h3,{id:"globalrefs",children:"GlobalRefs"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property GlobalRefs As %Integer;\n"})}),"\n",(0,n.jsx)(r.p,{children:"Number of Global References for all rows"}),"\n",(0,n.jsx)(r.h3,{id:"frglobalrefs",children:"FRGlobalRefs"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property FRGlobalRefs As %Integer;\n"})}),"\n",(0,n.jsx)(r.p,{children:"Number of Global References to fetch the first row"}),"\n",(0,n.jsx)(r.h3,{id:"lines",children:"Lines"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property Lines As %Integer;\n"})}),"\n",(0,n.jsx)(r.p,{children:"Number of lines executed for all rows"}),"\n",(0,n.jsx)(r.h3,{id:"frlines",children:"FRLines"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property FRLines As %Integer;\n"})}),"\n",(0,n.jsx)(r.p,{children:"Number of lines executed to fetch the first row"}),"\n",(0,n.jsx)(r.h3,{id:"rowcount",children:"Rowcount"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property Rowcount As %Integer;\n"})}),"\n",(0,n.jsx)(r.p,{children:"Number of rows returned by the query"}),"\n",(0,n.jsx)(r.h3,{id:"runtime",children:"RunTime"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property RunTime As %Time;\n"})}),"\n",(0,n.jsx)(r.p,{children:"Time to fetch all rows"}),"\n",(0,n.jsx)(r.h3,{id:"frruntime",children:"FRRunTime"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property FRRunTime As %Time;\n"})}),"\n",(0,n.jsx)(r.p,{children:"Time to fetch the first row"}),"\n",(0,n.jsx)(r.h3,{id:"queryid",children:"QueryId"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property QueryId As %SYS.PTools.SQLBenchMarkQueries;\n"})}),"\n",(0,n.jsx)(r.h2,{id:"triggers",children:"Triggers"}),"\n",(0,n.jsx)(r.h3,{id:"ondelete",children:"OnDelete"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Trigger OnDelete [ Event = DELETE, Time = AFTER ]\n"})}),"\n",(0,n.jsx)(r.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(r.h3,{id:"clearsqlbenchmarkrslt",children:"clearSQLBenchMarkRslt"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'ClassMethod clearSQLBenchMarkRslt(ns As %String = "", rtn As %String = "", ph3 As %Integer = 0, clearErrs As %Integer = 0, returnType As %Integer = 0, ByRef ptInfo As %RawString) As %Status [ Deprecated, SqlName = PT_clearSQLBenchMarkRslt, SqlProc ]\n'})}),"\n",(0,n.jsx)(r.p,{children:"-- DEPRECATED --- DEPRECATED --- DEPRECATED --- DEPRECATED --- DEPRECATED --  Method: clearSQLBenchMarkRslt [SQL: PT_clearSQLBenchMarkRslt] Replaced BY: N/A Status: New Functionality Purpose: Delete all of the data stored in the '%SYS.PTools.SQLBenchMarkResults' class, based on the specified parameters... Invocation: This method can be invoked in the following ways: ObjectScript: ##class(%SYS.PTools.SQLBenchMarkResults).clearSQLBenchMarkRslt(...) SQL: CALL %SYS_PTools.PT_clearSQLBenchMarkRslt(...) SELECT %SYS_PTools.PT_clearSQLBenchMarkRslt(...) NOTE: This 'SqlProc' method can be invoked with either the CALL-interface or the SELECT-interface. Both interfaces execute the method: the CALL-interface does not return any resulting value, while the SELECT-interface does. Examples: The following examples shows the use of this method: #1 Delete all of the data stored in the '%SYS.PTools.SQLBenchMarkResults' class in the 'SAMPLES' namespace: set stats=##class(%SYS.PTools.SQLBenchMarkResults).clearSQLBenchMarkRslt(\"SAMPLES\") Data Storage: ^%sqlcq($NAMESPACE,\"PTools\",\"Bench\",\"Results\",\"{D|I|C|S}\") Parameters: ns - The namespace in which to clear SQL Statistics If none provided, use the current namespaces where SQL Stats collected [DEFAULT: Current Namespace] rtn - The routine for which to clear SQL Statistics If none provided, clear all routines in the given 'ns' [OPTIONAL] ph3 - Placeholder Parameter for future extensibility clearAll - 0 = Perform a normal clear, but leave the 'INFO' rows 1 = Clear everything including the 'INFO' rows [DEFAULT: 0] clearErrs - 0 = Don't delete the 'PTools' Application Errors 1 = Delete all of the 'PTools' Application Errors [DEFAULT: 0] returnType - 0 = Return a %Status code of either $$$OK or $$$ERROR() 1 = Return the number of Stats rows deleted from the following class: %SYS.PTools.SQLBenchMarkResults [DEFAULT: 0] ptInfo - A Pass By Reference information array that returns detailed information to the user in the following format: ptInfo(category,variable)=value OR $LB(val1,...,valn) Where category = { \"cnt\" | \"curr\" | \"term\" | ... } variable = A var corresponding to the given 'category' Example: ptInfo(\"cnt\",\"clearSQLBenchMarkRslt\")=The number of rows deleted via this method [Routine Method] RETURN Value: Based on the value of the 'returnType' parameter, return one of the following: 0: Return a %Status code of either $$$OK or $$$ERROR() 1: Return the number of Stats rows deleted from the following class; Otherwise, return an error message if an error occurred: %SYS.PTools.SQLBenchMarkResults -------------------------------------------------------------------------------"}),"\n",(0,n.jsx)(r.h3,{id:"triggerondelete",children:"TriggerOnDelete"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod TriggerOnDelete(timing)\n"})}),"\n",(0,n.jsx)(r.p,{children:"Perform the OnDelete Trigger operations for this class..."})]})}function i(e={}){const{wrapper:r}={...(0,t.R)(),...e.components};return r?(0,n.jsx)(r,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,r,s)=>{s.d(r,{R:()=>a,x:()=>o});var n=s(96540);const t={},l=n.createContext(t);function a(e){const r=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(r):{...r,...e}}),[r,e])}function o(e){let r;return r=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),n.createElement(l.Provider,{value:r},e.children)}}}]);