"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[89090],{83738:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>d,frontMatter:()=>r,toc:()=>o});var a=n(74848),s=n(28453);const r={pagination_prev:null,pagination_next:null},i="%iKnow.Source.Converter.TextTransformation",o=[{value:"Properties",id:"properties",level:2},{value:"Buffer",id:"buffer",level:3},{value:"OutputText",id:"outputtext",level:3},{value:"Methods",id:"methods",level:2},{value:"BufferString",id:"bufferstring",level:3},{value:"Convert",id:"convert",level:3},{value:"GetMetadataKeys",id:"getmetadatakeys",level:3},{value:"NextConvertedPart",id:"nextconvertedpart",level:3}];function l(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",...(0,s.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"iknowsourceconvertertexttransformation",children:"%iKnow.Source.Converter.TextTransformation"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Source.Converter.TextTransformation Extends %iKnow.Source.Converter [ Deprecated, System = 4 ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This %iKnow.Source.Converter implementation wraps around a Text Transformation model and will extract sections and key-value pairs as defined in the model. Select sections will be concatenated and used as text input for indexing by the iKnow engine, while select key-value pairs can be saved as metadata values."}),"\n",(0,a.jsx)(t.p,{children:(0,a.jsx)(t.strong,{children:"Converter parameters:"})}),"\n",(0,a.jsxs)(t.ol,{children:["\n",(0,a.jsxs)(t.li,{children:[(0,a.jsx)(t.strong,{children:"Model class name"})," (%String): name of the %iKnow.TextTransformation.Definition class containing the TT model definition. This parameter is required."]}),"\n",(0,a.jsxs)(t.li,{children:[(0,a.jsx)(t.strong,{children:"Section headers to index"}),' (%String, default = ""): comma-separated list of section headers whose contents is to be indexed. Leaving this parameter blank (default) will cause all sections to be indexed. Header names are case-insensitive.']}),"\n",(0,a.jsxs)(t.li,{children:[(0,a.jsx)(t.strong,{children:"Include headers in sections"})," (%Boolean, default = 0): whether or not to include the header itself to be indexed as well. Setting this value to 1 will ensure section contents is always prepended with the title."]}),"\n",(0,a.jsxs)(t.li,{children:[(0,a.jsx)(t.strong,{children:"Keys to extract for metadata"}),' (%String, default = ""): comma-separated list of keys the model extracts that need to be saved as metadata values. Leaving this parameter blank (default) will result in no key-value pairs being saved as metadata. Key names are case-insensitive.']}),"\n",(0,a.jsxs)(t.li,{children:[(0,a.jsx)(t.strong,{children:"Metadata field names"}),' (%String, default = ""): comma-separated list of metadata field names corresponding to the key names in the third parameter. If left blank, it is assumed the key names themselves are valid metadata field names.']}),"\n"]}),"\n",(0,a.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(t.h3,{id:"buffer",children:"Buffer"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property Buffer [ MultiDimensional, Private ];\n"})}),"\n",(0,a.jsx)(t.h3,{id:"outputtext",children:"OutputText"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Property OutputText [ MultiDimensional, Private ];\n"})}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"bufferstring",children:"BufferString"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method BufferString(data As %String) As %Status\n"})}),"\n",(0,a.jsx)(t.h3,{id:"convert",children:"Convert"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method Convert() As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"This method is called after all data has been buffered. In this method the converter will need to parse the raw data and extract/convert it into plain text data. If any metadata is present within the document the converter can extract that metadata here, and provide it to the system. Metadata can be reported by using the SetCurrentMetadataValues function."}),"\n",(0,a.jsx)(t.h3,{id:"getmetadatakeys",children:"GetMetadataKeys"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetMetadataKeys(params As %String) As %List\n"})}),"\n",(0,a.jsx)(t.h3,{id:"nextconvertedpart",children:"NextConvertedPart"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method NextConvertedPart() As %String\n"})}),"\n",(0,a.jsx)(t.p,{children:'When conversion is done, this method will be called to fetch the converted data back from the converter. The method should return the converted text in chuncks of maximum 32k in size. When no more data is available, the method should return the empty string ("") to signal that all data has been transferred.'})]})}function d(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>o});var a=n(96540);const s={},r=a.createContext(s);function i(e){const t=a.useContext(r);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),a.createElement(r.Provider,{value:t},e.children)}}}]);