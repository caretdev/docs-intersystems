"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[27113],{23844:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>l,frontMatter:()=>a,toc:()=>c});var r=n(74848),s=n(28453);const a={pagination_prev:null,pagination_next:null},i="%Archive.Content",c=[{value:"Properties",id:"properties",level:2},{value:"Name",id:"name",level:3},{value:"RetentionSpec",id:"retentionspec",level:3},{value:"Attribute",id:"attribute",level:3},{value:"DataSource",id:"datasource",level:3},{value:"DataSink",id:"datasink",level:3},{value:"Methods",id:"methods",level:2},{value:"AddSource",id:"addsource",level:3}];function o(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"archivecontent",children:"%Archive.Content"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Archive.Content Extends %RegisteredObject [ System = 4 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"An Archive Content is an object of source or target of Archive operations (cf. %Archive.Session)"}),"\n",(0,r.jsxs)(t.p,{children:["Sample script that creates an Archive Content object for a (source) file or files to be archived: ",(0,r.jsx)(t.code,{children:'Set ContentOref = ##class(%Archive.Content).%New() Set ContentOref.Name = "File" // description of the content Set ContentOref.RetentionSpec = 0 // a retention period or class name Set Status = ContentOref.AddSource(SourceFilePath1,"Test File 1") // path of the source file and a brief description ("tagname") // and if there are more files to store (as a single content) -- Set Status = ContentOref.AddSource(SourceFilePath2,"Test File 2") // and so on'})," Sample script that creates an Archive Content object for a file or files as the target of a retrieval: ",(0,r.jsx)(t.code,{children:"Set ContentOref = ##class(%Archive.Content).%New() Set Status = ContentOref.DataSink.Insert(TargetFilePath1) // and if the content contains more than one file -- Set Status = ContentOref.DataSink.Insert(TargetFilePath2) // and so on"})]}),"\n",(0,r.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(t.h3,{id:"name",children:"Name"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property Name As %String;\n"})}),"\n",(0,r.jsx)(t.p,{children:"An optional, descriptive name for the content"}),"\n",(0,r.jsx)(t.h3,{id:"retentionspec",children:"RetentionSpec"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property RetentionSpec As %String;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Either a retention period, specified as a number (consisting of only digits) in seconds, or a retention class name"}),"\n",(0,r.jsx)(t.h3,{id:"attribute",children:"Attribute"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property Attribute As array Of %String;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Optional attributes of the content, in pairs of AttributeName and AttributeValue"}),"\n",(0,r.jsx)(t.h3,{id:"datasource",children:"DataSource"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property DataSource As %String [ MultiDimensional ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"for storing content to server"}),"\n",(0,r.jsxs)(t.ul,{children:["\n",(0,r.jsx)(t.li,{children:"DataSource = DataSourceCount"}),"\n",(0,r.jsx)(t.li,{children:'DataSource(DataSourceID,"TagName") = TagName'}),"\n",(0,r.jsx)(t.li,{children:'DataSource(DataSourceID,"Source") = Output source (file path, %Stream, etc.)'}),"\n"]}),"\n",(0,r.jsx)(t.h3,{id:"datasink",children:"DataSink"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property DataSink As list Of %String;\n"})}),"\n",(0,r.jsx)(t.p,{children:"a list of targets (file path, %Stream, etc.) for retrieving content from server"}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"addsource",children:"AddSource"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method AddSource(DataSource As %RegisteredObject, TagName As %String) As %Status\n"})}),"\n",(0,r.jsx)(t.p,{children:"Specify a data source to export to server"})]})}function l(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>c});var r=n(96540);const s={},a=r.createContext(s);function i(e){const t=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),r.createElement(a.Provider,{value:t},e.children)}}}]);