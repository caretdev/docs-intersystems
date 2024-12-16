"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[75250],{29390:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>c,frontMatter:()=>n,toc:()=>i});var l=s(74848),a=s(28453);const n={pagination_prev:null,pagination_next:null},r="%DeepSee.PMML.Dataset.Table",i=[{value:"Properties",id:"properties",level:2},{value:"TempTable",id:"temptable",level:3},{value:"TempTableClass",id:"temptableclass",level:3},{value:"Methods",id:"methods",level:2},{value:"SetFields",id:"setfields",level:3},{value:"CreateTempTable",id:"createtemptable",level:3},{value:"LoadTempTable",id:"loadtemptable",level:3},{value:"Get1DDistribution",id:"get1ddistribution",level:3},{value:"GetSqlFrom",id:"getsqlfrom",level:3},{value:"GetSqlWhere",id:"getsqlwhere",level:3},{value:"Clear",id:"clear",level:3},{value:"GetBootstrapInfo",id:"getbootstrapinfo",level:3},{value:"GetXDDistribution",id:"getxddistribution",level:3},{value:"GetValueCount",id:"getvaluecount",level:3},{value:"GetRecordIds",id:"getrecordids",level:3},{value:"GetAggregatesByCategory",id:"getaggregatesbycategory",level:3},{value:"GetAsResultSet",id:"getasresultset",level:3}];function d(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(t.header,{children:(0,l.jsx)(t.h1,{id:"deepseepmmldatasettable",children:"%DeepSee.PMML.Dataset.Table"})}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.PMML.Dataset.Table Extends %DeepSee.PMML.Dataset.Base [ Abstract, System = 4 ]\n"})}),"\n",(0,l.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(t.h3,{id:"temptable",children:"TempTable"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Property TempTable As %String;\n"})}),"\n",(0,l.jsx)(t.h3,{id:"temptableclass",children:"TempTableClass"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Property TempTableClass As %String [ Private ];\n"})}),"\n",(0,l.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(t.h3,{id:"setfields",children:"SetFields"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetFields(ByRef pFields, pIdColumn As %String, pMetadata) As %Status\n"})}),"\n",(0,l.jsx)(t.h3,{id:"createtemptable",children:"CreateTempTable"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method CreateTempTable(ByRef pClassName, ByRef pIndexFields As %Boolean = 1) As %Status\n"})}),"\n",(0,l.jsx)(t.p,{children:"Use pIndexFields to switch indices for all fields on or off Use pIndexFields(fieldName) = indexType to override the default of bitmap indices for categorical and ordinal fields and normal indices for continuous fields."}),"\n",(0,l.jsx)(t.h3,{id:"loadtemptable",children:"LoadTempTable"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method LoadTempTable() As %Status [ Abstract, Private ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"get1ddistribution",children:"Get1DDistribution"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method Get1DDistribution(pField As %String, Output pDistribution, ByRef pFilters) As %Status\n"})}),"\n",(0,l.jsx)(t.p,{children:'accepts pFilters(n) = $lb(field, operator, key) returns: pDistribution("total") = tTotalCount pDistribution(n) = $lb(value, count)'}),"\n",(0,l.jsx)(t.h3,{id:"getsqlfrom",children:"GetSqlFrom"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSqlFrom() As %String [ Private ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"getsqlwhere",children:"GetSqlWhere"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSqlWhere(ByRef pFilters, Output pSC As %Status) As %String [ Private ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"clear",children:"Clear"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method Clear() As %Status\n"})}),"\n",(0,l.jsx)(t.p,{children:"Clears all temporary structures created by this object. The dataset should remain usable after calling this method!"}),"\n",(0,l.jsx)(t.h3,{id:"getbootstrapinfo",children:"GetBootstrapInfo"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetBootstrapInfo(Output pSQL As %String, Output pFields As %ArrayOfObjects) As %Status [ Internal, Private ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"getxddistribution",children:"GetXDDistribution"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetXDDistribution(pFields As %List, Output pDistribution, ByRef pFilters) As %Status\n"})}),"\n",(0,l.jsx)(t.p,{children:'accepts pFilters(n) = $lb(field, operator, key) returns: pDistribution = $lb(dim1Count, dim2Count, ...) pDistribution("total") = total pDistribution("value", dim, i) = value pDistribution(i, j, ...) = tCount'}),"\n",(0,l.jsx)(t.h3,{id:"getvaluecount",children:"GetValueCount"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetValueCount(pField As %String, pIncludeNull As %Boolean = 1, ByRef pFilters, Output pSC As %Status) As %Integer\n"})}),"\n",(0,l.jsx)(t.h3,{id:"getrecordids",children:"GetRecordIds"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetRecordIds(Output pRecordIds, ByRef pFilters) As %Status\n"})}),"\n",(0,l.jsx)(t.p,{children:"returns pIds(n) = rowid"}),"\n",(0,l.jsx)(t.h3,{id:"getaggregatesbycategory",children:"GetAggregatesByCategory"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetAggregatesByCategory(pContField As %String, pCatField As %String, Output pAggregates, ByRef pFilters) As %Status\n"})}),"\n",(0,l.jsx)(t.p,{children:"Returns an array listing aggregate values for a continuous field pContField for each value of a categorical field pCatField. accepts pFilters(n) = $lb(field, operator, key) returns: pAggregates(n) = $lb(category value, count, average, sum, max, min, countNonNull)"}),"\n",(0,l.jsx)(t.h3,{id:"getasresultset",children:"GetAsResultSet"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetAsResultSet(pFields As %List, Output pResultSet As %SQL.StatementResult, ByRef pFilters) As %Status [ Internal ]\n"})})]})}function c(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,l.jsx)(t,{...e,children:(0,l.jsx)(d,{...e})}):d(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>i});var l=s(96540);const a={},n=l.createContext(a);function r(e){const t=l.useContext(n);return l.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),l.createElement(n.Provider,{value:t},e.children)}}}]);