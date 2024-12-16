"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[78198],{39966:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>i,default:()=>c,frontMatter:()=>n,toc:()=>o});var r=s(74848),a=s(28453);const n={pagination_prev:null,pagination_next:null},i="Config.SqlUserDatatypes",o=[{value:"Properties",id:"properties",level:2},{value:"Datatype",id:"datatype",level:3},{value:"Methods",id:"methods",level:2},{value:"CreateCallBack",id:"createcallback",level:3},{value:"Load",id:"load",level:3},{value:"ListExecute",id:"listexecute",level:3},{value:"ListFetch",id:"listfetch",level:3},{value:"ListClose",id:"listclose",level:3}];function l(e){const t={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,a.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"configsqluserdatatypes",children:"Config.SqlUserDatatypes"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class Config.SqlUserDatatypes Extends (%Persistent, Config.CommonMultipleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]\n"})}),"\n",(0,r.jsxs)(t.p,{children:["This class allows you to modify and view the [SqlUserDatatypes] section of the CPF file through programatic APIs. While properties are usually modified through the System Management portal, there may be some occasion where modifying them through the API's is best for your system. In all the Config methods, if you do not specify the CPFFile parameter, the currently active CPF file is used. If you wish to modify a CPF file which is not the currently active one, then specify the CPFFile you wish to modify in the method call.",(0,r.jsx)(t.br,{}),"\nThe Flags parameter does not normally need to be specified; the defaults are usually sufficient for most cases.",(0,r.jsx)(t.br,{}),"\nYou can use either the provided API's (Create/Get/Modify/Delete) to modify the properties by passing in the correct parameters, or use Object syntax to open and directly manipulate the config objects (Open() and Exists()). Most objects created here need only to specify the Name of the object, and 1 or 2 properties since the the defaults are what are commonly used for most cases."]}),"\n",(0,r.jsx)(t.p,{children:"EXAMPLE:"}),"\n",(0,r.jsxs)(t.p,{children:['; Use class methods to create an instance %SYS>s Name="BIGNEWINT" %SYS>s Properties("Datatype")="%Library.BigNEWInt" %SYS>s Status=##Class(Config.SqlUserDatatypes).Create(Name,.Properties) %SYS>i \'Status w !,"Error="',(0,r.jsx)(t.em,{children:'$SYSTEM.Status.GetErrorText(Status) ; Use class methods to modify properties %SYS>s Status=##Class(Config.SqlUserDatatypes).Get(Name,.Properties) %SYS>i \'Status w !,"Error="'}),'$SYSTEM.Status.GetErrorText(Status) %SYS>zw Properties Properties("Datatype")="%Library.BigNEWInt" %SYS>s Properties("Datatype")="%Library.BigOLDInt" %SYS>s Status=##Class(Config.SqlUserDatatypes).Modify(Name,.Properties) %SYS>i \'Status w !,"Error="',(0,r.jsx)(t.em,{children:'$SYSTEM.Status.GetErrorText(Status) ; Now use Objects to modify properties %SYS>s Obj=##Class(Config.SqlUserDatatypes).Open(Name) ; We could have used i ##Class(Config.SqlUserDatatypes).Exists(Name,.Obj) instead of Open() %SYS>w Obj.Datatype "%Library.BigNOLDInt %SYS>s Obj.Datatype="%Library.BigNRealNewInt %SYS>s Status=Obj.%Save() %SYS>i \'Status w !,"Error="'}),'$SYSTEM.Status.GetErrorText(Status) ; Now delete the object we just created %SYS>s Status=##Class(Config.SqlUserDatatypes).Delete(Name) %SYS>i \'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)']}),"\n",(0,r.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(t.h3,{id:"datatype",children:"Datatype"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property Datatype As %String(MAXLEN = 256, MINLEN = 1) [ Required ];\n"})}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"createcallback",children:"CreateCallBack"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CreateCallBack(Obj As %ObjectHandle, Data As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Called by the Create method during import from a CPF file."}),"\n",(0,r.jsx)(t.h3,{id:"load",children:"Load"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]\n'})}),"\n",(0,r.jsxs)(t.p,{children:["Load the parameters into memory and activate.",(0,r.jsx)(t.br,{}),"\nParameters:",(0,r.jsx)(t.br,{}),"\n",(0,r.jsx)(t.strong,{children:"Obj"}),' = Handle to the object which caused the load. If "", then load everything, only called from STU.',(0,r.jsx)(t.br,{}),"\nIf a delete operation, then Obj is the NAME of the item which was deleted since the oject itself has already been deleted.",(0,r.jsx)(t.br,{}),"\n",(0,r.jsx)(t.strong,{children:"Flags"})," = Type of modification.",(0,r.jsx)(t.br,{}),"\n0 - Modify",(0,r.jsx)(t.br,{}),"\n1 - Create/Insert",(0,r.jsx)(t.br,{}),"\n2 - Delete"]}),"\n",(0,r.jsx)(t.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod ListExecute(ByRef %qHandle As %Binary, Names As %String = "*", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(t.p,{children:"List SqlUserDatatypes in a CPF file."}),"\n",(0,r.jsxs)(t.p,{children:["Parameters:",(0,r.jsx)(t.br,{}),"\n",(0,r.jsx)(t.strong,{children:"Names"})," - Comma separated list of SqlUserDatatype names",(0,r.jsx)(t.br,{}),'\n"*" - All records match',(0,r.jsx)(t.br,{}),'\n"String,String1" - Any records matching one of these elements',(0,r.jsx)(t.br,{}),'\n"String*" - Any record starting with "String"',(0,r.jsx)(t.br,{}),'\n"String,String1*,String2" - Any record matching one of these elements, or starting with "String1"',(0,r.jsx)(t.br,{}),"\n",(0,r.jsx)(t.strong,{children:"CPFFile"})," - Name of the CPF file to use. A null string means use the active CPF file.",(0,r.jsx)(t.br,{}),"\n",(0,r.jsx)(t.strong,{children:"Flags"})," - Currently ignored.",(0,r.jsx)(t.br,{}),"\n",(0,r.jsx)(t.strong,{children:"Format"}),(0,r.jsx)(t.br,{}),"\n0 - Standard report list format",(0,r.jsx)(t.br,{}),"\n1 - ^CONFIG global format",(0,r.jsx)(t.br,{}),"\n2 - CPF file format format",(0,r.jsx)(t.br,{}),"\nNote: This query may change in future versions"]}),"\n",(0,r.jsx)(t.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"listclose",children:"ListClose"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})})]})}function c(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>i,x:()=>o});var r=s(96540);const a={},n=r.createContext(a);function i(e){const t=r.useContext(n);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),r.createElement(n.Provider,{value:t},e.children)}}}]);