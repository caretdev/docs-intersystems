"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[87060],{64758:(e,n,i)=>{i.r(n),i.d(n,{contentTitle:()=>a,default:()=>l,frontMatter:()=>s,toc:()=>o});var r=i(74848),t=i(28453);const s={pagination_prev:null,pagination_next:null},a="%ML.PMML.Provider",o=[{value:"Parameters",id:"parameters",level:2},{value:"PROVIDERNAME",id:"providername",level:3},{value:"Methods",id:"methods",level:2},{value:"%BeginTraining",id:"begintraining",level:3},{value:"%WaitForTraining",id:"waitfortraining",level:3}];function d(e){const n={a:"a",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"mlpmmlprovider",children:"%ML.PMML.Provider"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ML.PMML.Provider Extends %ML.Provider\n"})}),"\n",(0,r.jsxs)(n.p,{children:["This Provider does not ",(0,r.jsx)(n.em,{children:"train"})," models based on a dataset, but can be used to ",(0,r.jsx)(n.em,{children:"import"})," a model built elsewhere and exported to the ",(0,r.jsx)(n.a,{href:"http://dmg.org/",children:"Predictive Modeling Markup Language"})," standard, as ",(0,r.jsx)(n.a,{href:"/csp/docbook/Doc.View.cls?FIND=CLASSES+%25ML.PMML.Provider",children:"supported in InterSystems IRIS"}),"."]}),"\n",(0,r.jsx)(n.p,{children:"Supported USING parameters:"}),"\n",(0,r.jsxs)(n.ul,{children:["\n",(0,r.jsx)(n.li,{children:"class_name: %DeepSee.PMML.Definition subclass containing the PMML definition"}),"\n",(0,r.jsx)(n.li,{children:"file_name: directory path to a file containing the PMML definition"}),"\n",(0,r.jsx)(n.li,{children:"model_name: if the PMML definition contains multiple models, optinally specify the name of the one to use"}),"\n"]}),"\n",(0,r.jsx)(n.p,{children:"Either class_name or file_name must be provided. model_name is optional"}),"\n",(0,r.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(n.h3,{id:"providername",children:"PROVIDERNAME"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PROVIDERNAME As %String = "PMML";\n'})}),"\n",(0,r.jsx)(n.p,{children:"Provider name"}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"begintraining",children:"%BeginTraining"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method %BeginTraining(model As %ML.Model, data As %SQL.StatementResult, trainingrun As %ML.TrainingRun, ByRef name As %String = "", ByRef trainkey) As %Status\n'})}),"\n",(0,r.jsx)(n.p,{children:"Train an ML model"}),"\n",(0,r.jsx)(n.h3,{id:"waitfortraining",children:"%WaitForTraining"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %WaitForTraining(ByRef trainkey, trainingrun As %ML.TrainingRun, ByRef trainedmodel As %ML.TrainedModel, timeoutMS As %Integer = -1) As %Status\n"})})]})}function l(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(d,{...e})}):d(e)}},28453:(e,n,i)=>{i.d(n,{R:()=>a,x:()=>o});var r=i(96540);const t={},s=r.createContext(t);function a(e){const n=r.useContext(s);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),r.createElement(s.Provider,{value:n},e.children)}}}]);