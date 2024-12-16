"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[97934],{96382:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>l,default:()=>a,frontMatter:()=>r,toc:()=>c});var t=n(74848),i=n(28453);const r={pagination_prev:null,pagination_next:null},l="%ML.H2O.TrainedModel",c=[{value:"Properties",id:"properties",level:2},{value:"h2oProvider",id:"h2oprovider",level:3},{value:"ByteStream",id:"bytestream",level:3},{value:"withcolumnnames",id:"withcolumnnames",level:3},{value:"withcolumntypes",id:"withcolumntypes",level:3},{value:"Methods",id:"methods",level:2},{value:"%Begin",id:"begin",level:3},{value:"%End",id:"end",level:3},{value:"%PredictAll",id:"predictall",level:3},{value:"%Predict",id:"predict",level:3},{value:"%Probability",id:"probability",level:3},{value:"predictORprobability",id:"predictorprobability",level:3},{value:"PredictAllH2O",id:"predictallh2o",level:3},{value:"ProbAllH2O",id:"proballh2o",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"mlh2otrainedmodel",children:"%ML.H2O.TrainedModel"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ML.H2O.TrainedModel Extends %ML.TrainedModel [ ClassType = persistent ]\n"})}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"h2oprovider",children:"h2oProvider"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property h2oProvider As %ML.H2O.Provider [ Transient ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"bytestream",children:"ByteStream"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ByteStream As %Stream.GlobalBinary;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"withcolumnnames",children:"withcolumnnames"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property withcolumnnames As %List [ Internal, Transient ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Cached info"}),"\n",(0,t.jsx)(s.h3,{id:"withcolumntypes",children:"withcolumntypes"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property withcolumntypes As %List [ Internal, Transient ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Cached info"}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"begin",children:"%Begin"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %Begin() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Begin trained model operations"}),"\n",(0,t.jsx)(s.h3,{id:"end",children:"%End"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %End() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"End trained model operations"}),"\n",(0,t.jsx)(s.h3,{id:"predictall",children:"%PredictAll"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method %PredictAll(tfn As %Integer, argspos As %List, predpos As %List = "", probpos As %List = "", expr As %String = "") As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Bulk Predict arguments: tfn - tempfile index argspos - Positions of the WithColumns in the temp rows, $list(column-positions) predpos - Position of the predicted value, $list(result-column-positions) probpos - Position of the probability value, $list(result-column-positions) expr - expression for probability returns: $$$OK on success, otherwise a $$$ERROR(...)"}),"\n",(0,t.jsx)(s.h3,{id:"predict",children:"%Predict"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %Predict(data As %List, ByRef results As %List) As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"probability",children:"%Probability"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %Probability(expr As %String = 1, data As %List, ByRef results As %List) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Predict probability on an ML model Arguments: expr: The argument of PROBABILITY's FOR clause, defaults to 1 data: $List of WITH clause values results: PBR, return value"}),"\n",(0,t.jsx)(s.h3,{id:"predictorprobability",children:"predictORprobability"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method predictORprobability(expr As %String, data As %List, ByRef results As %List, predict As %Boolean) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"predictallh2o",children:"PredictAllH2O"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method PredictAllH2O(select As %String, selectcnt As %String, predictingcolumn As %String, classname As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"proballh2o",children:"ProbAllH2O"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProbAllH2O(select As %String, selectcnt As %String, predictingcolumn As %String, classname As %String, expr As %String) As %Status [ Internal ]\n"})})]})}function a(e={}){const{wrapper:s}={...(0,i.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>l,x:()=>c});var t=n(96540);const i={},r=t.createContext(i);function l(e){const s=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),t.createElement(r.Provider,{value:s},e.children)}}}]);