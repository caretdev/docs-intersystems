"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[22744],{31481:(e,n,r)=>{r.r(n),r.d(n,{contentTitle:()=>s,default:()=>d,frontMatter:()=>l,toc:()=>a});var i=r(74848),t=r(28453);const l={pagination_prev:null,pagination_next:null},s="INFORMATION.SCHEMA.MLTRAININGRUNS",a=[{value:"Parameters",id:"parameters",level:2},{value:"READONLY",id:"readonly",level:3},{value:"Properties",id:"properties",level:2},{value:"ID",id:"id",level:3},{value:"MODELNAME",id:"modelname",level:3},{value:"TRAININGRUNNAME",id:"trainingrunname",level:3},{value:"PROVIDER",id:"provider",level:3},{value:"STARTTIMESTAMP",id:"starttimestamp",level:3},{value:"COMPLETEDTIMESTAMP",id:"completedtimestamp",level:3},{value:"TRAININGDURATION",id:"trainingduration",level:3},{value:"RUNSTATUS",id:"runstatus",level:3},{value:"STATUSCODE",id:"statuscode",level:3},{value:"LOG",id:"log",level:3},{value:"SETTINGS",id:"settings",level:3},{value:"MLCONFIGURATIONAME",id:"mlconfigurationame",level:3},{value:"TRAININGRUNQUERY",id:"trainingrunquery",level:3},{value:"Methods",id:"methods",level:2},{value:"GetSettings",id:"getsettings",level:3},{value:"GetMLConfigurationName",id:"getmlconfigurationname",level:3},{value:"GetModelName",id:"getmodelname",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"informationschemamltrainingruns",children:"INFORMATION.SCHEMA.MLTRAININGRUNS"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class INFORMATION.SCHEMA.MLTRAININGRUNS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = ML_TRAINING_RUNS, StorageStrategy = SQLStorage, System = 4 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Returns one row for each Integrated ML Training Run that can be accessed by the current user in the current namespace."}),"\n",(0,i.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(n.h3,{id:"readonly",children:"READONLY"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter READONLY = 1;\n"})}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"id",children:"ID"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property ID As %BigInt [ Internal, Private, Required, SqlColumnNumber = 2, SqlFieldName = ID ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"ID of the Training Run"}),"\n",(0,i.jsx)(n.h3,{id:"modelname",children:"MODELNAME"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property MODELNAME As %String(MAXLEN = 256) [ Required, SqlColumnNumber = 3, SqlFieldName = MODEL_NAME ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Name of the model that was trained"}),"\n",(0,i.jsx)(n.h3,{id:"trainingrunname",children:"TRAININGRUNNAME"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property TRAININGRUNNAME As %String(MAXLEN = 256) [ SqlColumnNumber = 4, SqlFieldName = TRAINING_RUN_NAME ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Name of the Training Run, same as the name for the corresponding Trained Model"}),"\n",(0,i.jsx)(n.h3,{id:"provider",children:"PROVIDER"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property PROVIDER As %String(MAXLEN = 128) [ SqlColumnNumber = 5, SqlFieldName = PROVIDER ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Provider used with Training Run"}),"\n",(0,i.jsx)(n.h3,{id:"starttimestamp",children:"STARTTIMESTAMP"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property STARTTIMESTAMP As %TimeStamp [ Required, SqlColumnNumber = 6, SqlFieldName = START_TIMESTAMP ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Timestamp for when the Training Run began (UTC)"}),"\n",(0,i.jsx)(n.h3,{id:"completedtimestamp",children:"COMPLETEDTIMESTAMP"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property COMPLETEDTIMESTAMP As %TimeStamp [ Required, SqlColumnNumber = 7, SqlFieldName = COMPLETED_TIMESTAMP ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Timestamp for when the Training Run completed (UTC)"}),"\n",(0,i.jsx)(n.h3,{id:"trainingduration",children:"TRAININGDURATION"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property TRAININGDURATION As %Numeric [ SqlColumnNumber = 8, SqlComputeCode = { Set {*}=##class(%ML.TrainingRun).GetInterval({START_TIMESTAMP},{COMPLETED_TIMESTAMP}) }, SqlComputed, SqlFieldName = TRAINING_DURATION, Transient ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Training duration (in seconds)"}),"\n",(0,i.jsx)(n.h3,{id:"runstatus",children:"RUNSTATUS"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property RUNSTATUS As %String(DISPLAYLIST = ",Training,Completed,Failed,Canceled/Terminated", VALUELIST = ",training,completed,failed,canceled/terminated") [ SqlColumnNumber = 9, SqlComputeCode = {\n'})}),"\n",(0,i.jsx)(n.p,{children:'Training status RunStatus = "Training" means the model is currently being trained RunStatus = "Completed" means the model was trained without error RunStatus = "Failed" means the training of the model encountered an error RunStatus = "Canceled/Terminated" means the process executing the train statement was terminated, possibly by the Cancel button in the Execute Query window in the SMP.'}),"\n",(0,i.jsx)(n.h3,{id:"statuscode",children:"STATUSCODE"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property STATUSCODE As %Status [ SqlColumnNumber = 10, SqlFieldName = STATUS_CODE ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Training error (if encountered)"}),"\n",(0,i.jsx)(n.h3,{id:"log",children:"LOG"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property LOG As %Stream.GlobalCharacter [ SqlColumnNumber = 11, SqlFieldName = LOG ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Training log output"}),"\n",(0,i.jsx)(n.h3,{id:"settings",children:"SETTINGS"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property SETTINGS As %String(MAXLEN = "") [ SqlColumnNumber = 12, SqlComputeCode = { Set {*}=##class(INFORMATION.SCHEMA.MLTRAININGRUNS).GetSettings({ID}) }, SqlComputed, SqlFieldName = SETTINGS, Transient ];\n'})}),"\n",(0,i.jsx)(n.p,{children:"Settings String for this training run"}),"\n",(0,i.jsx)(n.h3,{id:"mlconfigurationame",children:"MLCONFIGURATIONAME"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property MLCONFIGURATIONAME As %SYS.ML.Configuration [ SqlColumnNumber = 13, SqlFieldName = ML_CONFIGURATION_NAME ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"ML Configuration for this training run"}),"\n",(0,i.jsx)(n.h3,{id:"trainingrunquery",children:"TRAININGRUNQUERY"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Property TRAININGRUNQUERY As %String(MAXLEN = 32000) [ SqlColumnNumber = 14, SqlFieldName = TRAINING_RUN_QUERY ];\n"})}),"\n",(0,i.jsx)(n.p,{children:"Training Run query (SQL)"}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"getsettings",children:"GetSettings"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetSettings(id As %BigInt) As %String [ Final, Internal, Language = objectscript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Given a ML_TRAINING_RUN ID, get the display string for the %ML.TrainingRun.Settings"}),"\n",(0,i.jsx)(n.h3,{id:"getmlconfigurationname",children:"GetMLConfigurationName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetMLConfigurationName(id As %BigInt) As %String [ Final, Internal, Language = objectscript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Given the Training Run ID, return the %SYS.ML.Configuration Name"}),"\n",(0,i.jsx)(n.h3,{id:"getmodelname",children:"GetModelName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetModelName(id As %BigInt) As %String [ Final, Internal, Language = objectscript ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Given the Training Run ID, return the Model Name"})]})}function d(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(c,{...e})}):c(e)}},28453:(e,n,r)=>{r.d(n,{R:()=>s,x:()=>a});var i=r(96540);const t={},l=i.createContext(t);function s(e){const n=i.useContext(l);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:s(e.components),i.createElement(l.Provider,{value:n},e.children)}}}]);