"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[80945],{92693:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>l,default:()=>d,frontMatter:()=>a,toc:()=>r});var n=s(74848),o=s(28453);const a={pagination_prev:null,pagination_next:null},l="%iKnow.Classification.Utils",r=[{value:"Methods",id:"methods",level:2},{value:"%RunModelFromResultSet",id:"runmodelfromresultset",level:3},{value:"%RunModelFromSQL",id:"runmodelfromsql",level:3},{value:"%RunModelFromDomain",id:"runmodelfromdomain",level:3}];function i(e){const t={a:"a",br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,o.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"iknowclassificationutils",children:"%iKnow.Classification.Utils"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Classification.Utils [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the ",(0,n.jsx)(t.a,{href:"https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW",children:"product documentation"})," for more detail."]}),"\n",(0,n.jsx)(t.p,{children:"This class bundles a number of methods for validating Text Classifiers against existing data."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"runmodelfromresultset",children:"%RunModelFromResultSet"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %RunModelFromResultSet(ByRef pResultsId As %Integer, pDefinitionClass As %String, pResultSet As %ResultSet, ByRef pFieldMap, pResultsClass As %String = "%DeepSee.PMML.Utils.TempResult", pTracking As %Boolean = 0) As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Validates a Text Classifier against all records returned by a custom ResultSet, looping through the rows and checking the model outcome against the actual value found in the query result. The ResultSet should either return columns named _Text and _Category containing the text to categorize and the actual category value, or a mapping from these mandatory fields to the column names should be provided through pFieldMap."}),"\n",(0,n.jsxs)(t.p,{children:["Use pResultsClass to define the class (subclass of %DeepSee.PMML.Utils.Result) the results of this batch run will be written to. This defaults to %DeepSee.PMML.Utils.TempResult, which stores its data in a temporary global and therefore gets purged upon restarting the instance.",(0,n.jsx)(t.br,{}),"\nResults will be stored with their TestId property set to the value of pResultsId if a nonzero, non-null value is provided, or call the GetNewTestId() method of pResultsClass to generate a new one.",(0,n.jsx)(t.br,{}),"\nIf pTracking is true, progress information will be written to ^IRIS.Temp.PMML.BgrTask($job), so this method can be run in the background and tracked by a UI."]}),"\n",(0,n.jsx)(t.h3,{id:"runmodelfromsql",children:"%RunModelFromSQL"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %RunModelFromSQL(ByRef pResultsId As %Integer, pDefinitionClass As %String, pSQL As %String, ByRef pFieldMap, ByRef pSQLParams, pResultsClass As %String = "%DeepSee.PMML.Utils.TempResult", pTracking As %Boolean = 0) As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Validates a Text Classifier against all records returned by a user-supplied SQL query, looping through the rows and checking the model outcome against the actual value found in the query result. The SQL query should either return columns named _Text and _Category containing the text to categorize and the actual category value, or a mapping from these mandatory fields to the column names should be provided through pFieldMap."}),"\n",(0,n.jsxs)(t.p,{children:["Use pResultsClass to define the class (subclass of %DeepSee.PMML.Utils.Result) the results of this batch run will be written to. This defaults to %DeepSee.PMML.Utils.TempResult, which stores its data in the Temp databsae and therefore gets purged upon restarting the instance.",(0,n.jsx)(t.br,{}),"\nResults will be stored with their TestId property set to the value of pResultsId if a nonzero, non-null value is provided, or call the GetNewTestId() method of pResultsClass to generate a new one.",(0,n.jsx)(t.br,{}),"\nIf pTracking is true, progress information will be written to ^IRIS.Temp.PMML.BgrTask($job), so this method can be run in the background and tracked by a UI."]}),"\n",(0,n.jsx)(t.h3,{id:"runmodelfromdomain",children:"%RunModelFromDomain"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %RunModelFromDomain(ByRef pResultsId As %Integer, pDefinitionClass As %String, pDomainId As %Integer, pMetadataField As %String, pFilter As %iKnow.Filters.Filter = "", pResultsClass As %String = "%DeepSee.PMML.Utils.TempResult", pTracking As %Boolean = 0, pKeepScoreForClass As %String = "1") As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Validates a Text Classifier against all sources in a domain, optionally filtered through a %iKnow.Filters.Filter filter object pFilter, checking the model outcome against the actual value found in the metadata field named pMetadataField."}),"\n",(0,n.jsxs)(t.p,{children:["Use pResultsClass to define the class (subclass of %DeepSee.PMML.Utils.Result) the results of this batch run will be written to. This defaults to %DeepSee.PMML.Utils.TempResult, which stores its data in the Temp database and therefore gets purged upon restarting the instance.",(0,n.jsx)(t.br,{}),"\nResults will be stored with their TestId property set to the value of pResultsId if a nonzero, non-null value is provided, or call the GetNewTestId() method of pResultsClass to generate a new one.",(0,n.jsx)(t.br,{}),"\nIf pTracking is true, progress information will be written to ^IRIS.Temp.PMML.BgrTask($job), so this method can be run in the background and tracked by a UI."]})]})}function d(e={}){const{wrapper:t}={...(0,o.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(i,{...e})}):i(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>l,x:()=>r});var n=s(96540);const o={},a=n.createContext(o);function l(e){const t=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function r(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:l(e.components),n.createElement(a.Provider,{value:t},e.children)}}}]);