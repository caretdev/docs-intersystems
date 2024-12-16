"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[927],{28255:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>r,default:()=>o,frontMatter:()=>l,toc:()=>i});var n=a(74848),t=a(28453);const l={pagination_prev:null,pagination_next:null},r="%ZEN.Utils",i=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"Methods",id:"methods",level:2},{value:"%StartLog",id:"startlog",level:3},{value:"%StopLog",id:"stoplog",level:3},{value:"%ShowLog",id:"showlog",level:3},{value:"%LoggingEnabled",id:"loggingenabled",level:3},{value:"%Log",id:"log",level:3},{value:"EnumerateLogExecute",id:"enumeratelogexecute",level:3},{value:"EnumerateLogFetch",id:"enumeratelogfetch",level:3},{value:"EnumerateLogClose",id:"enumeratelogclose",level:3},{value:"%InvalidateSchema",id:"invalidateschema",level:3},{value:"%GenerateSchema",id:"generateschema",level:3},{value:"%GenerateIncludeFiles",id:"generateincludefiles",level:3},{value:"%GenerateIncludeFilesForModules",id:"generateincludefilesformodules",level:3},{value:"%GetPhysicalIncludeDirectory",id:"getphysicalincludedirectory",level:3},{value:"%GetIncludeDirectory",id:"getincludedirectory",level:3},{value:"%GetUserIncludeDirectory",id:"getuserincludedirectory",level:3},{value:"%ReadStreamIntoString",id:"readstreamintostring",level:3},{value:"%DrawClassDescription",id:"drawclassdescription",level:3},{value:"%DrawPropertyDescription",id:"drawpropertydescription",level:3},{value:"EnumerateApplicationsExecute",id:"enumerateapplicationsexecute",level:3},{value:"EnumerateApplicationsFetch",id:"enumerateapplicationsfetch",level:3},{value:"EnumerateApplicationsClose",id:"enumerateapplicationsclose",level:3},{value:"EnumerateComponentsExecute",id:"enumeratecomponentsexecute",level:3},{value:"EnumerateComponentsFetch",id:"enumeratecomponentsfetch",level:3},{value:"EnumerateComponentsClose",id:"enumeratecomponentsclose",level:3},{value:"IsPage",id:"ispage",level:3},{value:"IsComponentEmpty",id:"iscomponentempty",level:3},{value:"ComponentDetailsExecute",id:"componentdetailsexecute",level:3},{value:"ComponentDetailsFetch",id:"componentdetailsfetch",level:3},{value:"ComponentDetailsClose",id:"componentdetailsclose",level:3},{value:"EnumeratePackagesExecute",id:"enumeratepackagesexecute",level:3},{value:"EnumeratePackagesFetch",id:"enumeratepackagesfetch",level:3},{value:"EnumeratePackagesClose",id:"enumeratepackagesclose",level:3},{value:"GetComponentAttrs",id:"getcomponentattrs",level:3},{value:"%DisplayErrorHTML",id:"displayerrorhtml",level:3},{value:"%DisplayErrorJS",id:"displayerrorjs",level:3},{value:"%DisplayErrorSVG",id:"displayerrorsvg",level:3},{value:"%GetPagesInApplication",id:"getpagesinapplication",level:3},{value:"%GetLinksInPage",id:"getlinksinpage",level:3},{value:"WriteIncludeFilesForModule",id:"writeincludefilesformodule",level:3},{value:"DrawClassDefinition",id:"drawclassdefinition",level:3},{value:"ConstructClassGraph",id:"constructclassgraph",level:3},{value:"WriteCSSForComponent",id:"writecssforcomponent",level:3},{value:"%ParseExpr",id:"parseexpr",level:3},{value:"%ParseFormalSpec",id:"parseformalspec",level:3},{value:"GetDefault",id:"getdefault",level:3},{value:"SetDefault",id:"setdefault",level:3},{value:"GetDefaultPackage",id:"getdefaultpackage",level:3},{value:"SetDefaultPackage",id:"setdefaultpackage",level:3},{value:"GetDefaultApplication",id:"getdefaultapplication",level:3},{value:"SetDefaultApplication",id:"setdefaultapplication",level:3},{value:"GetDefaultDomain",id:"getdefaultdomain",level:3},{value:"SetDefaultDomain",id:"setdefaultdomain",level:3},{value:"CreateZENPageClass",id:"createzenpageclass",level:3},{value:"%PageToXML",id:"pagetoxml",level:3},{value:"%ObjectToXML",id:"objecttoxml",level:3},{value:"%GetPropertyValue",id:"getpropertyvalue",level:3},{value:"%SavePage",id:"savepage",level:3},{value:"GetSchemaFile",id:"getschemafile",level:3},{value:"GenerateSchema",id:"generateschema-1",level:3},{value:"WriteXMLSchema",id:"writexmlschema",level:3},{value:"GetCSSInfo",id:"getcssinfo",level:3},{value:"ParseCSSFile",id:"parsecssfile",level:3},{value:"ParseCSS",id:"parsecss",level:3},{value:"BuildCSSString",id:"buildcssstring",level:3},{value:"%Messages",id:"messages",level:3},{value:"%SerializeList",id:"serializelist",level:3},{value:"%SerializeArray",id:"serializearray",level:3},{value:"%DeserializeList",id:"deserializelist",level:3},{value:"%DeserializeArray",id:"deserializearray",level:3},{value:"%EncodeBinaryStream",id:"encodebinarystream",level:3},{value:"%FindComponentClassByName",id:"findcomponentclassbyname",level:3},{value:"%IsPackageInCommonDirectory",id:"ispackageincommondirectory",level:3},{value:"%BrowserSupportsHTML5",id:"browsersupportshtml5",level:3},{value:"%JavaInstalled",id:"javainstalled",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"zenutils",children:"%ZEN.Utils"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Utils Extends %RegisteredObject [ Deprecated, System = 2 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This class contains various utility methods needed by the ZEN framework."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%ZEN";\n'})}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"startlog",children:"%StartLog"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %StartLog()\n"})}),"\n",(0,n.jsx)(s.p,{children:"Turn on the Zen event log. This has the side effect of clearing the event log."}),"\n",(0,n.jsx)(s.h3,{id:"stoplog",children:"%StopLog"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %StopLog()\n"})}),"\n",(0,n.jsx)(s.p,{children:"Turn off the Zen event log."}),"\n",(0,n.jsx)(s.h3,{id:"showlog",children:"%ShowLog"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %ShowLog()\n"})}),"\n",(0,n.jsx)(s.p,{children:"Write out the Zen event log to the console."}),"\n",(0,n.jsx)(s.h3,{id:"loggingenabled",children:"%LoggingEnabled"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %LoggingEnabled() As %Boolean\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test if Zen event log is enabled."}),"\n",(0,n.jsx)(s.h3,{id:"log",children:"%Log"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %Log(pType As %String, pClass As %String, pMethod As %String, pMessage As %String, pObject As %ZEN.Component.object = "")\n'})}),"\n",(0,n.jsxs)(s.p,{children:['Write information to the Zen event log. pType is the type of event (a string such as "ERROR").',(0,n.jsx)(s.br,{}),"\npClass is the class logging the event.",(0,n.jsx)(s.br,{}),"\npMethod is the method logging the event.",(0,n.jsx)(s.br,{}),"\npMessage is a message to log.",(0,n.jsx)(s.br,{}),"\npObject, if present, is the object that is logging the event."]}),"\n",(0,n.jsx)(s.h3,{id:"enumeratelogexecute",children:"EnumerateLogExecute"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateLogExecute(ByRef qHandle As %Binary) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns a list of events from the Zen event log."}),"\n",(0,n.jsx)(s.h3,{id:"enumeratelogfetch",children:"EnumerateLogFetch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateLogFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"enumeratelogclose",children:"EnumerateLogClose"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateLogClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"invalidateschema",children:"%InvalidateSchema"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %InvalidateSchema() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Invalidate the XML schema information needed for StudioAssist. Studio will rebuild this information when user loads a document in this namespace."}),"\n",(0,n.jsx)(s.h3,{id:"generateschema",children:"%GenerateSchema"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GenerateSchema() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Generate XML schema information needed for StudioAssist."}),"\n",(0,n.jsx)(s.h3,{id:"generateincludefiles",children:"%GenerateIncludeFiles"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %GenerateIncludeFiles(pPackage As %String, pType As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Generate include files for a given Zen package.",(0,n.jsx)(s.br,{}),"\npPackage is the package name."]}),"\n",(0,n.jsx)(s.h3,{id:"generateincludefilesformodules",children:"%GenerateIncludeFilesForModules"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GenerateIncludeFilesForModules(pPackage As %String, ByRef pModules, pAll As %Boolean = 0, pDisplay As %Boolean = 1) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Generate include files for a given Zen package and list of modules.",(0,n.jsx)(s.br,{}),"\npPackage is the package name.",(0,n.jsx)(s.br,{}),"\npModules is a list of module names by package.",(0,n.jsx)(s.br,{}),"\nIf pAll is true, then process all modules in the given package."]}),"\n",(0,n.jsx)(s.h3,{id:"getphysicalincludedirectory",children:"%GetPhysicalIncludeDirectory"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetPhysicalIncludeDirectory(pPackage As %String, Output pStatus As %Status, Output pUrl As %String) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given a package name, return the physical directory into which include files should be generated."}),"\n",(0,n.jsx)(s.h3,{id:"getincludedirectory",children:"%GetIncludeDirectory"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetIncludeDirectory(Output pUrl As %String) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return the physical directory in which common include files are written."}),"\n",(0,n.jsx)(s.h3,{id:"getuserincludedirectory",children:"%GetUserIncludeDirectory"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetUserIncludeDirectory(Output pUrl As %String) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return the directory in which user include files are written."}),"\n",(0,n.jsx)(s.h3,{id:"readstreamintostring",children:"%ReadStreamIntoString"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %ReadStreamIntoString(pStream As %Stream, Output pOverflow As %Boolean) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given a stream, read its contents into a string. If the stream does not fit, set pOverflow to 1."}),"\n",(0,n.jsx)(s.h3,{id:"drawclassdescription",children:"%DrawClassDescription"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DrawClassDescription(pClass As %String)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Write out description of the given class as HTML."}),"\n",(0,n.jsx)(s.h3,{id:"drawpropertydescription",children:"%DrawPropertyDescription"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DrawPropertyDescription(pClass As %String, pProperty As %String)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Write out description of the given property as HTML."}),"\n",(0,n.jsx)(s.h3,{id:"enumerateapplicationsexecute",children:"EnumerateApplicationsExecute"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateApplicationsExecute(ByRef qHandle As %Binary) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns a list of available ZEN application classes as well as logical application name."}),"\n",(0,n.jsx)(s.h3,{id:"enumerateapplicationsfetch",children:"EnumerateApplicationsFetch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateApplicationsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"enumerateapplicationsclose",children:"EnumerateApplicationsClose"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateApplicationsClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"enumeratecomponentsexecute",children:"EnumerateComponentsExecute"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod EnumerateComponentsExecute(ByRef qHandle As %Binary, pParentClass As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Returns a list of available ZEN components.",(0,n.jsx)(s.br,{}),"\nThis does *not* include any page components."]}),"\n",(0,n.jsx)(s.h3,{id:"enumeratecomponentsfetch",children:"EnumerateComponentsFetch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateComponentsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"enumeratecomponentsclose",children:"EnumerateComponentsClose"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateComponentsClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"ispage",children:"IsPage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsPage(pClass As %String) As %Boolean\n"})}),"\n",(0,n.jsx)(s.p,{children:"Determine if this component class is a page."}),"\n",(0,n.jsx)(s.h3,{id:"iscomponentempty",children:"IsComponentEmpty"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsComponentEmpty(pClass As %String) As %Boolean\n"})}),"\n",(0,n.jsx)(s.p,{children:"Determine if component class uses an empty XML element (i.e., does not have child elements)."}),"\n",(0,n.jsx)(s.h3,{id:"componentdetailsexecute",children:"ComponentDetailsExecute"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ComponentDetailsExecute(ByRef qHandle As %Binary, pClass As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns a list of properties within a given ZEN component."}),"\n",(0,n.jsx)(s.h3,{id:"componentdetailsfetch",children:"ComponentDetailsFetch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ComponentDetailsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"componentdetailsclose",children:"ComponentDetailsClose"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ComponentDetailsClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"enumeratepackagesexecute",children:"EnumeratePackagesExecute"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod EnumeratePackagesExecute(ByRef qHandle As %Binary, pFilter As %String = "") As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:'Returns a list of class packages (that start with pFilter). Does not return % packages unless pFilter starts with "%".'}),"\n",(0,n.jsx)(s.h3,{id:"enumeratepackagesfetch",children:"EnumeratePackagesFetch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumeratePackagesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"enumeratepackagesclose",children:"EnumeratePackagesClose"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumeratePackagesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"getcomponentattrs",children:"GetComponentAttrs"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetComponentAttrs(comp As %String, ByRef attrs, ByRef cats) As %Boolean\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Get list of attributes used by ZEN component comp.",(0,n.jsx)(s.br,{}),"\nReturns true if the component is defined."]}),"\n",(0,n.jsx)(s.h3,{id:"displayerrorhtml",children:"%DisplayErrorHTML"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DisplayErrorHTML(pObject As %RegisteredObject, tSC As %Status)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Display a status code within an HTML element."}),"\n",(0,n.jsx)(s.h3,{id:"displayerrorjs",children:"%DisplayErrorJS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DisplayErrorJS(pObject As %RegisteredObject, tSC As %Status)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Display a status code within JavaScript alert box."}),"\n",(0,n.jsx)(s.h3,{id:"displayerrorsvg",children:"%DisplayErrorSVG"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DisplayErrorSVG(pObject As %RegisteredObject, tSC As %Status)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Display a status code within an SVG element."}),"\n",(0,n.jsx)(s.h3,{id:"getpagesinapplication",children:"%GetPagesInApplication"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetPagesInApplication(pApplication As %String, Output pList As %String)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return array of pages within the given application class."}),"\n",(0,n.jsx)(s.h3,{id:"getlinksinpage",children:"%GetLinksInPage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetLinksInPage(pPage As %String, Output pList As %String)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Utility method. Return array of links within the given page class."}),"\n",(0,n.jsx)(s.h3,{id:"writeincludefilesformodule",children:"WriteIncludeFilesForModule"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod WriteIncludeFilesForModule(pDirectory As %String, pModule As %String, ByRef pWorkList, pFlags As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Utility method to write out JS and CSS Style Sheet files for classes within a given module (contained in pWorkList.",(0,n.jsx)(s.br,{}),'\nIf pFlags contains "-d", then no output is written. If pFlags contains "-s", then output is not stripped.']}),"\n",(0,n.jsx)(s.h3,{id:"drawclassdefinition",children:"DrawClassDefinition"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DrawClassDefinition(pClass As %String)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Wrapper to invoke %DrawClassDefinition method for a class. [Previously private]"}),"\n",(0,n.jsx)(s.h3,{id:"constructclassgraph",children:"ConstructClassGraph"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ConstructClassGraph(pTopClass As %String, ByRef pGraph, pFilter As %String = "", pParentNode = "")\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Create a graph of a class pTopClass and its subclasses.",(0,n.jsx)(s.br,{}),"\npFilter limits the search candidates: only classes that start with the filter value are considered."]}),"\n",(0,n.jsx)(s.h3,{id:"writecssforcomponent",children:"WriteCSSForComponent"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod WriteCSSForComponent(pClassName As %String, pStyleBlock As %String = "Style") As %Status\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Write out the contents of the default CSS Style sheet for a component.",(0,n.jsx)(s.br,{}),"\nThis is used when pre-building a .css file for a package. pStyleBlock is the name of the XData block containing the CSS style definition."]}),"\n",(0,n.jsx)(s.h3,{id:"parseexpr",children:"%ParseExpr"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %ParseExpr(pText As %String, pEsc As %String = "", pMode As %Integer = 1) As %String [ Internal ]\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Take a string containing #()# expressions and return an executable expression: E.g.: turns hello #(%page.prop)# into",(0,n.jsx)(s.br,{}),'\n"hello "_(%page.prop)',(0,n.jsx)(s.br,{}),"\nAn expression can also take the form: #(#compid.prop)#",(0,n.jsx)(s.br,{}),"\nThis evaluates to the property prop within the component with id of compid.",(0,n.jsx)(s.br,{}),'\nIf pEsc is defined, it indicates that property values should be escaped: possible values are "HTML","JS","URL", etc.',(0,n.jsx)(s.br,{}),"\npMode specifies how to handle the special %query object. 1: treat %query as a %ResultSet; 2 treat %query as a local array."]}),"\n",(0,n.jsx)(s.h3,{id:"parseformalspec",children:"%ParseFormalSpec"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %ParseFormalSpec(pSpec As %String) As %List\n"})}),"\n",(0,n.jsx)(s.p,{children:"Parse a formal spec (used by the delegator datatype class) of the form: arg:type,arg:type, and return a $list as used by the class compiler."}),"\n",(0,n.jsx)(s.h3,{id:"getdefault",children:"GetDefault"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetDefault(pSetting As %String, pDefault As %String = "") As %String\n'})}),"\n",(0,n.jsx)(s.p,{children:"Return default value of named property (used by Wizards)."}),"\n",(0,n.jsx)(s.h3,{id:"setdefault",children:"SetDefault"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetDefault(pSetting As %String, pName As %String)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Set default value of named property (used by Wizards)."}),"\n",(0,n.jsx)(s.h3,{id:"getdefaultpackage",children:"GetDefaultPackage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDefaultPackage() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return default package name (used by Wizards)."}),"\n",(0,n.jsx)(s.h3,{id:"setdefaultpackage",children:"SetDefaultPackage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetDefaultPackage(pName As %String) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Set default package name (used by Wizards)."}),"\n",(0,n.jsx)(s.h3,{id:"getdefaultapplication",children:"GetDefaultApplication"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDefaultApplication() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return default application name (used by Wizards)."}),"\n",(0,n.jsx)(s.h3,{id:"setdefaultapplication",children:"SetDefaultApplication"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetDefaultApplication(pName As %String) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Set default application name (used by Wizards)."}),"\n",(0,n.jsx)(s.h3,{id:"getdefaultdomain",children:"GetDefaultDomain"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDefaultDomain() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return default domain name (used by Wizards)."}),"\n",(0,n.jsx)(s.h3,{id:"setdefaultdomain",children:"SetDefaultDomain"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetDefaultDomain(pName As %String) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Set default domain name (used by Wizards)."}),"\n",(0,n.jsx)(s.h3,{id:"createzenpageclass",children:"CreateZENPageClass"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateZENPageClass(pPage As %String, pAppClass As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Called by wizards. Create a new ZEN page class."}),"\n",(0,n.jsx)(s.h3,{id:"pagetoxml",children:"%PageToXML"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %PageToXML(pStream As %Stream.GlobalCharacter, pPage As %ZEN.Component.page) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Serialize a page object to an XML format compatible for use within an XData Contents block.",(0,n.jsx)(s.br,{}),"\nThis does not use the normal XML adaptor as it has special requirments (such as formatting and skipping properties with default values)."]}),"\n",(0,n.jsx)(s.h3,{id:"objecttoxml",children:"%ObjectToXML"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %ObjectToXML(pStream As %Stream.GlobalCharacter, pObject As %ZEN.Component.object, ByRef pNSList, pLevel As %Integer = 1)\n"})}),"\n",(0,n.jsx)(s.p,{children:"Serialize a component to XML. Used by the %PageToXML method."}),"\n",(0,n.jsx)(s.h3,{id:"getpropertyvalue",children:"%GetPropertyValue"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetPropertyValue(pObject As %ZEN.Component.object, pPropName As %String, Output pValue As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Internal method: get value for a given property of a given object. If the value is the default do not set pValue."}),"\n",(0,n.jsx)(s.h3,{id:"savepage",children:"%SavePage"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %SavePage(pTargetPage As %ZEN.Component.page) As %Status\n"})}),"\n",(0,n.jsx)(s.h3,{id:"getschemafile",children:"GetSchemaFile"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSchemaFile() As %String [ CodeMode = expression ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return file path for the ZEN XML Schema."}),"\n",(0,n.jsx)(s.h3,{id:"generateschema-1",children:"GenerateSchema"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GenerateSchema() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Generate the ZEN XML schema file"}),"\n",(0,n.jsx)(s.h3,{id:"writexmlschema",children:"WriteXMLSchema"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod WriteXMLSchema(pFile As %String = "") As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Write out the XML schema for a ZEN page definition"}),"\n",(0,n.jsx)(s.h3,{id:"getcssinfo",children:"GetCSSInfo"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetCSSInfo(ByRef pInfo, pType As %String = "HTML") As %Status\n'})}),"\n",(0,n.jsxs)(s.p,{children:['Get CSS info from generated CSS files. pType is "HTML" or "SVG". (ignored) Fills in array pInfo as follows:',(0,n.jsx)(s.br,{}),"\npInfo(class,style) = comment"]}),"\n",(0,n.jsx)(s.h3,{id:"parsecssfile",children:"ParseCSSFile"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ParseCSSFile(pFileName As %String, ByRef pInfo) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Utility method. Opens CSS file, pFileName, and finds all the CSS declarations in it. Fills in array pInfo as follows:",(0,n.jsx)(s.br,{}),"\npInfo(class,style) = comment"]}),"\n",(0,n.jsx)(s.h3,{id:"parsecss",children:"ParseCSS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ParseCSS(pText As %String, Output pParse)\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Utility method to parse a string, pText, containing one or more CSS declarations. Returns an array of parsed declarations in the form:",(0,n.jsx)(s.br,{}),"\npParse(n) = $LB(prop,val)"]}),"\n",(0,n.jsx)(s.h3,{id:"buildcssstring",children:"BuildCSSString"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod BuildCSSString(ByRef pParse) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Take an array of parsed CSS declarations and combine them into a single string."}),"\n",(0,n.jsx)(s.h3,{id:"messages",children:"%Messages"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Messages() [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Misc messages that need to be in the localization global. [Previously private]"}),"\n",(0,n.jsx)(s.h3,{id:"serializelist",children:"%SerializeList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %SerializeList(pList As %Library.AbstractList) As %String [ Internal ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Serialize a list object into a form that can be sent to a client dataController.",(0,n.jsx)(s.br,{}),"\nThe serial state for lists and arrays takes the form:",(0,n.jsx)(s.br,{}),"\nkey:value,key;key2:value",(0,n.jsx)(s.br,{}),"\n(keys may be multi-part; for lists, key is omitted)."]}),"\n",(0,n.jsx)(s.h3,{id:"serializearray",children:"%SerializeArray"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %SerializeArray(pArray As %Library.AbstractArray) As %String [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Serialize an array object into a form that can be sent to a client dataController."}),"\n",(0,n.jsx)(s.h3,{id:"deserializelist",children:"%DeserializeList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DeserializeList(pList As %Library.AbstractList, pData As %String) [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Deserialize data back into a list object."}),"\n",(0,n.jsx)(s.h3,{id:"deserializearray",children:"%DeserializeArray"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DeserializeArray(pArray As %Library.AbstractArray, pData As %String) [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Deserialize data back into an array object."}),"\n",(0,n.jsx)(s.h3,{id:"encodebinarystream",children:"%EncodeBinaryStream"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %EncodeBinaryStream(pStream As %Library.BinaryStream) As %String [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given a binary stream, encode its ID value so that it can be sent to a client image component."}),"\n",(0,n.jsx)(s.h3,{id:"findcomponentclassbyname",children:"%FindComponentClassByName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %FindComponentClassByName(pNamespace As %String, pName As %String) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given an xml namespace and a component name, return the class name of the corresponding Zen component."}),"\n",(0,n.jsx)(s.h3,{id:"ispackageincommondirectory",children:"%IsPackageInCommonDirectory"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %IsPackageInCommonDirectory(pPackage As %String, Output pCommon As %Boolean) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test if include files for the given class package should be placed in the common directory."}),"\n",(0,n.jsx)(s.h3,{id:"browsersupportshtml5",children:"%BrowserSupportsHTML5"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %BrowserSupportsHTML5(pUserAgent As %String = {$select($IsObject($get(%request)): %request.UserAgent, 1: "")}) As %Boolean\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Helper method to determine whether the UserAgent in pUserAgent supports HTML5. If pUserAgent is not supplied and the ",(0,n.jsx)(s.code,{children:"%request"})," object exists, the value of pUserAgent defaults to ",(0,n.jsx)(s.code,{children:"%request.UserAgent"}),"."]}),"\n",(0,n.jsx)(s.h3,{id:"javainstalled",children:"%JavaInstalled"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %JavaInstalled() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Helper method to determine whether java is installed Wraps ##class(%Net.Remote.Service).GetJavaVersion() to provide clear error message ZenMethod wrapper is defined in %ZEN.Component.abstractPage Returns a $$$OK if Java is installed"})]})}function o(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>r,x:()=>i});var n=a(96540);const t={},l=n.createContext(t);function r(e){const s=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:r(e.components),n.createElement(l.Provider,{value:s},e.children)}}}]);