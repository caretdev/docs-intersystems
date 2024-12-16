"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[37830],{92448:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>a,default:()=>d,frontMatter:()=>l,toc:()=>c});var t=s(74848),r=s(28453);const l={pagination_prev:null,pagination_next:null},a="%DeepSee.Model.abstractNode",c=[{value:"Parameters",id:"parameters",level:2},{value:"XMLINCLUDEINGROUP",id:"xmlincludeingroup",level:3},{value:"XMLIGNORENULL",id:"xmlignorenull",level:3},{value:"XMLIGNOREINVALIDATTRIBUTE",id:"xmlignoreinvalidattribute",level:3},{value:"Methods",id:"methods",level:2},{value:"%GenerateCode",id:"generatecode",level:3},{value:"%QuoteValue",id:"quotevalue",level:3},{value:"%QuoteList",id:"quotelist",level:3},{value:"%QuoteValueL10N",id:"quotevaluel10n",level:3},{value:"%ConstructClone",id:"constructclone",level:3},{value:"%NormalizeObject",id:"normalizeobject",level:3},{value:"%AddToSaveSet",id:"addtosaveset",level:3},{value:"%RemoveFromSaveSet",id:"removefromsaveset",level:3},{value:"%ValidateObject",id:"validateobject",level:3},{value:"%BindExport",id:"bindexport",level:3},{value:"XMLDTD",id:"xmldtd",level:3},{value:"%ApplyOverrides",id:"applyoverrides",level:3}];function o(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"deepseemodelabstractnode",children:"%DeepSee.Model.abstractNode"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.Model.abstractNode Extends (%RegisteredObject, %XML.Adaptor) [ Abstract, Inheritance = right, System = 3 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Abstract base class for various DeepSee meta-data objects."}),"\n",(0,t.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(n.h3,{id:"xmlincludeingroup",children:"XMLINCLUDEINGROUP"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter XMLINCLUDEINGROUP = 0;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Do not include *this* class in the XML groupings."}),"\n",(0,t.jsx)(n.h3,{id:"xmlignorenull",children:"XMLIGNORENULL"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter XMLIGNORENULL = "inputonly";\n'})}),"\n",(0,t.jsx)(n.h3,{id:"xmlignoreinvalidattribute",children:"XMLIGNOREINVALIDATTRIBUTE"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter XMLIGNOREINVALIDATTRIBUTE = 0;\n"})}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"generatecode",children:"%GenerateCode"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Method %GenerateCode(pCode As %CharacterStream, pLocalize As %Boolean, pCollection As %String, pLevel As %Integer = 1, pKey As %String = "", pParentVar As %String = "unknown") [ CodeMode = objectgenerator, Internal ]\n'})}),"\n",(0,t.jsx)(n.p,{children:"Generate code needed to recreate this instance."}),"\n",(0,t.jsx)(n.h3,{id:"quotevalue",children:"%QuoteValue"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %QuoteValue(pValue As %String) As %String [ CodeMode = expression ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Take a value string and return a quoted string."}),"\n",(0,t.jsx)(n.h3,{id:"quotelist",children:"%QuoteList"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %QuoteList(pValue As %List) As %String\n"})}),"\n",(0,t.jsx)(n.p,{children:"Take a $List value and return an express to construct it."}),"\n",(0,t.jsx)(n.h3,{id:"quotevaluel10n",children:"%QuoteValueL10N"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %QuoteValueL10N(pValue As %String) As %String\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Take a value string and return a quoted string wrapped within a $$$Text macro.",(0,t.jsx)(n.br,{}),"\nIf value starts and ends with #( )#, then return an expression"]}),"\n",(0,t.jsx)(n.h3,{id:"constructclone",children:"%ConstructClone"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ConstructClone(deep As %Boolean = 0, ByRef cloned As %String, location As %String) As %RegisteredObject\n"})}),"\n",(0,t.jsx)(n.h3,{id:"normalizeobject",children:"%NormalizeObject"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %NormalizeObject() As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"addtosaveset",children:"%AddToSaveSet"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Method %AddToSaveSet(depth As %Integer = 3, refresh As %Integer = 0, norecurseon As %String = "") As %Status\n'})}),"\n",(0,t.jsx)(n.h3,{id:"removefromsaveset",children:"%RemoveFromSaveSet"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %RemoveFromSaveSet() As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"validateobject",children:"%ValidateObject"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ValidateObject(force As %Integer = 0) As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"bindexport",children:"%BindExport"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %BindExport(dev As %String, ByRef Seen As %String, RegisterOref As %Boolean, AllowedDepth As %Integer, AllowedCapacity As %Integer) As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"xmldtd",children:"XMLDTD"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod XMLDTD(top As %String, format As %String, input As %Boolean, ByRef dtdlist) As %Status\n"})}),"\n",(0,t.jsx)(n.h3,{id:"applyoverrides",children:"%ApplyOverrides"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ApplyOverrides(pGLVN As %String) [ CodeMode = objectgenerator, Internal ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Apply local overrides of values for this object.",(0,t.jsx)(n.br,{}),"\nThis looks at the ^DeepSee.Override global and applies values to properties within the model object."]})]})}function d(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>a,x:()=>c});var t=s(96540);const r={},l=t.createContext(r);function a(e){const n=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),t.createElement(l.Provider,{value:n},e.children)}}}]);