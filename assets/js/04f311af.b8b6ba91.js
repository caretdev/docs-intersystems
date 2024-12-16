"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[59173],{57475:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>r,default:()=>c,frontMatter:()=>t,toc:()=>a});var i=n(74848),l=n(28453);const t={pagination_prev:null,pagination_next:null},r="%SYSTEM.OBJ.FM2Class",a=[{value:"Methods",id:"methods",level:2},{value:"All",id:"all",level:3},{value:"One",id:"one",level:3},{value:"Some",id:"some",level:3},{value:"Version",id:"version",level:3},{value:"GetVersion",id:"getversion",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,l.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(s.header,{children:(0,i.jsx)(s.h1,{id:"systemobjfm2class",children:"%SYSTEM.OBJ.FM2Class"})}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYSTEM.OBJ.FM2Class Extends %SYSTEM.Help [ Abstract, System = 4 ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"The %SYSTEM.OBJ.FM2Class class provides an interface for mapping FileMan files to InterSystems classes."}),"\n",(0,i.jsxs)(s.p,{children:["You can use it via the special ",(0,i.jsx)(s.strong,{children:"$system"})," object: ",(0,i.jsx)(s.code,{children:"Do $system.OBJ.FM2Class.All(,.count)"})]}),"\n",(0,i.jsx)(s.p,{children:"Note: The FileMan toolset is available and fully supported in InterSystems IRIS for existing FileMan users. InterSystems recommends against starting new development projects using FileMan."}),"\n",(0,i.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(s.h3,{id:"all",children:"All"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod All(ByRef fmSettings, ByRef classCount As %Integer)\n"})}),"\n",(0,i.jsx)(s.p,{children:"Maps all FileMan files in the current namespace to class definitions."}),"\n",(0,i.jsxs)(s.p,{children:["For example: ",(0,i.jsx)(s.code,{children:"Do $System.OBJ.FM2Class.All(.fmSettings,.classCount)"})]}),"\n",(0,i.jsx)(s.h3,{id:"one",children:"One"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod One(fileNumber As %Numeric = "", ByRef fmSettings, ByRef fmFields, ByRef classCount As %Integer)\n'})}),"\n",(0,i.jsx)(s.p,{children:"Maps a single FileMan file in the current namespace to a class definition."}),"\n",(0,i.jsx)(s.p,{children:"Arguments:"}),"\n",(0,i.jsx)(s.p,{children:"fileNumber = The FileMan File number of the file you want to map to a class"}),"\n",(0,i.jsx)(s.p,{children:"fmSettings = FileMan configuration settings to use for this call. This is an array passed by reference. Defaults for the settings come from the FileMan-to-Class configuration settings."}),"\n",(0,i.jsx)(s.p,{children:"fmFields = If defined, limits the fields in the file that will be mapped. This is an array of the form fmFields(file-number,field-number). Any required fields and fields defined in this array will be mapped in the class definition. If this array is empty or not defined, all fields in the file will be mapped. This array is passed by reference."}),"\n",(0,i.jsx)(s.p,{children:"classCount = This parameter is passed by reference and will return a count of the classes created."}),"\n",(0,i.jsx)(s.p,{children:"Depending on the arguments passed in, this API may actually result in the generate of multiple classes. We might generate reference classes for pointer fields and child classes for Sub-Files/Multiples."}),"\n",(0,i.jsxs)(s.p,{children:["Some examples: ",(0,i.jsx)(s.code,{children:'Set fmSettings("recursion")=0 // Only map this file Set fmSettings("display")=1 // Short screen display Set fmSettings("logFile")="C:\\Map\\NEW PERSON.log" // Map only the following fields from the "NEW PERSON" file: // NAME, STREET ADDRESS 1, STREET ADDRESS 2, STREET ADDRESS 3 // CITY, STATE, ZIP CODE, PHONE (HOME), OFFICE PHONE, EMAIL ADDRESS // (Plus any required fields in the NEW PERSON file) For n=.01,.111,.112,.113,.114,.115,.116,.131,.132,.151 { Set fmFields(200,n)=0 } Do $System.OBJ.FM2Class.One(200,.fmSettings,.fmFields)'})," ",(0,i.jsx)(s.code,{children:'Set fmSettings("compile")=0 Set fmSettings("recursion")=2 // Map all fields and all related files for the NEW PERSON file Do $System.OBJ.FM2Class.One(200,.fmSettings,,.count) Write !,count," classes mapped."'})]}),"\n",(0,i.jsx)(s.h3,{id:"some",children:"Some"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Some(fileList As %String = "", ByRef fmSettings, ByRef fmFields, ByRef classCount As %Integer)\n'})}),"\n",(0,i.jsx)(s.p,{children:"Maps a list of FileMan files in the current namespace to a class definition."}),"\n",(0,i.jsx)(s.p,{children:"Arguments:"}),"\n",(0,i.jsx)(s.p,{children:"fileList = The FileMan File numbers of the files you want to map to a classes. fileList is a comma delimited list of file number or ranges of file numbers."}),"\n",(0,i.jsx)(s.p,{children:"fmSettings = FileMan configuration settings to use for this call. This is an array passed by reference. Defaults for the settings come from the FileMan-to-Class configuration settings."}),"\n",(0,i.jsx)(s.p,{children:"fmFields = If defined, limits the fields in the file that will be mapped. This is an array of the form fmFields(file-number,field-number). Any required fields and fields defined in this array will be mapped in the class definition. If this array is empty or not defined, all fields in the file will be mapped. This array is passed by reference."}),"\n",(0,i.jsx)(s.p,{children:"classCount = This parameter is passed by reference and will return a count of the classes created."}),"\n",(0,i.jsx)(s.p,{children:"Depending on the arguments passed in, this API may actually result in the generate of more classes that files specified. We might generate reference classes for pointer fields and child classes for Sub-Files/Multiples."}),"\n",(0,i.jsxs)(s.p,{children:["Some examples: ",(0,i.jsx)(s.code,{children:'Set fmSettings("recursion")=0 // Only map this file Set fmSettings("display")=1 // Short screen display Set fmSettings("logFile")="C:\\Map\\NEW PERSON and DENTAL.log" // Map only the following fields from the "NEW PERSON" file: // NAME, STREET ADDRESS 1, STREET ADDRESS 2, STREET ADDRESS 3 // CITY, STATE, ZIP CODE, PHONE (HOME), OFFICE PHONE, EMAIL ADDRESS // (Plus any required fields in the NEW PERSON file) // All fields from the DENTAL* files will be mapped For n=.01,.111,.112,.113,.114,.115,.116,.131,.132,.151 { Set fmFields(200,n)=0 } Do $System.OBJ.FM2Class.Some("200,220:226,727.806",.fmSettings,.fmFields)'})]}),"\n",(0,i.jsx)(s.h3,{id:"version",children:"Version"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Version() As %Library.String\n"})}),"\n",(0,i.jsx)(s.p,{children:"Displays the version of the FM2Class utility"}),"\n",(0,i.jsx)(s.h3,{id:"getversion",children:"GetVersion"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetVersion() As %Library.String\n"})}),"\n",(0,i.jsx)(s.p,{children:"Returns the version of the FM2Class utility"})]})}function c(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,i.jsx)(s,{...e,children:(0,i.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>r,x:()=>a});var i=n(96540);const l={},t=i.createContext(l);function r(e){const s=i.useContext(t);return i.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),i.createElement(t.Provider,{value:s},e.children)}}}]);