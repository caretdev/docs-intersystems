/// Abstract Document used to serve ZEN-editor documents into Studio<br>
/// In order to create a new Studio Abstract Document, you need to create
/// a subclass of this class and provide the following:
/// <ul>
/// <li>A class Projection named <var>RegisterExtension</var>.<br>
/// For example:<br>
/// Projection RegisterExtension As %Projection.StudioDocument(DocumentExtension = "BPL");
/// </li>
/// <li>A value for the <parameter>EDITORURL</parameter> parameter.<br>
/// This is the URL of the page that provides the actual editor UI.</li>
/// <li>If needed, a value for the <parameter>DOCUMENTCLASS</parameter> parameter.</li>
/// <li>An override of the <method>Save</method> method.</li>
/// <li>An override of the <method>Exists</method> method.</li>
/// </ul>
Class %ZEN.StudioDocument.AbstractDocument Extends %Studio.AbstractDocument [ Abstract, Deprecated, System = 3 ]
{

/// URL of the editor Studio will display within its HTML pane.
Parameter EDITORURL As STRING;

/// Description Studio will display for this document.<br>
/// If <parameter>DOMAIN</parameter> is defined this will be localized.
Parameter DESCRIPTION As STRING;

/// If set, name of superclass used for documents of this type.<br>
/// For example, "Ens.DataTransformDTL"
Parameter DOCUMENTCLASS As STRING;

/// If true, the built-in document list logic will include abstract classes
/// otherwise they are ignored.
Parameter LISTABSTRACT As BOOLEAN = 0;

/// File extension used for this document (e.g., ".dtl")
Parameter EXTENSION As STRING;

/// Return the corresponding class name for this document
ClassMethod GetClassName(pName As %String) As %String [ CodeMode = expression ]
{
}

/// Return URL for Studio to use to load editor.
Method Load() As %Status
{
}

/// Return 1 if the given document exists and 0 if it does not.<br>
/// Subclass can override this behavior.
ClassMethod Exists(pName As %String) As %Boolean
{
}

/// Compile this document
Method Compile(flags As %String) As %Status
{
}

/// Delete the class that corresponds to document <var>name</var>.
/// Subclass should override this behavior for non-class based editors.
ClassMethod Delete(name As %String) As %Status
{
}

/// Return the timestamp of routine 'name' in %TimeStamp format. This is used to determine if the routine has
/// been updated on the server and so needs reloading from Studio. So the format should be $zdatetime($horolog,3),
/// or "" if the routine does not exist.<br>
/// Subclass should override this behavior for non-class based editors.
ClassMethod TimeStamp(name As %String) As %TimeStamp
{
}

/// Subclass should override this query for non-class based editors.
ClassMethod ListExecute(ByRef qHandle As %Binary, Directory As %String, Flat As %Boolean, System As %Boolean) As %Status
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = ListExecute ]
{
}

/// Return other document types that this is related to.
/// Passed a name and you return a comma separated list of the other documents it is related to
/// or "" if it is not related to anything<br>
/// Subclass should override this behavior for non-class based editors.
ClassMethod GetOther(Name As %String) As %String
{
}

ClassMethod LocalizeDescription(ext As %String, ByRef Description As %String(MAXLEN=500)) As %Status [ CodeMode = objectgenerator ]
{
}

}
