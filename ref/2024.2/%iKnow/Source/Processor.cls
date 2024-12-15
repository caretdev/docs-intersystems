/// <p>This is the base class for any Processor implementations. Processor classes are developed to
/// read source data as referenced (or stored temporarily) by <class>%iKnow.Source.Lister</class>
/// classes in their <method class="%iKnow.Source.Lister">ExpandList</method> methods.
/// It is up to the Lister to make sure the references they
/// store in this stage refer to the proper Processor implementation and contain the details it
/// needs to find and read that source while executing <method>FetchSource</method>.</p>
/// <p>Each Processor implementation tackles a specific type of location where source data can be
/// read from, such as a filesystem for <class>%iKnow.Source.File.Processor</class> or a global for
/// <class>%iKnow.Source.Global.Processor</class>.</p>
/// <p>Processor objects are handled by the loading framework automatically and custom code should
/// never instantiate a Processor object or call any of its methods directly.</p>
Class %iKnow.Source.Processor Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

Property DomainId As %Integer [ Private ];

/// surrogate domain ID for use in IRIS.Temp
/// guaranteed to be unique across namespaces
Property TempId As %Integer [ Private ];

Property Indexer As %iKnow.Indexer [ Private ];

Property DirectInput As %iKnow.DirectInput [ Private ];

Property Converter As %iKnow.Source.Converter [ Private ];

Property Buffer As %RegisteredObject [ Private ];

Property ListerId As %Integer [ Private ];

Property Params As %String [ Private ];

Property ConverterId As %Integer [ Private ];

Property ConvParams As %String [ Private ];

Property MetaData As %List [ Internal, Private ];

Property SrcTemp As %String [ Internal, Private ];

Property SrcMeta As %String [ Internal, Private ];

Property DPSkipExtIdCheck As %Boolean [ Internal, Private ];

Property DPSimpleExtIds As %Boolean [ Internal, Private ];

Property DPLanguageFieldName As %String [ Internal, Private ];

Property DPIgnoreDupExtIds As %Boolean [ Internal, Private ];

Method %OnNew(domainId As %Integer, indexer As %iKnow.Indexer, directInput As %iKnow.DirectInput) As %Status [ Private, ServerOnly = 1 ]
{
}

Method SetBatchMode(BatchMode As %Integer) [ Internal ]
{
}

/// <p>This method stores the Processor parameters in the <property>Params</property> property,
/// from where they can be referenced in the <method>FetchSource</method> implementation.</p>
/// <p><b>NOTE:</b> If this method is overridden by a subclass, it should make sure to either
/// call this method via ##super, or set <property>Params</property> itself.</p>
Method SetParams(params As %String) As %Status [ ServerOnly = 1 ]
{
}

/// <p>Registers the Converter to be used by this Processor onwards.</p>
Method SetConverter(convId As %Integer, convParams As %String) As %Status [ Final ]
{
}

/// <p>Returns the metadata keys that are made available and taken care of automatically
/// for every Processor implementation.</p>
ClassMethod GetSystemMetadataKeys() As %List [ Final, Internal ]
{
}

/// <p>Subclasses should override this method to identify those metadata keys that are
/// calculated or extracted by this Processor implementation and will be registered for every
/// source processed by calling <method>SetCurrentMetadataValues</method> during the
/// <method>FetchSource</method> execution.</p>
ClassMethod GetMetadataKeys(params As %String) As %List
{
}

/// <p>Instance method to invoke the static <method>GetMetadataKeys</method> using this instances params</p>
Method GetCurrentMetadataKeys() As %List [ Final, Internal ]
{
}

/// <p>Stores the metadata values for the source currently being processed. Their order and
/// number should correspond to the keys returned by <method>GetMetadataKeys</method>.</p>
Method SetCurrentMetadataValues(metaValues As %List) As %Status [ Final, Private ]
{
}

/// <p>This is the primary method that will need to be implemented by subclasses. It gets the local ID
/// of the source being processed (as assigned by the lister) and the Composite Reference in %List
/// format. Data read by the Processor should be buffered through calling ..Buffer.BufferString(),
/// which will automatically forward the data to the iKnow Indexing engine or, if configured,
/// a <class>%iKnow.Source.Converter</class> object that will in turn push converted data through
/// to the engine.</p>
/// <p>If this Processor also extracts metadata while reading (as specified in its
/// <method>GetMetadataKeys</method> implementation), it should make sure to invoke
/// <method>SetCurrentMetadataValues</method> at some point in this methods execution.</p>
Method FetchSource(loc As %Integer, ref As %List) As %Status [ Private ]
{
}

/// <p>This is the primary method that will be called from the <class>%iKnow.Source.Loader</class>
/// for each source identified by the <class>%iKnow.Source.Lister</class> objects involved in this
/// loading process. It will buffer what's read in the <method>FetchSource</method> implementation,
/// trigger the <class>%iKnow.Source.Converter</class> if one is configured, and then instruct the
/// Indexer to process the resulting plain text, directing its output to the appropriate DirectInput
/// object.</p>
/// <p>Also, this method will gather any metadata set by the Lister, combine it with metadata
/// calculated by the Processor or Converter and push it to the DirectInput object as well.</p>
Method ProcessListElement(loc As %Integer, ref As %List, keyid As %Integer, metadata As %String, Output skipped As %Boolean = 0) As %Status [ Final ]
{
}

/// Same as <method>ProcessListElement</method>, but for Virtual Sources.
Method ProcessVirtualListElement(loc As %Integer, ref As %List) As %Status [ Final ]
{
}

/// Utility method to report failures for a given source (identified through a Composite Reference)
Method ReportError(ref As %List, message As %String, location As %String = "", errorId As %String = "") As %Status [ Final, Private ]
{
}

/// Utility method to report warnings for a given source (identified through a Composite Reference)
Method ReportWarning(ref As %List, message As %String, location As %String = "") As %Status [ Final, Private ]
{
}

Method Convert() As %Status [ Final, Internal, Private ]
{
}

/// TODO: can we get rid of this one? or should we call it at the end of ProcessListElement?
Method CleanTemp() As %Status [ Final, Internal, Private ]
{
}

/// <p>This method is called from <method>ProcessListElement</method> and <method>ProcessVirtualListElement</method>
/// right before calling on the Indexer to process the data read by this Processor instance.
/// It returns the language (two-letter ISO code) for the source being processed, if there
/// is any means to derive it from known facts about the source. If no language can be
/// derived with enough certainty, this method returns "".</p>
/// <p>The default implementation looks if there is a $$$IKPLANGUAGEFIELDNAME parameter defined
/// pointing to a metadata field containing the language code. Subclasses may override and/or
/// extend this method if they have access to additional information.</p>
Method GetKnownLanguage(loc As %Integer, ref As %List, keyid As %Integer = "") As %String
{
}

}
