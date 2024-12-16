"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[60697],{43050:(e,t,r)=>{r.r(t),r.d(t,{contentTitle:()=>s,default:()=>a,frontMatter:()=>l,toc:()=>c});var i=r(74848),n=r(28453);const l={pagination_prev:null,pagination_next:null},s="%iKnow.Filters.GroupFilter",c=[{value:"Properties",id:"properties",level:2},{value:"Negated",id:"negated",level:3},{value:"GroupLogic",id:"grouplogic",level:3},{value:"SubFilters",id:"subfilters",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"BuildSourceFilter",id:"buildsourcefilter",level:3},{value:"AddSubFilter",id:"addsubfilter",level:3},{value:"GetSubFilterCount",id:"getsubfiltercount",level:3},{value:"GetSubFilterAt",id:"getsubfilterat",level:3},{value:"ReplaceSubFilterAt",id:"replacesubfilterat",level:3},{value:"RemoveSubFilterAt",id:"removesubfilterat",level:3},{value:"AddSubFilterString",id:"addsubfilterstring",level:3},{value:"RestoreFilterFromStringInternal",id:"restorefilterfromstringinternal",level:3},{value:"ToString",id:"tostring",level:3},{value:"GroupLogicSet",id:"grouplogicset",level:3},{value:"NegatedSet",id:"negatedset",level:3}];function o(e){const t={code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",...(0,n.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(t.header,{children:(0,i.jsx)(t.h1,{id:"iknowfiltersgroupfilter",children:"%iKnow.Filters.GroupFilter"})}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Filters.GroupFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]\n"})}),"\n",(0,i.jsxs)(t.p,{children:["A generic filter to logically combine any number of %iKnow.Filters.Filter subfilter objects using a boolean AND or OR, optionally inverting the result (NOT) if ",(0,i.jsx)(t.em,{children:"negated"})," is true."]}),"\n",(0,i.jsx)(t.p,{children:"After initially creating a GroupFilter instance, add subfilters to it using AddSubFilter or AddSubFilterString."}),"\n",(0,i.jsxs)(t.p,{children:[(0,i.jsx)(t.strong,{children:"Filter parameters"}),":"]}),"\n",(0,i.jsxs)(t.ol,{children:["\n",(0,i.jsxs)(t.li,{children:[(0,i.jsx)(t.strong,{children:"domainId"})," As %Integer"]}),"\n",(0,i.jsxs)(t.li,{children:[(0,i.jsx)(t.strong,{children:"groupLogic"})," As %Integer - either $$$GROUPFILTERAND or $$$GROUPFILTEROR."]}),"\n",(0,i.jsxs)(t.li,{children:[(0,i.jsx)(t.strong,{children:"negated"})," As %Boolean - indicates whether or not invert (NOT) the combined filter."]}),"\n"]}),"\n",(0,i.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(t.h3,{id:"negated",children:"Negated"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property Negated As %Boolean [ Final, InitialExpression = 0 ];\n"})}),"\n",(0,i.jsx)(t.h3,{id:"grouplogic",children:"GroupLogic"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property GroupLogic As %Integer [ Final, InitialExpression = {$$$GROUPFILTERAND} ];\n"})}),"\n",(0,i.jsx)(t.h3,{id:"subfilters",children:"SubFilters"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Property SubFilters As list Of %iKnow.Filters.Filter [ Final, Private ];\n"})}),"\n",(0,i.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Method %OnNew(DomainId As %Integer, GroupLogic As %String = "AND", Negated As %Boolean = 0, UseCache As %Integer = 0) As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]\n'})}),"\n",(0,i.jsx)(t.h3,{id:"buildsourcefilter",children:"BuildSourceFilter"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(t.h3,{id:"addsubfilter",children:"AddSubFilter"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method AddSubFilter(SubFilter As %iKnow.Filters.Filter) As %Status [ Final ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Adds a %iKnow.Filters.Filter object to this instance as a subfilter, which will be ANDed or ORed according to this instances groupLogic property."}),"\n",(0,i.jsx)(t.h3,{id:"getsubfiltercount",children:"GetSubFilterCount"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSubFilterCount() As %Integer [ Final ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns the number of subfilters currently registered in this GroupFilter instance."}),"\n",(0,i.jsx)(t.h3,{id:"getsubfilterat",children:"GetSubFilterAt"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSubFilterAt(index As %Integer) As %iKnow.Filters.Filter [ Final ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns the subfilter at the specified index, if any"}),"\n",(0,i.jsx)(t.h3,{id:"replacesubfilterat",children:"ReplaceSubFilterAt"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method ReplaceSubFilterAt(index As %Integer, filter As %iKnow.Filters.Filter) As %Status [ Final, Internal ]\n"})}),"\n",(0,i.jsx)(t.h3,{id:"removesubfilterat",children:"RemoveSubFilterAt"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method RemoveSubFilterAt(index As %Integer) As %Status [ Final, Internal ]\n"})}),"\n",(0,i.jsx)(t.h3,{id:"addsubfilterstring",children:"AddSubFilterString"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method AddSubFilterString(SubFilterString As %String) As %Status [ Final ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Adds a %iKnow.Filters.Filter object in its %String format (see ToString) to this instance as a subfilter, which will be ANDed or ORed according to this instances groupLogic property."}),"\n",(0,i.jsx)(t.h3,{id:"restorefilterfromstringinternal",children:"RestoreFilterFromStringInternal"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod RestoreFilterFromStringInternal(filterSpec As %String) As %iKnow.Filters.Filter\n"})}),"\n",(0,i.jsx)(t.h3,{id:"tostring",children:"ToString"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method ToString() As %String\n"})}),"\n",(0,i.jsx)(t.h3,{id:"grouplogicset",children:"GroupLogicSet"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method GroupLogicSet(pValue As %Integer) As %Status [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsx)(t.h3,{id:"negatedset",children:"NegatedSet"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method NegatedSet(pValue As %Boolean) As %Status [ Internal, ServerOnly = 1 ]\n"})})]})}function a(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,i.jsx)(t,{...e,children:(0,i.jsx)(o,{...e})}):o(e)}},28453:(e,t,r)=>{r.d(t,{R:()=>s,x:()=>c});var i=r(96540);const n={},l=i.createContext(n);function s(e){const t=i.useContext(l);return i.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:s(e.components),i.createElement(l.Provider,{value:t},e.children)}}}]);