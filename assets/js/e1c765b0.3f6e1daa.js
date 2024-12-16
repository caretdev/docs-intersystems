"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[51970],{13801:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>c,default:()=>l,frontMatter:()=>o,toc:()=>d});var t=n(74848),i=n(28453);const o={pagination_prev:null,pagination_next:null},c="%DeepSee.extensions.stat.MixedDistribution",d=[{value:"Properties",id:"properties",level:2},{value:"N",id:"n",level:3},{value:"w",id:"w",level:3},{value:"P",id:"p",level:3},{value:"Methods",id:"methods",level:2},{value:"AddComponent",id:"addcomponent",level:3},{value:"balance",id:"balance",level:3},{value:"cdf",id:"cdf",level:3},{value:"pdf",id:"pdf",level:3}];function a(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"deepseeextensionsstatmixeddistribution",children:"%DeepSee.extensions.stat.MixedDistribution"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.extensions.stat.MixedDistribution Extends (%RegisteredObject, AbstractContinuousDistribution) [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Represents multicomponent continues distribution. For example let the user to create a distribution consisting of mixed Gaussian components or a mixed Normal/Exponential distribution."}),"\n",(0,t.jsxs)(s.p,{children:["Here is an example of it's usage: ",(0,t.jsx)(s.code,{children:'set ndist = ##class(%DeepSee.extensions.stat.NormalDistribution).create(m, (sigma * sigma)) set edist = ##class(%DeepSee.extensions.stat.ExpDistribution).create(lambda) set mdist = ##class(%DeepSee.extensions.stat.MixedDistribution).%New() set sc = mdist.AddComponent(ndist, w) Quit:$$$ISERR(sc) set sc = mdist.AddComponent(edist, (1-w)) Quit:$$$ISERR(sc) set sc = mdist.balance() Quit:$$$ISERR(sc) w "Mean = "_mdist.Mean w "; Var = "_mdist.Variance w "; Entropy = "_mdist.Entropy, !'})]}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"n",children:"N"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property N As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"w",children:"w"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property w As %Double [ MultiDimensional ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"p",children:"P"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property P As AbstractContinuousDistribution [ MultiDimensional ];\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"addcomponent",children:"AddComponent"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method AddComponent(p As AbstractContinuousDistribution, weight As %Double) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Add a component p to the distribution with the given weight. After all components are added application must call balance"}),"\n",(0,t.jsx)(s.h3,{id:"balance",children:"balance"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method balance() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"The method to call after all components of the distribution are specified."}),"\n",(0,t.jsx)(s.h3,{id:"cdf",children:"cdf"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method cdf(x1 As %Double, x2 As %Double = "") As %Double\n'})}),"\n",(0,t.jsx)(s.h3,{id:"pdf",children:"pdf"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method pdf(x As %Double) As %Double\n"})})]})}function l(e={}){const{wrapper:s}={...(0,i.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(a,{...e})}):a(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>c,x:()=>d});var t=n(96540);const i={},o=t.createContext(i);function c(e){const s=t.useContext(o);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function d(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:c(e.components),t.createElement(o.Provider,{value:s},e.children)}}}]);