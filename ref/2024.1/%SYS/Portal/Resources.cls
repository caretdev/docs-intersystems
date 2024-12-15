/// This class will allow a user to associate resources with pages in the
/// system management portal.
Class %SYS.Portal.Resources Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, System = 4 ]
{

/// Page identifier.<br>
Property Page As %String(MAXLEN = 256) [ Internal, Required ];

/// Resource for the page.<br>
Property Resource As %String(MAXLEN = 64) [ Internal, Required ];

/// Return the resource for the URL-encoded page specified in <var>Page</var>.
ClassMethod %GetCustomResource(Page As %String) As %String [ Internal ]
{
}

/// Return the list of custom resources used by the portal.<br>
/// Parameters:<br><br>
/// <var>Resources</var> (ByRef) - Array of Resources used by the portal.<br>
/// Resources(Resource)=""
ClassMethod %GetCustomResourceList(ByRef Resources As %String) As %Status [ Internal ]
{
}

/// Remove the custom resource for the URL-encoded page specified in <var>Page</var>.
ClassMethod %RemoveCustomResource(Page As %String) As %Status [ Internal ]
{
}

/// Assign the resource specified in <var>Resource</var> to the URL-encoded page supplied in <var>Resource</var>.<br>
/// Parameters:<br><br>
/// <var>Page</var> - Identifier of the page to set the resource for. (Note: this should be in URL-encoded form.)<br>
/// <var>Resource</var> - Resource associated with the page.<br>
/// If <var>Resource</var> is passed as a null String, then the custom resource is removed.
ClassMethod %SetCustomResource(Page As %String, Resource As %String) As %Status [ Internal ]
{
}

/// Normalize a CSP or Zen link to the underlying class name.
/// Returns "" if the target page can't be resolved to a class, with the proviso that
/// the method will return "" in many cases where the underlying class is not in the portal.<br/>
/// This method uses $zconvert(<var>Page</var>,"I","URL"), so <var>Page</var> should be supplied in URL-encoded form.
/// In most cases, this will be the same as the classname, but in others, such as %DeepSee classes, the URL-encoded form is required.
ClassMethod NormalizePage(Page As %String = "") As %String [ Internal ]
{
}

/// Export Custom Resource records to a file in XML format. The user must
/// have USE permissions on the %Admin_Secure resource to perform the export.<br>
/// Parameters:
/// <ul><li><var>Filename</var> - Output file name.</li>
/// <li><var>NumExported</var> (ByRef) - Returns the number of records exported.</li>
/// <li><var>Pages</var> - Mask for the pages to return. See the <query>List</query>
/// query for details on the format.</li>
/// <li><var>Resources</var> - Mask for the resources to return. See the <query>List</query>
/// query for details on the format.</li></ul>
ClassMethod Export(FileName As %String = "CustomPortalResourcesExport.xml", ByRef NumExported As %Integer, Pages As %String = "*", Resources As %String = "*") As %Status
{
}

/// Import Custom Resource records from an XML file. The user must have
/// USE permissions on the %Admin_Secure resource to perform the import.<br>
/// Parameters:
/// <ul><li><var>FileName</var> - Filename to import Custom Resource records from.</li>
/// <li><var>NumImported</var> (ByRef) - Returns the number of records imported.</li>
/// <li><var>InvalidRecords
/// <li><var>Flags</var> - Control whether to import the records in the file.
/// The supported bit flags at present are:
/// <ul><li>Bit 0 - Do not import records, just return the count.</li>
/// <li>Bit 1 - Do not require that the resource exists.</ul></li></ul>
/// Note: On failure, no records will be imported.
ClassMethod Import(FileName As %String = "ResourcesExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// List pages and associated resources. Note: the <strong>Page</strong> column lists the normalized page name.<br>
/// Use the <var>Pages</var> and <var>Resources</var> arguments to restrict the list. The possible inputs for each
/// argument is a comma-separated string with the following rules:
/// <ul>
/// <li>"*" - match all records.</li>
/// <li>"String,String1" - match all records that match an element in the string</li>
/// <li>"String*" - match all records starting with "String"</li>
/// <li>"String,String1*,String2" - match any record equal to "String" or "String2", or starting with "String1"</li></ul>
/// Note: This query may change in future versions.
ClassMethod ListExecute(ByRef qHandle As %Binary, Pages As %String = "*", Resources As %String = "*") As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

}
