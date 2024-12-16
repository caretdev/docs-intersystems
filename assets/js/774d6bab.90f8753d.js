"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[98784],{95668:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>a,default:()=>c,frontMatter:()=>i,toc:()=>o});var t=n(74848),r=n(28453);const i={pagination_prev:null,pagination_next:null},a="%DeepSee.extensions.clusters.Ordered",o=[{value:"Methods",id:"methods",level:2},{value:"ordered",id:"ordered",level:3},{value:"test1",id:"test1",level:3},{value:"test2",id:"test2",level:3},{value:"test3",id:"test3",level:3},{value:"print",id:"print",level:3},{value:"pg",id:"pg",level:3}];function l(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"deepseeextensionsclustersordered",children:"%DeepSee.extensions.clusters.Ordered"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.extensions.clusters.Ordered Extends %RegisteredObject [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This class provides cluster analysis for a set of ordered objects. One can also think of it as one-dimensional cluster analysis."}),"\n",(0,t.jsx)(s.p,{children:"Methods in this class divide the set into a given number of subsets trying to optimize a given target value. Target value can be:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Cost, i.e. the sum of the sum of squared deviations from the mean-value within each cluster"}),"\n",(0,t.jsx)(s.li,{children:"Correlation between clusters (regions) and entities"}),"\n",(0,t.jsx)(s.li,{children:"Loss of information caused by using a region as a hole instead of every entity in the region"}),"\n"]}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"ordered",children:"ordered"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ordered(m As %Integer, ByRef key, nc As %Integer, Output q) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method clusters one-dimensional ordered data into nc clusters."}),"\n",(0,t.jsxs)(s.p,{children:["The algorithm is described in:",(0,t.jsx)(s.br,{}),"\nHelmuth Spaeth,",(0,t.jsx)(s.br,{}),"\nCluster Analysis Algorithms for Data Reduction and Classification of Objects,",(0,t.jsx)(s.br,{}),"\nEllis Horwood, 1980, page 63, QA278 S6813."]}),"\n",(0,t.jsx)(s.p,{children:"Input data is given as a multidimensional array m. The top value of m must be the number of data objects in the array. The array contains numerical values m(1:m) for each object."}),"\n",(0,t.jsx)(s.p,{children:"In most cases key should be an empty string. In such a case all calculations are done in memory. If key has value then this value is used as a subscript ot a process private globals that hold intermediate results. This will make the calculations significantly slower but will allow to deal with larger amount of objects."}),"\n",(0,t.jsx)(s.p,{children:"The result is returned in teh form of multi-dimensional array q. q(1:nc,1:nc), describes the clusters of data. The last row of q stores the first element in each cluster. Thus cluster 1 contains data items q(nc,1) through q(nc,2)-1. Other information is contained in previous rows. In particular, in row J, columns 1 through J, there is similar information about a partition involving J clusters."}),"\n",(0,t.jsx)(s.h3,{id:"test1",children:"test1"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod test1(nc As %Integer = 4, n As %Integer = 10, useGlobals As %Boolean = 0) [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"test2",children:"test2"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod test2(nc As %Integer = 4, n As %Integer = 10) [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"test3",children:"test3"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod test3(nc As %Integer = 4, n As %Integer = 10) [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"print",children:"print"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod print(m As %Integer, nc As %Integer, ByRef key, ByRef q)\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method prints verbose information about clustering results obtained by method ordered. Input data is taken in the same way as by ordered method."}),"\n",(0,t.jsx)(s.h3,{id:"pg",children:"pg"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod pg(m As %Integer, nc As %Integer, ByRef key, ByRef q, ByRef sc As %Status) As %Double\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method calculates Pearson-Gamma correlation coefficent for clustering obtained by method ordered. Input data is taken in the same way as by ordered method."}),"\n",(0,t.jsx)(s.p,{children:"For more information about Pearson-Gamma correlation coefficent see PearsonGamma"})]})}function c(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(l,{...e})}):l(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>a,x:()=>o});var t=n(96540);const r={},i=t.createContext(r);function a(e){const s=t.useContext(i);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function o(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),t.createElement(i.Provider,{value:s},e.children)}}}]);