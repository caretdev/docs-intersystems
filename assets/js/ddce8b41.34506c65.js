"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[45616],{10609:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>o,frontMatter:()=>l,toc:()=>r});var s=n(74848),a=n(28453);const l={pagination_prev:null,pagination_next:null},i="SYS.DataCheck.RangeList",r=[{value:"Parameters",id:"parameters",level:2},{value:"VERSIONPROPERTY",id:"versionproperty",level:3},{value:"Properties",id:"properties",level:2},{value:"SystemName",id:"systemname",level:3},{value:"Counter",id:"counter",level:3},{value:"ListSet",id:"listset",level:3},{value:"Database",id:"database",level:3},{value:"GlobalName",id:"globalname",level:3},{value:"Collation",id:"collation",level:3},{value:"FirstEleNum",id:"firstelenum",level:3},{value:"Modified",id:"modified",level:3},{value:"Cached",id:"cached",level:3},{value:"Removed",id:"removed",level:3},{value:"InternalCacheToken",id:"internalcachetoken",level:3},{value:"LastUsedEleNum",id:"lastusedelenum",level:3},{value:"EleCount",id:"elecount",level:3},{value:"MatchedCount",id:"matchedcount",level:3},{value:"UnknownCount",id:"unknowncount",level:3},{value:"AggregateState",id:"aggregatestate",level:3},{value:"ErrorStatus",id:"errorstatus",level:3},{value:"Version",id:"version",level:3},{value:"Triggers",id:"triggers",level:2},{value:"DeleteTrigger",id:"deletetrigger",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"Init",id:"init",level:3},{value:"Insert",id:"insert",level:3},{value:"InsertFast",id:"insertfast",level:3},{value:"DuplicateCacheToken",id:"duplicatecachetoken",level:3},{value:"ReleaseCacheToken",id:"releasecachetoken",level:3},{value:"ReallyReleaseCacheToken",id:"reallyreleasecachetoken",level:3},{value:"SetCollation",id:"setcollation",level:3},{value:"LockBySystem",id:"lockbysystem",level:3},{value:"UnlockBySystem",id:"unlockbysystem",level:3},{value:"Output",id:"output",level:3},{value:"GetActiveResultsListSet",id:"getactiveresultslistset",level:3},{value:"GetListSetStartTime",id:"getlistsetstarttime",level:3},{value:"GetListSetEndTime",id:"getlistsetendtime",level:3},{value:"SetListSetStartTime",id:"setlistsetstarttime",level:3},{value:"SetListSetEndTime",id:"setlistsetendtime",level:3},{value:"%OnBeforeSave",id:"onbeforesave",level:3},{value:"%OnAfterSave",id:"onaftersave",level:3},{value:"%OnDelete",id:"ondelete",level:3},{value:"RemoveEle",id:"removeele",level:3},{value:"NewEle",id:"newele",level:3},{value:"ChangeEleState",id:"changeelestate",level:3},{value:"CacheEles",id:"cacheeles",level:3},{value:"DumpArrays",id:"dumparrays",level:3},{value:"GetStartingEle",id:"getstartingele",level:3},{value:"SetupListGlobal",id:"setuplistglobal",level:3},{value:"GetAggregateState",id:"getaggregatestate",level:3},{value:"ListElementsExecute",id:"listelementsexecute",level:3},{value:"ListElementsClose",id:"listelementsclose",level:3},{value:"ListElementsFetch",id:"listelementsfetch",level:3}];function c(e){const t={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,a.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"sysdatacheckrangelist",children:"SYS.DataCheck.RangeList"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class SYS.DataCheck.RangeList Extends %Persistent\n"})}),"\n",(0,s.jsx)(t.p,{children:"A list of global subscript ranges describing the entire key space of a single global. Objects of this class are the list header with properties for the list metadata. The ListElements query provides the list elements as rows."}),"\n",(0,s.jsx)(t.p,{children:"The RangeList is used to store results of the check and also the include/exclude subscript ranges to check (see ListSet property for more info)"}),"\n",(0,s.jsx)(t.p,{children:"RangeList objects that store results are maintained by the DataCheck destination system and should not be modified."}),"\n",(0,s.jsxs)(t.p,{children:["To create/edit a global selection RangeList as part of configuring a DataCheck destination system, the sequence is as follows. Note that the system must be configured to use global selection RangeLists in order for this to have an effect:",(0,s.jsx)(t.br,{}),"\n1. To create a new RangeList object, passing the appropriate arguments to the %New() constructor (see %OnNew); then call SetCollation. To edit an existing RangeList object, you can open through the MainIndex with the MainIndexOpen method.",(0,s.jsx)(t.br,{}),"\n2. Call Insert repeatedly, setting the desired ranges to state $$$RangeStateExcluded, with the rest being $$$RangeStateIncluded.",(0,s.jsx)(t.br,{}),"\n3. Call %Save to save the object."]}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"versionproperty",children:"VERSIONPROPERTY"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter VERSIONPROPERTY As STRING [ Internal ] = "Version";\n'})}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"systemname",children:"SystemName"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property SystemName As SystemName [ ReadOnly, Required ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"DataCheck system name that this RangeList belongs to"}),"\n",(0,s.jsx)(t.h3,{id:"counter",children:"Counter"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Counter As %Counter [ Internal ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Counter used as part of the composite id"}),"\n",(0,s.jsx)(t.h3,{id:"listset",children:"ListSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property ListSet As %String(COLLATION = "EXACT") [ Required ];\n'})}),"\n",(0,s.jsx)(t.p,{children:'The set of RangeLists that this object is a member of. Integer values 1 and higher are the set of results generated by the DataCheck system and incremented each time the system starts a new set of results. The currently active set of results is returned by GetActiveResultsListSet. A value of "%GS" ($$$RangeListSetGlobalSelection) indicates that this object is a member of the set of configured subscript ranges to include / exclude from the check.'}),"\n",(0,s.jsx)(t.h3,{id:"database",children:"Database"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Database As LocalDatabase [ ReadOnly, Required ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Database referenced by this RangeList"}),"\n",(0,s.jsx)(t.h3,{id:"globalname",children:"GlobalName"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property GlobalName As GlobalReference [ ReadOnly, Required ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Global name referenced by this RangeList"}),"\n",(0,s.jsx)(t.h3,{id:"collation",children:"Collation"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Collation As %Integer [ InitialExpression = -1, ReadOnly ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Collation of global or -1 if unknown"}),"\n",(0,s.jsx)(t.h3,{id:"firstelenum",children:"FirstEleNum"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property FirstEleNum As %Integer(MINVAL = 0) [ Internal, Private ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"EleNum of first element in the list"}),"\n",(0,s.jsx)(t.h3,{id:"modified",children:"Modified"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Modified [ Internal, MultiDimensional, Private, Transient ];\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Array of modified elements and their data",(0,s.jsx)(t.br,{}),"\n..Modified(elenum)=ele"]}),"\n",(0,s.jsx)(t.h3,{id:"cached",children:"Cached"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Cached [ Internal, MultiDimensional, Private, Transient ];\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Array of cached elements and, if not in the modified array, their data.",(0,s.jsx)(t.br,{}),'\n..Cached(elenum,"cnt") stores the count of cache reservations on the element',(0,s.jsx)(t.br,{}),'\n..Cached(elenum,"e") if exists, stores the element itself.']}),"\n",(0,s.jsx)(t.p,{children:'If a cached element has been modified then the "e" node will not exists and instead the element is to be found in ..Modified(elenum). When reading elements, therefore, it is important to pick them up from the ..Modified array first, then from the ..Cached array (as an optimization), and finally from the global.'}),"\n",(0,s.jsx)(t.h3,{id:"removed",children:"Removed"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Removed [ Internal, MultiDimensional, Private, Transient ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Array of elements EleNum to delete"}),"\n",(0,s.jsx)(t.h3,{id:"internalcachetoken",children:"InternalCacheToken"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property InternalCacheToken [ Internal, MultiDimensional, Private, Transient ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Maintains an internal cache reservation on a few elements"}),"\n",(0,s.jsx)(t.h3,{id:"lastusedelenum",children:"LastUsedEleNum"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property LastUsedEleNum As %Integer(MINVAL = 0) [ InitialExpression = 0, Internal, Private ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Index of the last newly created element. Note: this is not necessarily the end of the list or even a valid element."}),"\n",(0,s.jsx)(t.h3,{id:"elecount",children:"EleCount"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property EleCount As %Integer [ Internal, Private ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Count of elements in the range list"}),"\n",(0,s.jsx)(t.h3,{id:"matchedcount",children:"MatchedCount"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property MatchedCount As %Integer [ Internal ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Count of elements in the $$$RangeStateMatched or $$$RangeStateExcluded state"}),"\n",(0,s.jsx)(t.h3,{id:"unknowncount",children:"UnknownCount"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property UnknownCount As %Integer [ Internal ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Count of elements in the $$$RangeStateUnknown state"}),"\n",(0,s.jsx)(t.h3,{id:"aggregatestate",children:"AggregateState"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property AggregateState As RangeState [ Calculated, SqlComputeCode = {s {AggregateState}=##class(SYS.DataCheck.RangeList).GetAggregateState({EleCount},{MatchedCount},{UnknownCount})}, SqlComputed ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"One of the following constants, defined for convenience in %syDataCheck.inc:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"1 - $$$RangeStateMatched - the entire global, less any excluded ranges, was found to be matched"}),"\n",(0,s.jsx)(t.li,{children:"0 - $$$RangeStateUnknown - the entire global has not been checked yet, but no discrepancies found"}),"\n",(0,s.jsx)(t.li,{children:"-1 - $$$RangeStateUnmatched - some ranges have discrepancies"}),"\n"]}),"\n",(0,s.jsx)(t.h3,{id:"errorstatus",children:"ErrorStatus"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property ErrorStatus As %Status [ InitialExpression = {$$$OK}, Internal, Private, Transient ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"If an unexpected error occurs while updating the rangelist in methods like Init() and Insert(), it can leave the rangelist elements in an invalid state. These methods trap unexpected errors and record them as a status code in ErrorStatus. The ErrorStatus is checked in %OnAddToSaveSet and other important methods and fails if the ErrorStatus is not $$$OK. The object must be reloaded, thus discarding the invalid changes in order to clear the error status."}),"\n",(0,s.jsx)(t.h3,{id:"version",children:"Version"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Version As %Integer [ Internal, Private ];\n"})}),"\n",(0,s.jsx)(t.h2,{id:"triggers",children:"Triggers"}),"\n",(0,s.jsx)(t.h3,{id:"deletetrigger",children:"DeleteTrigger"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Trigger DeleteTrigger [ Event = DELETE, Internal ]\n"})}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnNew(systemname As %String, set As %String, database As LocalDatabase, globalname As %String) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Constructor for RangeList"}),"\n",(0,s.jsx)(t.p,{children:"Input Parameters:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"systemname: name of the DataCheck destination system"}),"\n",(0,s.jsx)(t.li,{children:"set: set that this rangelist is a member of; see ListSet"}),"\n",(0,s.jsxs)(t.li,{children:["database: The local database path for non-mirror DataCheck configurations; the mirror database name, in :mirror:",(0,s.jsx)(t.em,{children:"mirrorname"}),":",(0,s.jsx)(t.em,{children:"mirrorDBname"})," format, for mirrored DataCheck configurations.\nglobalname: name of the global that this rangelist represents (leading ^ is optional)  IMPORTANT: The creator of a global selection RangeList is responsible for ensuring that the database is specified correctly, and for non-mirror DataCheck configurations, that it has a mapping specified in the DataCheck configuration."]}),"\n"]}),"\n",(0,s.jsx)(t.h3,{id:"init",children:"Init"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Init(state As RangeState = {$$$RangeStateUnknown}) [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"(Re)Initializes the list with specified state, removing list elements and resets Collation to -1. Caller must call %Save() to save. Caller must set the collation with the SetCollation method before calling Insert"}),"\n",(0,s.jsx)(t.p,{children:"Input Parameters: state: initial state of the list"}),"\n",(0,s.jsx)(t.h3,{id:"insert",children:"Insert"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method Insert(gloref1 As GlobalReference, gloref2 As GlobalReference = "", state As RangeState, cachetoken As %List = "", Output sc As %Status) As %List\n'})}),"\n",(0,s.jsx)(t.p,{children:"Inserts a new range into the range list, merging and splitting with existing ranges as appropriate. Caller must call %Save() to save."}),"\n",(0,s.jsx)(t.p,{children:"Input Parameters:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"gloref1: beginning of the range to insert (inclusive)"}),"\n",(0,s.jsx)(t.li,{children:"gloref2: end of range to insert (exclusive)"}),"\n",(0,s.jsx)(t.li,{children:"state: state of the range to insert"}),"\n",(0,s.jsx)(t.li,{children:"cachetoken: (optional) A token returned from a previous call to Insert(). See below for more detail.\nOutput Parameters: sc: %Status returned from this call. If an error occurs that is not simply the result of invalid input, the RangeList needs to be reloaded to return to a valid state; in this case subsequent calls to Insert or attempts to save the RangeList will result in $$$DCRangeListErrorStatus errors."}),"\n"]}),"\n",(0,s.jsx)(t.p,{children:"Returns: Returns a \"cachetoken\" that reserves some of the list elements in a cache to optimize the next insert. Caller must maintain this cachetoken as described below. If the status in 'sc' is not $$$OK, the cachetoken shall be null."}),"\n",(0,s.jsx)(t.p,{children:"The cachetoken returned from a call to Insert() should be passed in to the next call to Insert() that is to act on a nearby part of the list. Each call to Insert() that is passed a token will: start a linear scan of the list from elements referenced in the passed cachetoken (assuming those elements are still cached and haven't be removed by intervening modifications to the list); release the cache reservation on the elements that the token references; and return a new cachetoken with an updated cache reservation. If an Insert() call is not known to be acting on a region of the list near to a cachetoken that the caller has from a previous Insert() call, the caller should instead pass a null cachetoken. When no cachetoken is passed, Insert() will evaluate all cached elements to determine an optimal starting location."}),"\n",(0,s.jsx)(t.p,{children:"The caller is responsible for releasing the cache reservation for any cachetoken returned from Insert() that is not used in a later Insert() call. The cache reservation should be released by passing the unused cachetoken to ReleaseCacheToken() or by closing the RangeList object."}),"\n",(0,s.jsx)(t.h3,{id:"insertfast",children:"InsertFast"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method InsertFast(gloref1 As GlobalReference, gloref2 As GlobalReference = "", state As RangeState, cachetoken As %List = "") As %List [ Internal ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Same as Insert except that no validation of input parameters is performed, and errors are thrown to the caller rather than returned in the output parameter."}),"\n",(0,s.jsx)(t.h3,{id:"duplicatecachetoken",children:"DuplicateCacheToken"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method DuplicateCacheToken(cachetoken As %List) As %List [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Takes as argument a cachetoken returned from Insert(), duplicates the reservations of the cached elements and returns a duplicate cachetoken."}),"\n",(0,s.jsx)(t.h3,{id:"releasecachetoken",children:"ReleaseCacheToken"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method ReleaseCacheToken(cachetoken As %List)\n"})}),"\n",(0,s.jsx)(t.p,{children:"Takes as argument a cachetoken returned from Insert and releases the cache reservation of the cached elements."}),"\n",(0,s.jsx)(t.h3,{id:"reallyreleasecachetoken",children:"ReallyReleaseCacheToken"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method ReallyReleaseCacheToken(cachetoken As %List) [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Takes as argument a cachetoken and releases the cache reservation, not retaining any internal cacheing of it."}),"\n",(0,s.jsx)(t.h3,{id:"setcollation",children:"SetCollation"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetCollation(col As %Integer)\n"})}),"\n",(0,s.jsx)(t.p,{children:"Sets the Collation to the value of the 'col' parameter if specified. If no value is specified, obtains it from the local system by looking at the global referenced by this RangeList object, if it exists, or from the default for the database referenced by this RangeList object. Throws an exception if it was already set to a valid collation. Caller must call %Save() to save."}),"\n",(0,s.jsx)(t.h3,{id:"lockbysystem",children:"LockBySystem"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod LockBySystem(systemname As %String, shared As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"unlockbysystem",children:"UnlockBySystem"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod UnlockBySystem(systemname As %String, shared As %Boolean = 0, immediate As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"output",children:"Output"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Output() [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Outputs this rangelist to the current device"}),"\n",(0,s.jsx)(t.h3,{id:"getactiveresultslistset",children:"GetActiveResultsListSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetActiveResultsListSet(systemname As %String) As %String\n"})}),"\n",(0,s.jsx)(t.p,{children:"Given a DataCheck system name, returns the ListSet of the currently active set of results"}),"\n",(0,s.jsx)(t.h3,{id:"getlistsetstarttime",children:"GetListSetStartTime"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetListSetStartTime(systemname As %String, listset As %String) As %String\n"})}),"\n",(0,s.jsx)(t.p,{children:"Given a DataCheck system name and a list set, returns the date and time in $horolog format when the check whose results are stored in that list set began. Returns null if the set does not exist."}),"\n",(0,s.jsx)(t.h3,{id:"getlistsetendtime",children:"GetListSetEndTime"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetListSetEndTime(systemname As %String, listset As %String) As %String\n"})}),"\n",(0,s.jsx)(t.p,{children:"Given a DataCheck system name and a list set, returns the date and time in $horolog format when all pending DataCheck queries finished, with the specified list set was the active one. Returns null if there are queries pending and the specified list set is the active one, or if the specified list set does not exist. If the specified list set is the active one, the value may change from non-null back to null if new queries are run."}),"\n",(0,s.jsx)(t.h3,{id:"setlistsetstarttime",children:"SetListSetStartTime"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetListSetStartTime(systemname As %String, listset As %String, value As %String) [ Internal ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"setlistsetendtime",children:"SetListSetEndTime"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetListSetEndTime(systemname As %String, listset As %String, value As %String) [ Internal ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"onbeforesave",children:"%OnBeforeSave"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Don't allow the save if an error occurred on Insert()"}),"\n",(0,s.jsx)(t.h3,{id:"onaftersave",children:"%OnAfterSave"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnAfterSave(insert As %Boolean) As %Status [ Internal, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Saves the modified elements and deletes the removed elements. Doing this on after save ensures that the lock on the rangelist object has been acquired and that version mismatches / validation has been resolved before modifying any elements since the elements will be modified without locking"}),"\n",(0,s.jsx)(t.h3,{id:"ondelete",children:"%OnDelete"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Delete all elements in this list when deleting the list"}),"\n",(0,s.jsx)(t.h3,{id:"removeele",children:"RemoveEle"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method RemoveEle(ByRef ele As %List, ByRef prevele As %List, ByRef nextele As %List) As %List [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Subroutine of Insert(). Removes the element that follows 'ele' On return, 'nextele' and 'prevele' are updated. 'ele' doesn't currently need to be passed by reference but should be (hence the note in the signature) so that RemoveEle could signal that the element has been removed in the element data itself if necessary in the future. Callers should not depend on anything in 'ele' after RemoveEle is called."}),"\n",(0,s.jsx)(t.h3,{id:"newele",children:"NewEle"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method NewEle(ByRef prevele As %List, ByRef nextele As %List, gloref As GlobalReference, state As RangeState) As %List [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Subroutine of Insert(). Inserts a new element it in the list with prevele as its previous ele and nextele as the ele that follows it. Sets its gloref and state. Returns the new element. On return, 'nextele' and 'prevele' are updated. Callers must them pass by reference."}),"\n",(0,s.jsx)(t.h3,{id:"changeelestate",children:"ChangeEleState"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method ChangeEleState(ByRef ele As %List, newelestate As RangeState) [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Subroutine of Insert(); modifies an existing element with a new state. 'ele' must be passed by reference and is updated on return."}),"\n",(0,s.jsx)(t.h3,{id:"cacheeles",children:"CacheEles"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method CacheEles(ByRef ele1 As %List, ByRef ele2 As %List, ByRef ele3 As %List) As %List [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Establishes a cache reservation on up to three elements. The elements should be passed by reference although currently they are not modified by this function."}),"\n",(0,s.jsx)(t.h3,{id:"dumparrays",children:"DumpArrays"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method DumpArrays()\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getstartingele",children:"GetStartingEle"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetStartingEle(cachetoken As %List, gloref As GlobalReference, Output nextele As %List, Output prevele As %List) As %List [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Subroutine of Insert(). Starting with the cachetoken, if provided, finds the existing element that begins the range where the global reference specified as 'gloref' collates. Returns that element. On return, nextele is the element following the returned element or null if the returned element is last in the list. On return, prevele may or may not be set, but if it is, its the element preceding the returned element in the list."}),"\n",(0,s.jsx)(t.p,{children:"The search for the beginning of the list is optimized to start with any valid element in the cachetoken. If all the elements in the cachetoken have been removed, or a null cachetoken has been provided (as is the case on first insert) then any elements in memory are evaluated to start with the one closest to the specified 'gloref' before finally resorting to scanning the list linearly from the beginning."}),"\n",(0,s.jsx)(t.h3,{id:"setuplistglobal",children:"SetupListGlobal"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetupListGlobal() As %Integer [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Subroutine of ListElementsExecute() used to setup the process private global. Returns the index into ^||%DataCheck.Temp used"}),"\n",(0,s.jsx)(t.h3,{id:"getaggregatestate",children:"GetAggregateState"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetAggregateState(elecount As %Integer, matchedcount As %Integer, unknowncount As %Integer) As RangeState [ CodeMode = expression, Internal, SqlProc ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"listelementsexecute",children:"ListElementsExecute"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ListElementsExecute(ByRef qHandle As %Binary, systemname As %String, set As %String, database As LocalDatabase, global As GlobalReference, ByRef rl As RangeList) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"The ListElements query fetches as rows each subscript range in the rangelist in collation order. Each subscript range is the global reference inclusive of the 'From' column up to but excluding the global reference in the 'To' column. If 'To' is null or \"[end]\" in display mode, the range extends to the end of the global."}),"\n",(0,s.jsx)(t.p,{children:"Input Parameters:"}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"systemname: name of the DataCheck system"}),"\n",(0,s.jsx)(t.li,{children:"set: ListSet to query (see ListSet property)"}),"\n",(0,s.jsx)(t.li,{children:"database: path of the database local to this system"}),"\n",(0,s.jsx)(t.li,{children:"global: name of the global\nrl: (optional) If an object is passed in this parameter, it will be assumed to be the RangeList object for which elements should be returned and the other input parameters will be ignored. This parameter also serves as an output parameter to return the RangeList object opened if no object was passed in.  Output Parameters: rl: (optional) If no object was passed in as an input parameter (see above), then the output of this parameter is the RangeList object that was opened, or null if no RangeList object exists (in this case no rows will be found). If an object was passed as an input parameter, it is not modified."}),"\n"]}),"\n",(0,s.jsx)(t.h3,{id:"listelementsclose",children:"ListElementsClose"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ListElementsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = OneRangeListExecute ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"listelementsfetch",children:"ListElementsFetch"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ListElementsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = OneRangeListExecute ]\n"})})]})}function o(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>r});var s=n(96540);const a={},l=s.createContext(a);function i(e){const t=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function r(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),s.createElement(l.Provider,{value:t},e.children)}}}]);