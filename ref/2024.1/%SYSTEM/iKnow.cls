/// iKnow utility methods, available through the $system syntax from the command line.
/// For example: "do $system.iKnow.ListDomains()"
Class %SYSTEM.iKnow Extends %SYSTEM.Help [ Abstract, Deprecated, System = 4 ]
{

/// Print a list of all the domains within this namespace.
ClassMethod ListDomains(currentNamespaceOnly As %Boolean = 1) As %Status
{
}

/// Print a list of all the configurations within this namespace.
ClassMethod ListConfigurations() As %Status
{
}

/// Print a list of all metadata fields for a given namespace.
ClassMethod ListMetadata(pDomainName As %String, pIncludeHidden As %Boolean = 0) As %Status
{
}

/// Prints the first <var>pLimit</var> load errors, failures and warnings for domain <var>pDomainName</var>.
/// Use <var>pLimit</var>=0 to display all errors.
ClassMethod ListErrors(pDomainName As %String, pLimit As %Integer = 5) As %Status
{
}

/// Returns the ID corresponding to the supplied domain name in <var>pDomainName</var>
/// or "" if none found in this namespace.
ClassMethod GetDomainId(pDomainName As %String = "") As %Integer
{
}

/// Returns the name corresponding to the supplied domain ID or "" if none found in this namespace.
ClassMethod GetDomainName(pDomainId As %Integer) As %String
{
}

/// Drops all of a Domain's contents
ClassMethod DropData(pDomainName As %String, pDropMetadataFields As %Boolean = 1, pDropDictionaries As %Boolean = 1) As %Integer
{
}

/// Indexes the supplied file and stores the indexing results in domain <var>pDomainName</var>,
/// returning the generated source ID as <var>pSrcId</var>.
/// The full path of the files indexed will be used to build the External ID (cf
/// <class>%iKnow.Source.File.Lister</class>)
ClassMethod IndexFile(pDomainName As %String, pPath As %String, pConfig As %String = "", pEncoding As %String = "UTF-8", Output pSrcId As %Integer = 0) As %Status
{
}

/// Indexes the supplied file and stores the indexing results in domain <var>pDomainName</var>.
/// The full path of the files indexed will be used to build the External ID (cf
/// <class>%iKnow.Source.File.Lister</class>)
ClassMethod IndexDirectory(pDomainName As %String, pPath As %String, pRecurse As %Boolean = 0, pConfig As %String = "", pEncoding As %String = "UTF-8", pExtensions As %List = "") As %Status
{
}

/// <p>Indexes the contents of the <var>pDataField</var> column in table <var>pTableName</var>,
/// using the <var>pIdField</var> and <var>pGroupField</var> columns to build the external
/// ID for this record (cf <class>%iKnow.Source.SQL.Lister</class>).
/// <var>pDomainName</var> can be a (SQL) constant, such as "'MyGroup'".
/// The results are stored in the domain <var>pDomainName</var>.</p>
/// <p>Optionally, specify a <class>%List</class> of table field names through
/// <var>pMetaFields</var> that should be loaded as metadata for the table records.</p>
ClassMethod IndexTable(pDomainName As %String, pTableName As %String, pIdField As %String, pGroupField As %String, pDataField As %String, pMetaFields As %List = "", pWhereClause As %String = "", pConfig As %String = "") As %Status
{
}

/// Indexes the supplied <var>pString</var> and stores the results into the domain
/// <var>pDomainName</var>, using <var>pIdentifier</var> to construct the External ID
/// (cf <class>%iKnow.Source.Temp.Lister</class>). The generated sources ID will be returned
/// through <var>pSrcId</var>.
ClassMethod IndexString(pDomainName As %String, pIdentifier As %String, pString As %String, pConfig As %String = "", pVirtual As %Boolean = 0, Output pSrcId As %Integer = 0) As %Status
{
}

/// Returns the Source ID for a given <var>pExternalId</var> in domain <var>pDomainName</var>,
/// or the empty string if no source exists with that External ID.
ClassMethod GetSourceId(pDomainName As %String, pExternalId As %String) As %Integer
{
}

/// Returns the External ID for a given <var>pSourceId</var> in domain <var>pDomainName</var>,
/// or the empty string if no source exists with that Source ID.
ClassMethod GetExternalId(pDomainName As %String, pSourceId As %Integer) As %String
{
}

/// Returns true if the iKnow kernel resource is current held, false otherwise
ClassMethod IsResourceAcquired() As %Boolean [ Internal ]
{
}

/// <p>Creates an iKnow domain named <var>pDomainName</var> representing the textual contents
/// of column <var>pColumnName</var> in table <var>pTableName</var>, returning the domain
/// ID in <var>pDomainId</var>. If <var>pDomainName</var> is left blank, a default name
/// will be generated as follows: "SQL@<var>pTableName</var>@<var>pColumnName</var>"</p>
/// <p>If <var>pObjectsPackage</var> is non-null, wrapper objects for the generated
/// elements will be generated in that package.</p>
/// <p>This method is deprecated. See <method>CreateDomainTables</method></p>
ClassMethod CreateDomainForTableColumn(pTableName As %String, pColumnName As %String, ByRef pDomainName As %String = "", Output pDomainId As %Integer, pObjectsPackage As %String = "", pDropExisting As %Boolean = 1, ByRef pDomainParams = "", pIdColumn As %String = "ID") As %Status [ Deprecated, Internal ]
{
}

/// Returns the name of the domain parameter whose macro name was passed in.
/// For example, translates $$$IKPDEFAULTCONFIG into "DefaultConfig"
ClassMethod GetDomainParameterName(pMacroName As %String) As %String [ Internal ]
{
}

/// For an iTables domain creates UMLS mapping between domain entities, sources and UMLS concepts.
ClassMethod mapToUMLS(domainId As %Integer, sourceMatchLevel As %Integer = 0, buildTfIdfTable As %Boolean = 1) As %Status [ Deprecated, Internal ]
{
}

/// <p>Creates an iKnow domain containing the data in the <var>pColumnName</var> column of table
/// <var>pTableName</var> through a domain definition (<class>%iKnow.DomainDefinition</class>)
/// named "Domain" in the same package as <var>pTableName</var>. In addition, customizable table projections
/// for accessing the iKnow domain data through SQL will be generated by invoking <class>%iKnow.Tables.Utils</class>.
/// If an existing domain ID is supplied through <var>pDomainId</var>, no domain definition is
/// generated and only the projection classes will be generated.</p>
/// <p>Depending on the value of <var>createITablesIndices</var>, a number of additional index
/// structures and properties will be created to complement the system-supplied ones on the table
/// projections.</p>
ClassMethod CreateDomainTables(pTableName As %String, pColumnName As %String, ByRef pDomainName As %String = "", ByRef pDomainId As %Integer = "", pIdColumn As %String = "ID", lang As %String = "", silent As %Boolean = 0, turnOffJournal As %Boolean = 1, noindex As %Boolean = 1, createWordContextTable As %List = "", createITablesIndices As %Boolean = 1) As %Status [ Internal ]
{
}

/// Run the iKnow shell. See also <class>%iKnow.Shell</class>.
ClassMethod Shell()
{
}

/// Highlights the supplied text <var>pText</var> using the highlight information specified through
/// <var>pHighlight</var>. See <method>GetHighlighted</method> in <class>%iKnow.Queries.SentenceAPI</class>
/// for more details on possible input to <var>pHighlight</var>.
ClassMethod Highlight(pText As %String, ByRef pHighlight, pConfig As %String = {$$$DEFAULTCONFIG}, pEscapeHTML As %Boolean = 1, Output pSC As %Status = {$$$OK}) As %String
{
}

/// Deletes the source with internal ID <var>pSrcId</var> from domain <var>pDomainName</var>
ClassMethod DeleteSource(pDomainName As %String, pSrcId As %Integer) As %Status
{
}

/// Deletes the virtual source with ID <var>vSrcId</var> from domain <var>pDomainName</var>
ClassMethod DeleteVirtualSource(pDomainName As %String, vSrcId As %Integer) As %Status
{
}

/// <p>Applies relevant iKnow normalization logic. By default, this implies removing whitespace
/// from the front and back of the string, removing duplicate whitespace, and lowercase.
/// For specific configurations or languages such as Japanese, normalization behaviour is more
/// refined and described in the documentation.</p>
/// <p>If a domain ID is specified through <var>pDomainId</var>, its default configuration will
/// be used (if specified). Otherwise, the configuration named <var>pConfig</var> will be used.</p>
ClassMethod Normalize(pString As %String, pDomainId As %Integer = "", pConfig As %String = "", pLanguage As %String = "", Output pSC As %Status = {$$$OK}, pCleanPunctuation As %Boolean = 1) As %String
{
}

}
