"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[76165],{8097:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>a,default:()=>c,frontMatter:()=>i,toc:()=>l});var n=t(74848),r=t(28453);const i={pagination_prev:null,pagination_next:null},a="Config.GenericMapMethods",l=[{value:"Parameters",id:"parameters",level:2},{value:"CPFFlags",id:"cpfflags",level:3},{value:"SECTIONTYPE",id:"sectiontype",level:3},{value:"CAPITALNAME",id:"capitalname",level:3},{value:"Methods",id:"methods",level:2},{value:"Create",id:"create",level:3},{value:"CreateOne",id:"createone",level:3},{value:"Default",id:"default",level:3},{value:"Delete",id:"delete",level:3},{value:"DeleteOne",id:"deleteone",level:3},{value:"Exists",id:"exists",level:3},{value:"Get",id:"get",level:3},{value:"GetList",id:"getlist",level:3},{value:"Load",id:"load",level:3},{value:"Modify",id:"modify",level:3},{value:"ModifyOne",id:"modifyone",level:3},{value:"MoveToActive",id:"movetoactive",level:3},{value:"Open",id:"open",level:3},{value:"WriteSectionID",id:"writesectionid",level:3},{value:"%OnNew",id:"onnew",level:3}];function o(e){const s={a:"a",br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"configgenericmapmethods",children:"Config.GenericMapMethods"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class Config.GenericMapMethods Extends Config.CommonMethods [ LegacyInstanceContext, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This class contains methods which are common (inherited) by classes which manipulate namespace mappings in the CPF file."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"cpfflags",children:"CPFFlags"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter CPFFlags [ Internal ] = {1+2+4};\n"})}),"\n",(0,n.jsx)(s.p,{children:"{$$$CPFSave+$$$CPFWrite+$$$CPFActivate};"}),"\n",(0,n.jsx)(s.h3,{id:"sectiontype",children:"SECTIONTYPE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SECTIONTYPE = 3;\n"})}),"\n",(0,n.jsxs)(s.p,{children:["This parameter governs how the class creates audit records.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Value = 0"})," - Class contains a single entry (SQL, Net, etc.)",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Value = 1"})," - Class contains multiple entries (Databases, Namespaces, etc.)",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Value = 2"})," - Class deals with mappings (MapGlobals, MapRoutines, MapPackages.)"]}),"\n",(0,n.jsx)(s.h3,{id:"capitalname",children:"CAPITALNAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter CAPITALNAME = 0;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Determines if the Name specified in the index should be capitalized."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"create",children:"Create"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Create(ID As %String, Name As %String, ByRef Properties As %String, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Create a mapping in the CPF file.",(0,n.jsx)(s.br,{}),"\nParameters:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Namespace"})," - Namespace to create mapping for.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Name"})," - Name of the mapping.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Properties"})," - Array of properties used to create the mapping. See the subclass for a list of valid properties.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Flags"})," - Bit string of flags which governs how the mappings are added.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Bit $$$CPFSave"})," - Save the Mappings to the CPF object.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Bit $$$CPFWrite"})," - Write the CPF object to the CPF file.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Bit $$$CPFActivate"})," - Activate the Mappings on the system if the CPF file is the current active file.",(0,n.jsx)(s.br,{}),"\nBy default, all these bits are set, and you should normally not pass this parameter. If you are modifying a CPF file which is not the active CPF file, Bit $$$CPFActivate is ignored.",(0,n.jsx)(s.br,{}),"\nIf you have a batch of updates to do to the same namespace, then you should pass only Bit $$$CPFSave for each call. Then when creating the last one, don't pass this parameter (default=All bits). This will cause all the previous additions to be written to the CPF file and activated all at once.",(0,n.jsx)(s.br,{}),"\nIf you want to update several different namespaces at the same time you should use the following mechanism:"]}),"\n",(0,n.jsxs)(s.ol,{children:["\n",(0,n.jsx)(s.li,{children:"Pass the flag $$$CPFSave on all the calls to update the object (without writing to the CPF or activating it.) You could also pass the Write to CPF flag here if you want all your changes written out to the CPF immediately."}),"\n",(0,n.jsx)(s.li,{children:"When you are finished with your updates, call Config.CPF.Write() to write out your changes to the CPF file (if you didn't pass the write to cpf flag in step #1)"}),"\n",(0,n.jsxs)(s.li,{children:["Now Call Config.CPF.Activate() to load and activate all the new mappings.",(0,n.jsx)(s.br,{}),"\nReturn values:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file the modification was made in."]}),"\n"]}),"\n",(0,n.jsx)(s.h3,{id:"createone",children:"CreateOne"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateOne(ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"default",children:"Default"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Default(CPFFile As %String, Platform As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"No default mapping section in a CPF file."}),"\n",(0,n.jsx)(s.h3,{id:"delete",children:"Delete"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Delete(ID As %String, Name As %String, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Delete a mapping from a CPF file."}),"\n",(0,n.jsxs)(s.p,{children:["Parameters:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Namespace"})," - Namespace to delete the mapping from.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Name"})," - Name of the mapping to delete.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Flags"})," - Bit string of options to perform. See the Create method for values."]}),"\n",(0,n.jsxs)(s.p,{children:["Return values:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file the modification was made in."]}),"\n",(0,n.jsx)(s.h3,{id:"deleteone",children:"DeleteOne"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteOne(ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"exists",children:"Exists"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Exists(ID, Name As %String, ByRef Obj As %ObjectHandle, ByRef Status As %Status, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Boolean\n'})}),"\n",(0,n.jsx)(s.p,{children:"Checks for the existence of a mapping in a CPF file."}),"\n",(0,n.jsxs)(s.p,{children:["Parameters:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Namespace"})," - Namespace of the mapping.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Name"})," - Name of the mapping to check existence of.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Flags"})," - Bit string of options to perform if the object is later saved with the %Save() method. See the Create method for values."]}),"\n",(0,n.jsxs)(s.p,{children:["Return values:",(0,n.jsx)(s.br,{}),"\nIf Value of the method = 0 (Mapping does not exist, or some error occured)",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Obj"})," = Null",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Status"}),' = Mapping "x" does not exist, or other error message']}),"\n",(0,n.jsxs)(s.p,{children:["If Value of the method = 1 (Mapping exists)",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Obj"})," = Object handle to Mapping",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile"})," = Name of the CPF file the properties were retrieved from.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Status"}),' = MapGlobal "x" already exists']}),"\n",(0,n.jsx)(s.h3,{id:"get",children:"Get"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Get(ID As %String, Name As %String, ByRef Properties As %String, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Get a mapping's properties from a CPF file."}),"\n",(0,n.jsxs)(s.p,{children:["Parameters:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"ID"})," - ID of the mapping.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Name"})," - Name of the instance within the mapping to retrieve.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile"})," - Name of the CPF file to use, Default=current active CPF file."]}),"\n",(0,n.jsxs)(s.p,{children:["Return values:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Properties (byref)"})," - List of the properties in Properties(Name)=Value format. See the subclass for a list of valid properties.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file the properties were retrieved from."]}),"\n",(0,n.jsx)(s.h3,{id:"getlist",children:"GetList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetList(ID As %String, Name As %String, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Returns the properties from a instance of a mapping section from a CPF file by value in ",(0,n.jsx)(s.a,{href:"/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION",children:"$list"})," format"]}),"\n",(0,n.jsxs)(s.p,{children:["Parameters:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"ID"})," - Instance ID for the mapping.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Name"})," - Name of the instance within the mapping ID to retrieve.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile"})," - Name of the CPF file to use, Default=current active CPF file."]}),"\n",(0,n.jsxs)(s.p,{children:["Return value:",(0,n.jsx)(s.br,{}),"\n$lb(%Status,Result)",(0,n.jsx)(s.br,{}),"\nwhere Result=$LB($LB(property name,value),...) for each property in the instance of the section"]}),"\n",(0,n.jsx)(s.h3,{id:"load",children:"Load"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Load the parameters into memory and activate.",(0,n.jsx)(s.br,{}),"\nParameters:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Obj"}),' = Handle to the object which caused the load. If "", then load everything, only called from STU.',(0,n.jsx)(s.br,{}),"\nIf a delete operation, then Obj is the NAME of the item which was deleted since the oject itself has already been deleted.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Flags"})," = Type of modification.",(0,n.jsx)(s.br,{}),"\n0 - Modify",(0,n.jsx)(s.br,{}),"\n1 - Create/Insert",(0,n.jsx)(s.br,{}),"\n2 - Delete"]}),"\n",(0,n.jsx)(s.h3,{id:"modify",children:"Modify"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Modify(ID As %String, Name As %String, ByRef Properties As %String, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Modify a mapping in a CPF file."}),"\n",(0,n.jsxs)(s.p,{children:["Parameters:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Namespace"})," - Namespace of the mapping.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Name"})," - Name of the mapping to modify.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Properties (byref)"})," - List of the properties to modify in Properties(Name)=Value format. See the subclass for a list of valid properties. If a specific property is not passed in the properties array, the value is not modified.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Flags"})," - Bit string of options to perform. See the Create method for values."]}),"\n",(0,n.jsxs)(s.p,{children:["Return values:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file the modification was made in."]}),"\n",(0,n.jsx)(s.h3,{id:"modifyone",children:"ModifyOne"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ModifyOne(ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"movetoactive",children:"MoveToActive"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod MoveToActive(Obj As %ObjectHandle = "", Flags As %Integer = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Load the parameters into memory and activate.",(0,n.jsx)(s.br,{}),"\nParameters:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Obj"}),' = Handle to the object which caused the load. If "", then load everything, only called from STU.',(0,n.jsx)(s.br,{}),"\nIf a delete operation, then Obj is the NAME of the item which was deleted since the oject itself has already been deleted.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Flags"})," = Type of modification.",(0,n.jsx)(s.br,{}),"\n0 - Insert",(0,n.jsx)(s.br,{}),"\n1 - Modify",(0,n.jsx)(s.br,{}),"\n2 - Delete"]}),"\n",(0,n.jsx)(s.h3,{id:"open",children:"Open"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Open(ID As %String, Name As %String, ByRef CPFFile As %String = "", concurrency As %Integer = -1, ByRef Status As %Status, Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %ObjectHandle\n'})}),"\n",(0,n.jsx)(s.p,{children:"Open an instance of a mapping object in a CPF file."}),"\n",(0,n.jsxs)(s.p,{children:["Parameters:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Name"})," - Name of the mapping to open",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Flags"})," - Bit string of options to perform if the object is later saved with the %Save() method. See the Create method for values."]}),"\n",(0,n.jsxs)(s.p,{children:["Return Values:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file the object was opened in."]}),"\n",(0,n.jsx)(s.h3,{id:"writesectionid",children:"WriteSectionID"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteSectionID(ID As %String, ByRef CommentNext As %String, CPFFile As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Write a section to the CPF file from the Config database for s single namespace.",(0,n.jsx)(s.br,{}),"\nThis method assumes that the CPF file has been opened, and USED."]}),"\n",(0,n.jsxs)(s.p,{children:["Parameters:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"Namespace"})," - Namespace of the mapping.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CommentNext"})," by ref - Array of comments to be written out before the next section is written.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"CPFFile"})," - Name of the CPF file being written."]}),"\n",(0,n.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew(initvalue As %RawString) As %Status [ Internal, Private ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Set the Section header of the index to the class name."})]})}function c(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>a,x:()=>l});var n=t(96540);const r={},i=n.createContext(r);function a(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);