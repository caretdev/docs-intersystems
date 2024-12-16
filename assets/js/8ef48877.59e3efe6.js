"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[57510],{90956:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>c,default:()=>l,frontMatter:()=>i,toc:()=>a});var r=s(74848),n=s(28453);const i={pagination_prev:null,pagination_next:null},c="%UnitTest.TestScript",a=[{value:"Parameters",id:"parameters",level:2},{value:"TESTFILE;",id:"testfile",level:3},{value:"UNORDEREDFILESAME",id:"unorderedfilesame",level:3},{value:"Methods",id:"methods",level:2},{value:"TestRunScript",id:"testrunscript",level:3},{value:"runScript",id:"runscript",level:3}];function o(e){const t={code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"unittesttestscript",children:"%UnitTest.TestScript"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class %UnitTest.TestScript Extends %UnitTest.TestCase [ System = 3 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"This class is an example of extending the TestCase class for your own testing needs. It provides the TestRunScript method, which replays the script specified in the TESTFILE parameter, comparing it to a reference log of expected output."}),"\n",(0,r.jsxs)(t.p,{children:['To use this class for your tests, write a subclass that implements the runScript method to read a script and generate repeatable output. Pass the string "reference" as the ',(0,r.jsx)(t.strong,{children:"userparam"})," parameter to the ",(0,r.jsx)(t.strong,{children:"RunTest"})," method to record the expected output to reference.log: ",(0,r.jsx)(t.code,{children:'d ##class(%UnitTest.Manager).RunTest("example\\suite",,"reference")'})," In subsequent runs, call ",(0,r.jsx)(t.strong,{children:"RunTest"}),' without "reference" to compare the output to reference.log: ',(0,r.jsx)(t.code,{children:'d ##class(%UnitTest.Manager).RunTest("example\\suite")'})," See the TestCacheScript and TestSqlScript classes for examples."]}),"\n",(0,r.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(t.h3,{id:"testfile",children:"TESTFILE;"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter TESTFILE;\n"})}),"\n",(0,r.jsx)(t.p,{children:"File that contains the test steps, in a format determined by the runScript method."}),"\n",(0,r.jsx)(t.h3,{id:"unorderedfilesame",children:"UNORDEREDFILESAME"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter UNORDEREDFILESAME = 0;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Set to 1 to call $$$AssertFilesSQLUnorderedSame rather than $$$AssertFilesSame"}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"testrunscript",children:"TestRunScript"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method TestRunScript()\n"})}),"\n",(0,r.jsxs)(t.p,{children:["This method, which is run automatically by %UnitTest.Manager, calls the implementation of runScript supplied by a subclass. If the TESTFILE parameter is not specified, it uses ",(0,r.jsx)(t.em,{children:"script.txt"}),"."]}),"\n",(0,r.jsx)(t.p,{children:'When the "reference" parameter is specified, it writes expected output to reference.log. Otherwise, it compares the output to reference.log using $$$AssertFilesSame (or $$$AssertFilesSQLUnorderedSame if the UNORDEREDFILESAME parameter is set).'}),"\n",(0,r.jsx)(t.h3,{id:"runscript",children:"runScript"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod runScript(scriptfile As %String, outputfile As %String) [ Abstract ]\n"})}),"\n",(0,r.jsxs)(t.p,{children:["Override this method with an implementation that reads from ",(0,r.jsx)(t.strong,{children:"scriptfile"}),", writing the output to ",(0,r.jsx)(t.strong,{children:"outputfile"}),". The output should be repeatable for a given script; not dependent on, e.g., the time or the system under test."]})]})}function l(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>c,x:()=>a});var r=s(96540);const n={},i=r.createContext(n);function c(e){const t=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:c(e.components),r.createElement(i.Provider,{value:t},e.children)}}}]);