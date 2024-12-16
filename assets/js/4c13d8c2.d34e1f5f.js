"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[5911],{61497:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>a,default:()=>c,frontMatter:()=>n,toc:()=>l});var i=t(74848),r=t(28453);const n={pagination_prev:null,pagination_next:null},a="Config.CommonSingleMethods",l=[{value:"Parameters",id:"parameters",level:2},{value:"CPFFlags",id:"cpfflags",level:3},{value:"PROPERTIESNOTINCPF",id:"propertiesnotincpf",level:3},{value:"PROPERTIESMAYBEINCPF",id:"propertiesmaybeincpf",level:3},{value:"PROPERTIESCOMBINEDINCPF",id:"propertiescombinedincpf",level:3},{value:"SECTIONTYPE",id:"sectiontype",level:3},{value:"NOTRANSACTIONS",id:"notransactions",level:3},{value:"Methods",id:"methods",level:2},{value:"Create",id:"create",level:3},{value:"CreateCallBack",id:"createcallback",level:3},{value:"Get",id:"get",level:3},{value:"GetList",id:"getlist",level:3},{value:"GetProperties",id:"getproperties",level:3},{value:"Modify",id:"modify",level:3},{value:"ModifyOne",id:"modifyone",level:3},{value:"MoveToActive",id:"movetoactive",level:3},{value:"Open",id:"open",level:3},{value:"Validate",id:"validate",level:3},{value:"LoadFromConfigData",id:"loadfromconfigdata",level:3},{value:"WriteSection",id:"writesection",level:3},{value:"%OnDeleteCallBack",id:"ondeletecallback",level:3},{value:"%OnNew",id:"onnew",level:3}];function o(e){const s={a:"a",br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(s.header,{children:(0,i.jsx)(s.h1,{id:"configcommonsinglemethods",children:"Config.CommonSingleMethods"})}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Class Config.CommonSingleMethods Extends (%Persistent, Config.CommonMethods) [ System = 4 ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"This class contains methods which are inherited by other config classes."}),"\n",(0,i.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(s.h3,{id:"cpfflags",children:"CPFFlags"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter CPFFlags [ Internal ] = {1+2+4};\n"})}),"\n",(0,i.jsx)(s.p,{children:"{$$$CPFSave+$$$CPFWrite+$$$CPFActivate};"}),"\n",(0,i.jsx)(s.h3,{id:"propertiesnotincpf",children:"PROPERTIESNOTINCPF"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter PROPERTIESNOTINCPF [ Internal ];\n"})}),"\n",(0,i.jsxs)(s.p,{children:["List of properties which are in the class but not in the CPF file.",(0,i.jsx)(s.br,{}),"\nThese are properties which are combined with other properties to create a property in the CPF file. This will be overridden in classes which require it."]}),"\n",(0,i.jsx)(s.h3,{id:"propertiesmaybeincpf",children:"PROPERTIESMAYBEINCPF"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter PROPERTIESMAYBEINCPF [ Internal ];\n"})}),"\n",(0,i.jsxs)(s.p,{children:["List of properties which may or may not be in the CPF file.",(0,i.jsx)(s.br,{}),'\nThey have a corresponding %Boolean property to determine if they are in the file or not. For example, the property "Asyncwij" will have a %Boolean "AsyncwijPresent" property associated with it.',(0,i.jsx)(s.br,{}),"\nThis will be overridden in classes which require it."]}),"\n",(0,i.jsx)(s.h3,{id:"propertiescombinedincpf",children:"PROPERTIESCOMBINEDINCPF"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter PROPERTIESCOMBINEDINCPF [ Internal ];\n"})}),"\n",(0,i.jsxs)(s.p,{children:["List of properties in the CPF file which are constructed from multiple different properties in this class.",(0,i.jsx)(s.br,{}),"\nThis will be overridden in classes which require it."]}),"\n",(0,i.jsx)(s.h3,{id:"sectiontype",children:"SECTIONTYPE"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SECTIONTYPE [ Internal ] = 0;\n"})}),"\n",(0,i.jsxs)(s.p,{children:["This parameter governs how the class creates audit records.",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Value = 0"})," - Class contains a single entry (SQL, Net, etc.)",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Value = 1"})," - Class contains multiple entries (Databases, Namespaces, etc.)",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Value = 2"})," - Class deals with mappings (MapGlobals, MapRoutines, MapPackages.)"]}),"\n",(0,i.jsx)(s.h3,{id:"notransactions",children:"NOTRANSACTIONS"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter NOTRANSACTIONS [ Internal ] = 0;\n"})}),"\n",(0,i.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(s.h3,{id:"create",children:"Create"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Create(ByRef Properties As %String, CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status [ Internal ]\n'})}),"\n",(0,i.jsx)(s.p,{children:"Create a section in a CPF file."}),"\n",(0,i.jsxs)(s.p,{children:["This is used internally, and should only be called from the Config.CPF.Read method. Parameters:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Properties (byref)"})," - List of the properties to add in Properties(Name)=Value format.",(0,i.jsx)(s.br,{}),"\nSee the subclass for a list of valid properties.",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file. The file must have a .CPF file extension if specified.",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Flags"})," - Bit string of options to perform.",(0,i.jsx)(s.br,{}),"\nSee the Open method for values."]}),"\n",(0,i.jsxs)(s.p,{children:["Return values:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file the modification was made in."]}),"\n",(0,i.jsx)(s.h3,{id:"createcallback",children:"CreateCallBack"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateCallBack(Obj As %ObjectHandle, ByRef Props As %String) [ Internal ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"Stub called during create, individual classes may override this."}),"\n",(0,i.jsx)(s.h3,{id:"get",children:"Get"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Get(ByRef Properties As %String, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status\n'})}),"\n",(0,i.jsx)(s.p,{children:"Get a sections properties from a CPF file."}),"\n",(0,i.jsxs)(s.p,{children:["Parameters:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file. The file must have a .CPF file extension if specified."]}),"\n",(0,i.jsxs)(s.p,{children:["Return values:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Properties (byref)"})," - List of the properties in Properties(Name)=Value format. See the subclass for a list of valid properties.",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file the modification was made in."]}),"\n",(0,i.jsx)(s.h3,{id:"getlist",children:"GetList"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetList(ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status\n'})}),"\n",(0,i.jsxs)(s.p,{children:["Returns the properties from a section in a CPF file by value in ",(0,i.jsx)(s.a,{href:"/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION",children:"$list"})," format"]}),"\n",(0,i.jsxs)(s.p,{children:["Parameters:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file. The file must have a .CPF file extension if specified."]}),"\n",(0,i.jsxs)(s.p,{children:["Return value:",(0,i.jsx)(s.br,{}),"\n$lb(%Status,Result)",(0,i.jsx)(s.br,{}),"\nwhere Result=$LB($LB(property name,value),...) for each property in the section"]}),"\n",(0,i.jsx)(s.h3,{id:"getproperties",children:"GetProperties"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetProperties(Obj As %ObjectHandle, ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"Get a section's properties from a CPF file."}),"\n",(0,i.jsxs)(s.p,{children:["Parameters:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Config"})," - Object handle to config section"]}),"\n",(0,i.jsxs)(s.p,{children:["Return values:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Properties (byref)"})," - List of the properties in Properties(Name)=Value format. See the subclass for a list of valid properties."]}),"\n",(0,i.jsx)(s.h3,{id:"modify",children:"Modify"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Modify(ByRef Properties As %String, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %Status\n'})}),"\n",(0,i.jsx)(s.p,{children:"Modify a sections properties in a CPF file."}),"\n",(0,i.jsxs)(s.p,{children:["Parameters:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Properties (byref)"})," - List of the properties to modify in Properties(Name)=Value format. See the subclass for a list of valid properties. If a specific property is not passed in the properties array, the value is not modified.",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file. The file must have a .CPF file extension if specified.",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Flags"})," - Bit string of options to perform if the object is later saved with the %Save() method. See the Open method for values."]}),"\n",(0,i.jsxs)(s.p,{children:["Return values:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file the modification was made in."]}),"\n",(0,i.jsx)(s.h3,{id:"modifyone",children:"ModifyOne"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ModifyOne(ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"movetoactive",children:"MoveToActive"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod MoveToActive(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]\n'})}),"\n",(0,i.jsxs)(s.p,{children:["Load the parameters into memory and activate.",(0,i.jsx)(s.br,{}),"\nParameters:",(0,i.jsx)(s.br,{}),"\nParameters:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Obj"}),' = Handle to the object which caused the load. If "", then load everything, only called from STU.',(0,i.jsx)(s.br,{}),"\nIf a delete operation, then Obj is the NAME of the item which was deleted since the oject itself has already been deleted.",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Flags"})," = Type of modification.",(0,i.jsx)(s.br,{}),"\n0 - Modify",(0,i.jsx)(s.br,{}),"\n1 - Create/Insert",(0,i.jsx)(s.br,{}),"\n2 - Delete"]}),"\n",(0,i.jsx)(s.h3,{id:"open",children:"Open"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Open(ByRef CPFFile As %String = "", concurrency As %Integer = -1, ByRef Status As %Status, Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) As %ObjectHandle\n'})}),"\n",(0,i.jsx)(s.p,{children:"Open an instance of an section object in a CPF file."}),"\n",(0,i.jsxs)(s.p,{children:["Parameters:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file. The file must have a .CPF file extension if specified.",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Flags"})," - (From %syConfig.inc) Bit string of options to perform if the object is later saved with the %Save() method.",(0,i.jsx)(s.br,{}),"\nBit $$$CPFSave - Save - Save data to config database.",(0,i.jsx)(s.br,{}),"\nBit $$$CPFWrite - Write - Write config database to CPF file.",(0,i.jsx)(s.br,{}),"\nBit $$$CPFActivate - Activate - Copy changes to ^CONFIG global, and make active on system.",(0,i.jsx)(s.br,{}),"\nBy default, all these bits are set, and you should normally not pass this parameter. If you are modifying a CPF file which is not the active CPF file, Bit $$$CPFActivate is ignored."]}),"\n",(0,i.jsxs)(s.p,{children:["Return Values:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file the modification was made in."]}),"\n",(0,i.jsx)(s.h3,{id:"validate",children:"Validate"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Validate(ByRef Properties As %String, DontValidateProperties As %String = "", MayBePresent As %String = "", Flags = 0) As %Status [ Internal ]\n'})}),"\n",(0,i.jsxs)(s.p,{children:["Validate properties in passed array.",(0,i.jsx)(s.br,{}),"\nValidate an array of properties passed in to determine if they are really properties of the class. A property will match if it is spelled correctly. Case does not have to match. After the property is validated as being a member of this class, the data value of the property is evaluated to make sure it passes the data constraints of the property. Parameters:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Properties (byref)"}),' - List of the properties to add in Properties(Name)=Value format. Properties(Name,"Line")=CPFLineNumber should be set to the line number in the CPF file if being read in (internal use only.)',(0,i.jsx)(s.br,{}),"\nSee the list of properties for more information.",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"DontValidateProperties"})," - Comma separated list of properties not to validate.",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Flags"})," - Bit string of options to perform.",(0,i.jsx)(s.br,{}),"\nBit 0 - All properties must be specified in the array."]}),"\n",(0,i.jsx)(s.h3,{id:"loadfromconfigdata",children:"LoadFromConfigData"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method LoadFromConfigData(OID As %String) As %Status [ Internal ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"A public methiod to call %LoadData() to reload the properties into this object."}),"\n",(0,i.jsx)(s.h3,{id:"writesection",children:"WriteSection"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteSection(CPFFile As %String) As %Status [ Internal ]\n"})}),"\n",(0,i.jsxs)(s.p,{children:["Write a section to the CPF file from the Config database.",(0,i.jsx)(s.br,{}),"\nThis method assumes that the CPF file has been opened, and USED."]}),"\n",(0,i.jsxs)(s.p,{children:["Parameters:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file. The file must have a .CPF file extension if specified."]}),"\n",(0,i.jsx)(s.h3,{id:"ondeletecallback",children:"%OnDeleteCallBack"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OnDeleteCallBack(oid As %ObjectHandle) As %Status [ Internal, Private ]\n"})}),"\n",(0,i.jsxs)(s.p,{children:["Callback method executed during a delete.",(0,i.jsx)(s.br,{}),"\nFor this type of CPF section, we don't allow it to be deleted."]}),"\n",(0,i.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew(initvalue As %RawString) As %Status [ Internal, Private ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"This callback method is executed when a %New() on the object is done."})]})}function c(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,i.jsx)(s,{...e,children:(0,i.jsx)(o,{...e})}):o(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>a,x:()=>l});var i=t(96540);const r={},n=i.createContext(r);function a(e){const s=i.useContext(n);return i.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),i.createElement(n.Provider,{value:s},e.children)}}}]);