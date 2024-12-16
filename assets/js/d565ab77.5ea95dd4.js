"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[68638],{96170:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>i,default:()=>o,frontMatter:()=>l,toc:()=>a});var t=r(74848),n=r(28453);const l={pagination_prev:null,pagination_next:null},i="%iKnow.Source.Loader",a=[{value:"Properties",id:"properties",level:2},{value:"DomainId",id:"domainid",level:3},{value:"TempId",id:"tempid",level:3},{value:"KeyId",id:"keyid",level:3},{value:"Lister",id:"lister",level:3},{value:"ListerData",id:"listerdata",level:3},{value:"Processor",id:"processor",level:3},{value:"Indexer",id:"indexer",level:3},{value:"DirectInput",id:"directinput",level:3},{value:"MetaData",id:"metadata",level:3},{value:"ListGlo",id:"listglo",level:3},{value:"SrcInc",id:"srcinc",level:3},{value:"SrcData",id:"srcdata",level:3},{value:"LastErrBeforeLoad",id:"lasterrbeforeload",level:3},{value:"LastFailBeforeLoad",id:"lastfailbeforeload",level:3},{value:"LastWarnBeforeLoad",id:"lastwarnbeforeload",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"SetLister",id:"setlister",level:3},{value:"ProcessVirtualList",id:"processvirtuallist",level:3},{value:"ProcessList",id:"processlist",level:3},{value:"DeleteSource",id:"deletesource",level:3},{value:"DeleteVirtualSource",id:"deletevirtualsource",level:3},{value:"DeleteAllVirtualSources",id:"deleteallvirtualsources",level:3},{value:"Reset",id:"reset",level:3},{value:"BufferSource",id:"buffersource",level:3},{value:"ProcessVirtualBuffer",id:"processvirtualbuffer",level:3},{value:"ProcessBuffer",id:"processbuffer",level:3},{value:"ProcessBufferInternal",id:"processbufferinternal",level:3},{value:"ClearBuffer",id:"clearbuffer",level:3},{value:"GetBuffer",id:"getbuffer",level:3},{value:"LogProcess",id:"logprocess",level:3},{value:"ProcessBatch",id:"processbatch",level:3},{value:"GetSourceIds",id:"getsourceids",level:3},{value:"ClearLogs",id:"clearlogs",level:3},{value:"ProcessLists",id:"processlists",level:3},{value:"ProcessStagingGlobals",id:"processstagingglobals",level:3},{value:"ClearTemps",id:"cleartemps",level:3},{value:"ClearTempsStatic",id:"cleartempsstatic",level:3},{value:"BackExecute",id:"backexecute",level:3},{value:"Execute",id:"execute",level:3},{value:"LoadSources",id:"loadsources",level:3},{value:"SetCurrentErrors",id:"setcurrenterrors",level:3},{value:"CheckErrors",id:"checkerrors",level:3},{value:"GetCurrentLists",id:"getcurrentlists",level:3},{value:"GetErrors",id:"geterrors",level:3},{value:"GetFailed",id:"getfailed",level:3},{value:"GetWarnings",id:"getwarnings",level:3}];function c(e){const s={blockquote:"blockquote",br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"iknowsourceloader",children:"%iKnow.Source.Loader"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %iKnow.Source.Loader Extends %RegisteredObject [ Deprecated, Final, System = 4 ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:[(0,t.jsx)(s.strong,{children:"Deprecation note"}),": Direct use of this class is still supported, but it is recommended to use either Domain Definitions (cf %iKnow.DomainDefinition) to manage a domain's contents or use the shorthand methods in %SYSTEM.iKnow to work with an existing domain not managed through a domain definition class."]}),"\n",(0,t.jsx)(s.p,{children:"This class coordinates the loading process."}),"\n",(0,t.jsxs)(s.p,{children:["For ",(0,t.jsx)(s.strong,{children:"Batch Loading"}),", use the ProcessBatch after one or more %iKnow.Source.Lister instances have been used to register one or more lists of sources to load into the domain using their AddListToBatch methods."]}),"\n",(0,t.jsxs)(s.p,{children:["For ",(0,t.jsx)(s.strong,{children:"Direct Loading"}),", register a %iKnow.Source.Lister instance with this Loader instance and call ProcessList or ProcessVirtualList to add a small number of sources to the domain directly (in the same process)."]}),"\n",(0,t.jsxs)(s.p,{children:["For ",(0,t.jsx)(s.strong,{children:"Direct Text Loading"}),", you can simply queue %String data using the BufferSource and then add these directly (in the same process) to the domain using either ProcessBuffer or ProcessVirtualBuffer."]}),"\n",(0,t.jsx)(s.p,{children:"With both Direct Loading options, the IDs of the sources added in the last execution are available through GetSourceIds"}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"domainid",children:"DomainId"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property DomainId As %Integer;\n"})}),"\n",(0,t.jsx)(s.h3,{id:"tempid",children:"TempId"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property TempId As %Integer [ Private ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"surrogate domain ID for use in IRIS.Temp guaranteed to be unique across namespaces"}),"\n",(0,t.jsx)(s.h3,{id:"keyid",children:"KeyId"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property KeyId As %Integer [ Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"lister",children:"Lister"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Lister As %iKnow.Source.Lister [ Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"listerdata",children:"ListerData"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ListerData As %List [ Internal, Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"processor",children:"Processor"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Processor As %iKnow.Source.Processor [ Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"indexer",children:"Indexer"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Indexer As %iKnow.Indexer [ Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"directinput",children:"DirectInput"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property DirectInput As %iKnow.DirectInput [ Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"metadata",children:"MetaData"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property MetaData As %iKnow.Queries.MetadataI [ Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"listglo",children:"ListGlo"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property ListGlo As %String [ Internal, Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"srcinc",children:"SrcInc"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SrcInc As %String [ Internal, Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"srcdata",children:"SrcData"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property SrcData As %String [ Internal, Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"lasterrbeforeload",children:"LastErrBeforeLoad"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property LastErrBeforeLoad As %Integer [ InitialExpression = 0, Internal, Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"lastfailbeforeload",children:"LastFailBeforeLoad"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property LastFailBeforeLoad As %Integer [ InitialExpression = 0, Internal, Private ];\n"})}),"\n",(0,t.jsx)(s.h3,{id:"lastwarnbeforeload",children:"LastWarnBeforeLoad"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property LastWarnBeforeLoad As %Integer [ InitialExpression = 0, Internal, Private ];\n"})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew(domId As %Integer) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"setlister",children:"SetLister"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method SetLister(lister As %iKnow.Source.Lister) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This call registers the supplied %iKnow.Source.Lister object to be used for Direct Loading by subsequent calls to ProcessList."}),"\n",(0,t.jsx)(s.p,{children:"The supplied Lister object should be fully configured, but cannot have any lists already scheduled for it (through calls to its AddListToBatch method)."}),"\n",(0,t.jsx)(s.h3,{id:"processvirtuallist",children:"ProcessVirtualList"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProcessVirtualList(listargs...) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Same As ProcessList, but listed sources will be added as Virtual Sources."}),"\n",(0,t.jsx)(s.h3,{id:"processlist",children:"ProcessList"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProcessList(listargs...) As %Status\n"})}),"\n",(0,t.jsxs)(s.p,{children:["This method initiates a Direct Load, indexing the sources identified by the Lister registered with SetLister. The ",(0,t.jsx)(s.strong,{children:"Lister Parameters"})," passed as listargs to this method should correspond in type and number to what the currently registered Lister expects as its (implementation-specific) Lister Parameters."]}),"\n",(0,t.jsx)(s.p,{children:"All operations will execute within the current process and therefore has superior performance over Batch Loading when used for small numbers of sources."}),"\n",(0,t.jsx)(s.p,{children:"After this method has finished, the generated source IDs can be retrieved through GetSourceIds."}),"\n",(0,t.jsx)(s.h3,{id:"deletesource",children:"DeleteSource"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteSource(domId As %Integer, internalId As %Integer) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method deletes a single source from the domain, including all its entity and CRC occurrences, sentences and paths. Unique entities and CRCs occurring in this source will have their frequency and spread updated."}),"\n",(0,t.jsx)(s.p,{children:"If there's any metadata or matching results associated with this source, it will also be deleted."}),"\n",(0,t.jsx)(s.h3,{id:"deletevirtualsource",children:"DeleteVirtualSource"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteVirtualSource(domId As %Integer, vSrcId As %Integer) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method deletes a single Virtual Source from the domain, including all its entity and CRC occurrences, sentences and paths."}),"\n",(0,t.jsx)(s.h3,{id:"deleteallvirtualsources",children:"DeleteAllVirtualSources"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteAllVirtualSources(domId As %Integer) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Deletes all Virtual Sources associated with this domain."}),"\n",(0,t.jsx)(s.h3,{id:"reset",children:"Reset"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method Reset() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method resets the internal globals used during the load process."}),"\n",(0,t.jsx)(s.h3,{id:"buffersource",children:"BufferSource"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method BufferSource(ref As %String, data As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Lines up the data supplied to this method to be indexed as a new source with the provided reference in a subsequent call to ProcessBuffer or ProcessVirtualBuffer."}),"\n",(0,t.jsx)(s.p,{children:"Multiple calls to this method using the same ref before calling the Process* method, will result in the data being appended to what was previously buffered for that ref. All buffering and processing operations should happen within the same process."}),"\n",(0,t.jsx)(s.h3,{id:"processvirtualbuffer",children:"ProcessVirtualBuffer"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method ProcessVirtualBuffer(cfg As %String = "") As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Same As ProcessBuffer, but buffered sources will be added as Virtual Sources."}),"\n",(0,t.jsx)(s.h3,{id:"processbuffer",children:"ProcessBuffer"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method ProcessBuffer(cfg As %String = "") As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Indexes all data buffered within this process through previous calls to BufferSource using the Direct Loading approach. This includes calling SetLister with a %iKnow.Source.Temp.Lister instance and initiating the Direct Load through ProcessList. The buffer is cleaned automatically at the end of successfully processing the data."}),"\n",(0,t.jsx)(s.p,{children:"After this method has finished, the generated source IDs can be retrieved through GetSourceIds."}),"\n",(0,t.jsx)(s.h3,{id:"processbufferinternal",children:"ProcessBufferInternal"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'Method ProcessBufferInternal(pConfig As %String = "", pVirtual As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,t.jsx)(s.h3,{id:"clearbuffer",children:"ClearBuffer"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method ClearBuffer() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method clears any data supplied so far through calls to BufferSource"}),"\n",(0,t.jsx)(s.h3,{id:"getbuffer",children:"GetBuffer"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetBuffer(Output pBuffer) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method returns all the data currently in the buffer, as entered through calls to BufferSource, since the last call to ProcessBuffer or ClearBuffer. Data is returned in a two-level array structure:"}),"\n",(0,t.jsxs)(s.blockquote,{children:["\n",(0,t.jsxs)(s.p,{children:["pBuffer(",(0,t.jsx)(s.em,{children:"reference"}),") = ",(0,t.jsx)(s.em,{children:"numberOfEntries"}),(0,t.jsx)(s.br,{}),"\npBuffer(",(0,t.jsx)(s.em,{children:"reference"}),", ",(0,t.jsx)(s.em,{children:"n"}),") = ",(0,t.jsx)(s.em,{children:"data"})]}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"logprocess",children:"LogProcess"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LogProcess(domainId As %Integer, procId As %Integer, args As %List) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"args(1) = number of sources. args(2) = the status global to log the process for LoadSources. args(3) = the time to queue work into the queue."}),"\n",(0,t.jsx)(s.h3,{id:"processbatch",children:"ProcessBatch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProcessBatch() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This is the primary method for starting a Batch Load. When executed, this method will first go through the lists registered through AddListToBatch() calls on %iKnow.Source.Lister objects and call their ExpandList() method to get a complete list of all the sources to index. Then, it will instantiate the appropriate %iKnow.Source.Processor objects to read their contents and forward it to the iKnow engine (optionally through a %iKnow.Source.Converter instance). Finally, it will invoke the ^%iKnow.BuildGlobals routine to transform the output of the iKnow engine into the persistent domain data structures."}),"\n",(0,t.jsx)(s.h3,{id:"getsourceids",children:"GetSourceIds"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetSourceIds() As %List\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method returns the Source IDs of the sources created in the last call to ProcessList, ProcessBuffer, ProcessVirtualList or ProcessVirtualBuffer."}),"\n",(0,t.jsx)(s.h3,{id:"clearlogs",children:"ClearLogs"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method ClearLogs(clearErrors As %Boolean = 1, clearFailed As %Boolean = 1, clearWarnings As %Boolean = 1) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Clears the logs, as directed by the boolean parameters."}),"\n",(0,t.jsx)(s.h3,{id:"processlists",children:"ProcessLists"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProcessLists() As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"processstagingglobals",children:"ProcessStagingGlobals"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method ProcessStagingGlobals() As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"cleartemps",children:"ClearTemps"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method ClearTemps(OverrideSaveTemp As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"cleartempsstatic",children:"ClearTempsStatic"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ClearTempsStatic(domId, OverrideSaveTemp As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"backexecute",children:"BackExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod BackExecute(domId As %Integer, processNr As %Integer, args As %List = "") As %Status [ Internal ]\n'})}),"\n",(0,t.jsx)(s.h3,{id:"execute",children:"Execute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method Execute(processNr As %Integer, async As %Boolean = 0) As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"loadsources",children:"LoadSources"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method LoadSources(objIdx As %iKnow.Indexer, objDi As %iKnow.DirectInputDO) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"setcurrenterrors",children:"SetCurrentErrors"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method SetCurrentErrors() As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"checkerrors",children:"CheckErrors"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method CheckErrors(ByRef sc As %Status) As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getcurrentlists",children:"GetCurrentLists"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetCurrentLists(ByRef result) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Simple utility method to retrieve an overview of all Lists as currently scheduled through AddListToBatch calls on %iKnow.Source.Lister objects for this Loaders domain."}),"\n",(0,t.jsx)(s.h3,{id:"geterrors",children:"GetErrors"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetErrors(ByRef result, returnAll As %Boolean = 0) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns all logged errors for this domain. By default only the errors logged since this Loader object's last load operation are returned, unless the returnAll parameter is set to 1. The returned result contains the following columns:"}),"\n",(0,t.jsxs)(s.ol,{children:["\n",(0,t.jsx)(s.li,{children:"Error message"}),"\n",(0,t.jsx)(s.li,{children:"Location: indication of the class and method where the error occurred"}),"\n",(0,t.jsx)(s.li,{children:"Timestamp: in $horolog format"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"getfailed",children:"GetFailed"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetFailed(ByRef result, returnAll As %Boolean = 0) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns all logged source failures for this domain. By default only the failures logged since this Loader object's last load operation are returned, unless the returnAll parameter is set to 1. The returned result contains the following columns:"}),"\n",(0,t.jsxs)(s.ol,{children:["\n",(0,t.jsx)(s.li,{children:"Composite reference: elements used to generate the external ID (in case it didn't get generated)"}),"\n",(0,t.jsx)(s.li,{children:"External ID"}),"\n",(0,t.jsx)(s.li,{children:"Location: indication of the class and method where the error occurred"}),"\n",(0,t.jsx)(s.li,{children:"Error message"}),"\n",(0,t.jsx)(s.li,{children:"Internal error ID: Contact WRC if this is a positive integer."}),"\n",(0,t.jsx)(s.li,{children:"Timestamp: in $horolog format"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"getwarnings",children:"GetWarnings"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetWarnings(ByRef result, returnAll As %Boolean = 0) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns all logged warnings for this domain. By default only the warnings logged since this Loader object's last load operation are returned, unless the returnAll parameter is set to 1. The returned result contains the following columns:"}),"\n",(0,t.jsxs)(s.ol,{children:["\n",(0,t.jsx)(s.li,{children:"Composite reference: elements used to generate the external ID (in case it didn't get generated)"}),"\n",(0,t.jsx)(s.li,{children:"External ID"}),"\n",(0,t.jsx)(s.li,{children:"Location: indication of the class and method where the error occurred"}),"\n",(0,t.jsx)(s.li,{children:"Error message"}),"\n",(0,t.jsx)(s.li,{children:"Timestamp: in $horolog format"}),"\n"]})]})}function o(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>i,x:()=>a});var t=r(96540);const n={},l=t.createContext(n);function i(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);