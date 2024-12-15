/// <p>This Processor implementation reads data from a filesystem, as listed by the ExpandList
/// method of the <class>%iKnow.Source.File.Lister</class>.</p>
///
/// <p><b>Processor parameters:</b></p>
/// <ol>
///     <li><b>encoding</b> As <class>%String</class> - encoding of the files to be read.</li>
/// </ol>
///
/// <p><b>Extracted metadata keys:</b></p>
/// <ol>
///     <li>Size</li>
///     <li>DateCreated</li>
///     <li>DateModified</li>
/// </ol>
Class %iKnow.Source.File.Processor Extends %iKnow.Source.Processor [ Deprecated, System = 4 ]
{

Property OpenParms As %String [ InitialExpression = "RU", Private ];

Property Directory As %String [ Private ];

Property DirectoryId As %Integer [ Private ];

Method SetParams(params As %String) As %Status
{
}

ClassMethod GetMetadataKeys(params As %String) As %List
{
}

Method FetchSource(loc As %Integer, ref As %List) As %Status [ Private ]
{
}

}
