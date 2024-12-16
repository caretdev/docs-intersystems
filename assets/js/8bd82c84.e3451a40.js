"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[30596],{75684:(e,n,r)=>{r.r(n),r.d(n,{contentTitle:()=>l,default:()=>c,frontMatter:()=>t,toc:()=>a});var s=r(74848),i=r(28453);const t={pagination_prev:null,pagination_next:null},l="%iKnow.DeepSee.MDXFilter",a=[{value:"Properties",id:"properties",level:2},{value:"CubeName",id:"cubename",level:3},{value:"MeasureName",id:"measurename",level:3},{value:"MDXWhereClause",id:"mdxwhereclause",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"BuildSourceFilter",id:"buildsourcefilter",level:3},{value:"ToString",id:"tostring",level:3},{value:"RestoreFilterFromStringInternal",id:"restorefilterfromstringinternal",level:3}];function o(e){const n={blockquote:"blockquote",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"iknowdeepseemdxfilter",children:"%iKnow.DeepSee.MDXFilter"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %iKnow.DeepSee.MDXFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This %iKnow.Filters.Filter filters sources according to an MDX set expression. This should be a DeepSee-managed domain, created automatically through the use of an iKnow measure in a DeepSee cube. The MDX will be run against this cube and hence should be a valid MDX statement using dimensions and/or measures defined for this cube."}),"\n",(0,s.jsxs)(n.p,{children:[(0,s.jsx)(n.strong,{children:"Filter parameters"}),":"]}),"\n",(0,s.jsxs)(n.ol,{children:["\n",(0,s.jsxs)(n.li,{children:[(0,s.jsx)(n.strong,{children:"pDomainId"})," As %Integer"]}),"\n",(0,s.jsxs)(n.li,{children:[(0,s.jsx)(n.strong,{children:"pMDXWhereClause"})," As %String - The MDX set expression to filter cube facts through. This should be a valid expression for the MDX WHERE clause."]}),"\n",(0,s.jsxs)(n.li,{children:[(0,s.jsx)(n.strong,{children:"pCubeName"})," As %String - If this is an iKnow-managed domain, use this parameter to specify the DeepSee cube the MDX should be run against. (this parameter is ignored for DeepSee-managed domains)"]}),"\n",(0,s.jsxs)(n.li,{children:[(0,s.jsx)(n.strong,{children:"pMeasureName"})," As %String - If this is an iKnow-managed domain, use this parameter to specify the iKnow measure in pCubeName for which the values are represented by this iKnow domain. (this parameter is ignored for DeepSee-managed domains)"]}),"\n"]}),"\n",(0,s.jsx)(n.p,{children:"Example:"}),"\n",(0,s.jsxs)(n.blockquote,{children:["\n",(0,s.jsx)(n.p,{children:'USER>zn "samples"  SAMPLES>set domId = ##class(%iKnow.DeepSee.CubeUtils).GetDomainId("AviationEvents","Report")  SAMPLES>set filter = ##class(%iKnow.DeepSee.MDXFilter).%New(domId, "{[AircraftDim].[H1].[AircraftCategory].&[Balloon],[AircraftDim].[H1].[AircraftCategory].&[Glider]}")  SAMPLES>write ##class(%iKnow.Queries.SourceAPI).GetCountByDomain(domId) 1005 SAMPLES>write ##class(%iKnow.Queries.SourceAPI).GetCountByDomain(domId,filter) 27'}),"\n"]}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"cubename",children:"CubeName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property CubeName As %String [ ReadOnly ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"measurename",children:"MeasureName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property MeasureName As %String [ ReadOnly ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"mdxwhereclause",children:"MDXWhereClause"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property MDXWhereClause As %String [ ReadOnly ];\n"})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method %OnNew(pDomainId As %Integer, pMDXWhereClause As %String, pCubeName As %String = "", pMeasureName As %String = "") As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]\n'})}),"\n",(0,s.jsx)(n.h3,{id:"buildsourcefilter",children:"BuildSourceFilter"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"tostring",children:"ToString"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ToString() As %String\n"})}),"\n",(0,s.jsx)(n.h3,{id:"restorefilterfromstringinternal",children:"RestoreFilterFromStringInternal"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Private ]\n"})})]})}function c(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(o,{...e})}):o(e)}},28453:(e,n,r)=>{r.d(n,{R:()=>l,x:()=>a});var s=r(96540);const i={},t=s.createContext(i);function l(e){const n=s.useContext(t);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),s.createElement(t.Provider,{value:n},e.children)}}}]);