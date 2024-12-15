/// <p><b>Deprecation note</b>: Direct use of this class is still supported, but it is recommended to use either
/// Domain Definitions (cf <class>%iKnow.DomainDefinition</class>) to manage a domain's contents
/// or use the shorthand methods in <class>%SYSTEM.iKnow</class> to work with an existing
/// domain not managed through a domain definition class.</p>
/// <p>This class coordinates the loading process.</p>
/// <p>For <b>Batch Loading</b>, use the <method>ProcessBatch</method>
/// after one or more <class>%iKnow.Source.Lister</class> instances have been used to register
/// one or more lists of sources to load into the domain using their
/// <method class="%iKnow.Source.Lister">AddListToBatch</method> methods.</p>
/// <p>For <b>Direct Loading</b>, register a <class>%iKnow.Source.Lister</class> instance with this
/// Loader instance and call <method>ProcessList</method> or <method>ProcessVirtualList</method>
/// to add a small number of sources to the domain directly (in the same process).</p>
/// <p>For <b>Direct Text Loading</b>, you can simply queue <class>%String</class> data using the
/// <method>BufferSource</method> and then add these directly (in the same process) to the domain
/// using either <method>ProcessBuffer</method> or <method>ProcessVirtualBuffer</method>.</p>
/// <p>With both Direct Loading options, the IDs of the sources added in the last execution are
/// available through <method>GetSourceIds</method>
Class %iKnow.Source.Loader Extends %RegisteredObject [ Deprecated, Final, System = 4 ]
{

Property DomainId As %Integer;

/// surrogate domain ID for use in IRIS.Temp
/// guaranteed to be unique across namespaces
Property TempId As %Integer [ Private ];

Property KeyId As %Integer [ Private ];

Property Lister As %iKnow.Source.Lister [ Private ];

Property ListerData As %List [ Internal, Private ];

Property Processor As %iKnow.Source.Processor [ Private ];

Property Indexer As %iKnow.Indexer [ Private ];

Property DirectInput As %iKnow.DirectInput [ Private ];

Property MetaData As %iKnow.Queries.MetadataI [ Private ];

Property ListGlo As %String [ Internal, Private ];

Property SrcInc As %String [ Internal, Private ];

Property SrcData As %String [ Internal, Private ];

Property LastErrBeforeLoad As %Integer [ InitialExpression = 0, Internal, Private ];

Property LastFailBeforeLoad As %Integer [ InitialExpression = 0, Internal, Private ];

Property LastWarnBeforeLoad As %Integer [ InitialExpression = 0, Internal, Private ];

Method %OnNew(domId As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

/// <p>This call registers the supplied <class>%iKnow.Source.Lister</class> object to be used for Direct Loading by
/// subsequent calls to <method>ProcessList</method>.</p>
/// <p>The supplied Lister object should be fully configured, but cannot have any lists already
/// scheduled for it (through calls to its AddListToBatch method).</p>
Method SetLister(lister As %iKnow.Source.Lister) As %Status
{
}

/// <p>Same As <method>ProcessList</method>, but listed sources will be added as Virtual Sources.</p>
Method ProcessVirtualList(listargs...) As %Status
{
}

/// <p>This method initiates a Direct Load, indexing the sources identified by the Lister registered
/// with <method>SetLister</method>. The <b>Lister Parameters</b> passed as listargs to this method
/// should correspond in type and number to what the currently registered Lister expects as its
/// (implementation-specific) Lister Parameters.</p>
/// <p>All operations will execute within the current process and therefore has superior performance
/// over Batch Loading when used for small numbers of sources.</p>
/// <p>After this method has finished, the generated source IDs can be retrieved through
/// <method>GetSourceIds</method>.</p>
Method ProcessList(listargs...) As %Status
{
}

/// <p>This method deletes a single source from the domain, including all its entity and CRC occurrences,
/// sentences and paths. Unique entities and CRCs occurring in this source will have their frequency
/// and spread updated.</p>
/// <p>If there's any metadata or matching results associated with this source,
/// it will also be deleted.</p>
ClassMethod DeleteSource(domId As %Integer, internalId As %Integer) As %Status
{
}

/// <p>This method deletes a single Virtual Source from the domain, including all its entity and
/// CRC occurrences, sentences and paths.</p>
ClassMethod DeleteVirtualSource(domId As %Integer, vSrcId As %Integer) As %Status
{
}

/// <p>Deletes all Virtual Sources associated with this domain.</p>
ClassMethod DeleteAllVirtualSources(domId As %Integer) As %Status
{
}

/// <p>This method resets the internal globals used during the load process.</p>
Method Reset() As %Status
{
}

/// <p>Lines up the data supplied to this method to be indexed as a new source with the provided reference
/// in a subsequent call to	<method>ProcessBuffer</method> or <method>ProcessVirtualBuffer</method>.</p>
/// <p>Multiple calls to this method using the same ref before calling the Process* method, will
/// result in the data being appended to what was previously buffered for that ref. All buffering and
/// processing operations should happen within the same process.</p>
Method BufferSource(ref As %String, data As %String) As %Status
{
}

/// <p>Same As <method>ProcessBuffer<method>, but buffered sources will be added as Virtual Sources.</p>
Method ProcessVirtualBuffer(cfg As %String = "") As %Status
{
}

/// <p>Indexes all data buffered within this process through previous calls to
/// <method>BufferSource</method> using the Direct Loading approach. This includes calling
/// <method>SetLister</method> with a <class>%iKnow.Source.Temp.Lister</class> instance and
/// initiating the Direct Load through <method>ProcessList</method>. The buffer is cleaned
/// automatically at the end of successfully processing the data.</p>
/// <p>After this method has finished, the generated source IDs can be retrieved through
/// <method>GetSourceIds</method>.</p>
Method ProcessBuffer(cfg As %String = "") As %Status
{
}

Method ProcessBufferInternal(pConfig As %String = "", pVirtual As %Boolean = 0) As %Status [ Internal ]
{
}

/// <p>This method clears any data supplied so far through calls to <method>BufferSource</method></p>
Method ClearBuffer() As %Status
{
}

/// <p>This method returns all the data currently in the buffer, as entered through calls to
/// <method>BufferSource</method>, since the last call to <method>ProcessBuffer</method> or
/// <method>ClearBuffer</method>. Data is returned in a two-level array structure:
/// <blockquote>pBuffer(<i>reference</i>) = <i>numberOfEntries</i><br/>
/// pBuffer(<i>reference</i>, <i>n</i>) = <i>data</i></blockquote></p>
Method GetBuffer(Output pBuffer) As %Status
{
}

/// args(1) = number of sources.
/// args(2) = the status global to log the process for LoadSources.
/// args(3) = the time to queue work into the queue.
ClassMethod LogProcess(domainId As %Integer, procId As %Integer, args As %List) As %Status
{
}

/// <p>This is the primary method for starting a Batch Load. When executed, this method will first
/// go through the lists registered through AddListToBatch() calls on <class>%iKnow.Source.Lister</class>
/// objects and call their ExpandList() method to get a complete list of all the sources to index.
/// Then, it will instantiate the appropriate <class>%iKnow.Source.Processor</class> objects to
/// read their contents and forward it to the iKnow engine (optionally through a <class>%iKnow.Source.Converter</class>
/// instance). Finally, it will invoke the ^%iKnow.BuildGlobals routine to transform the output
/// of the iKnow engine into the persistent domain data structures.</p>
Method ProcessBatch() As %Status
{
}

/// <p>This method returns the Source IDs of the sources created in the last call to
/// <method>ProcessList</method>, <method>ProcessBuffer</method>, <method>ProcessVirtualList</method>
/// or <method>ProcessVirtualBuffer</method>.</p>
Method GetSourceIds() As %List
{
}

/// Clears the logs, as directed by the boolean parameters.
Method ClearLogs(clearErrors As %Boolean = 1, clearFailed As %Boolean = 1, clearWarnings As %Boolean = 1) As %Status
{
}

Method ProcessLists() As %Status [ Internal, Private ]
{
}

Method ProcessStagingGlobals() As %Status [ Internal, Private ]
{
}

Method ClearTemps(OverrideSaveTemp As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod ClearTempsStatic(domId, OverrideSaveTemp As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod BackExecute(domId As %Integer, processNr As %Integer, args As %List = "") As %Status [ Internal ]
{
}

Method Execute(processNr As %Integer, async As %Boolean = 0) As %Status [ Internal, Private ]
{
}

Method LoadSources(objIdx As %iKnow.Indexer, objDi As %iKnow.DirectInputDO) As %Status [ Internal ]
{
}

Method SetCurrentErrors() As %Status [ Internal, Private ]
{
}

Method CheckErrors(ByRef sc As %Status) As %Status [ Internal, Private ]
{
}

/// <p>Simple utility method to retrieve an overview of all Lists as currently scheduled through
/// AddListToBatch calls on <class>%iKnow.Source.Lister</class> objects for this Loaders domain.</p>
Method GetCurrentLists(ByRef result) As %Status
{
}

/// <p>Returns all logged errors for this domain. By default only the errors logged since this
/// Loader object's last load operation are returned, unless the returnAll parameter is set to 1.
/// The returned result contains the following columns:</p>
/// <ol>
/// 	<li>Error message</li>
/// 	<li>Location: indication of the class and method where the error occurred</li>
/// 	<li>Timestamp: in $horolog format</li>
/// </ol>
Method GetErrors(ByRef result, returnAll As %Boolean = 0) As %Status
{
}

/// <p>Returns all logged source failures for this domain. By default only the failures logged since this
/// Loader object's last load operation are returned, unless the returnAll parameter is set to 1.
/// The returned result contains the following columns:</p>
/// <ol>
/// 	<li>Composite reference: elements used to generate the external ID (in case it didn't get generated)</li>
/// 	<li>External ID</li>
/// 	<li>Location: indication of the class and method where the error occurred</li>
/// 	<li>Error message</li>
/// 	<li>Internal error ID: Contact WRC if this is a positive integer.</li>
/// 	<li>Timestamp: in $horolog format</li>
/// </ol>
Method GetFailed(ByRef result, returnAll As %Boolean = 0) As %Status
{
}

/// <p>Returns all logged warnings for this domain. By default only the warnings logged since this
/// Loader object's last load operation are returned, unless the returnAll parameter is set to 1.
/// The returned result contains the following columns:</p>
/// <ol>
/// 	<li>Composite reference: elements used to generate the external ID (in case it didn't get generated)</li>
/// 	<li>External ID</li>
/// 	<li>Location: indication of the class and method where the error occurred</li>
/// 	<li>Error message</li>
/// 	<li>Timestamp: in $horolog format</li>
/// </ol>
Method GetWarnings(ByRef result, returnAll As %Boolean = 0) As %Status
{
}

}
