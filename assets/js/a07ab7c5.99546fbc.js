"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[68741],{76010:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>d,frontMatter:()=>c,toc:()=>o});var s=n(74848),r=n(28453);const c={pagination_prev:null,pagination_next:null},i="%UnitTest.TestCacheScript",o=[{value:"Methods",id:"methods",level:2},{value:"runScript",id:"runscript",level:3}];function l(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"unittesttestcachescript",children:"%UnitTest.TestCacheScript"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %UnitTest.TestCacheScript Extends %UnitTest.TestScript [ System = 3 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Extends ",(0,s.jsx)(t.strong,{children:"TestScript"}),". Adds methods to test ObjectScript code."]}),"\n",(0,s.jsxs)(t.p,{children:["This class compares a file called ",(0,s.jsx)(t.strong,{children:"output.log"})," to a file called ",(0,s.jsx)(t.strong,{children:"reference.log"}),"."]}),"\n",(0,s.jsxs)(t.ol,{children:["\n",(0,s.jsxs)(t.li,{children:["Create a new class that extends ",(0,s.jsx)(t.strong,{children:"TestCacheScript"})," called, for example, ",(0,s.jsx)(t.strong,{children:"TestCacheScriptX"})," and export it to your test directory."]}),"\n",(0,s.jsxs)(t.li,{children:["Create a file called ",(0,s.jsx)(t.strong,{children:"script.txt"})," in your test directory, containing ObjectScript code you want to test. Here's an example:",(0,s.jsx)(t.br,{}),'\nw "abc" w $p("abc,xyz",",",Z)']}),"\n",(0,s.jsx)(t.li,{children:"Run the test."}),"\n"]}),"\n",(0,s.jsx)(t.p,{children:(0,s.jsx)(t.code,{children:' d ##class(%UnitTest.Manager).RunTest("dirname",,"reference")'})}),"\n",(0,s.jsxs)(t.p,{children:["Each line of code in ",(0,s.jsx)(t.strong,{children:"script.txt"})," is executed and command output is written to ",(0,s.jsx)(t.strong,{children:"reference.log"})," until the end of file in ",(0,s.jsx)(t.strong,{children:"script.txt"})," is reached. The first time that you run the test, set the third argument as ",(0,s.jsx)(t.strong,{children:'"reference"'})," (lowercase and in double quotes) to create a ",(0,s.jsx)(t.strong,{children:"reference.log"})," file. (Use ",(0,s.jsx)(t.strong,{children:'"screen"'})," as the third argument to display output on the screen.) Check that the contents of new ",(0,s.jsx)(t.strong,{children:"reference.log"})," file are correct.\n4. Run the test again"]}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.code,{children:' d ##class(%UnitTest.Manager).RunTest("dirname")'}),"\nEvery time you run your test the new output is written to ",(0,s.jsx)(t.strong,{children:"output.log"}),". ",(0,s.jsx)(t.strong,{children:"output.log"})," is compared to ",(0,s.jsx)(t.strong,{children:"reference.log"}),". If the files match, the test passes. If the files do not match, the test fails. If the output changes, you need to update the ",(0,s.jsx)(t.strong,{children:"reference.log"})," file. Note that, in Intersystems, the default test directory is ",(0,s.jsx)(t.strong,{children:"U:/internal/testing/unit_tests"})]}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"runscript",children:"runScript"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod runScript(scriptfile As %String, outputfile As %String)\n"})})]})}function d(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>o});var s=n(96540);const r={},c=s.createContext(r);function i(e){const t=s.useContext(c);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),s.createElement(c.Provider,{value:t},e.children)}}}]);