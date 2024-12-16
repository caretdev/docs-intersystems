"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[5935],{86659:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>o,default:()=>c,frontMatter:()=>i,toc:()=>a});var t=r(74848),n=r(28453);const i={pagination_prev:null,pagination_next:null},o="%DeepSee.Model.property",a=[{value:"Properties",id:"properties",level:2},{value:"hidden",id:"hidden",level:3},{value:"sort",id:"sort",level:3},{value:"isName",id:"isname",level:3},{value:"isDescription",id:"isdescription",level:3},{value:"isReference",id:"isreference",level:3},{value:"useDisplayValue",id:"usedisplayvalue",level:3},{value:"formatString",id:"formatstring",level:3},{value:"Methods",id:"methods",level:2},{value:"%AtScaleExport",id:"atscaleexport",level:3}];function l(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"deepseemodelproperty",children:"%DeepSee.Model.property"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.Model.property Extends (%DeepSee.Model.node, %DeepSee.Model.source) [ System = 3 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Meta-data for a member property within a dimension level within a DeepSee cube."}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"hidden",children:"hidden"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property hidden As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsxs)(s.p,{children:["If true, this property is hidden. That is, it will not be listed among the level's properties within the various DeepSee utilities.",(0,t.jsx)(s.br,{}),"\nIt can still be used within MDX queries and expressions."]}),"\n",(0,t.jsx)(s.h3,{id:"sort",children:"sort"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property sort As %DeepSee.Datatype.string(VALUELIST = ",asc,desc,asc numeric,desc numeric", XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsxs)(s.p,{children:["If specified, then use this property to sort members of the current level.",(0,t.jsx)(s.br,{}),'\nThe value can be "asc" for ascending order, "desc" for descending order, "asc numeric" for ascending numeric order, or "desc numeric" for descending numeric order.',(0,t.jsx)(s.br,{}),"\nIf more than one property specifies sorting, then members are sorted using a combination of properties. The sorting is applied in the order in which the properties are listed in the level definition."]}),"\n",(0,t.jsx)(s.h3,{id:"isname",children:"isName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property isName As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsxs)(s.p,{children:["If true, then this property is used to supply the display name for members of this level.",(0,t.jsx)(s.br,{}),"\nOnly one property for a given level can set this property."]}),"\n",(0,t.jsx)(s.h3,{id:"isdescription",children:"isDescription"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property isDescription As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Optional. If true, then this property is used to supply an alternate descriptive name for members of this level.",(0,t.jsx)(s.br,{}),"\nOnly one property for a given level can set this property."]}),"\n",(0,t.jsx)(s.h3,{id:"isreference",children:"isReference"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property isReference As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsx)(s.p,{children:"If true, then the value of this property is not stored within a dimension table. Instead its value is retrieved from the data source when a query is executed."}),"\n",(0,t.jsx)(s.h3,{id:"usedisplayvalue",children:"useDisplayValue"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property useDisplayValue As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,t.jsxs)(s.p,{children:["If true, then use the display (external) value of the field (if applicable) in the source table when fetching data for this property.",(0,t.jsx)(s.br,{}),"\nThis is only applied for properties that specify a sourceProperty."]}),"\n",(0,t.jsx)(s.h3,{id:"formatstring",children:"formatString"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Property formatString As %DeepSee.Datatype.string(MAXLEN = 100, XMLPROJECTION = "attribute");\n'})}),"\n",(0,t.jsx)(s.p,{children:"Optional format string to apply to this property."}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"atscaleexport",children:"%AtScaleExport"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %AtScaleExport(pStatus As %Status = {$$$OK}, ByRef pAuxiliaryIndex As %DynamicAbstractObject = {$$$NULLOREF}) As %DynamicAbstractObject\n"})}),"\n",(0,t.jsx)(s.p,{children:"Produce the structures needed to emit the appropriate JSON and export this item to AtScale"})]})}function c(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(l,{...e})}):l(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>o,x:()=>a});var t=r(96540);const n={},i=t.createContext(n);function o(e){const s=t.useContext(i);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:o(e.components),t.createElement(i.Provider,{value:s},e.children)}}}]);