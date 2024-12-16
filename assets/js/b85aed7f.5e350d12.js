"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[76095],{90973:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>a,default:()=>l,frontMatter:()=>i,toc:()=>o});var r=s(74848),n=s(28453);const i={pagination_prev:null,pagination_next:null},a="%WebStress.Scripts",o=[{value:"Parameters",id:"parameters",level:2},{value:"FileTimestamp",id:"filetimestamp",level:3},{value:"Properties",id:"properties",level:2},{value:"OriginalPort",id:"originalport",level:3},{value:"OriginalServer",id:"originalserver",level:3},{value:"ErrorCheck",id:"errorcheck",level:3},{value:"Name",id:"name",level:3},{value:"PreRunCode",id:"preruncode",level:3},{value:"PostRunCode",id:"postruncode",level:3},{value:"TotalLengthMins",id:"totallengthmins",level:3},{value:"URLs",id:"urls",level:3},{value:"RecordMethod",id:"recordmethod",level:3},{value:"RandomisationRoutine",id:"randomisationroutine",level:3},{value:"RandomisationGenTime",id:"randomisationgentime",level:3},{value:"ContainsCSPToken",id:"containscsptoken",level:3},{value:"RecordDateTime",id:"recorddatetime",level:3},{value:"Methods",id:"methods",level:2},{value:"TotalLengthMinsGet",id:"totallengthminsget",level:3},{value:"HomeDirectory",id:"homedirectory",level:3},{value:"GetTotalLengthMins",id:"gettotallengthmins",level:3},{value:"MakeRtn",id:"makertn",level:3},{value:"CacheRecorder",id:"cacherecorder",level:3},{value:"MS2Cache",id:"ms2cache",level:3},{value:"CheckRoutineIsValid",id:"checkroutineisvalid",level:3},{value:"%OnAfterSave",id:"onaftersave",level:3},{value:"ShowProgress",id:"showprogress",level:3}];function c(e){const t={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"webstressscripts",children:"%WebStress.Scripts"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class %WebStress.Scripts Extends (%Persistent, %XML.Adaptor, %ZEN.DataModel.Adaptor) [ ClassType = persistent, Inheritance = right, Owner = {%Developer}, ProcedureBlock, System = 4 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"These are the recorded scripts that will be played back against the test system"}),"\n",(0,r.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(t.h3,{id:"filetimestamp",children:"FileTimestamp"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter FileTimestamp = "60009,39315";\n'})}),"\n",(0,r.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(t.h3,{id:"originalport",children:"OriginalPort"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property OriginalPort As %String(TRUNCATE = 1) [ InitialExpression = 80 ];\n"})}),"\n",(0,r.jsxs)(t.p,{children:["This is the default port that is used to communicate with the web server. It is assumed to be 80 unless otherwise specified.",(0,r.jsx)(t.br,{}),"\nIt can be overridden by any URL"]}),"\n",(0,r.jsx)(t.h3,{id:"originalserver",children:"OriginalServer"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property OriginalServer As %String(TRUNCATE = 1);\n"})}),"\n",(0,r.jsxs)(t.p,{children:["This is the default web server address that will be used throughout the script.",(0,r.jsx)(t.br,{}),"\nIt is taken from the first URL call.",(0,r.jsx)(t.br,{}),"\nThe reason that we store it is so that it can be retrieved if any of the URLs throughout the script call other web servers",(0,r.jsx)(t.br,{}),"\nwhen it is overridden by that particular URL"]}),"\n",(0,r.jsx)(t.h3,{id:"errorcheck",children:"ErrorCheck"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property ErrorCheck As %String(TRUNCATE = 1);\n"})}),"\n",(0,r.jsxs)(t.p,{children:["The code to call to see if the returned page was an error. This should in the form of a function that returns a zero or non-zero value where zero = no errors and non-zero = errors found",(0,r.jsx)(t.br,{}),"\nExamples:",(0,r.jsx)(t.br,{}),"\n$$IsError^MyScript()",(0,r.jsx)(t.br,{}),"\n##class(User.Script).IsError()"]}),"\n",(0,r.jsx)(t.h3,{id:"name",children:"Name"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property Name As %String(TRUNCATE = 1);\n"})}),"\n",(0,r.jsx)(t.p,{children:"A unique name for this script"}),"\n",(0,r.jsx)(t.h3,{id:"preruncode",children:"PreRunCode"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property PreRunCode As %String(MAXLEN = 256, TRUNCATE = 1);\n"})}),"\n",(0,r.jsxs)(t.p,{children:["The is the code that is executed before each run of the script. It should take the form of a function that returns a zero or non-zero value indicating whether the script can run or not. (Zero = do not run, non-zero = run script)",(0,r.jsx)(t.br,{}),"\nExamples:",(0,r.jsx)(t.br,{}),"\n$$Init^MyScript()",(0,r.jsx)(t.br,{}),"\n##class(User.Script).Init()"]}),"\n",(0,r.jsx)(t.h3,{id:"postruncode",children:"PostRunCode"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property PostRunCode As %String(MAXLEN = 256, TRUNCATE = 1);\n"})}),"\n",(0,r.jsxs)(t.p,{children:["The is the code that is executed at the end of each full script It should take the form of a function that returns a zero or non-zero value indicating whether the script should continue to run or not. (Zero = stop running, non-zero = continue to run the script)",(0,r.jsx)(t.br,{}),"\nExamples:",(0,r.jsx)(t.br,{}),"\n$$AtEnd^MyScript()",(0,r.jsx)(t.br,{}),"\n##class(User.Script).AtEnd()"]}),"\n",(0,r.jsx)(t.h3,{id:"totallengthmins",children:"TotalLengthMins"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property TotalLengthMins As %Numeric [ Calculated, SqlComputeCode = {\tset {TotalLengthMins}=##class(%WebStress.Scripts).GetTotalLengthMins({ID})}, SqlComputed ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"A calculation of how long the script would take to run based upon the delay time between the user's input and the recorded length of time for the server to reply to the request."}),"\n",(0,r.jsx)(t.h3,{id:"urls",children:"URLs"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Relationship URLs As %WebStress.Scripts.URLS [ Cardinality = children, Inverse = Script ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"These are the details of each dialog between the browser and the web server that all go together to form the total script."}),"\n",(0,r.jsx)(t.h3,{id:"recordmethod",children:"RecordMethod"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Property RecordMethod As %String(TRUNCATE = 1) [ InitialExpression = "Manual" ];\n'})}),"\n",(0,r.jsx)(t.p,{children:"This indicates the method used to build this script"}),"\n",(0,r.jsx)(t.h3,{id:"randomisationroutine",children:"RandomisationRoutine"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property RandomisationRoutine As %String(TRUNCATE = 1);\n"})}),"\n",(0,r.jsx)(t.p,{children:"The name of the routine that contains the randomisation code"}),"\n",(0,r.jsx)(t.h3,{id:"randomisationgentime",children:"RandomisationGenTime"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property RandomisationGenTime As %Integer;\n"})}),"\n",(0,r.jsx)(t.p,{children:"The date/time that the randomisation routine was automatically generated"}),"\n",(0,r.jsx)(t.h3,{id:"containscsptoken",children:"ContainsCSPToken"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property ContainsCSPToken As %Boolean;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Indicates whether one or more of the URLs for this script contains a CSPToken (protected/encrypted page)"}),"\n",(0,r.jsx)(t.h3,{id:"recorddatetime",children:"RecordDateTime"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property RecordDateTime As %TimeStamp;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Date and time that this script was recorded"}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"totallengthminsget",children:"TotalLengthMinsGet"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method TotalLengthMinsGet() As %Numeric\n"})}),"\n",(0,r.jsx)(t.h3,{id:"homedirectory",children:"HomeDirectory"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method HomeDirectory() As %String\n"})}),"\n",(0,r.jsx)(t.h3,{id:"gettotallengthmins",children:"GetTotalLengthMins"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTotalLengthMins(id As %String)\n"})}),"\n",(0,r.jsx)(t.h3,{id:"makertn",children:"MakeRtn"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod MakeRtn(scriptid As %Integer, rtnName As %String = "") As %String\n'})}),"\n",(0,r.jsxs)(t.p,{children:["This method can be called to automatically create the base routine for randomisation scripts. It accepts two arguments:",(0,r.jsx)(t.br,{}),'\nscriptid = This is the internal ID number of the script. (Required) rtnname = This is the name of the routine. (Optional). If not present this will default to "Random.Script.',(0,r.jsx)(t.em,{children:"n"}),'"',(0,r.jsx)(t.br,{}),"\nwhere ",(0,r.jsx)(t.em,{children:"n"})," is the ",(0,r.jsx)(t.em,{children:"scriptid"})," number"]}),"\n",(0,r.jsx)(t.h3,{id:"cacherecorder",children:"CacheRecorder"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CacheRecorder(scriptname As %String = "", creatertn As %Integer = 0, rtnname As %String = "", debug As %Boolean = 0) As %String\n'})}),"\n",(0,r.jsxs)(t.p,{children:["Converts the output from a recorded session into a script with associated URLs etc.",(0,r.jsx)(t.br,{}),"\nRequires a script name as a parameter. Note that this is stored in the recorded data after this method has been called meaning that subsequent calls to this method can be left blank and the method will re-use the last supplied name.",(0,r.jsx)(t.br,{}),"\ncreatertn is either 0 (zero) or non-zero indicating whether or not an automatic randomisation base routine is to be created.",(0,r.jsx)(t.br,{}),"\nrtnname specifies the optional routine name if creatrtn is used."]}),"\n",(0,r.jsx)(t.h3,{id:"ms2cache",children:"MS2Cache"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod MS2Cache(defaultnameprefix As %String = "Default_", overwrite As %Boolean = 1) As %String\n'})}),"\n",(0,r.jsxs)(t.p,{children:["Gets data from MS Access and builds our scripts",(0,r.jsx)(t.br,{}),"\nFirst you need to follow these steps:",(0,r.jsx)(t.br,{}),"\n1. Setup a SYSTEM ODBC data source and use the Microsoft Access driver to point to the .mdb file created by the Microsoft tool",(0,r.jsx)(t.br,{}),"\n2. Setup a SQL Gateway to point towards this ODBC data source",(0,r.jsx)(t.br,{}),"\n3. Use the SQL Manager to link to the following tables in the .mdb file:",(0,r.jsx)(t.br,{}),"\n(a) Groups",(0,r.jsx)(t.br,{}),"\n(b) HTTPTransactions",(0,r.jsx)(t.br,{}),"\n(c) Scripts",(0,r.jsx)(t.br,{}),"\nThese 3 steps should create the following classes:",(0,r.jsx)(t.br,{}),"\n(a) %WebStress.WAST.Groups",(0,r.jsx)(t.br,{}),"\n(b) %WebStress.WAST.HTTPTransactions",(0,r.jsx)(t.br,{}),"\n(c) %WebStress.WAST.Scripts",(0,r.jsx)(t.br,{}),"\nNormally the name of the script would come from the .mdb file but a default can be supplied for the cases where the value in the .mdb file is a null string. In this case the name of the script will be the name of the default name prefix and then the group ID number",(0,r.jsx)(t.br,{}),"\nFor example: if defaultnameprefix = \"Default_\" and the group ID is 3 then the name of the script would be 'Default_3'",(0,r.jsx)(t.br,{}),"\nThe overwrite key is used so that you can overcome the problem where MS Access lets two different scripts have the same name. a ' (n)' is added to the end of the script name if overwrite is set to 0",(0,r.jsx)(t.br,{}),'\nFor example the first file might be "Main Test" and the second would be "Main Test (2)"']}),"\n",(0,r.jsx)(t.h3,{id:"checkroutineisvalid",children:"CheckRoutineIsValid"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CheckRoutineIsValid(id As %String) As %Boolean\n"})}),"\n",(0,r.jsx)(t.h3,{id:"onaftersave",children:"%OnAfterSave"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnAfterSave(insert As %Boolean) As %Status [ Private ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"This callback method is invoked by the %Save method to provide notification that the object is being saved. It is called after the object's data has been successfully written to disk."}),"\n",(0,r.jsx)(t.p,{children:"insert will be set to 1 if this object is being saved for the first time."}),"\n",(0,r.jsx)(t.p,{children:"If this method returns an error then the call to %Save will fail."}),"\n",(0,r.jsx)(t.h3,{id:"showprogress",children:"ShowProgress"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ShowProgress(msg)\n"})}),"\n",(0,r.jsx)(t.p,{children:"Used by debug to show what's going on"})]})}function l(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>a,x:()=>o});var r=s(96540);const n={},i=r.createContext(n);function a(e){const t=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:a(e.components),r.createElement(i.Provider,{value:t},e.children)}}}]);