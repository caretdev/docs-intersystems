"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[27306],{3183:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>l,default:()=>c,frontMatter:()=>n,toc:()=>i});var r=t(74848),a=t(28453);const n={pagination_prev:null,pagination_next:null},l="Config.WorkQueues",i=[{value:"Parameters",id:"parameters",level:2},{value:"CPFFlags",id:"cpfflags",level:3},{value:"CAPITALNAME",id:"capitalname",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"SystemWorkQueues",id:"systemworkqueues",level:3},{value:"Properties",id:"properties",level:2},{value:"DefaultWorkers",id:"defaultworkers",level:3},{value:"MaxActiveWorkers",id:"maxactiveworkers",level:3},{value:"MaxWorkers",id:"maxworkers",level:3},{value:"MaxTotalWorkers",id:"maxtotalworkers",level:3},{value:"AlwaysQueue",id:"alwaysqueue",level:3},{value:"Methods",id:"methods",level:2},{value:"CreateCallBack",id:"createcallback",level:3},{value:"Default",id:"default",level:3},{value:"CreateDefaults",id:"createdefaults",level:3},{value:"IsSystemWorkQueue",id:"issystemworkqueue",level:3},{value:"Load",id:"load",level:3},{value:"MaxWorkersAvailable",id:"maxworkersavailable",level:3},{value:"%OnBeforeSaveCallBack",id:"onbeforesavecallback",level:3},{value:"%OnDeleteCallBack",id:"ondeletecallback",level:3},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"ListExecute",id:"listexecute",level:3},{value:"ListFetch",id:"listfetch",level:3},{value:"ListClose",id:"listclose",level:3},{value:"ListFilterExecute",id:"listfilterexecute",level:3},{value:"ListFilterFetch",id:"listfilterfetch",level:3},{value:"ListFilterClose",id:"listfilterclose",level:3}];function o(e){const s={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,a.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"configworkqueues",children:"Config.WorkQueues"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class Config.WorkQueues Extends (%Persistent, Config.CommonMultipleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["This class allows you to modify and view the [WorkQueues] section of the CPF file through programatic APIs. While properties are usually modified through the System Management portal, there may be some occasion where modifying them through the API's is best for your system. In all the Config methods, if you do not specify the CPFFile parameter, the currently active CPF file is used. If you wish to modify a CPF file which is not the currently active one, then specify the CPFFile you wish to modify in the method call.",(0,r.jsx)(s.br,{}),"\nThe Flags parameter does not normally need to be specified; the defaults are usually sufficient for most cases.",(0,r.jsx)(s.br,{}),"\nYou can use either the provided API's (Create/Get/Modify/Delete) to modify the properties by passing in the correct parameters, or use Object syntax to open and directly manipulate the config objects (Open() and Exists()). Most objects created here need only to specify the Name of the object, and 1 or 2 properties since the the defaults are what are commonly used for most cases."]}),"\n",(0,r.jsx)(s.p,{children:"EXAMPLE:"}),"\n",(0,r.jsxs)(s.p,{children:['; Use class methods to create an instance %SYS>s Name="TEST" %SYS>s Properties("MaxActiveWorkers")=8 %SYS>s Status=##Class(Config.WorkQueues).Create(Name,.Properties) %SYS>i \'Status w !,"Error="',(0,r.jsx)(s.em,{children:'$SYSTEM.Status.GetErrorText(Status) ; Use class methods to modify properties %SYS>s Status=##Class(Config.WorkQueues).Get(Name,.Properties) %SYS>i \'Status w !,"Error="'}),'$SYSTEM.Status.GetErrorText(Status) %SYS>zw Properties Properties("DefaultWorkers")=0 Properties("MaxWorkers")=0 Properties("MaxActiveWorkers")=8 %SYS>s Properties("MaxActiveWorkers")=4 %SYS>s Status=##Class(Config.WorkQueues).Modify(Name,.Properties) %SYS>i \'Status w !,"Error="',(0,r.jsx)(s.em,{children:'$SYSTEM.Status.GetErrorText(Status) ; Now use Objects to modify properties %SYS>s Obj=##Class(Config.WorkQueues).Open(Name) ; We could have used i ##Class(Config.WorkQueues).Exists(Name,.Obj) instead of Open() %SYS>w Obj.MaxActiveWorkers 4 %SYS>s Obj.MaxWorkers=2 %SYS>s Status=Obj.%Save() %SYS>i \'Status w !,"Error="'}),'$SYSTEM.Status.GetErrorText(Status) ; Now delete the object we just created %SYS>s Status=##Class(Config.WorkQueues).Delete(Name) %SYS>i \'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)']}),"\n",(0,r.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(s.h3,{id:"cpfflags",children:"CPFFlags"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter CPFFlags [ Internal ] = {1};\n"})}),"\n",(0,r.jsx)(s.p,{children:"{$$$CPFSave};"}),"\n",(0,r.jsx)(s.h3,{id:"capitalname",children:"CAPITALNAME"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter CAPITALNAME = 0;\n"})}),"\n",(0,r.jsx)(s.p,{children:"WorkQueue name is not capitalized."}),"\n",(0,r.jsx)(s.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE [ Internal ] = "WorkQueue";\n'})}),"\n",(0,r.jsx)(s.h3,{id:"systemworkqueues",children:"SystemWorkQueues"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SystemWorkQueues [ Internal ] = "SQL,Default,Utility";\n'})}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"defaultworkers",children:"DefaultWorkers"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property DefaultWorkers As %Integer(MINVAL = 0) [ InitialExpression = 0, Required ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"When a work group in this category is created and no worker job count is specified this is the default number of worker jobs we will assign to the group. 0 = Dynamic."}),"\n",(0,r.jsx)(s.h3,{id:"maxactiveworkers",children:"MaxActiveWorkers"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property MaxActiveWorkers As %Integer(MINVAL = 0) [ InitialExpression = 0, Required ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Maximum number of active worker jobs we will keep in the pool of jobs servicing requests in this category. Idle jobs are detected and new jobs are started automatically to keep the maximum active job number around this limit. 0 = Dynamic, -1 = unlimited."}),"\n",(0,r.jsx)(s.h3,{id:"maxworkers",children:"MaxWorkers"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property MaxWorkers As %Integer(MINVAL = 0) [ InitialExpression = 0, Required ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"When a work group in this category is created specifying the number of worker jobs wanted and the number requested is greater than this limit then we will use this limit value instead. 0 = Dynamic"}),"\n",(0,r.jsx)(s.h3,{id:"maxtotalworkers",children:"MaxTotalWorkers"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property MaxTotalWorkers As %Integer(MINVAL = 0) [ InitialExpression = 0 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"If none-zero specifies the maximum number of workers we will start in this category. Even if all existing workers are blocked we will not start more workers once we reach this limit. This is useful for IO intensive workloads where we expect workers to be blocked and are not trying to control the amount of CPU a worker uses."}),"\n",(0,r.jsx)(s.h3,{id:"alwaysqueue",children:"AlwaysQueue"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property AlwaysQueue As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"If true makes this a true queue where you need to wait for the work group request to get to the head of the queue in order to get a worker assigned. When AlwaysQueue=0 for a category when a new WQM group is created we allocated at least one worker immediately to make progress on the work even if the rest of the work unit are in a queue waiting for additional workers to free up."}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"createcallback",children:"CreateCallBack"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateCallBack(Obj As %ObjectHandle, Data As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Called by the Create method during import from a CPF file."}),"\n",(0,r.jsx)(s.h3,{id:"default",children:"Default"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Default(CPFFile As %String, Platform As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Write a default WorkQueues section in a CPF file.",(0,r.jsx)(s.br,{}),"\nThis method assumes that a CPF file has been opened, and that a U CPFFile command has been executed before this is called. Entries added here must also be added to CreateDefaults()."]}),"\n",(0,r.jsx)(s.h3,{id:"createdefaults",children:"CreateDefaults"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateDefaults() As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"This class is called when Load() is called. It makes sure that the system defined workqueues are defined. (We could edit the CPF and remove them, this puts them back in.) Entries added here must also be added to Default()."}),"\n",(0,r.jsx)(s.h3,{id:"issystemworkqueue",children:"IsSystemWorkQueue"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsSystemWorkQueue(Name As %String) As %Boolean\n"})}),"\n",(0,r.jsx)(s.p,{children:"Returns whether"}),"\n",(0,r.jsx)(s.h3,{id:"load",children:"Load"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"Load the parameters into memory and activate."}),"\n",(0,r.jsx)(s.h3,{id:"maxworkersavailable",children:"MaxWorkersAvailable"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MaxWorkersAvailable() As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"Maximum Number of Queue Manager Workers for the system"}),"\n",(0,r.jsx)(s.h3,{id:"onbeforesavecallback",children:"%OnBeforeSaveCallBack"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OnBeforeSaveCallBack(insert As %Boolean, Obj As %ObjectHandle) As %Status [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"ondeletecallback",children:"%OnDeleteCallBack"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OnDeleteCallBack(Obj As %ObjectHandle) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Any error returned here will keep the object from being deleted."}),"\n",(0,r.jsx)(s.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnValidateObject() As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["This is called from %Save().",(0,r.jsx)(s.br,{}),"\nAny error returned from this will cause the object to not be saved."]}),"\n",(0,r.jsx)(s.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ListExecute(ByRef %qHandle As %Binary, Names As %String = "*", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"List WorkQueues in a CPF file."}),"\n",(0,r.jsxs)(s.p,{children:["Parameters:",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Names"})," - Comma separated list of WorkQueue names",(0,r.jsx)(s.br,{}),'\n"*" - All records match',(0,r.jsx)(s.br,{}),'\n"String,String1" - Any records matching one of these elements',(0,r.jsx)(s.br,{}),'\n"String*" - Any record starting with "String"',(0,r.jsx)(s.br,{}),'\n"String,String1*,String2" - Any record matching one of these elements, or starting with "String1"',(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"CPFFile"})," - Name of the CPF file to use. A null string means use the active CPF file.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Flags"})," - Currently ignored.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Format"}),(0,r.jsx)(s.br,{}),"\n0 - Standard report list format",(0,r.jsx)(s.br,{}),"\n1 - ^CONFIG global format",(0,r.jsx)(s.br,{}),"\n2 - CPF file format format",(0,r.jsx)(s.br,{}),"\nNote: This query may change in future versions"]}),"\n",(0,r.jsx)(s.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"listclose",children:"ListClose"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"listfilterexecute",children:"ListFilterExecute"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ListFilterExecute(ByRef qHandle As %Binary, Filter As %String = "", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"List WorkQueues in a CPF file."}),"\n",(0,r.jsxs)(s.p,{children:["Parameters:",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Filter"})," - Filter to select columns",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"CPFFile"})," - Name of the CPF file to use. A null string means use the active CPF file.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Flags"})," - Currently ignored.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Format"}),(0,r.jsx)(s.br,{}),"\n0 - Standard report list format",(0,r.jsx)(s.br,{}),"\n1 - ^CONFIG global format",(0,r.jsx)(s.br,{}),"\n2 - CPF file format format",(0,r.jsx)(s.br,{}),"\nNote: This query may change in future versions"]}),"\n",(0,r.jsx)(s.h3,{id:"listfilterfetch",children:"ListFilterFetch"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFilterFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = LocalDatabaseListExecute ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"listfilterclose",children:"ListFilterClose"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFilterClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = LocalDatabaseListExecute ]\n"})})]})}function c(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>l,x:()=>i});var r=t(96540);const a={},n=r.createContext(a);function l(e){const s=r.useContext(n);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:l(e.components),r.createElement(n.Provider,{value:s},e.children)}}}]);