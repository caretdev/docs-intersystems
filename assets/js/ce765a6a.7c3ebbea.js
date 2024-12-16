"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[59069],{82153:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>a,default:()=>c,frontMatter:()=>r,toc:()=>l});var i=s(74848),t=s(28453);const r={pagination_prev:null,pagination_next:null},a="%DeepSee.PMML.Definition.PMML",l=[{value:"Properties",id:"properties",level:2},{value:"version",id:"version",level:3},{value:"Header",id:"header",level:3},{value:"MiningBuildTask",id:"miningbuildtask",level:3},{value:"DataDictionary",id:"datadictionary",level:3},{value:"TransformationDictionary",id:"transformationdictionary",level:3},{value:"Models",id:"models",level:3},{value:"Extension",id:"extension",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"%Create",id:"create",level:3},{value:"%ToString",id:"tostring",level:3},{value:"%FromString",id:"fromstring",level:3},{value:"%SaveToClass",id:"savetoclass",level:3},{value:"FormatXML",id:"formatxml",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"deepseepmmldefinitionpmml",children:"%DeepSee.PMML.Definition.PMML"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.PMML.Definition.PMML Extends node [ System = 4 ]\n"})}),"\n",(0,i.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(n.h3,{id:"version",children:"version"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property version As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE", XSDTYPE = "xs:string") [ Required ];\n'})}),"\n",(0,i.jsx)(n.h3,{id:"header",children:"Header"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property Header As Header(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"miningbuildtask",children:"MiningBuildTask"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property MiningBuildTask As list Of MiningBuildTask(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"datadictionary",children:"DataDictionary"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property DataDictionary As DataDictionary(XMLPROJECTION = "ELEMENT") [ Required ];\n'})}),"\n",(0,i.jsx)(n.h3,{id:"transformationdictionary",children:"TransformationDictionary"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property TransformationDictionary As TransformationDictionary(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"models",children:"Models"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property Models As list Of %DeepSee.PMML.Definition.Models.AbstractModel(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");\n'})}),"\n",(0,i.jsx)(n.h3,{id:"extension",children:"Extension"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");\n'})}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Adds node-specific validation checks"}),"\n",(0,i.jsx)(n.h3,{id:"create",children:"%Create"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod %Create(pVersion As %String, pDescription As %String = "", pApplication As %String = "") As PMML\n'})}),"\n",(0,i.jsx)(n.h3,{id:"tostring",children:"%ToString"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ToString(Output pString As %String, pFormatted As %Boolean = 1) As %Status\n"})}),"\n",(0,i.jsx)(n.h3,{id:"fromstring",children:"%FromString"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %FromString(Output pModel As %DeepSee.PMML.Definition.PMML, pString As %String) As %Status\n"})}),"\n",(0,i.jsx)(n.h3,{id:"savetoclass",children:"%SaveToClass"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Method %SaveToClass(pClassName As %String, pOverwriteExisting As %Boolean = 1, pVerbose As %Boolean = 0) As %Status\n"})}),"\n",(0,i.jsx)(n.h3,{id:"formatxml",children:"FormatXML"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod FormatXML(pString As %String) As %String [ Internal, Private ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Some basic XML formatting Note: this expects nicely formatted attribute content and no surprises in CDATA !"})]})}function c(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(o,{...e})}):o(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>a,x:()=>l});var i=s(96540);const t={},r=i.createContext(t);function a(e){const n=i.useContext(r);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),i.createElement(r.Provider,{value:n},e.children)}}}]);