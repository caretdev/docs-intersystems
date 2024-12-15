/// <p>This utility class groups a few methods to easily copy the contents of a domain into
/// another one (which doens't necessarily have to be empty).</p>
/// <p>Please note any domain elements copied will be created using the version of the
/// target domain, regardless of the source domain's version number.</p>
Class %iKnow.Utils.CopyUtils Extends %RegisteredObject [ Deprecated, System = 4 ]
{

/// <p>Copies all contents from the domain named <var>pFromDomain</var> into the domain
/// <var>pToDomain</var>. If <var>pToDomain</var> does not yet exist, it will be created
/// automatically. The copy flags represent the following domain elements:
/// <ul>
///  	<li><var>pCopySources</var> includes regular source content as well as metadata (if
/// 			the corresponding metadata fields exist in <var>pToDomain</var> or are created
/// 			through <var>pCopySettings</var>.
/// 				See also <class>%iKnow.Source.Domain.Lister</class></li>
///  	<li><var>pCopySettings</var> includes domain parameters, metadata, LOVs and SkipLists</li>
///  	<li><var>pCopyDictionaries</var> includes dictionaries, their items and terms and
/// 			any domain-specific matching profiles. If <var>pMatchCopy</var> is 1 as well,
/// 			all sources in the target domain will be matched against all dictionaries.</li>
///  	<li><var>pCopySettings</var> includes domain parameters, metadata and SkipLists</li>
/// 		<li>if <var>pCopyMetrics</var>&gt;0, all metric definitions are copied and if
/// 			<var>pCopyMetrics</var>&gt;1, all metric values are copied along</li>
/// </ul>
/// <p>This method relies on the other class methods in this class and uses a value of 1 for
/// pIgnoreDuplciates when calling these methods.</p>
/// <p>If required, a specific iKnow Configuration name (cf <class>%iKnow.Configuration</class>)
/// can be supplied through <var>pUseConfiguration</var> to use while re-indexing the data.
/// If this parameter is left blank (default), the default configuration of the original domain
/// (configured using the $$$IKPDEFAULTCONFIG domain parameter) or $$$DEFAULTCONFIG will be
/// used.</p>
/// <p><b>Note</b>: if <var>pCopySettings</var> is true, only domain parameters a user is allowed to modify
/// will be copied!!</p>
ClassMethod CopyDomain(pFromDomain As %String, pToDomain As %String, pCopySources As %Boolean = 1, pCopySettings As %Boolean = 1, pCopyDictionaries As %Boolean = 1, pMatchCopy As %Boolean = 1, pVerbose As %Boolean = 1, pUseConfiguration As %String = "", pCopyMetrics As %Integer = 1) As %Status
{
}

/// <p>Copies any metadata field definitions and List of Values from the domain identified by ID
/// <var>pFromDomainId</var> into domain <var>pToDomainId</var>. If a field with the same
/// name already exists in the target domain, <var>pIgnoreDuplicates</var>=0 will cause an
/// error to be thrown, whereas <var>pIgnoreDuplicates</var>=1 will mean the metadata field
/// in the target domain will be left as is.</p>
ClassMethod CopyMetadataFields(pFromDomainId As %Integer, pToDomainId As %Integer, pVerbose As %Boolean = 1, pIgnoreDuplicates As %Boolean = 1) As %Status
{
}

/// <p>Copies any SkipList definitions and their contents from the domain identified by ID
/// <var>pFromDomainId</var> into domain <var>pToDomainId</var>. If a SkipList with the same
/// name already exists in the target domain, <var>pIgnoreDuplicates</var>=0 will cause an
/// error to be thrown, whereas <var>pIgnoreDuplicates</var>=1 will mean the SkipList
/// in the target domain will be extended with the strings in the SkipList from the source
/// domain.</p>
ClassMethod CopySkipLists(pFromDomainId As %Integer, pToDomainId As %Integer, pVerbose As %Boolean = 1, pIgnoreDuplicates As %Boolean = 1) As %Status
{
}

/// <p>Copies any dictionaries and matching profiles (if <var>pCopyProfiles</var> is true)
/// from the domain identified by ID <var>pFromDomainId</var> into domain
/// <var>pToDomainId</var>. If a dictionary, item or profile with the same name already
/// exists, <var>pIgnoreDuplicates</var>=0 will cause an error to be thrown, whereas
/// <var>pIgnoreDuplicates</var>=1 will mean the element in the target domain will be left
/// as is, but extended with the items and terms of the element in the source domain.</p>
ClassMethod CopyDictionaries(pFromDomainId As %Integer, pToDomainId As %Integer, pVerbose As %Boolean = 1, pIgnoreDuplicates As %Boolean = 1, pCopyProfiles As %Boolean = 1) As %Status
{
}

/// <p>Copies a single dictionary (identified by <var>pDictionaryId</var>
/// from the domain identified by ID <var>pFromDomainId</var> into domain
/// <var>pToDomainId</var>. If a dictionary or item with the same name already
/// exists, <var>pIgnoreDuplicates</var>=0 will cause an error to be thrown, whereas
/// <var>pIgnoreDuplicates</var>=1 will mean the element in the target domain will be left
/// as is, but extended (in the case of a dictionary or item) with the items and terms of
/// the element in the source domain.</p>
/// <p>An array of matching profile IDs can be passed in through <var>pProfileMap</var> to
/// map any default matching profiles from the source domain to IDs of the corresponding
/// profiles in the target domain.</p>
ClassMethod CopyDictionary(pFromDomainId As %Integer, pToDomainId As %Integer, pDictionaryId As %Integer, pVerbose As %Boolean = 1, pIgnoreDuplicates As %Boolean = 1, ByRef pProfileMap = "") As %Status
{
}

/// <p>Copies a single Matching Profile (identified by <var>pProfileId</var>) from the
/// domain identified by ID <var>pFromDomainId</var> into domain <var>pToDomainId</var>.
/// If a profile with the same name already exists in the target domain,
/// <var>pIgnoreDuplicates</var>=0 will cause an error to be thrown, whereas
/// <var>pIgnoreDuplicates</var>=1 will mean the metadata field in the target domain
/// will be left as is.</p>
ClassMethod CopyMatchingProfile(pFromDomainId As %Integer, pToDomainId As %Integer, pProfileId As %Integer, pVerbose As %Boolean = 1, Output pNewProfileId As %Integer = 0) As %Status
{
}

/// <p>Copies all metric definitions from one domain to another, optionally including their
/// 	values.</p>
/// <p>WARNING: only Entity-, CRC-, CC- and source-based metric data can be copied from one domain
/// to another. Use the metrics' builder class to (re-)generate metric values for path- or
/// sentence-based metrics.</p>
ClassMethod CopyMetrics(pFromDomainId As %Integer, pToDomainId As %Integer, pCopyValues As %Boolean = 0, pVerbose As %Boolean = 1) As %Status
{
}

/// <p>Internal method used by <method>CopyMetrics</method> to copy custom metric values from
/// one domain to another through multiple jobs.</p>
/// <p>WARNING: only Entity-, CRC-, CC- and source-based metrics can be copied from one domain
/// to another!</p>
ClassMethod CopyMetricValuesJob(pFromDomainId As %Integer, pToDomainId As %Integer, pBatchCopy As %Boolean, pProcNumber As %Integer) As %Status [ Internal ]
{
}

/// Copies a Metric Definition from one domain to another. No values are copied.
/// WARNING: only use <var>pPreserveOffsets</var> when copying metrics into a domain that didn't
/// have any metric targets registered.
ClassMethod CopyMetric(pFromDomainId As %Integer, pToDomainId As %Integer, pMetricId As %Integer, pPreserveOffsets As %Boolean = 0, pVerbose As %Boolean = 1) As %Status
{
}

}
