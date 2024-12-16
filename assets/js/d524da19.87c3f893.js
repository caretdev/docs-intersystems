"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[82175],{65044:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>n,default:()=>o,frontMatter:()=>l,toc:()=>i});var t=a(74848),r=a(28453);const l={pagination_prev:null,pagination_next:null},n="%Compiler.Binding.Java",i=[{value:"Methods",id:"methods",level:2},{value:"CreateProjection",id:"createprojection",level:3},{value:"GetFile",id:"getfile",level:3},{value:"CloseFile",id:"closefile",level:3},{value:"SetPackageDir",id:"setpackagedir",level:3},{value:"CreatePackage",id:"createpackage",level:3},{value:"CreateDeclaration",id:"createdeclaration",level:3},{value:"CreateLocalVars",id:"createlocalvars",level:3},{value:"CreateImports",id:"createimports",level:3},{value:"FlushGlobals",id:"flushglobals",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"compilerbindingjava",children:"%Compiler.Binding.Java"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Compiler.Binding.Java Extends %RegisteredObject [ System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This class handles creating the proxy Java class."}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"createprojection",children:"CreateProjection"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateProjection(IRISClassName, projParams As %ArrayOfDataTypes, flushGlobals = 1, ByRef properties = {##class(%ArrayOfDataTypes).%New()}, ByRef qstruct As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Creates the proxy Java class. IRISClassName is the full name of the IRIS class being projected (including package name). projParams is the array of projection parameters defined in the IRIS class. flushGlobals is set to 0 if createProjection() is called during the projection of another class, and 1 otherwise. It prevents looping projection calls, and also flushes out globals used during projection. properties is used by a subclass that is calling CreateProjection() on its leftmost superclass. It helps the subclass keep track of properties already existing in its superclass, so that it doesn't reproject those properties."}),"\n",(0,t.jsx)(s.h3,{id:"getfile",children:"GetFile"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetFile(pathName As %String, className As %String, isInterface As %Boolean, projParams As %ArrayOfDataTypes, ByRef generateTime = "") As JavaFile\n'})}),"\n",(0,t.jsx)(s.p,{children:"Returns a newly created stub file if the file specified by pathName and className doesn't exist. Otherwise, returns a temporary file that will be recopied and removed once projection succeeds."}),"\n",(0,t.jsx)(s.h3,{id:"closefile",children:"CloseFile"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CloseFile(pathName As %String, className As %String, file As JavaFile, projIsSuccessful = 0)\n"})}),"\n",(0,t.jsx)(s.p,{children:"Close the file specified by pathName and className. If a temporary file exists for the class, copy its content to the right .java file, then delete the temporary file."}),"\n",(0,t.jsx)(s.h3,{id:"setpackagedir",children:"SetPackageDir"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetPackageDir(rootdir As %RawString, ByRef javaPackage As %RawString) As %RawString\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the pathname for the directory the projected Java file would be in."}),"\n",(0,t.jsx)(s.h3,{id:"createpackage",children:"CreatePackage"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreatePackage(file As JavaFile, javaPackage As %String)\n"})}),"\n",(0,t.jsx)(s.p,{children:"Writes package info to Java file."}),"\n",(0,t.jsx)(s.h3,{id:"createdeclaration",children:"CreateDeclaration"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateDeclaration(file As JavaFile, isAbstract As %Boolean, className As %String, classType As %String, super As %String, jdCreator As JavaDocCreator, description As %String)\n"})}),"\n",(0,t.jsx)(s.p,{children:"Writes Java class declaration to the Java file."}),"\n",(0,t.jsx)(s.h3,{id:"createlocalvars",children:"CreateLocalVars"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateLocalVars(file As JavaFile, className As %String, genSerialUid = 0)\n"})}),"\n",(0,t.jsx)(s.h3,{id:"createimports",children:"CreateImports"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateImports(file As JavaFile, tConverter As JavaTypeConverter, super As %String)\n"})}),"\n",(0,t.jsx)(s.h3,{id:"flushglobals",children:"FlushGlobals"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FlushGlobals(toFlush As %Boolean)\n"})})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>n,x:()=>i});var t=a(96540);const r={},l=t.createContext(r);function n(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:n(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);