"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[67944],{91912:(e,r,s)=>{s.r(r),s.d(r,{contentTitle:()=>a,default:()=>c,frontMatter:()=>i,toc:()=>o});var n=s(74848),t=s(28453);const i={pagination_prev:null,pagination_next:null},a="Config.Mirrors",o=[{value:"Parameters",id:"parameters",level:2},{value:"CAPITALNAME",id:"capitalname",level:3},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"Properties",id:"properties",level:2},{value:"Name",id:"name",level:3},{value:"GUID",id:"guid",level:3},{value:"ACKRequirement",id:"ackrequirement",level:3},{value:"AgentContactRequiredForTakeover",id:"agentcontactrequiredfortakeover",level:3},{value:"ArbiterNode",id:"arbiternode",level:3},{value:"DefinedPrimary",id:"definedprimary",level:3},{value:"QOSTimeout",id:"qostimeout",level:3},{value:"RequireAuthentication",id:"requireauthentication",level:3},{value:"TroubleTimeout",id:"troubletimeout",level:3},{value:"UseSSL",id:"usessl",level:3},{value:"VirtualAddress",id:"virtualaddress",level:3},{value:"CompressionForFailoverMembers",id:"compressionforfailovermembers",level:3},{value:"CompressionForAsyncMembers",id:"compressionforasyncmembers",level:3},{value:"CompressionTypeForFailoverMembers",id:"compressiontypeforfailovermembers",level:3},{value:"CompressionTypeForAsyncMembers",id:"compressiontypeforasyncmembers",level:3},{value:"AllowParallelDejournaling",id:"allowparalleldejournaling",level:3},{value:"Methods",id:"methods",level:2},{value:"Version",id:"version",level:3},{value:"CreateCallBack",id:"createcallback",level:3},{value:"RemoveMirrorJournalFiles",id:"removemirrorjournalfiles",level:3},{value:"Delete",id:"delete",level:3},{value:"MoveToActive",id:"movetoactive",level:3},{value:"NameSet",id:"nameset",level:3},{value:"GetMirrorName",id:"getmirrorname",level:3},{value:"Load",id:"load",level:3},{value:"UpdateMirrorSets",id:"updatemirrorsets",level:3},{value:"ValidateArbiterAddress",id:"validatearbiteraddress",level:3},{value:"%OnBeforeSaveCallBack",id:"onbeforesavecallback",level:3},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"EMSAllowEdit",id:"emsallowedit",level:3},{value:"ListExecute",id:"listexecute",level:3},{value:"ListFetch",id:"listfetch",level:3},{value:"ListClose",id:"listclose",level:3},{value:"List1Execute",id:"list1execute",level:3},{value:"List1Fetch",id:"list1fetch",level:3},{value:"List1Close",id:"list1close",level:3},{value:"NumberOfMirrorSet",id:"numberofmirrorset",level:3}];function l(e){const r={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(r.header,{children:(0,n.jsx)(r.h1,{id:"configmirrors",children:"Config.Mirrors"})}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Class Config.Mirrors Extends (%Persistent, Config.CommonMultipleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]\n"})}),"\n",(0,n.jsx)(r.p,{children:"This class allows you to modify and view the [Mirrors] section of the CPF file through programmatic APIs. Mirrors can be managed via the ^MIRROR utility in addition to the standard InterSystems IRIS System Management tools. The methods in this class which retrieve information can be called directly but the configuration should not be changed via direct calls to these methods."}),"\n",(0,n.jsx)(r.p,{children:"Since mirror members can be a mixture of InterSystems IRIS versions there are various properties in this class which are now obsolete and have fixed values, or no meaning to the running version, but remain for compatibility with older versions."}),"\n",(0,n.jsx)(r.p,{children:"EXAMPLE:"}),"\n",(0,n.jsx)(r.p,{children:'; Use class methods to retrieve properties %SYS>s MirName="TEST" %SYS>s Status=##Class(Config.Mirrors).Get(MirName,.Properties) %SYS>i \'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status) %SYS>zw Properties Properties("Enabled")=0'}),"\n",(0,n.jsx)(r.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(r.h3,{id:"capitalname",children:"CAPITALNAME"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Parameter CAPITALNAME = 1;\n"})}),"\n",(0,n.jsx)(r.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE [ Internal ] = "Mirror";\n'})}),"\n",(0,n.jsx)(r.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(r.h3,{id:"name",children:"Name"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property Name As %String(MAXLEN = 15) [ Required ];\n"})}),"\n",(0,n.jsx)(r.p,{children:"Mirror names are uppercase (alphanumeric) Name of the mirror, restricted to 15 uppercase alphanumeric characters. Must be unique across the mirrors managed by the EMS"}),"\n",(0,n.jsx)(r.h3,{id:"guid",children:"GUID"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property GUID As %String [ Required ];\n"})}),"\n",(0,n.jsx)(r.p,{children:"Internal GUID which is unique to this mirror"}),"\n",(0,n.jsx)(r.h3,{id:"ackrequirement",children:"ACKRequirement"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property ACKRequirement As %Integer [ InitialExpression = 2, Internal ];\n"})}),"\n",(0,n.jsx)(r.p,{children:"ACKRequirement is obsolete and has a fixed value of SYNCRULEAck. The property remains in the config for compatibility with pre 2015.1 systems."}),"\n",(0,n.jsx)(r.h3,{id:"agentcontactrequiredfortakeover",children:"AgentContactRequiredForTakeover"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property AgentContactRequiredForTakeover As %Boolean [ InitialExpression = 1, Internal ];\n"})}),"\n",(0,n.jsx)(r.p,{children:"AgentContactRequiredForTakeover is obsolete and has a fixed value of 1."}),"\n",(0,n.jsx)(r.h3,{id:"arbiternode",children:"ArbiterNode"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property ArbiterNode As %String(MAXLEN = 2048);\n"})}),"\n",(0,n.jsxs)(r.p,{children:["An address for the arbiter node used by this mirror.",(0,n.jsx)(r.br,{}),"\nThe arbiter node is used by the failover members as an observer to provide information to an active backup that allows it to take over when the agent on the primary cannot be contacted (eg. the primary loses power)."]}),"\n",(0,n.jsx)(r.h3,{id:"definedprimary",children:"DefinedPrimary"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property DefinedPrimary As %String;\n"})}),"\n",(0,n.jsx)(r.p,{children:"Field used internally when mirror failover is disabled, generally for maintenance purposes. Manipulated via the nofailover options when shutting down InterSystems IRIS. This contains the mirror system name of the node which is allowed to become the primary. It is cleared automatically when that node starts up and becomes the primary (eg. starting it NOSTU will not clear this field). This can also be set and cleared manually via ^MIRROR."}),"\n",(0,n.jsx)(r.h3,{id:"qostimeout",children:"QOSTimeout"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property QOSTimeout As %Integer(MAXVAL = 300000, MINVAL = 0) [ InitialExpression = 8000 ];\n"})}),"\n",(0,n.jsx)(r.p,{children:"Contains the time in milliseconds which the primary will wait for the backup to acknowledge receipt of a chunk of journal data before the primary marks the backup as inactive. The default is 8000 msec, the max value is 5 minutes."}),"\n",(0,n.jsx)(r.h3,{id:"requireauthentication",children:"RequireAuthentication"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property RequireAuthentication As %Boolean [ InitialExpression = 0, Internal ];\n"})}),"\n",(0,n.jsx)(r.p,{children:"Yes/No field which controls whether the client and server sides of every mirror connection authenticate each other against the SSL DN information stored in the [MapMirrors] section of the configuration. When this field is set to Yes each mirror member must have a Mirror SSL/TLS Configuration. In order to change this from No to Yes for an existing mirror, each mirror member must have an SSL configuration defined."}),"\n",(0,n.jsx)(r.p,{children:"When UseSSL is set to Yes, this field is also set to Yes and cannot be changed to No."}),"\n",(0,n.jsx)(r.h3,{id:"troubletimeout",children:"TroubleTimeout"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property TroubleTimeout As %Integer(MAXVAL = 2147484, MINVAL = 0) [ InitialExpression = 0, Internal ];\n"})}),"\n",(0,n.jsx)(r.p,{children:"With the addition of the arbiter and the removal of agentcontactrequired=no mode, the trouble time out is no longer configurable. When zero, it is set internally to twice the QOS Timeout with a minimum of 5 seconds."}),"\n",(0,n.jsx)(r.h3,{id:"usessl",children:"UseSSL"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property UseSSL As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(r.p,{children:"Yes/No field for whether the mirror uses to encrypt the communication between members for every mirror connection. When set to Yes the Mirror SSL configuration is used for client/server connections by this node. When set to No, encryption setting are controlled on a per-connection basis via Config.MapMirrors.EncryptCommunication and by Config.MapMirrors.RequireEncryption MapMirrors."}),"\n",(0,n.jsx)(r.p,{children:"Setting this field to Yes forces RequireAuthentication to be set to Yes and RequireAuthentication cannot be set to No while this field is enabled."}),"\n",(0,n.jsx)(r.p,{children:"This must be enabled when journal files are encrypted on the failover mirror members or when there are any encrypted mirrored databases."}),"\n",(0,n.jsx)(r.h3,{id:"virtualaddress",children:"VirtualAddress"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property VirtualAddress As %String(MAXLEN = 256, MINLEN = 0);\n"})}),"\n",(0,n.jsx)(r.p,{children:"Optional Virtual IP address which the mirror maintains pointing to the current primary. When this is specified the failover members must be configured to host the Virtual IP on one of their interfaces. This is used by TCP/IP Client applications to connect to the primary mirror member."}),"\n",(0,n.jsx)(r.h3,{id:"compressionforfailovermembers",children:"CompressionForFailoverMembers"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property CompressionForFailoverMembers As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsxs)(r.p,{children:["Determines whether journal data is compressed before being transmitted between failover members.",(0,n.jsx)(r.br,{}),"\n0 - System Selected: The system will use compression only in configurations where it is expected to improve the response time for synchronization between the primary and backup.",(0,n.jsx)(r.br,{}),"\n1 - Uncompressed: No compression will be used.",(0,n.jsx)(r.br,{}),"\n2 - Compressed: Compression will be used."]}),"\n",(0,n.jsx)(r.h3,{id:"compressionforasyncmembers",children:"CompressionForAsyncMembers"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property CompressionForAsyncMembers As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsxs)(r.p,{children:["Determines whether journal data is compressed before being transmitted to async members (disaster recovery and reporting).",(0,n.jsx)(r.br,{}),"\n0 - System Selected: The system will use a compression strategy expected to balance network utilization with performance.",(0,n.jsx)(r.br,{}),"\n1 - Uncompressed: No compression will be used.",(0,n.jsx)(r.br,{}),"\n2 - Compressed: Compression will be used."]}),"\n",(0,n.jsx)(r.h3,{id:"compressiontypeforfailovermembers",children:"CompressionTypeForFailoverMembers"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property CompressionTypeForFailoverMembers As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsxs)(r.p,{children:["Compress type when CompressionForFailoverMembers is set to 'Compressed' mode. It is meanlinless if CompressionForFailoverMembers is not 'Compressed' mode.",(0,n.jsx)(r.br,{}),"\n0 - ZLIB.",(0,n.jsx)(r.br,{}),"\n1 - ZSTD.",(0,n.jsx)(r.br,{}),"\n2 - LZ4."]}),"\n",(0,n.jsx)(r.h3,{id:"compressiontypeforasyncmembers",children:"CompressionTypeForAsyncMembers"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property CompressionTypeForAsyncMembers As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsxs)(r.p,{children:["Compress type when CompressionForAsyncMembers is set to 'Compressed' mode. It is meanlinless if CompressionForAsyncMembers is not 'Compressed' mode.",(0,n.jsx)(r.br,{}),"\n0 - ZLIB.",(0,n.jsx)(r.br,{}),"\n1 - ZSTD.",(0,n.jsx)(r.br,{}),"\n2 - LZ4."]}),"\n",(0,n.jsx)(r.h3,{id:"allowparalleldejournaling",children:"AllowParallelDejournaling"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Property AllowParallelDejournaling As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsxs)(r.p,{children:["Determines the type of mirror members can run parallel dejournaling updaters.",(0,n.jsx)(r.br,{}),"\n0 - Failover and Disaster Recover members.",(0,n.jsx)(r.br,{}),"\n1 - Failover members only.",(0,n.jsx)(r.br,{}),"\n2 - All members including Failover, Disaster Recovery and Reporting Async members."]}),"\n",(0,n.jsx)(r.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(r.h3,{id:"version",children:"Version"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod Version() As %Integer\n"})}),"\n",(0,n.jsx)(r.h3,{id:"createcallback",children:"CreateCallBack"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod CreateCallBack(Obj As %ObjectHandle, Data As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(r.p,{children:"Called by the Create method during import from a CPF file."}),"\n",(0,n.jsx)(r.h3,{id:"removemirrorjournalfiles",children:"RemoveMirrorJournalFiles"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod RemoveMirrorJournalFiles(mirname As %String, CleanAll As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(r.h3,{id:"delete",children:"Delete"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'ClassMethod Delete(Name As %String, ByRef CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}, Clean As %Integer = 1) As %Status\n'})}),"\n",(0,n.jsx)(r.p,{children:"Delete a 'Mirrors' section from a CPF file."}),"\n",(0,n.jsxs)(r.p,{children:["Parameters:",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Name"})," - Name of the mirror to delete.",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"CPFFile (byref)"})," - Name of the CPF file to use, Default=current active CPF file.",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Flags"})," - Bit string of options to perform. See the Create method for values.",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Clean"})," - Clean mirror journal files. 0 - don't clean, 1 - clean files not in journal.log, 2 - clean all files."]}),"\n",(0,n.jsxs)(r.p,{children:["Return values:",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"CPFFile (byref)"})," - Name of the CPF file the modification was made in."]}),"\n",(0,n.jsx)(r.h3,{id:"movetoactive",children:"MoveToActive"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'ClassMethod MoveToActive(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(r.h3,{id:"nameset",children:"NameSet"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Method NameSet(Val) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(r.h3,{id:"getmirrorname",children:"GetMirrorName"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'ClassMethod GetMirrorName(PrevName As %String = "") As %String\n'})}),"\n",(0,n.jsx)(r.p,{children:"Returns a mirror name which this instance has loaded or is configured to load. For Failover members there is only ever one entry here. For async and reporting members they may join multiple mirrors and for those types of members, this method serves as a $ORDER type method where it takes a mirror name (or null) and returns the next (or 1st) mirror name in the configuration. It returns null when there are no other mirror names to return."}),"\n",(0,n.jsx)(r.p,{children:"Callers who want a list of all of the mirror members should probably call the %Config.Mirrors:List query directly or use the ##class(SYS.MirrorConfiguration).GetListOfMirrorNames() method rather than calling this method over and over. This is mostly used on failover nodes to get the name of the current mirror."}),"\n",(0,n.jsx)(r.p,{children:"This method looks first at the loaded mirrors and if there aren't any, reads the configuration to get the set of configured mirrors."}),"\n",(0,n.jsx)(r.h3,{id:"load",children:"Load"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(r.p,{children:["Load the parameters into memory and activate.",(0,n.jsx)(r.br,{}),"\nParameters:",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Obj"}),' = Handle to the object which caused the load. If "", then load everything, only called from Activate().',(0,n.jsx)(r.br,{}),"\nIf a delete operation, then Obj contains the data from the item which was deleted but the oject itself has already been deleted.",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Flags"})," = Type of modification.",(0,n.jsx)(r.br,{}),"\n0 - Modify",(0,n.jsx)(r.br,{}),"\n1 - Create/Insert",(0,n.jsx)(r.br,{}),"\n2 - Delete",(0,n.jsx)(r.br,{}),"\nLoad the Mirror info.",(0,n.jsx)(r.br,{}),'\nLoad the [Mirror] Section of the configuration file into the ^SYS("MIRRORSET") global. This is the working definition which MIRRORMGR/MIRRORCOMM']}),"\n",(0,n.jsx)(r.p,{children:"Returns: 1 - everything is ok          0 - something seems wrong and startup should abort"}),"\n",(0,n.jsx)(r.h3,{id:"updatemirrorsets",children:"UpdateMirrorSets"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod UpdateMirrorSets() As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(r.h3,{id:"validatearbiteraddress",children:"ValidateArbiterAddress"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod ValidateArbiterAddress(Address As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(r.h3,{id:"onbeforesavecallback",children:"%OnBeforeSaveCallBack"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod %OnBeforeSaveCallBack(insert As %Integer, Obj As %ObjectHandle) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(r.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Method %OnValidateObject() As %Status [ Internal ]\n"})}),"\n",(0,n.jsxs)(r.p,{children:["This is called from %Save().",(0,n.jsx)(r.br,{}),"\nAny error returned from this will cause the object to not be saved."]}),"\n",(0,n.jsx)(r.h3,{id:"emsallowedit",children:"EMSAllowEdit"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"Method EMSAllowEdit(insert As %Boolean) As %Boolean [ Internal ]\n"})}),"\n",(0,n.jsx)(r.p,{children:"Called from %OnBeforeSave. Provides a way for a specific class to override the EMS.Restricted() check when the Instance is managed. Used when a few properties in a class (like Config.SQL.JDBCGatewayPort) are not managed by EMS."}),"\n",(0,n.jsx)(r.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'ClassMethod ListExecute(ByRef qHandle As %Binary, Names As %String = "*", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(r.p,{children:"List Mirrors in a CPF file."}),"\n",(0,n.jsxs)(r.p,{children:["Parameters:",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Names"})," - Comma separated list of Mirror names",(0,n.jsx)(r.br,{}),'\n"*" - All records match',(0,n.jsx)(r.br,{}),'\n"String,String1" - Any records matching one of these elements',(0,n.jsx)(r.br,{}),'\n"String*" - Any record starting with "String"',(0,n.jsx)(r.br,{}),'\n"String,String1*,String2" - Any record matching one of these elements, or starting with "String1"',(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"CPFFile"})," - Name of the CPF file to use. A null string means use the active CPF file.",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Flags"})," - Currently ignored.",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Format"}),(0,n.jsx)(r.br,{}),"\n0 - Standard report list format",(0,n.jsx)(r.br,{}),"\n1 - ^CONFIG global format",(0,n.jsx)(r.br,{}),"\n2 - CPF file format format",(0,n.jsx)(r.br,{}),"\nNote: This query may change in future versions"]}),"\n",(0,n.jsx)(r.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,n.jsx)(r.h3,{id:"listclose",children:"ListClose"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,n.jsx)(r.h3,{id:"list1execute",children:"List1Execute"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:'ClassMethod List1Execute(ByRef %qHandle As %Binary, Names As %String = "*", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(r.p,{children:"List Mirrors in a CPF file."}),"\n",(0,n.jsxs)(r.p,{children:["Parameters:",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Names"})," - Comma separated list of Mirror names",(0,n.jsx)(r.br,{}),'\n"*" - All records match',(0,n.jsx)(r.br,{}),'\n"String,String1" - Any records matching one of these elements',(0,n.jsx)(r.br,{}),'\n"String*" - Any record starting with "String"',(0,n.jsx)(r.br,{}),'\n"String,String1*,String2" - Any record matching one of these elements, or starting with "String1"',(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"CPFFile"})," - Name of the CPF file to use. A null string means use the active CPF file.",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Flags"})," - Currently ignored.",(0,n.jsx)(r.br,{}),"\n",(0,n.jsx)(r.strong,{children:"Format"}),(0,n.jsx)(r.br,{}),"\n0 - Standard report list format",(0,n.jsx)(r.br,{}),"\n1 - ^CONFIG global format",(0,n.jsx)(r.br,{}),"\n2 - CPF file format format",(0,n.jsx)(r.br,{}),"\nNote: This query may change in future versions"]}),"\n",(0,n.jsx)(r.h3,{id:"list1fetch",children:"List1Fetch"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod List1Fetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = List1Execute ]\n"})}),"\n",(0,n.jsx)(r.h3,{id:"list1close",children:"List1Close"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod List1Close(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = List1Execute ]\n"})}),"\n",(0,n.jsx)(r.h3,{id:"numberofmirrorset",children:"NumberOfMirrorSet"}),"\n",(0,n.jsx)(r.pre,{children:(0,n.jsx)(r.code,{className:"language-objectscript-class",children:"ClassMethod NumberOfMirrorSet() As %Integer [ Internal ]\n"})}),"\n",(0,n.jsx)(r.p,{children:"Return number of mirror set this member is tarcking."})]})}function c(e={}){const{wrapper:r}={...(0,t.R)(),...e.components};return r?(0,n.jsx)(r,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,r,s)=>{s.d(r,{R:()=>a,x:()=>o});var n=s(96540);const t={},i=n.createContext(t);function a(e){const r=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(r):{...r,...e}}),[r,e])}function o(e){let r;return r=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),n.createElement(i.Provider,{value:r},e.children)}}}]);