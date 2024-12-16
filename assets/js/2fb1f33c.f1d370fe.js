"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[21931],{76089:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>r,frontMatter:()=>o,toc:()=>c});var s=n(74848),i=n(28453);const o={pagination_prev:null,pagination_next:null},a="%iKnow.TextTransformation.Output",c=[{value:"Properties",id:"properties",level:2},{value:"Ref",id:"ref",level:3},{value:"Sections",id:"sections",level:3},{value:"OutputText",id:"outputtext",level:3},{value:"ModelClass",id:"modelclass",level:3},{value:"Methods",id:"methods",level:2},{value:"%GetSectionClassname",id:"getsectionclassname",level:3},{value:"%GetKeyValueClassname",id:"getkeyvalueclassname",level:3},{value:"AddSection",id:"addsection",level:3},{value:"GetSectionCount",id:"getsectioncount",level:3},{value:"GetSectionAt",id:"getsectionat",level:3}];function l(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"iknowtexttransformationoutput",children:"%iKnow.TextTransformation.Output"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.TextTransformation.Output Extends %RegisteredObject [ Deprecated, System = 4 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This class represents the output generated upon executing a Text Transformation model defined in a %iKnow.TextTransformation.Definition class. By default, instances of this class are populated to represent the sections and key-value pairs identified in the input text, so they can be accessed and acted upon directly."}),"\n",(0,s.jsx)(t.p,{children:"However, instances of this class are not persisted. To enable persisting TT model output, just create a subclass from this class that also inherits from %Persistent and register its name through the outputClass attribute of the root model element in your TT model definition. Subclasses can also refine the rest of the output class by defining additional indices and/or adding custom properties that can be populated in the callbacks of the TT model definition class."}),"\n",(0,s.jsx)(t.p,{children:"If you choose to refine the child classes OutputSection and OutputKeyValue as well, make sure to update the return value for the %GetSectionClassname and %GetKeyValueClassname and update the implementation of the AddSection, GetSectionCount and GetSectionAt methods accordingly."}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"ref",children:"Ref"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Ref As %RawString;\n"})}),"\n",(0,s.jsx)(t.p,{children:"Reference to the original record, when this object is populated during an %ApplyBatch() call."}),"\n",(0,s.jsx)(t.h3,{id:"sections",children:"Sections"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Sections As list Of OutputSection [ Internal ];\n"})}),"\n",(0,s.jsx)(t.h3,{id:"outputtext",children:"OutputText"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property OutputText As %String(MAXLEN = "");\n'})}),"\n",(0,s.jsx)(t.p,{children:'Any "transform" operations in the TT model may have had an impact on the original input text. This propert contains the final form of the text after processing, which the OutputLine numbers in any OutputLocation location references point to.'}),"\n",(0,s.jsx)(t.h3,{id:"modelclass",children:"ModelClass"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property ModelClass As %String(MAXLEN = 200);\n"})}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"getsectionclassname",children:"%GetSectionClassname"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetSectionClassname() As %String\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getkeyvalueclassname",children:"%GetKeyValueClassname"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetKeyValueClassname() As %String\n"})}),"\n",(0,s.jsx)(t.h3,{id:"addsection",children:"AddSection"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method AddSection(pSection As OutputSection) As %Status\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getsectioncount",children:"GetSectionCount"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSectionCount() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getsectionat",children:"GetSectionAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSectionAt(pPosition As %Integer) As OutputSection\n"})})]})}function r(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>c});var s=n(96540);const i={},o=s.createContext(i);function a(e){const t=s.useContext(o);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),s.createElement(o.Provider,{value:t},e.children)}}}]);