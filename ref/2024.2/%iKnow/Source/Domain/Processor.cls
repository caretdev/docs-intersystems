/// <p>This Processor implementation reads data from existing sources in a (typically different)
/// domain, as listed by the ExpandList method of the <class>%iKnow.Source.Domain.Lister</class>.
/// These Lister and Processor classes are at the core of the <class>%iKnow.Utils.CopyUtils</class>
/// and <class>%iKnow.Utils.UpgradeUtils</class> classes.</p>
///
/// <p><b>Processor parameters:</b></p>
/// <ol>
/// 	<li><b>srcDomainId</b> As <class>%Integer</class> - the domain where to copy data from.
/// 					 (only required when specifying <var>metaFields</var>)</li>
/// 	<li><b>metaFields</b> As <class>%List</class> (optional) - the metadata fields to copy from the
/// 					 source domain into the target one.</li>
/// 	<li><b>overrideLanguage</b> As <class>%String</class> (optional) - the two-letter language
/// 					 code of a language to use overriding what can be derived from the
/// 					 source domain. Leave blank to use source domain values and use
/// 					 "AUTO" to re-detect using normal configuration settings.</li>
/// 	<li><b>preserveSentences</b> As <class>%Boolean</class> (optional, defaults to 1) - whether or
/// 					 not to preserve the exact same sentence splittings as in the original
/// 					 indexation.</li>
/// </ol>
///
/// <p><b>Extracted metadata keys:</b> see <var>metaFields</var> Processor parameter.</p>
Class %iKnow.Source.Domain.Processor Extends %iKnow.Source.Processor [ Deprecated, System = 4 ]
{

Property SrcDomainId As %Integer [ Private ];

Property MetaFields As %List [ Private ];

Property MetaFieldIds As %List [ Internal, Private ];

Property OverrideLanguage As %String [ Private ];

Property PreserveSentences As %Boolean [ InitialExpression = 1, Private ];

Property LanguagesInUse [ Internal, MultiDimensional, Private ];

/// BDB317 - shorthand method to directly process / re-index a particular source ID with
/// this Processor instance's current settings. NOT TO BE USED BY CUSTOM CODE
Method ProcessDirect(pSrcId As %Integer) As %Status [ Internal ]
{
}

Method FetchSource(loc As %Integer, ref As %List) As %Status [ Private ]
{
}

Method SetParams(params As %String) As %Status [ ServerOnly = 1 ]
{
}

/// <p>Subclasses should override this method to identify those metadata keys that are
/// calculated or extracted by this Processor implementation and will be registered for every
/// source processed by calling <method>SetCurrentMetadataValues</method> during the
/// <method>FetchSource</method> execution.</p>
ClassMethod GetMetadataKeys(params As %String) As %List
{
}

Method GetKnownLanguage(loc As %Integer, ref As %List, keyid As %Integer = "") As %String
{
}

}
