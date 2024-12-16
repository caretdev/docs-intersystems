"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[30253],{18656:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>i,default:()=>c,frontMatter:()=>l,toc:()=>a});var t=r(74848),n=r(28453);const l={pagination_prev:null,pagination_next:null},i="Security.Servers",a=[{value:"Parameters",id:"parameters",level:2},{value:"SOURCECONTROL",id:"sourcecontrol",level:3},{value:"VERSION",id:"version",level:3},{value:"IGNOREPROPERTIES",id:"ignoreproperties",level:3},{value:"Properties",id:"properties",level:2},{value:"BindAddress",id:"bindaddress",level:3},{value:"Description",id:"description",level:3},{value:"DoNotStart",id:"donotstart",level:3},{value:"EnableCacheDirect",id:"enablecachedirect",level:3},{value:"EnableClients",id:"enableclients",level:3},{value:"EnableCSP",id:"enablecsp",level:3},{value:"EnableDataCheck",id:"enabledatacheck",level:3},{value:"EnableECP",id:"enableecp",level:3},{value:"EnableMirror",id:"enablemirror",level:3},{value:"EnableNodeJS",id:"enablenodejs",level:3},{value:"EnableShadows",id:"enableshadows",level:3},{value:"EnableSharding",id:"enablesharding",level:3},{value:"EnableSNMP",id:"enablesnmp",level:3},{value:"EnableWebLink",id:"enableweblink",level:3},{value:"Enabled",id:"enabled",level:3},{value:"ImportOperation",id:"importoperation",level:3},{value:"Port",id:"port",level:3},{value:"SSLConfig",id:"sslconfig",level:3},{value:"SSLSupportLevel",id:"sslsupportlevel",level:3},{value:"SSLECPConfig",id:"sslecpconfig",level:3},{value:"SSLECPSupportLevel",id:"sslecpsupportlevel",level:3},{value:"SSLMirrorConfig",id:"sslmirrorconfig",level:3},{value:"SSLMirrorSupportLevel",id:"sslmirrorsupportlevel",level:3},{value:"SystemDefault",id:"systemdefault",level:3},{value:"Version",id:"version-1",level:3},{value:"Triggers",id:"triggers",level:2},{value:"NoSQL",id:"nosql",level:3},{value:"Methods",id:"methods",level:2},{value:"CreateCSPDefault",id:"createcspdefault",level:3},{value:"CheckDefaultPort",id:"checkdefaultport",level:3},{value:"CheckIfPortFree",id:"checkifportfree",level:3},{value:"Create",id:"create",level:3},{value:"CreateOne",id:"createone",level:3},{value:"Delete",id:"delete",level:3},{value:"DeleteOne",id:"deleteone",level:3},{value:"Exists",id:"exists",level:3},{value:"Export",id:"export",level:3},{value:"Get",id:"get",level:3},{value:"GetClassProperties",id:"getclassproperties",level:3},{value:"GetDefaultServer",id:"getdefaultserver",level:3},{value:"GetProperties",id:"getproperties",level:3},{value:"GetEnabled",id:"getenabled",level:3},{value:"Import",id:"import",level:3},{value:"Initialize",id:"initialize",level:3},{value:"Modify",id:"modify",level:3},{value:"ModifyOne",id:"modifyone",level:3},{value:"StopAll",id:"stopall",level:3},{value:"StopOne",id:"stopone",level:3},{value:"%OnAfterSave",id:"onaftersave",level:3},{value:"%OnBeforeSave",id:"onbeforesave",level:3},{value:"%OnDelete",id:"ondelete",level:3},{value:"%OnAfterDelete",id:"onafterdelete",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"DetailExecute",id:"detailexecute",level:3},{value:"DetailFetch",id:"detailfetch",level:3},{value:"DetailClose",id:"detailclose",level:3},{value:"ListExecute",id:"listexecute",level:3},{value:"ListFetch",id:"listfetch",level:3},{value:"ListClose",id:"listclose",level:3},{value:"ListFilterExecute",id:"listfilterexecute",level:3},{value:"ListFilterFetch",id:"listfilterfetch",level:3},{value:"ListFilterClose",id:"listfilterclose",level:3}];function d(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"securityservers",children:"Security.Servers"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class Security.Servers Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, System = 4 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Superservers defined for the system."}),"\n",(0,t.jsx)(s.p,{children:"The table for this class should be manipulated only through object access, the published API's or through the System Management Portal. It should not be updated through direct SQL access."}),"\n",(0,t.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,t.jsx)(s.h3,{id:"sourcecontrol",children:"SOURCECONTROL"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //projects/security/databases/sys/cls/Security/Servers.xml#10 $"_$c(13,10)_"Last Change:   $DateTime: 2022/02/11 15:37:29 $"_$c(13,10)_"Changelist #:  $Change: 5260560 $"};\n'})}),"\n",(0,t.jsx)(s.h3,{id:"version",children:"VERSION"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter VERSION [ Internal ] = 1;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"ignoreproperties",children:"IGNOREPROPERTIES"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter IGNOREPROPERTIES [ Internal ] = "SSLECPConfig,SSLECPSupportLevel,SSLMirrorConfig,SSLMirrorSupportLevel,Version";\n'})}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"bindaddress",children:"BindAddress"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property BindAddress As Config.Host(MAXLEN = 256, MINLEN = 0) [ Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"description",children:"Description"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Description As %String(MAXLEN = 256);\n"})}),"\n",(0,t.jsx)(s.p,{children:"Description `of the Server"}),"\n",(0,t.jsx)(s.h3,{id:"donotstart",children:"DoNotStart"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property DoNotStart As %Integer [ InitialExpression = 0, Private, Transient ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Used only by Initialize()"}),"\n",(0,t.jsx)(s.h3,{id:"enablecachedirect",children:"EnableCacheDirect"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableCacheDirect As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enableclients",children:"EnableClients"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableClients As Security.Datatype.BooleanYN [ InitialExpression = 1, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enablecsp",children:"EnableCSP"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableCSP As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enabledatacheck",children:"EnableDataCheck"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableDataCheck As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enableecp",children:"EnableECP"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableECP As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enablemirror",children:"EnableMirror"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableMirror As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enablenodejs",children:"EnableNodeJS"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableNodeJS As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enableshadows",children:"EnableShadows"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableShadows As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enablesharding",children:"EnableSharding"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableSharding As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enablesnmp",children:"EnableSNMP"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableSNMP As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enableweblink",children:"EnableWebLink"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property EnableWebLink As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"enabled",children:"Enabled"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Enabled As Security.Datatype.BooleanYN [ InitialExpression = 1, Required ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Server enabled"}),"\n",(0,t.jsx)(s.h3,{id:"importoperation",children:"ImportOperation"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ImportOperation As %Boolean [ InitialExpression = 0, Internal, Transient ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is part of an Import() operation"}),"\n",(0,t.jsx)(s.h3,{id:"port",children:"Port"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Port As %Integer(MAXVAL = 65535, MINVAL = 100) [ Required ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"sslconfig",children:"SSLConfig"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SSLConfig As %String(MAXLEN = 64);\n"})}),"\n",(0,t.jsx)(s.p,{children:"SSL configuration used for client connections."}),"\n",(0,t.jsx)(s.h3,{id:"sslsupportlevel",children:"SSLSupportLevel"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SSLSupportLevel As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Use SSL/TLS for Client connections.",(0,t.jsx)(s.br,{}),"\n0 = None",(0,t.jsx)(s.br,{}),"\n1 = Accept",(0,t.jsx)(s.br,{}),"\n2 = Require"]}),"\n",(0,t.jsx)(s.h3,{id:"sslecpconfig",children:"SSLECPConfig"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SSLECPConfig As %String(MAXLEN = 64) [ Internal ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"SSL configuration used for ECP connections. (not currently used)"}),"\n",(0,t.jsx)(s.h3,{id:"sslecpsupportlevel",children:"SSLECPSupportLevel"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SSLECPSupportLevel As %Integer [ Internal ];\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Use SSL/TLS for ECP connections. (not currently used)",(0,t.jsx)(s.br,{}),"\n0 = None",(0,t.jsx)(s.br,{}),"\n1 = Accept",(0,t.jsx)(s.br,{}),"\n2 = Require"]}),"\n",(0,t.jsx)(s.h3,{id:"sslmirrorconfig",children:"SSLMirrorConfig"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SSLMirrorConfig As %String(MAXLEN = 64) [ Internal ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"SSL configuration used for Mirror connections. (Not currently used)"}),"\n",(0,t.jsx)(s.h3,{id:"sslmirrorsupportlevel",children:"SSLMirrorSupportLevel"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SSLMirrorSupportLevel As %Integer [ Internal ];\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Use SSL/TLS for Mirror connections. (Not currently used)",(0,t.jsx)(s.br,{}),"\n0 = None",(0,t.jsx)(s.br,{}),"\n1 = Accept",(0,t.jsx)(s.br,{}),"\n2 = Require"]}),"\n",(0,t.jsx)(s.h3,{id:"systemdefault",children:"SystemDefault"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SystemDefault As Security.Datatype.BooleanYN [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"version-1",children:"Version"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Version As %Decimal(SCALE = 1) [ Internal ];\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Version number of the record.",(0,t.jsx)(s.br,{}),"\nUsed for Export/Import."]}),"\n",(0,t.jsx)(s.h2,{id:"triggers",children:"Triggers"}),"\n",(0,t.jsx)(s.h3,{id:"nosql",children:"NoSQL"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Trigger NoSQL [ Event = INSERT/UPDATE/DELETE, Final, Foreach = row, Language = objectscript, Order = 1 ]\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"createcspdefault",children:"CreateCSPDefault"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateCSPDefault(Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Create a Server.",(0,t.jsx)(s.br,{}),"\nCreate a Server in the Security database. Parameters:",(0,t.jsx)(s.br,{}),"\nPort - Port number for Server to run on.",(0,t.jsx)(s.br,{}),"\nBindAddress - IP address for Server to Bind to (default=0.0.0.0)."]}),"\n",(0,t.jsx)(s.h3,{id:"checkdefaultport",children:"CheckDefaultPort"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod CheckDefaultPort(DefaultPort As %Integer, DefaultPortBindAddress As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"Makes sure there is an entry in the Security.Servers table for the port defined in the CPF file."}),"\n",(0,t.jsx)(s.h3,{id:"checkifportfree",children:"CheckIfPortFree"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod CheckIfPortFree(Port As %Integer, BindAddress As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,t.jsx)(s.h3,{id:"create",children:"Create"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Create(Port As %Integer, BindAddress As %String = "", Properties As %String) As %Status\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Create a superserver.",(0,t.jsx)(s.br,{}),"\nPort - Port of the Server to modify.",(0,t.jsx)(s.br,{}),"\nBindAddress - BindAddress of the Server to modify."]}),"\n",(0,t.jsx)(s.h3,{id:"createone",children:"CreateOne"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateOne(ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"delete",children:"Delete"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Delete(Port As %String, BindAddress As %String = "") As %Status\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Delete a Server.",(0,t.jsx)(s.br,{}),"\nThis method will delete an Server from the security database.",(0,t.jsx)(s.br,{}),"\nParameters:",(0,t.jsx)(s.br,{}),"\nPort - Port of the Server to delete.",(0,t.jsx)(s.br,{}),"\nBindAddress - BindAddress of the Server to delete."]}),"\n",(0,t.jsx)(s.h3,{id:"deleteone",children:"DeleteOne"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteOne(ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"exists",children:"Exists"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Exists(Port As %String, BindAddress As %String = "", ByRef Server As %ObjectHandle, ByRef Status As %Status) As %Boolean\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Server exists.",(0,t.jsx)(s.br,{}),"\nThis method checks for the existence of a Server in the security database.",(0,t.jsx)(s.br,{}),"\nParameters:",(0,t.jsx)(s.br,{}),"\nPort - Port of the Server.",(0,t.jsx)(s.br,{}),"\nBindAddress - BindAddress of the Server.",(0,t.jsx)(s.br,{}),"\nReturn values:",(0,t.jsx)(s.br,{}),"\nIf Value of the method = 0 (Server does not exist, or some error occured)",(0,t.jsx)(s.br,{}),"\nServer = Null",(0,t.jsx)(s.br,{}),'\nStatus = Server "x" does not exist, or other error message']}),"\n",(0,t.jsxs)(s.p,{children:["If Value of the method = 1 (Server exists)",(0,t.jsx)(s.br,{}),"\nServer = Object handle to Server",(0,t.jsx)(s.br,{}),"\nStatus = $$$OK"]}),"\n",(0,t.jsx)(s.h3,{id:"export",children:"Export"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Export(FileName As %String = "ServersExport.xml", ByRef NumExported As %Integer, Ports As %String = "*", BindAddresses As %String = "*") As %Status\n'})}),"\n",(0,t.jsxs)(s.p,{children:["This method exports Server records to a file in xml format.",(0,t.jsx)(s.br,{}),"\nParameters:",(0,t.jsx)(s.br,{}),"\nFilename - Output file name",(0,t.jsx)(s.br,{}),"\nNumExported (byref) - Returns number of records exported.",(0,t.jsx)(s.br,{}),'\nServers - Comma separated list of Servers to export, "*" = All']}),"\n",(0,t.jsx)(s.h3,{id:"get",children:"Get"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Get(Port As %String, BindAddress As %String = "", ByRef Properties As %String) As %Status\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Get a Server's properties.",(0,t.jsx)(s.br,{}),"\nGets a Server's properties from the security database.",(0,t.jsx)(s.br,{}),"\nParameters:",(0,t.jsx)(s.br,{}),"\nPort - Port of the Server.",(0,t.jsx)(s.br,{}),"\nBindAddress - BindAddress of the Server.",(0,t.jsx)(s.br,{}),"\nReturn values:",(0,t.jsx)(s.br,{}),"\nProperties - Array of properties"]}),"\n",(0,t.jsx)(s.h3,{id:"getclassproperties",children:"GetClassProperties"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetClassProperties(IgnoreProperties As %String = "", ByRef Properties As %String) As %Status [ Internal ]\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Returns a comma separated list of properties in the class.",(0,t.jsx)(s.br,{}),"\nThis is used internally by some of the API's. Parameters:",(0,t.jsx)(s.br,{}),"\n",(0,t.jsx)(s.strong,{children:"IgnoreProperties"})," - Comma separated list of properties NOT to return",(0,t.jsx)(s.br,{}),"\n",(0,t.jsx)(s.strong,{children:"Properties"})," by ref - Comma separated list of properties for the class, with IgnoreProperties removed"]}),"\n",(0,t.jsx)(s.h3,{id:"getdefaultserver",children:"GetDefaultServer"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDefaultServer(ByRef Obj As %ObjectHandle) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getproperties",children:"GetProperties"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetProperties(Obj As %ObjectHandle, ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Get a Servers's properties.",(0,t.jsx)(s.br,{}),"\nGets a Servers's properties from the security database.",(0,t.jsx)(s.br,{}),"\nParameters:",(0,t.jsx)(s.br,{}),"\nServer - Object handle to a Server record",(0,t.jsx)(s.br,{}),"\nReturn values:",(0,t.jsx)(s.br,{}),"\nProperties - See the Get method for more information on properties returned"]}),"\n",(0,t.jsx)(s.h3,{id:"getenabled",children:"GetEnabled"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetEnabled(Flags As %Integer, ByRef Port As %Integer, ByRef BindAddress As %String, ByRef PortBindAddress As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Get the first superserver which has the requested services enabled.",(0,t.jsx)(s.br,{}),"\nIf the System Default superserver has the services enabled, that is the one which will be returned.",(0,t.jsx)(s.br,{}),"\nNote that if the superserver is not enabled, then it will not be returned."]}),"\n",(0,t.jsxs)(s.p,{children:["Parameters:",(0,t.jsx)(s.br,{}),"\nFlags - Bit map of required services",(0,t.jsx)(s.br,{}),"\nEnableCacheDirect- Bit 0",(0,t.jsx)(s.br,{}),"\nEnableClients - Bit 1",(0,t.jsx)(s.br,{}),"\nEnableCSP - Bit 2",(0,t.jsx)(s.br,{}),"\nEnableDataCheck - Bit 3",(0,t.jsx)(s.br,{}),"\nEnableECP - Bit 4",(0,t.jsx)(s.br,{}),"\nEnableMirror - Bit 5",(0,t.jsx)(s.br,{}),"\nEnableNodeJS - Bit 6",(0,t.jsx)(s.br,{}),"\nEnableShadows - Bit 7",(0,t.jsx)(s.br,{}),"\nEnableSharding - Bit 8",(0,t.jsx)(s.br,{}),"\nEnableSNMP - Bit 9",(0,t.jsx)(s.br,{}),"\nEnableWebLink - Bit 10"]}),"\n",(0,t.jsxs)(s.p,{children:["Return Values:",(0,t.jsx)(s.br,{}),"\nPort - Port number of a superserver which has the requested services enabled.",(0,t.jsx)(s.br,{}),"\nBindAddress - IP addess of the superserver which has the requested services enabled.",(0,t.jsx)(s.br,{}),'\nPortBindAddress - Array of ports and adresses of all superservers which match the criteria. PortBindAddress(Port,Address)="" 0.0.0.0 as an address means its listening on all addresses on that machine.']}),"\n",(0,t.jsx)(s.h3,{id:"import",children:"Import"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Import(FileName As %String = "ServersExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Import Server records from an xml file.",(0,t.jsx)(s.br,{}),"\nParameters:",(0,t.jsx)(s.br,{}),"\nFileName - Filename to import Server records from",(0,t.jsx)(s.br,{}),"\nNumImported (byref) - Returns number of records imported",(0,t.jsx)(s.br,{}),"\nFlags - Control import",(0,t.jsx)(s.br,{}),"\nBit 0 - Do not import records, just return count",(0,t.jsx)(s.br,{}),"\nNote: On failure, no records will be imported"]}),"\n",(0,t.jsx)(s.h3,{id:"initialize",children:"Initialize"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Initialize(Port As %Integer = 0, DoNotStart = 0) [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Initialize the Server during an initial ^INSTALL (not upgrade)."}),"\n",(0,t.jsx)(s.h3,{id:"modify",children:"Modify"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Modify(Port As %Integer, BindAddress As %String = "", ByRef Properties As %String) As %Status\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Modify a Server's properties.",(0,t.jsx)(s.br,{}),"\nModifies a Server's properties from the security database.",(0,t.jsx)(s.br,{}),"\nParameters:",(0,t.jsx)(s.br,{}),"\nPort - Port of the Server.",(0,t.jsx)(s.br,{}),"\nBindAddress - BindAddress of the Server.",(0,t.jsx)(s.br,{}),"\nProperties - Array of properties to modify.",(0,t.jsx)(s.br,{}),"\nSee the Get() method for a description of the Properties parameter.",(0,t.jsx)(s.br,{}),"\nIf a specific property is not passed in the properties array, the value is not modified. Note that some system defined properties are not changeable."]}),"\n",(0,t.jsx)(s.h3,{id:"modifyone",children:"ModifyOne"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ModifyOne(ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"stopall",children:"StopAll"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod StopAll() As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Stop all servers."}),"\n",(0,t.jsx)(s.h3,{id:"stopone",children:"StopOne"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod StopOne(Port As %Integer, BindAddress As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Stop One Server.",(0,t.jsx)(s.br,{}),'\nWe stash the port and address in the user defined piece of the partition "Port:Address"',(0,t.jsx)(s.br,{}),"\nPort - Port of the Server.",(0,t.jsx)(s.br,{}),"\nBindAddress - BindAddress of the Server."]}),"\n",(0,t.jsx)(s.h3,{id:"onaftersave",children:"%OnAfterSave"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterSave(insert As %Boolean) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback method is invoked by the %Save method to provide notification that the object is being saved. It is called after the object's data has been successfully written to disk."}),"\n",(0,t.jsx)(s.p,{children:"insert will be set to 1 if this object is being saved for the first time."}),"\n",(0,t.jsx)(s.p,{children:"If this method returns an error then the call to %Save will fail. If the Server name is %Server Terminal, reinitialize the memory which depends on it."}),"\n",(0,t.jsx)(s.h3,{id:"onbeforesave",children:"%OnBeforeSave"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback method is invoked by the %Save method to provide notification that the object is being saved. It is called before any data is written to disk."}),"\n",(0,t.jsx)(s.p,{children:"insert will be set to 1 if this object is being saved for the first time."}),"\n",(0,t.jsx)(s.p,{children:"If this method returns an error then the call to %Save will fail."}),"\n",(0,t.jsx)(s.h3,{id:"ondelete",children:"%OnDelete"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback method is invoked by the %Delete method to provide notification that the object specified by oid is being deleted."}),"\n",(0,t.jsx)(s.p,{children:"If this method returns an error then the object will not be deleted. [Previously private]"}),"\n",(0,t.jsx)(s.h3,{id:"onafterdelete",children:"%OnAfterDelete"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OnAfterDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback method is invoked by the %Delete method to provide notification that the object specified by oid has been deleted. The callback occurs immediately after %DeleteData has been called. If %DeleteData returns an error then %OnAfterDelete is not called."}),"\n",(0,t.jsx)(s.p,{children:"If %OnAfterDelete returns an error (%Status) then the transaction is rolled back."}),"\n",(0,t.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew() As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnValidateObject() As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback method is invoked by the %ValidateObject method to provide notification that the current object is being validated."}),"\n",(0,t.jsx)(s.p,{children:"If this method returns an error then %ValidateObject will fail."}),"\n",(0,t.jsx)(s.h3,{id:"detailexecute",children:"DetailExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod DetailExecute(ByRef %qHandle As %Binary, Ports As %String = "*", BindAddresses As %String = "*") As %Status [ Internal ]\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Detail list of Servers.",(0,t.jsx)(s.br,{}),'\nPorts - Comma separated list of Port numbers, "*" = All',(0,t.jsx)(s.br,{}),'\nBindAddresses - Comma separated list of BindAddresses, "*" = All',(0,t.jsx)(s.br,{}),"\nNote: This query may change in future versions"]}),"\n",(0,t.jsx)(s.h3,{id:"detailfetch",children:"DetailFetch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DetailFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = DetailExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"detailclose",children:"DetailClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DetailClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = DetailExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ListExecute(ByRef %qHandle As %Binary, Ports As %String = "*", BindAddresses As %String = "*") As %Status [ Internal ]\n'})}),"\n",(0,t.jsxs)(s.p,{children:["List of Servers.",(0,t.jsx)(s.br,{}),'\nPorts - Comma separated list of Port numbers, "*" = All',(0,t.jsx)(s.br,{}),'\nBindAddresses - Comma separated list of BindAddresses, "*" = All',(0,t.jsx)(s.br,{}),"\nNote: This query may change in future versions"]}),"\n",(0,t.jsx)(s.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"listclose",children:"ListClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"listfilterexecute",children:"ListFilterExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ListFilterExecute(ByRef qHandle As %Binary, Filter As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,t.jsx)(s.h3,{id:"listfilterfetch",children:"ListFilterFetch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFilterFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListFilterExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"listfilterclose",children:"ListFilterClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFilterClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListFilterFetchExecute ]\n"})})]})}function c(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(d,{...e})}):d(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>i,x:()=>a});var t=r(96540);const n={},l=t.createContext(n);function i(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);