"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[7039],{44410:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>r,default:()=>o,frontMatter:()=>l,toc:()=>c});var t=a(74848),n=a(28453);const l={pagination_prev:null,pagination_next:null},r="%Studio.SASchemaClass",c=[{value:"Parameters",id:"parameters",level:2},{value:"XMLNAMESPACE",id:"xmlnamespace",level:3},{value:"ROOTCLASSES",id:"rootclasses",level:3},{value:"SACATEGORY",id:"sacategory",level:3},{value:"Methods",id:"methods",level:2},{value:"OutputToStream",id:"outputtostream",level:3},{value:"IsUpToDate",id:"isuptodate",level:3},{value:"GetSchemaForClasses",id:"getschemaforclasses",level:3},{value:"GetElementsForClass",id:"getelementsforclass",level:3},{value:"GetAttrsForClass",id:"getattrsforclass",level:3},{value:"GetXMLElementsForClass",id:"getxmlelementsforclass",level:3},{value:"GetXMLNameForClass",id:"getxmlnameforclass",level:3},{value:"XMLName2DisplayName",id:"xmlname2displayname",level:3},{value:"XMLName2NameSpace",id:"xmlname2namespace",level:3},{value:"XMLName2ShortName",id:"xmlname2shortname",level:3},{value:"loopGlobal",id:"loopglobal",level:3},{value:"SchemaToPrefix",id:"schematoprefix",level:3}];function i(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"studiosaschemaclass",children:"%Studio.SASchemaClass"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Studio.SASchemaClass Extends %Studio.SASchema [ Abstract, System = 3 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This class is the base class for Studio Assist schema generators that are based on XML-enabled class definitions."}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"xmlnamespace",children:"XMLNAMESPACE"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter XMLNAMESPACE As STRING;\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is the namespace value used to identify this SA schema. This corresponds to the XMLNamespace keyword of a Studio XData block."}),"\n",(0,t.jsx)(s.h3,{id:"rootclasses",children:"ROOTCLASSES"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter ROOTCLASSES As STRING;\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is a comma-separated list of the classes whose xml elements can be used as the root level element of a document separated with a ':' and the XML tag name to correlate this with e.g. \"User.Person:person,User.Company:company\"."}),"\n",(0,t.jsx)(s.h3,{id:"sacategory",children:"SACATEGORY"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SACATEGORY As STRING;\n"})}),"\n",(0,t.jsx)(s.p,{children:"Optional. This is a comma-separated list of category names. If specified, only classes that contain an SACATEGORY parameter included in the list will be added to the schema. This provides a way to create a subset of a larger set of components."}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"outputtostream",children:"OutputToStream"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OutputToStream(pStream As %Stream.Object, Output pChecksum As %String, pParameter As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Output SASchema definition into a stream"}),"\n",(0,t.jsx)(s.h3,{id:"isuptodate",children:"IsUpToDate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsUpToDate(pChecksum As %String, pParameter As %String) As %Boolean\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getschemaforclasses",children:"GetSchemaForClasses"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSchemaForClasses(ByRef pClassList As %String) As %Status [ Private ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Internal method. Given an array of class names, that correspond to the top-level elements within an XML document, find the simplified SASchema used by the Studio Assistant.",(0,t.jsx)(s.br,{}),"\nppDefaultNS is the default XML namespace for the schema."]}),"\n",(0,t.jsx)(s.h3,{id:"getelementsforclass",children:"GetElementsForClass"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetElementsForClass(pClass As %String, Output pElementList, Output pReferencedClasses) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Given a class (and default namespace) find the list of XML elements it can contain. This list of the form: ^List(el) = class"}),"\n",(0,t.jsx)(s.h3,{id:"getattrsforclass",children:"GetAttrsForClass"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetAttrsForClass(pClass As %String, Output pAttrList) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Given a class (and default namespace) find the list of XML attributes it can contain."}),"\n",(0,t.jsx)(s.h3,{id:"getxmlelementsforclass",children:"GetXMLElementsForClass"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetXMLElementsForClass(pClass As %String, Output pElements) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return an array of XML element names that could be used within a document wherever pClass is expected."}),"\n",(0,t.jsx)(s.h3,{id:"getxmlnameforclass",children:"GetXMLNameForClass"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetXMLNameForClass(pClass As %String) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:'Return the XML name for the given class (or "" if there is none). If the class is not in the default namespace, its namespace will be prepended to the XML name.'}),"\n",(0,t.jsx)(s.h3,{id:"xmlname2displayname",children:"XMLName2DisplayName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod XMLName2DisplayName(pName As %String, pCurrentNS As %String) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Take an element and make sure it has the correct namespace prefix to match the given local namespace context."}),"\n",(0,t.jsx)(s.h3,{id:"xmlname2namespace",children:"XMLName2NameSpace"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod XMLName2NameSpace(pName) As %String [ CodeMode = expression ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"xmlname2shortname",children:"XMLName2ShortName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod XMLName2ShortName(pName) As %String [ CodeMode = expression ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"loopglobal",children:"loopGlobal"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod loopGlobal(pStream As %Stream.Object) As %Status [ Private ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Loop through the global to generate the output for the Studio."}),"\n",(0,t.jsx)(s.h3,{id:"schematoprefix",children:"SchemaToPrefix"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SchemaToPrefix(pSchema As %String) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:'Convert a schema name to a reasonable "prefix".'})]})}function o(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(i,{...e})}):i(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>r,x:()=>c});var t=a(96540);const n={},l=t.createContext(n);function r(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:r(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);