"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[48804],{30875:(e,n,i)=>{i.r(n),i.d(n,{contentTitle:()=>a,default:()=>c,frontMatter:()=>t,toc:()=>l});var r=i(74848),s=i(28453);const t={pagination_prev:null,pagination_next:null},a="%ML.TrainingRun",l=[{value:"Properties",id:"properties",level:2},{value:"Model",id:"model",level:3},{value:"Name",id:"name",level:3},{value:"Provider",id:"provider",level:3},{value:"StartedAt",id:"startedat",level:3},{value:"CompletedAt",id:"completedat",level:3},{value:"TrainingDuration",id:"trainingduration",level:3},{value:"TrainingQuery",id:"trainingquery",level:3},{value:"RunStatus",id:"runstatus",level:3},{value:"StatusCode",id:"statuscode",level:3},{value:"Log",id:"log",level:3},{value:"Settings",id:"settings",level:3},{value:"Configuration",id:"configuration",level:3},{value:"TrainingRunLocked",id:"trainingrunlocked",level:3},{value:"PID",id:"pid",level:3},{value:"Methods",id:"methods",level:2},{value:"GetInterval",id:"getinterval",level:3},{value:"GetTrainingRunName",id:"gettrainingrunname",level:3},{value:"LogMsg",id:"logmsg",level:3},{value:"%Dump",id:"dump",level:3}];function d(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"mltrainingrun",children:"%ML.TrainingRun"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ML.TrainingRun Extends %Persistent [ ClassType = persistent, System = 4 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"A model training run"}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"model",children:"Model"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Model As %ML.Model [ Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Model we are training with"}),"\n",(0,r.jsx)(n.h3,{id:"name",children:"Name"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property Name As %String(MAXLEN = 275) [ Required, SqlComputeCode = {if {Name}="" { set {*}=##class(%ML.TrainingRun).GetTrainingRunName({Model}) }}, SqlComputed, SqlComputeOnChange = %%INSERT ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"Training Run name, same as the name for the cooresponding Trained Model"}),"\n",(0,r.jsx)(n.h3,{id:"provider",children:"Provider"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Provider As %String(MAXLEN = 128) [ Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"ML Provider that did the training"}),"\n",(0,r.jsx)(n.h3,{id:"startedat",children:"StartedAt"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property StartedAt As %TimeStamp [ InitialExpression = {$ZDATETIME($ZTIMESTAMP,3,1,3)}, Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Time started (UTC)"}),"\n",(0,r.jsx)(n.h3,{id:"completedat",children:"CompletedAt"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property CompletedAt As %TimeStamp;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Time completed (UTC)"}),"\n",(0,r.jsx)(n.h3,{id:"trainingduration",children:"TrainingDuration"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property TrainingDuration As %Numeric [ SqlComputeCode = {Set {*}=##class({%%CLASSNAME}).GetInterval({StartedAt},{CompletedAt})}, SqlComputed, Transient ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Training duration (in seconds)"}),"\n",(0,r.jsx)(n.h3,{id:"trainingquery",children:"TrainingQuery"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property TrainingQuery As %String(MAXLEN = 32000);\n"})}),"\n",(0,r.jsx)(n.p,{children:"Training query"}),"\n",(0,r.jsx)(n.h3,{id:"runstatus",children:"RunStatus"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property RunStatus As %String(DISPLAYLIST = ",Training,Completed,Failed", VALUELIST = ",training,completed,failed") [ InitialExpression = "training" ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"Training status"}),"\n",(0,r.jsx)(n.h3,{id:"statuscode",children:"StatusCode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property StatusCode As %Status [ InitialExpression = {$$$OK} ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Training error (if encountered)"}),"\n",(0,r.jsx)(n.h3,{id:"log",children:"Log"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Log As %Stream.GlobalCharacter;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Training log output"}),"\n",(0,r.jsx)(n.h3,{id:"settings",children:"Settings"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Settings As %Library.DynamicObject;\n"})}),"\n",(0,r.jsx)(n.p,{children:"Settings for this training run"}),"\n",(0,r.jsx)(n.h3,{id:"configuration",children:"Configuration"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Configuration As %SYS.ML.Configuration;\n"})}),"\n",(0,r.jsx)(n.p,{children:"ML Configuration for this training run"}),"\n",(0,r.jsx)(n.h3,{id:"trainingrunlocked",children:"TrainingRunLocked"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property TrainingRunLocked As %Boolean [ Calculated, Private, SqlComputeCode = { lock +^IRIS.ML.TrainingRun({%%ID}):0 if $test { set {*}=0 lock -^IRIS.ML.TrainingRun({%%ID}) } else { set {*}=1 }}, SqlComputed ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"TrainingRunLocked 1 if we cannot acquire a locko on this training run, otherwise 0"}),"\n",(0,r.jsx)(n.h3,{id:"pid",children:"PID"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property PID As %String [ InitialExpression = {$job} ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"IRIS Process ID that performed the training"}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"getinterval",children:"GetInterval"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetInterval(start As %TimeStamp, end As %TimeStamp) As %Numeric\n"})}),"\n",(0,r.jsx)(n.p,{children:"Compute the difference in seconds between two timestamps"}),"\n",(0,r.jsx)(n.h3,{id:"gettrainingrunname",children:"GetTrainingRunName"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod GetTrainingRunName(Model As %BigInt) As %String(MAXLEN=275)\n"})}),"\n",(0,r.jsx)(n.p,{children:"Compute the default name for this training run // Model is the Oid of a Model"}),"\n",(0,r.jsx)(n.h3,{id:"logmsg",children:"LogMsg"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method LogMsg(msg As %String) As %Status [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Log a timestamped message to the training log"}),"\n",(0,r.jsx)(n.h3,{id:"dump",children:"%Dump"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %Dump() As %Status\n"})}),"\n",(0,r.jsx)(n.p,{children:"Helper method for debugging etc."})]})}function c(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(d,{...e})}):d(e)}},28453:(e,n,i)=>{i.d(n,{R:()=>a,x:()=>l});var r=i(96540);const s={},t=r.createContext(s);function a(e){const n=r.useContext(t);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:a(e.components),r.createElement(t.Provider,{value:n},e.children)}}}]);