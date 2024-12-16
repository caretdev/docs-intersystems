"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[64669],{79368:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>c,default:()=>o,frontMatter:()=>i,toc:()=>a});var t=n(74848),r=n(28453);const i={pagination_prev:null,pagination_next:null},c="%DeepSee.Query.axis",a=[{value:"Properties",id:"properties",level:2},{value:"query",id:"query",level:3},{value:"subqueries",id:"subqueries",level:3},{value:"nonEmpty",id:"nonempty",level:3},{value:"context",id:"context",level:3},{value:"%dependencies",id:"dependencies",level:3},{value:"%cmbrIndex",id:"cmbrindex",level:3},{value:"%originalSpec",id:"originalspec",level:3},{value:"%AxisKey",id:"axiskey",level:3},{value:"Methods",id:"methods",level:2},{value:"%ToString",id:"tostring",level:3},{value:"%ProcessAxes",id:"processaxes",level:3},{value:"%CountTerms",id:"countterms",level:3},{value:"%IsSearch",id:"issearch",level:3},{value:"%CopyComplexAggregate",id:"copycomplexaggregate",level:3}];function l(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"deepseequeryaxis",children:"%DeepSee.Query.axis"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.Query.axis Extends group [ System = 3 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This class defines an axis within a DeepSee query."}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"query",children:"query"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Relationship query As %DeepSee.Query.query(XMLPROJECTION = "none") [ Cardinality = one, Inverse = axes ];\n'})}),"\n",(0,t.jsx)(s.p,{children:"Query that this axis belongs to."}),"\n",(0,t.jsx)(s.h3,{id:"subqueries",children:"subqueries"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property subqueries As list Of %DeepSee.ResultSet(XMLPROJECTION = "NONE");\n'})}),"\n",(0,t.jsx)(s.p,{children:"Collection of subqueries associated with this axis."}),"\n",(0,t.jsx)(s.h3,{id:"nonempty",children:"nonEmpty"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property nonEmpty As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsxs)(s.p,{children:["If true, then empty tuples (e.g. complete rows or columns) are removed from the results of the query.",(0,t.jsx)(s.br,{}),'\nThis is equivalent to the MDX "NON EMPTY" key word.']}),"\n",(0,t.jsx)(s.h3,{id:"context",children:"context"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property context As %String(VALUELIST = "axis,filter,filterAxis", XMLPROJECTION = "none") [ InitialExpression = "axis" ];\n'})}),"\n",(0,t.jsx)(s.p,{children:"Reference to the context where this object is used in the overall query structure"}),"\n",(0,t.jsx)(s.h3,{id:"dependencies",children:"%dependencies"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property %dependencies As %String [ Internal, MultiDimensional ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"List of facts this axis depends on."}),"\n",(0,t.jsx)(s.h3,{id:"cmbrindex",children:"%cmbrIndex"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property %cmbrIndex As %String [ Internal, MultiDimensional ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"List of current member markers along this axis."}),"\n",(0,t.jsx)(s.h3,{id:"originalspec",children:"%originalSpec"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property %originalSpec As %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Copy of the original string used to produce this axis object"}),"\n",(0,t.jsx)(s.h3,{id:"axiskey",children:"%AxisKey"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property %AxisKey As %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Once calculated the axis key is stabilized for this particular object."}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"tostring",children:"%ToString"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ToString(Output pSC As %Status) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Convert this node to its text representation."}),"\n",(0,t.jsx)(s.h3,{id:"processaxes",children:"%ProcessAxes"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Execute and build the axes output for this axis."}),"\n",(0,t.jsx)(s.h3,{id:"countterms",children:"%CountTerms"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %CountTerms(pCubeIndex As %String, pAxisKey As %String, Output pStatus As %Status) As %Integer\n"})}),"\n",(0,t.jsx)(s.p,{children:"Review the contents of an axis and count the number of terms within it that will translate into bit operations. This performs a blind count and ignores chain/child structures so it can be called at any stage of axis construction."}),"\n",(0,t.jsx)(s.h3,{id:"issearch",children:"%IsSearch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %IsSearch(Output pSC As %Status) As %Boolean [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Incates whether or not this axis is a placeholder %SEARCH axis."}),"\n",(0,t.jsx)(s.h3,{id:"copycomplexaggregate",children:"%CopyComplexAggregate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %CopyComplexAggregate(pCube As %String, pKey As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["If the axis contains a complex aggregate, copy it and set it aside in a special",(0,t.jsx)(s.br,{}),'\n^DeepSee.Cache.Axis(cubeKey,axisKey,"agg")',(0,t.jsx)(s.br,{}),"\nnode. A complex aggregate is marked by the presence of $LI(node,24)."]})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(l,{...e})}):l(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>c,x:()=>a});var t=n(96540);const r={},i=t.createContext(r);function c(e){const s=t.useContext(i);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:c(e.components),t.createElement(i.Provider,{value:s},e.children)}}}]);