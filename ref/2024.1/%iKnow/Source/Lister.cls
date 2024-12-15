/// <p><b>Deprecation note</b>: Direct use of this class is still supported, but it is recommended to use either
/// Domain Definitions (cf <class>%iKnow.DomainDefinition</class>) to manage a domain's contents
/// or use the shorthand methods in <class>%SYSTEM.iKnow</class> to work with an existing
/// domain not managed through a domain definition class.</p>
/// <p>This is the base class for any Lister implementations. Lister classes are used at the start of the
/// load process to identify the sources that need to be loaded.
/// Each Lister implemenation is specifically designed to be able to scan a certain type of source
/// locations, for example a filesystem for <class>%iKnow.Source.File.Lister</class> and a SQL query for
/// <class>%iKnow.Source.SQL.Lister</class></p>
/// <p>Each Lister implementation class defines a set of <b>Lister Parameters</b>, specifying how to
/// reach the sources in the particular type of location this Lister class is designed to work with.
/// For a file lister, this would include parameters such as the directory where to look and the type
/// of files to load from that directory. These <b>Lister Parameters</b> are documented by each
/// Lister implementation in its class documentation.</p>
/// <p>These Lister Parameters are to be provided to the <method>AddListToBatch</method> method, when
/// configuring a list for Batch Loading, or to the <method>ProcessList</method> method when executing
/// Direct Loads.</p>
Class %iKnow.Source.Lister Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

Property DomainId As %Integer [ Private ];

/// surrogate domain ID for use in IRIS.Temp
/// guaranteed to be unique across namespaces
Property TempId As %Integer [ Private ];

Property ListerClassId As %Integer [ Private ];

Property Configuration As %String;

Property ConfigurationId As %Integer [ Private ];

Property Processor As %String [ Private ];

Property ProcessorId As %Integer [ Private ];

Property ProcessorParams As %String [ Private ];

Property Converter As %String [ Private ];

Property ConverterId As %Integer [ Private ];

Property ConvParams As %String [ Private ];

Property CurrentRef As %String [ Private ];

Property ListId As %Integer [ Private ];

Property DataId As %Integer [ Internal, Private ];

Property CurData As %Integer [ Internal, Private ];

Property SrcList As %String [ Internal ];

Property SrcData As %String [ Internal, Private ];

Property MetaId As %Integer [ Internal, Private ];

Property CurMetaLength As %Integer [ Internal, Private ];

Property SrcMeta As %String [ Internal ];

Property SrcTemp As %String [ Internal, Private ];

Property SrcTempMeta As %String [ Internal ];

Property ListGlo As %String [ Internal, Private ];

Property BatchMode As %Integer [ Internal, Private ];

Property FixedMetaKeys As %List [ Internal, Private ];

Property FixedMetaValues As %List [ Internal, Private ];

/// Utility local Loader instance for the <method>ProcessList</method> wrapper call
Property Loader As %iKnow.Source.Loader [ Internal, Private ];

Method %OnNew(domId As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

Method SetBatchMode(BatchMode As %Integer) [ Internal ]
{
}

/// <p>Shorthand method invoking <method>SetConfig</method>, <method>SetProcessor</method> and
/// <method>SetConverter</method> in one call. A Lister can be re-initialized between calls to
/// <method>AddListToBatch</method> or <method>ProcessList</method>, resulting in different
/// settings to be used for the respective lists.</p>
Method Init(config As %String, processor As %String, processorParams As %List = "", converter As %String = "", converterParams As %List = "") As %Status [ ServerOnly = 1 ]
{
}

Method SetDataId(dataId As %Integer) As %Status [ Final, Internal, ServerOnly = 1 ]
{
}

/// <p>Registers the <class>%iKnow.Source.Configuration</class> name to use when indexing sources
/// from from the lists registered through <method>AddListToBatch</method> or
/// <method>ProcessList</method> calls onwards.
/// Using this method to set a different Configuration between two <method>AddListToBatch</method>
/// calls will not impact any lists already registered in earlier calls.</p>
Method SetConfig(ByRef config As %String) As %Status [ Final ]
{
}

/// <p>Registers the <class>%iKnow.Source.Processor</class> class and parameters to use when indexing sources
/// from from the lists registered through <method>AddListToBatch</method> or
/// <method>ProcessList</method> calls onwards.
/// Using this method to set a different Processor between two <method>AddListToBatch</method>
/// calls will not impact any lists already registered in earlier calls.</p>
Method SetProcessor(processor As %String, processorParams As %List) As %Status [ Final ]
{
}

/// <p>Registers the <class>%iKnow.Source.Converter</class> class and parameters to use when indexing sources
/// from from the lists registered through <method>AddListToBatch</method> or
/// <method>ProcessList</method> calls onwards.
/// Using this method to set a different Converter between two <method>AddListToBatch</method>
/// calls will not impact any lists already registered in earlier calls.</p>
Method SetConverter(converter As %String, convparams As %List) As %Status [ Final ]
{
}

/// <p>This method returns the default <class>%iKnow.Source.Processor</class> class to use
/// (without any parameters) if none was registered explicitly through calls to
/// <method>SetProcessor<method>. By default, this selects (if it exists)
/// a class called Processor in the same package as this Lister implementation, but subclasses
/// might wish to override this and hardcode a specific default Processor to use.</p>
ClassMethod DefaultProcessor() As %String
{
}

/// <p>This method is used to register a list the Lister implementation will later on scan through
/// as part of the execution of the <class>%iKnow.Source.Loader</class> ProcessBatch process.
/// This method takes this Lister implementations <b>Lister Parameters</b> as its arguments, as
/// specified in the class documentation of this Lister implementation.</p>
Method AddListToBatch(listargs...) As %Status [ Final ]
{
}

/// <p>This method should be overridden by subclasses, implementing how they scan through the particular
/// type of source location or structures they specialize in. The arguments for this method are the
/// same Lister Parameters as those used when issuing the corresponding <method>AddListToBatch</method>
/// call and are specified and documented by the Lister implementation.</p>
/// <p>When expanding the list, the Lister should build a "Composite reference": a %List containing the lister
/// ID, the group ID and the local reference for each (candidate) source it found and pass that to
/// either a <method>StoreRef</method>, <method>StoreTemp</method> or <method>StoreTempStream</method>
/// call. Optionally, it can store metadata for each of these refs using the
/// <method>SetMetadataValues</method> method.</p>
/// <p><b>NOTE:</b> This method is used by the iKnow loading frameworkand should never be called by
/// custom code.</p>
Method ExpandList(listparams As %List) As %Status
{
}

/// Utility method to report failures for a given source (identified through a Composite Ref)
Method ReportError(ref As %List, message As %String, location As %String = "") As %Status [ Final, Private ]
{
}

/// Utility method to report warnings for a given source (identified through a Composite Ref)
Method ReportWarning(ref As %List, message As %String, location As %String = "") As %Status [ Final, Private ]
{
}

/// <p>Stores the supplied reference for a source to be loaded, along with the sources contents
/// passed in through 'data' as a <class>%String</class>
/// to be processed by <class>%iKnow.Source.Temp.Processor</class> (make sure it is set using
/// <method>SetProcessor</method> at runtime or <method>DefaultProcessor</method> as the overall
/// default!).</p>
/// <p>This method can be called with the same ref multiple times, which will append the
/// <class>%String</class> data passed in.</p>
Method StoreTemp(ref As %List, data As %String) As %Status [ Final, Private ]
{
}

/// <p>Stores the supplied reference for a source to be loaded, along with the sources contents
/// passed in through 'data' in the form of a <class>%Stream.GlobalCharacter</class>
/// to be processed by <class>%iKnow.Source.Temp.Processor</class>.</p>
/// <p>See also <method>StoreTemp</method></p>
Method StoreTempStream(ref As %List, streamOID As %String) As %Status [ Final, Private ]
{
}

/// <p>Stores the supplied metadata values for the source being listed identified by ref.
/// The values in metavalues should correspond positionally to the metadata field names
/// passed in the most recent call to <method>RegisterMetadataKeys</method> for this
/// Lister instance.</p>
Method SetMetadataValues(ref As %List, metaValues As %List) As %Status [ Final, Private ]
{
}

/// <p>Registers the specified list of metadata field names to be used for all subsequent calls
/// to <method>SetMetadataValues</method> until <method>RegisterMetadataKeys</method> is called again.</p>
/// <p>The entries in the supplied %List have to be existing metadata field names for the current
/// domain, otherwise they will be ignored.</p>
Method RegisterMetadataKeys(metaFieldNames As %List) As %Status [ Final, Private ]
{
}

/// Internal method. Allows explicitly updating the current metadata list to ensure new values
/// for fixed fields are picked up.
Method RegisterMetadataKeysInternal(metaFieldNames As %List, forceRefresh As %Boolean = 0) As %Status [ Final, Internal ]
{
}

/// Registers fixed metadata values <var>pValues</var> for the metadata fields in <var>pKeys</var>,
/// for all sources to be listed as part of the next <method>ProcessList</method> or
/// <method>AddListToBatch</method> calls, until the next call to <method>RegistereFixedMetadata</method>.
/// The keys and values in <var>pKeys</var> and <var>pValues</var> should correspond positionally.
Method RegisterFixedMetadata(pKeys As %List, pValues As %List) As %Status [ Final ]
{
}

Method GetListerData() As %List [ Final, Internal ]
{
}

/// Stores the supplied reference for a source to be processed.
Method StoreRef(ref As %List) As %Status [ Final, Private ]
{
}

/// <p>Basic method to check if a given reference exists already in the domain, which can be
/// used in the Lister process to take appropriate action, such as skipping this particular
/// ref or raising an error. If checkStaging is set to 1, it will also loop through the sources
/// listed so far (by <method>ExpandList</method> calls) to see if there is no name conflict
/// with these either.</p>
Method RefExists(groupName As %String, localRef As %String, checkStaging As %Boolean = 0) As %Boolean [ Private ]
{
}

/// <p>This method will split a complete External ID into the lister reference, group name and local
/// reference and return the corresponding lister ID, group ID and local reference.</p>
/// <p>The exact implementation of splitting the full reference into a group name and local reference
/// is delegated to <method>SplitFullRef</method> method of the specific Lister implementation as
/// referenced by the lister reference, which is the first part of the full External ID.</p>
ClassMethod SplitExtId(domainId As %Integer, extId As %String, Output listerId As %Integer, Output groupId As %Integer, Output localRef As %String) As %Status [ Final ]
{
}

/// <p>This method will assemble an External ID, starting from the lister ID, group ID and local
/// reference.</p>
/// <p>The exact implementation of combining the group name and local reference into a full reference
/// is delegated to <method>BuildFullRef</method> method of the specific Lister implementation
/// referenced by the listerId.</p>
ClassMethod BuildExtId(domainId As %Integer, listerId As %Integer, groupId As %Integer, localRef As %String, Output sc As %Status = {$$$OK}) As %String [ Final ]
{
}

/// <p>This method will, assuming it is called for the appropriate Lister class, build the External ID
/// based on the group name and local reference.</p>
/// <p><b>WARNING:</b> this method will throw an error if called from the abstract Lister class,
/// as this combination of groupName and localRef is specific to the Lister implementation class.</p>
ClassMethod BuildExtIdFromName(domainId As %Integer, groupName As %String, localRef As %String, Output sc As %Status = {$$$OK}) As %String [ Final ]
{
}

/// <p>This method should be implemented by subclasses, taking into account the Full Reference structure
/// for this particular Lister implementation. It derives the Group Name and Local Reference from the supplied
/// Full Reference.</p>
ClassMethod SplitFullRef(domainId As %Integer, fullRef As %String, Output groupName As %String, Output localRef As %String) As %Status [ Private ]
{
}

/// <p>This method should be implemented by subclasses, taking into account the Full Reference structure
/// for this particular Lister. It builds the Full Reference based on a Group Name and Local Reference.</p>
ClassMethod BuildFullRef(domainId As %Integer, groupName As %String, localRef As %String) As %String [ Private ]
{
}

/// Builds a reference for use in $$$IKPSIMPLEEXTIDS domains. Defaults to the Local Ref
ClassMethod BuildSimpleRefFromComposite(domainId As %Integer, ref As %List, Output sc As %Status = {$$$OK}) As %String [ Internal ]
{
}

ClassMethod BuildFullRefFromComposite(domainId As %Integer, ref As %List, Output sc As %Status = {$$$OK}) As %String [ Final, Internal ]
{
}

/// <p>Utility method to retrieve the group ID corresponding to a partiular Group Name, for a given
/// domain and lister ID, or zero when the group name is not recognized.</p>
ClassMethod GetGroupId(domId As %Integer, listerId As %Integer, groupName As %String) As %Integer [ Final ]
{
}

/// <p>Utility method to retrieve the Group Name corresponding to a particular group ID, for a given
/// domain and lister ID. An error is passed through the sc output parameter if no group was
/// found for this ID.</p>
ClassMethod GetGroupName(domId As %Integer, listerId As %Integer, groupId As %Integer, Output sc As %Status = {$$$OK}) As %String [ Final ]
{
}

/// <p>Utility method to store a (new) Group Name for this Lister, returning the corresponding ID.
/// If the Group Name already exists for this domain and lister ID, it returns the existing
/// groups ID.</p>
Method AddGroup(groupName As %String) As %Integer [ Final, Private ]
{
}

/// <p>Static version of <method>AddGroup</method>.</p>
ClassMethod AddGroupStatic(domainId As %Integer, listerId As %Integer, groupName As %String) As %Integer [ Final, Internal ]
{
}

/// <p>This method returns the simple alias for this Lister class, to be prefixed with a colon.
/// If this method returns the empty string, the Lister Reference will start with the full Lister
/// class name rather than this alias (prefixed with a colon)</p>
ClassMethod GetAlias() As %String
{
}

/// This utility method provides the prefix that is prepended to the Full Reference
ClassMethod GetExtidPrefix() As %String [ Final ]
{
}

Method MaxListId() As %Integer [ Final, Internal ]
{
}

/// <p>Utility method to format the parameter string passed in AddList for display by
/// the %iKnow.Source.Loader.GetCurrentLists() method. Defaults to $lts() but should
/// be overridden to nicen up complex datatypes in the parameter list.</p>
ClassMethod FormatParams(listerParams As %List) As %String
{
}

/// <p>Wrapper method to process a single List in one call. This method instantiates a
/// <class>%iKnow.Source.Loader</class> object, registers itself with it and then calls
/// the ProcessList methodon the Loader with the supplied parameters.</p>
/// <p>This method takes the <b>Lister Parameters</b> for this particular Lister implementation.</p>
Method ProcessList(listerParams...) As %Status [ Final ]
{
}

/// <p>Same as <method>ProcessList</method>, but sources will be added as Virtual Sources.</p>
Method ProcessVirtualList(listerParams...) As %Status [ Final ]
{
}

/// <p>This method is called at the start of <method>ProcessList</method> and <method>AddListToBatch</method>
/// to validate the supplied Lister Parameters. Subclasses should override this method to execute
/// the validation logic specific to their Lister Parameters.</p>
Method TestParams(listerParams...) As %Status
{
}

/// BDB304 - Reset the current ref, to be run after Loader.ProcessList()
Method ResetRef() As %Status [ Internal ]
{
}

}
