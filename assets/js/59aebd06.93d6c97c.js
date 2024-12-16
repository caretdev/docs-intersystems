"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[43499],{20427:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>o,frontMatter:()=>i,toc:()=>c});var s=n(74848),r=n(28453);const i={pagination_prev:null,pagination_next:null},a="%SYNC.SyncSet",c=[{value:"Properties",id:"properties",level:2},{value:"LastTransaction",id:"lasttransaction",level:3},{value:"FirstTransaction",id:"firsttransaction",level:3},{value:"Exclude",id:"exclude",level:3},{value:"Unresolved",id:"unresolved",level:3},{value:"sId",id:"sid",level:3},{value:"FilterObject",id:"filterobject",level:3},{value:"ResolveConflictEnv",id:"resolveconflictenv",level:3},{value:"SyncSystem",id:"syncsystem",level:3},{value:"Methods",id:"methods",level:2},{value:"GetLastTransaction",id:"getlasttransaction",level:3},{value:"GetFirstTransaction",id:"getfirsttransaction",level:3},{value:"UnresolvedFirst",id:"unresolvedfirst",level:3},{value:"GetLatestUnresolved",id:"getlatestunresolved",level:3},{value:"UnresolvedNext",id:"unresolvednext",level:3},{value:"Import",id:"import",level:3},{value:"Requeue",id:"requeue",level:3},{value:"GetLastTransactionTime",id:"getlasttransactiontime",level:3},{value:"ExportFile",id:"exportfile",level:3},{value:"OpenFile",id:"openfile",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"Clear",id:"clear",level:3},{value:"GlobalName",id:"globalname",level:3},{value:"GetNextTRN",id:"getnexttrn",level:3},{value:"GetLastTRN",id:"getlasttrn",level:3},{value:"AddTransactions",id:"addtransactions",level:3},{value:"AddJournaledTransaction",id:"addjournaledtransaction",level:3},{value:"AddJournaledObject",id:"addjournaledobject",level:3},{value:"AddObject",id:"addobject",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"PropertyValuesExecute",id:"propertyvaluesexecute",level:3},{value:"PropertyValuesFetch",id:"propertyvaluesfetch",level:3},{value:"PropertyValuesClose",id:"propertyvaluesclose",level:3},{value:"CollectionValuesExecute",id:"collectionvaluesexecute",level:3},{value:"CollectionValuesFetch",id:"collectionvaluesfetch",level:3},{value:"CollectionValuesClose",id:"collectionvaluesclose",level:3},{value:"FindLastGUID",id:"findlastguid",level:3},{value:"IsEmpty",id:"isempty",level:3},{value:"nextPointer",id:"nextpointer",level:3},{value:"ErrCount",id:"errcount",level:3},{value:"ErrorsExecute",id:"errorsexecute",level:3},{value:"ErrorsFetch",id:"errorsfetch",level:3},{value:"ErrorsClose",id:"errorsclose",level:3},{value:"QueueError",id:"queueerror",level:3},{value:"GetLastInfo",id:"getlastinfo",level:3}];function l(e){const t={a:"a",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",table:"table",tbody:"tbody",td:"td",th:"th",thead:"thead",tr:"tr",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"syncsyncset",children:"%SYNC.SyncSet"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %SYNC.SyncSet Extends %RegisteredObject [ System = 3 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"For information on this class"}),", see ",(0,s.jsx)(t.a,{href:"/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25SYNC.SyncSet",children:"Using Object Synchronization"}),"."]}),"\n",(0,s.jsx)(t.p,{children:'ObjectScript provides a toolkit for synchronizing objects of selected types between namespaces containing compatible type classes. The core of the synchronization toolkit is the SyncSet. A SyncSet contains all the objects of selected types that have been filed in the local database from a defined starting time up to an ending time. "Time" in the context of synchronization means a sequencing value and is not an "hours-minutes-seconds" value. Object Synchronization consists of three primary tasks. The first task is to build the SyncSet. That task involves determining which objects are to included in the SyncSet. %SYNC uses a transaction journal for that purpose. The transaction journal is implemented as %Library.ObjectJournalTransaction. Any persistent or serial class that declares the class parameter OBJJOURNAL as true will record all filing events in %Library.ObjectJournalTransaction. The second task is to add changed objects to the SyncSet. The most common mechanism for performing this task is to retrieve the object state from the system journal using information recorded in %Library.ObjectJournalTransaction. This mechanism allows historical object data to be included in the SyncSet. If the system journal is not available, there is a provision to include the current object state. The third task is to import the SyncSet into the namespace being synchronized. This involves loading the SyncSet global into the target namespace and then importing each object contained in the SyncSet. If an object being imported already exists in the target namespace then the timestamp for the imported object is compared to the timestamp of the existing object. If a conflict is detected then user implemented code is called to resolve the conflict. This is essentially an optimistic concurrency mechanism. If the conflict is not resolved successfully then a concurrency error is reported and the object is not synchronized.'}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"lasttransaction",children:"LastTransaction"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property LastTransaction As %Integer [ Private ];\n"})}),"\n",(0,s.jsx)(t.h3,{id:"firsttransaction",children:"FirstTransaction"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property FirstTransaction As %Integer [ Private ];\n"})}),"\n",(0,s.jsx)(t.h3,{id:"exclude",children:"Exclude"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Exclude As %String [ Private ];\n"})}),"\n",(0,s.jsx)(t.h3,{id:"unresolved",children:"Unresolved"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Unresolved As %Integer;\n"})}),"\n",(0,s.jsx)(t.p,{children:"Unresolved is set to point to the first unresolved object in the sync set once Import() has completed. If there are no unresolved objects then this value will be empty (not > 0)."}),"\n",(0,s.jsx)(t.h3,{id:"sid",children:"sId"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property sId As %String;\n"})}),"\n",(0,s.jsx)(t.p,{children:(0,s.jsx)(t.strong,{children:"Sync Set ID"})}),"\n",(0,s.jsx)(t.p,{children:"This is a string value used to identify the Sync Set object. This value is used as the suffix to the global name root of ^OBJ.SYNC.. For example, if the sId is set to the integer 1 then the global name will be ^OBJ.SYNC.1."}),"\n",(0,s.jsx)(t.h3,{id:"filterobject",children:"FilterObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property FilterObject As %RegisteredObject;\n"})}),"\n",(0,s.jsx)(t.h3,{id:"resolveconflictenv",children:"ResolveConflictEnv"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property ResolveConflictEnv As %RegisteredObject;\n"})}),"\n",(0,s.jsx)(t.h3,{id:"syncsystem",children:"SyncSystem"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property SyncSystem As %String;\n"})}),"\n",(0,s.jsx)(t.p,{children:"This is the sysID of the system that produced the SyncSet"}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"getlasttransaction",children:"GetLastTransaction"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetLastTransaction() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getfirsttransaction",children:"GetFirstTransaction"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetFirstTransaction() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"unresolvedfirst",children:"UnresolvedFirst"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method UnresolvedFirst() As %SYNC.SyncSetObject\n"})}),"\n",(0,s.jsx)(t.p,{children:"Return the pointer to the first unresolved object in the sync set. This is only valid if Import() has been run to completion before calling this method."}),"\n",(0,s.jsx)(t.h3,{id:"getlatestunresolved",children:"GetLatestUnresolved"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetLatestUnresolved() As %ArrayOfObjects\n"})}),"\n",(0,s.jsx)(t.p,{children:"Return the pointer to the last unresolved object in the sync set. This is only valid if Import() has been run to completion before calling this method."}),"\n",(0,s.jsx)(t.h3,{id:"unresolvednext",children:"UnresolvedNext"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method UnresolvedNext() As %SYNC.SyncSetObject\n"})}),"\n",(0,s.jsx)(t.p,{children:"Return the pointer to the next unresolved object. This is only valid if Import() has been run to completion before calling this method and ..UnresolvedFirst() has been called to initialize the unresolved object iterator."}),"\n",(0,s.jsx)(t.h3,{id:"import",children:"Import"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method Import(file As %String = "", lastSync As %Integer = 0, maxTS As %Integer, qspec As %String = "", ByRef errorlog As %String, diag As %Integer = 0, trace As %Integer = 0) As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"This method synchronizes each object contained in the sync set with the current database. Each object is first checked for concurrency. Concurrency conflicts occur when the object is modified on the local system after the object was last synchronized with the remote system where the sync set originated. If a concurrency conflict is detected, the object is passed to the %ResolveConcurrencyConflict method in %Library.SwizzleObject. If the conflict cannot be resolved, the object is requeued for later processing and the concurrency error is reported in the %%SERR error log. Otherwise, the object is synchronized by passing it to the %SyncObjectIn method in %Library.SwizzleObject.. If the synchronization fails, then the object is requeued for later processing."}),"\n",(0,s.jsx)(t.p,{children:"There are two types of common synchronization errors. The first is an unresolved dependency. This type of error occurs when an object references another object and the referencing property is part of a REQUIRED constraint. That means the object cannot be saved until the reference can be resolved. This problem is often caused by a reference to an object that is in the sync set but has not yet been processed. The second type of problem is an unresolved reference. This type of problem occurs in the same was as an unresolved dependency but the reference is not required in order for the object to be saved. An object with an unresolved reference is partially synchronized and only the reference is requeued for later processing."}),"\n",(0,s.jsx)(t.p,{children:"Once all of the objects in the sync set have been processed, the Import method attempts to synchronize all objects that were requeued. During this phase, all of the unresolved dependencies and references are expected to be resolved. Any objects that fail to synchronize during this phase are left in an unresolved state. Unresolved objects and errors reported during synchronization can be accessed by using the Unresolved query or the Errors query."}),"\n",(0,s.jsx)(t.p,{children:"When all of the objects contained in the Sync Set have been processed the time stamps in the %SYNC.SyncTime class are updated using the maxTS value."}),"\n",(0,s.jsx)(t.p,{children:"Formal parameters:"}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(t.table,{children:[(0,s.jsx)(t.thead,{children:(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.th,{children:"file"}),(0,s.jsx)(t.th,{children:"The name of a file containing a sync set. If a file name is specified, then that file will be loaded into the global. If no file is specified, then the global is expected to already exist in the current namespace."})]})}),(0,s.jsxs)(t.tbody,{children:[(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.td,{children:"lastSync"}),(0,s.jsx)(t.td,{children:"An integer value indicating the SyncTime value when this System.Namespace was last synchronized with the System.Namespace that generated the sync set being imported. If this value is not specified, then it will be retrieved from %SYNC.SyncTime"})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.td,{children:"maxTS"}),(0,s.jsx)(t.td,{children:"The highest transaction ID contained in the sync set. It is used to set the rTrn property in the %SYNC.SyncTime class. This value is not used for any purpose during import and is maintained for informational purposes only. This value is specified by the user and is expected to be the ID of the last %Library.ObjectJournal object included in the sync set. See the %SYNC.SyncTime for more information on the rTrn and lTrn properties."})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.td,{children:"qspec"}),(0,s.jsx)(t.td,{children:"Option flags. This formal argument is maintained for backward compatibility only."})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.td,{children:"errorlog"}),(0,s.jsx)(t.td,{children:"Array of errors encountered during import. These are not errors encountered during synchronization but are errors reported doing tasks like opening the file."})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.td,{children:"diag"}),(0,s.jsx)(t.td,{children:"If true, then Import will display status information on the current device."})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.td,{children:"trace"}),(0,s.jsx)(t.td,{children:'If true, then Import will record all import activity in the sync set global under the "Trace" subscript.'})]})]})]}),"\n",(0,s.jsx)(t.h3,{id:"requeue",children:"Requeue"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Requeue(iPtr As %Integer) As %Status\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getlasttransactiontime",children:"GetLastTransactionTime"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetLastTransactionTime() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"exportfile",children:"ExportFile"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method ExportFile(file As %String = "", qspec As %String = "", bUpdate As %Boolean = 1) As %Status\n'})}),"\n",(0,s.jsxs)(t.p,{children:["For information on qSpec, see ",(0,s.jsx)(t.a,{href:"/csp/docbook/DocBook.UI.Page.cls?FIND=ObjectScript+qspec",children:"System Flags and Qualifiers"}),"."]}),"\n",(0,s.jsx)(t.h3,{id:"openfile",children:"OpenFile"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method OpenFile(file As %String = "", qspec As %String = "", ByRef errorlog) As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"Open a file containing a sync set global and load it into the current sync set global. Files containing sync set globals are typically in GOF format and are produced by exporting a sync set on another system."}),"\n",(0,s.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %New method to provide notification that a new instance of an object is being created."}),"\n",(0,s.jsx)(t.p,{children:"If this method returns an error then the object will not be created."}),"\n",(0,s.jsx)(t.h3,{id:"clear",children:"Clear"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Clear() As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method should be used for data removal when the syncset is no longer needed. It deletes all the persistent data and makes impossible further usage of the object."}),"\n",(0,s.jsx)(t.h3,{id:"globalname",children:"GlobalName"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GlobalName() As %String [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method returns the name of the global used for the sync set."}),"\n",(0,s.jsx)(t.h3,{id:"getnexttrn",children:"GetNextTRN"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetNextTRN(ByRef num As %String) As %RawString\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getlasttrn",children:"GetLastTRN"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetLastTRN(ByRef num As %String) As %RawString\n"})}),"\n",(0,s.jsx)(t.h3,{id:"addtransactions",children:"AddTransactions"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method AddTransactions(iTranLast As %Integer = 0, iTranEnd As %Integer = 0, lExclude As %List = "", TNumber As %Integer = 0) As %Integer\n'})}),"\n",(0,s.jsx)(t.p,{children:"Add %Library.ObjectJournalTransactions to the current SyncSet. Each transaction in the %ObjectJournalTransaction extent is identified by an integer that is incremented for each new transaction. This ID assignment mechanism places transactions in chronological order, that is, the order in which the transactions are created. Transactions are expected to be in that order when later imported and sync'ed into another namespace. This method adds a range of transactions, beginning with iTranLast and ending with iTranEnd. The TNumber argument, if specified and is not zero, limits the number of transactions added. When that number of transactions has been added the method will return to the caller, even if the iTranEnd value has not yet been reached. The LastTransaction property is set to the ID of the last transaction added to the SyncSet."}),"\n",(0,s.jsx)(t.h3,{id:"addjournaledtransaction",children:"AddJournaledTransaction"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method AddJournaledTransaction(iTranPtr As %Integer = 0, lExclude As %List = "") As %Integer\n'})}),"\n",(0,s.jsx)(t.h3,{id:"addjournaledobject",children:"AddJournaledObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method AddJournaledObject(iTranPtr As %Integer = 0, iObjPtr As %Integer = 0, srcSystem As %String, srcNS As %String) As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"addobject",children:"AddObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method AddObject(class As %String = "", id As %String = "", fileop As %Integer = 0, guid As %String = "") As %Integer\n'})}),"\n",(0,s.jsxs)(t.p,{children:["Add an object to the current SyncSet. This method can be used to force an object to be included in the SyncSet when it isn't recorded in the ObjectJournal. It should not be used for normal situations since the ObjectJournal is expected to be complete. Normally, an object that is added to the SyncSet is a ",(0,s.jsx)(t.em,{children:"versioned object"})," meaning that the object state is recovered from history (normally, from the system journal). AddObject causes the object as it currently exists in the extent to be added to the SyncSet, breaking the natural chronology of the SyncSet. Parameters: class - the object's type class; id - the object's ID value; fileop - the filing operation that caused this object to be added to the sync set 0 - update 1 - insert 2 - delete guid - the object's GUID"]}),"\n",(0,s.jsx)(t.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Private, ProcedureBlock = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %Close method to provide notification that the current object is being closed."}),"\n",(0,s.jsx)(t.p,{children:"The return value of this method is ignored."}),"\n",(0,s.jsx)(t.h3,{id:"propertyvaluesexecute",children:"PropertyValuesExecute"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod PropertyValuesExecute(ByRef qHandle As %Binary, sid As %String = "0", iObjPtr As %Integer = 0) As %Status\n'})}),"\n",(0,s.jsx)(t.h3,{id:"propertyvaluesfetch",children:"PropertyValuesFetch"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod PropertyValuesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = PropertyValuesExecute ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"propertyvaluesclose",children:"PropertyValuesClose"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod PropertyValuesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = PropertyValuesExecute ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"collectionvaluesexecute",children:"CollectionValuesExecute"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CollectionValuesExecute(ByRef qHandle As %Binary, sid As %String = "0", iObjPtr As %Integer = 0, CollName = "") As %Status\n'})}),"\n",(0,s.jsx)(t.h3,{id:"collectionvaluesfetch",children:"CollectionValuesFetch"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CollectionValuesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = PropertyValuesExecute ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"collectionvaluesclose",children:"CollectionValuesClose"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CollectionValuesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = PropertyValuesExecute ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"findlastguid",children:"FindLastGUID"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method FindLastGUID(guid As %String) As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Find the last synchronization record for a particular GUID"}),"\n",(0,s.jsx)(t.h3,{id:"isempty",children:"IsEmpty"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method IsEmpty() As %Boolean\n"})}),"\n",(0,s.jsx)(t.h3,{id:"nextpointer",children:"nextPointer"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method nextPointer(ByRef iTranPtr, ByRef iTranLast)\n"})}),"\n",(0,s.jsx)(t.h3,{id:"errcount",children:"ErrCount"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method ErrCount() As %Integer\n"})}),"\n",(0,s.jsx)(t.h3,{id:"errorsexecute",children:"ErrorsExecute"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod ErrorsExecute(ByRef qHandle As %Binary, sid As %String = "0") As %Status\n'})}),"\n",(0,s.jsx)(t.h3,{id:"errorsfetch",children:"ErrorsFetch"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ErrorsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = ErrorsExecute ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"errorsclose",children:"ErrorsClose"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ErrorsClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = ErrorsExecute ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"queueerror",children:"QueueError"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method QueueError(pTranPtr As %Integer, pStatus As %Status = "") As %Status [ ProcedureBlock = 1 ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Queue an error to the current sync set"}),"\n",(0,s.jsx)(t.h3,{id:"getlastinfo",children:"GetLastInfo"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetLastInfo(guid As %String, ByRef lastver As %Integer, ByRef sid As %String, ByRef nmsid As %String) As %Status\n"})})]})}function o(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>c});var s=n(96540);const r={},i=s.createContext(r);function a(e){const t=s.useContext(i);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),s.createElement(i.Provider,{value:t},e.children)}}}]);