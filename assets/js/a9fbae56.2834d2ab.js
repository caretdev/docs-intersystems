"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[6730],{30689:(e,n,l)=>{l.r(n),l.d(n,{contentTitle:()=>t,default:()=>c,frontMatter:()=>r,toc:()=>s});var i=l(74848),a=l(28453);const r={pagination_prev:null,pagination_next:null},t="INFORMATION.SCHEMA.MLVALIDATIONMETRICS",s=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"ID",id:"id",level:3},{value:"MODELNAME",id:"modelname",level:3},{value:"TRAINEDMODELNAME",id:"trainedmodelname",level:3},{value:"VALIDATIONRUNID",id:"validationrunid",level:3},{value:"VALIDATIONRUNNAME",id:"validationrunname",level:3},{value:"METRICNAME",id:"metricname",level:3},{value:"METRICVALUE",id:"metricvalue",level:3},{value:"TARGETVALUE",id:"targetvalue",level:3},{value:"Methods",id:"methods",level:2},{value:"GetTrainedModelName",id:"gettrainedmodelname",level:3},{value:"GetModelName",id:"getmodelname",level:3},{value:"IsPrivileged",id:"isprivileged",level:3}];function d(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"informationschemamlvalidationmetrics",children:"INFORMATION.SCHEMA.MLVALIDATIONMETRICS"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class INFORMATION.SCHEMA.MLVALIDATIONMETRICS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = ML_VALIDATION_METRICS, StorageStrategy = SQLStorage, System = 4 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Returns one row for each Integrated ML Validation Metric that can be accessed by the current user in the current namespace."}),"\n",(0,i.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(n.h3,{id:"readonly",children:"READONLY"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"id",children:"ID"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property ID As %BigInt [ Internal, Private, Required, SqlColumnNumber = 2, SqlFieldName = ID ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"ID of the Validation Run"}),"\n",(0,i.jsx)(n.h3,{id:"modelname",children:"MODELNAME"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property MODELNAME As %String(MAXLEN = 256) [ SqlColumnNumber = 3, SqlComputeCode = { set {*}=##class(INFORMATION.SCHEMA.MLVALIDATIONMETRICS).GetModelName({VALIDATION_RUN_ID}) }, SqlComputed, SqlComputeOnChange = VALIDATIONRUNID, SqlFieldName = MODEL_NAME, Transient ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Model Name"}),"\n",(0,i.jsx)(n.h3,{id:"trainedmodelname",children:"TRAINEDMODELNAME"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property TRAINEDMODELNAME As %String(MAXLEN = 256) [ SqlColumnNumber = 4, SqlComputeCode = { set {*}=##class(INFORMATION.SCHEMA.MLVALIDATIONMETRICS).GetTrainedModelName({VALIDATION_RUN_ID}) }, SqlComputed, SqlComputeOnChange = VALIDATIONRUNID, SqlFieldName = TRAINED_MODEL_NAME, Transient ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Name of the Trained Model for this Validation Run"}),"\n",(0,i.jsx)(n.h3,{id:"validationrunid",children:"VALIDATIONRUNID"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property VALIDATIONRUNID As %BigInt [ Internal, Private, SqlColumnNumber = 5, SqlFieldName = VALIDATION_RUN_ID ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"ID of the Validation Run"}),"\n",(0,i.jsx)(n.h3,{id:"validationrunname",children:"VALIDATIONRUNNAME"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property VALIDATIONRUNNAME As %String(MAXLEN = 256) [ SqlColumnNumber = 6, SqlComputeCode = { set {*}=$lg($g(^IRIS.ML.ValidationRunD({VALIDATION_RUN_ID}),$lb(,,"UNKNOWN>")),3) }, SqlComputed, SqlComputeOnChange = VALIDATIONRUNID, SqlFieldName = VALIDATION_RUN_NAME, Transient ];\n'})}),"\n",(0,i.jsx)(n.p,{children:"Name of the Validation Run"}),"\n",(0,i.jsx)(n.h3,{id:"metricname",children:"METRICNAME"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property METRICNAME As %String(MAXLEN = 200) [ SqlColumnNumber = 7, SqlFieldName = METRIC_NAME ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Validation Metric Name"}),"\n",(0,i.jsx)(n.h3,{id:"metricvalue",children:"METRICVALUE"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property METRICVALUE As %Numeric [ SqlColumnNumber = 8, SqlFieldName = METRIC_VALUE ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Validation Metric Value"}),"\n",(0,i.jsx)(n.h3,{id:"targetvalue",children:"TARGETVALUE"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property TARGETVALUE As %String(MAXLEN = 2000) [ SqlColumnNumber = 9, SqlFieldName = TARGET_VALUE ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Validation Target Value"}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"gettrainedmodelname",children:"GetTrainedModelName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetTrainedModelName(id As %BigInt) As %String [ Final, Internal, Language = objectscript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Given the %ML.ValidationRun ID, return the Trained Model Name"}),"\n",(0,i.jsx)(n.h3,{id:"getmodelname",children:"GetModelName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetModelName(id As %BigInt) As %String [ Final, Internal, Language = objectscript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Given the %ML.ValidationRun ID, return the model name"}),"\n",(0,i.jsx)(n.h3,{id:"isprivileged",children:"IsPrivileged"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod IsPrivileged(id As %BigInt) As %String [ Final, Internal, Language = objectscript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Given the Validation Metric ID, is the user privileged to see this Validation Metrics info? We make sure the user is privileged on the Validation Run query"})]})}function c(e={}){const{wrapper:n}={...(0,a.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(d,{...e})}):d(e)}},28453:(e,n,l)=>{l.d(n,{R:()=>t,x:()=>s});var i=l(96540);const a={},r=i.createContext(a);function t(e){const n=i.useContext(r);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function s(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:t(e.components),i.createElement(r.Provider,{value:n},e.children)}}}]);