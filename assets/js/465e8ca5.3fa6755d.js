"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[21326],{68174:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>a,default:()=>d,frontMatter:()=>l,toc:()=>r});var n=t(74848),i=t(28453);const l={pagination_prev:null,pagination_next:null},a="%UnitTest.SQLRegression",r=[{value:"Parameters",id:"parameters",level:2},{value:"TESTFILE",id:"testfile",level:3},{value:"SQLFILE",id:"sqlfile",level:3},{value:"REFFILE",id:"reffile",level:3},{value:"SHOWPLAN",id:"showplan",level:3},{value:"DISPLAYTESTNAME",id:"displaytestname",level:3},{value:"TIMESCALE",id:"timescale",level:3},{value:"DISPLAYELAPSEDTIME",id:"displayelapsedtime",level:3},{value:"DISPLAYSECONDS",id:"displayseconds",level:3},{value:"Methods",id:"methods",level:2},{value:"OnBeforeEachTest",id:"onbeforeeachtest",level:3},{value:"OnAfterEachTest",id:"onaftereachtest",level:3},{value:"OnBeforeSqlFile",id:"onbeforesqlfile",level:3},{value:"OnAfterSqlFile",id:"onaftersqlfile",level:3},{value:"processDiffFile",id:"processdifffile",level:3},{value:"TestDynamic",id:"testdynamic",level:3},{value:"TestEmbedded",id:"testembedded",level:3},{value:"TestODBC",id:"testodbc",level:3},{value:"TestJDBC",id:"testjdbc",level:3},{value:"verifyResults",id:"verifyresults",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,i.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"unittestsqlregression",children:"%UnitTest.SQLRegression"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %UnitTest.SQLRegression Extends %UnitTest.TestCase [ Inheritance = right, System = 4 ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Extends ",(0,n.jsx)(s.strong,{children:"TestCase"}),". Extend from this class to create a regression test"]}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"testfile",children:"TESTFILE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter TESTFILE As STRING;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Specifies the xml file running the test so it's not reloaded"}),"\n",(0,n.jsx)(s.h3,{id:"sqlfile",children:"SQLFILE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SQLFILE As STRING;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Comma-delimited sql filenames overrides the sql file lookup by specifying which and in which order sql script files are to be tested"}),"\n",(0,n.jsx)(s.h3,{id:"reffile",children:"REFFILE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter REFFILE As STRING = "reference.log";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Specifies a result file for comparison use"}),"\n",(0,n.jsx)(s.h3,{id:"showplan",children:"SHOWPLAN"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SHOWPLAN As BOOLEAN = 0;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Set SHOWPLAN=1 to dump the access plans used by each test in the test script. Use this feature when you need to verify plan stability from one release to the next, or when you want to investigate the impact of creating, dropping, or altering an index. Boolean value specifies if comparing sql plan should be executed. Reference plan must exist in REFFILE. Dynamic Sql Plan created in Dynamic SQL test only."}),"\n",(0,n.jsx)(s.h3,{id:"displaytestname",children:"DISPLAYTESTNAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DISPLAYTESTNAME = "Test ";\n'})}),"\n",(0,n.jsx)(s.p,{children:"DISPLAYTESTNAME enables you to internationalize the display of the test name, which may be specified after the #### delimiter in the test file, when TIMESCALE is a positive number."}),"\n",(0,n.jsx)(s.h3,{id:"timescale",children:"TIMESCALE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter TIMESCALE = 0;\n"})}),"\n",(0,n.jsx)(s.p,{children:'The TIMESCALE parameter enables you to control whether elapsed time information is displayed for each SQL statement, and the number of significant digits used to display the time. This can be used to determine whether significant differences in elapsed time are consumed by any individual query. By default, TIMESCALE="", which will prevent elapsed time information from being displayed at the end of each SQL statement in the test. Setting DISPLAYSECONDS to 1 will display the result in seconds. Setting DISPLAYSECONDS to 10 will display elapsed time in multiples of 10 seconds. Setting TIMESCALE to 0.1 will display elapsed time to the nearest tenth second. By grouping together a set of tests that each take about the same amount of time you can automate the process of determining if any query takes "significantly" more or less time than it did previously.'}),"\n",(0,n.jsx)(s.h3,{id:"displayelapsedtime",children:"DISPLAYELAPSEDTIME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DISPLAYELAPSEDTIME = " executed and fetched in ";\n'})}),"\n",(0,n.jsx)(s.p,{children:"DISPLAYELAPSEDTIME enables you to internationalize the display of elapsed time, when TIMESCALE is a positive number."}),"\n",(0,n.jsx)(s.h3,{id:"displayseconds",children:"DISPLAYSECONDS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DISPLAYSECONDS = "seconds";\n'})}),"\n",(0,n.jsx)(s.p,{children:'DISPLAYSECONDS enables you to internationalize the spelling of "seconds" in the output of elapsed time when TIMESCALE is a positive number.'}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onbeforeeachtest",children:"OnBeforeEachTest"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnBeforeEachTest() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Method to clean up before each Test method is executed."}),"\n",(0,n.jsx)(s.h3,{id:"onaftereachtest",children:"OnAfterEachTest"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnAfterEachTest() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Method to clean up after each Test method is executed."}),"\n",(0,n.jsx)(s.h3,{id:"onbeforesqlfile",children:"OnBeforeSqlFile"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnBeforeSqlFile(sqlfile As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Method available to do any work before a Sql File begins execution."}),"\n",(0,n.jsx)(s.h3,{id:"onaftersqlfile",children:"OnAfterSqlFile"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnAfterSqlFile(sqlfile As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Method available to do any work after a Sql File has finished execution."}),"\n",(0,n.jsx)(s.h3,{id:"processdifffile",children:"processDiffFile"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method processDiffFile(ByRef rslt As %Stream)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Method to display incorrect results in a more readable format."}),"\n",(0,n.jsx)(s.h3,{id:"testdynamic",children:"TestDynamic"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method TestDynamic()\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test each line of SQL from SQLFILE using dynamic SQL. If no REFFILE exists, it will be created from the dynamic results and that file will serve as the correct test results. It is up to the test creator to confirm that the expected test results are correct."}),"\n",(0,n.jsx)(s.h3,{id:"testembedded",children:"TestEmbedded"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method TestEmbedded()\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test each line of SQL from SQLFILE using embedded SQL."}),"\n",(0,n.jsx)(s.h3,{id:"testodbc",children:"TestODBC"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method TestODBC()\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test each line of SQL from SQLFILE using an ODBC SQL Gateway connection. Requires the existence of the User namespace DSN provided with InterSystems IRIS."}),"\n",(0,n.jsx)(s.h3,{id:"testjdbc",children:"TestJDBC"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method TestJDBC()\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test each line of SQL from SQLFILE using a JDBC SQL Gateway connection."}),"\n",(0,n.jsx)(s.h3,{id:"verifyresults",children:"verifyResults"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method verifyResults(ByRef src As %FileCharacterStream, testName As %String = "") As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Compare dynamic results src against existing reference file"})]})}function d(e={}){const{wrapper:s}={...(0,i.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>a,x:()=>r});var n=t(96540);const i={},l=n.createContext(i);function a(e){const s=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),n.createElement(l.Provider,{value:s},e.children)}}}]);