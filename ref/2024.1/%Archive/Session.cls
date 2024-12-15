/// API for data archiving <p>
/// Sample script that initiates a connection to an archive server
/// <example>
///    Set SessionOref = ##class(%Archive.Session).%New()
///    Set SessionOref.Host = 123.45.6.78 // IP address of the archive server
///    Set SessionOref.AuthFile = AuthFilePath // path of the .pea file (for Centera)
///    Set Status = SessionOref.Connect()
/// </example>
/// Once connected, here is a sample script that stores a content (cf. <class>%Archive.Content</class>):
/// <example>
///    // create a content object as source, whose handle is ContentOref (see %Archive.Content)
///    Set Status = SessionOref.Store(ContentOref, .ContentUID)
/// </example>
/// After Store() returns successfully, you need to save the ContentUID value somewhere (say, in a database) for future retrieval purpose. <br>
/// Here is a sample script to retrieve the file from the archive server, using the ContentUID and open connection above:
/// <example>
///    // create a content object as target, whose handle is ContentOref (see %Archive.Content)
///    Set Status = SessionOref.Retrieve(ContentOref, ContentUID)
/// </example>
/// Limitations: <ul><li>
///   Only EMC Centera server is supported as an archive server </li><li>
///   The source of storing and the target of retrieval must be files </li><li>
///   Only one open connection per process. Attempt to open additional connections (whether to the same server as the existing connection or not) would get an error. </li><li>
///   Retrieving selected files from a content containing multiple files ("blobs") is not supported. </li></ul>
Class %Archive.Session Extends %RegisteredObject [ System = 4 ]
{

/// Type of the archive system (EMC Centera)
Parameter TYPE = "Centera";

/// Version of the API
Parameter VERSION = 0.1;

/// Connection information, a comma-delimited list of IP addresses <br>
/// For example, "10.2.3.4,10.6.7.8"
Property Host As %String;

/// The path of a Pool Entry Authorization file (*.pea)
Property AuthFile As %String;

/// An alternative to a PEA file is a pair of UserName and Password
Property UserName As %Library.Username;

Property Password As %String;

/// Name of the application, default to something like "Cache for Windows (x86-32)" (from $zv)
Property ApplicationName As %String;

/// Version of the application, default to something like "2008.2 (Build 366U)" (from $zv)
Property ApplicationVersion As %String;

/// The size of an internal C-Clip buffer in bytes. This value must be greater than 0.
/// The SDK default value is 16KB. The default value we use here is 64KB.
Property BufferSizeInKB As %Integer [ InitialExpression = 64, Private ];

/// The size of the prefetch buffer. This buffer is used to assist in determining the size of the blob.
/// The SDK default size is 32 KB. The maximum size is 1 MB, which is the default value we use here.
Property PrefetchSizeInKB As %Integer(MAXVAL = 1024) [ InitialExpression = 1024, Private ];

/// The maximum data size, in bytes, for data to be embedded in the CDF instead of being stored as separate blobs.
/// The SDK default value is 0 bytes, meaning data is never embedded in the CDF.
/// The maximum value is 102400 bytes (100 KB), which is the default value we use here.
/// The value for the embedded data threshold can be set to less than or equal to 102400 bytes.
Property EmbeddedDataThreshold As %Integer(MAXVAL = 102400) [ InitialExpression = 102400, Private ];

/// dllid = DLL ID
/// dllid(FuncName) = DLL Function ID
Property dllid As %Integer [ Internal, MultiDimensional, Private ];

/// Create a string based on AuthFile or UserName and Password.
/// The string will be part of the connection argument for opening the pool.
Method GetAuthorization() As %String [ Private ]
{
}

/// Connect to the server
Method Connect() As %Status
{
}

/// Disconnect from the server
Method Disconnect() As %Status
{
}

/// Delete a content (C-Clip) by its UID (ContentAddress)
Method DeleteContent(ContentUID As %String) As %Status
{
}

/// Test the existence of a content (C-Clip) by its UID (ContentAddress)
Method AccessContent(ContentUID As %String) As %Status
{
}

/// Load DLL
Method %OnNew() As %Status [ Private ]
{
}

/// Unload DLL
Method %OnClose() As %Status [ Private ]
{
}

/// Store an entire content to server, commit and return a UID by reference
Method Store(ContentOref As %Archive.Content, ByRef ContentUID As %String) As %Status
{
}

/// Retrieve an entire content from server
Method Retrieve(ContentOref As %Archive.Content, ContentUID As %String) As %Status
{
}

Method LookUpDLLFunc(FuncName) As %Integer [ Private ]
{
}

Method CheckVersion() As %Status [ Private ]
{
}

Method Register() As %Status [ Private ]
{
}

Method SetEmbeddedDataThreshold() As %Status [ Private ]
{
}

Method SetBufferSize() As %Status [ Private ]
{
}

Method GetErrorDetail() As %Status [ Private ]
{
}

/// A name for the data is required and cannot be NULL
Method Write(DataSource As %String, TagName As %String) As %Status [ Private ]
{
}

Method ReadNext(DataSink As %String) As %Status [ Private ]
{
}

/// Create a tag with a 'TagName' and stream the given file to the blob associated with the tag
/// Acceptable characters for a TagName are ASCII characters in the Set [a-zA-Z0-9_-.]. [No restriction in Unicode version]
/// The first character must be a letter or an underscore "_".
/// The name must be XML compliant and cannot start with the prefix "xml" or "eclip".
/// May generate <WRITE> error
Method WriteFile(Path As %String) As %Status [ Private ]
{
}

/// Read the blob associated with the tag by the name 'TagName' to the file given by 'Path'
/// If TagName is not specified, use the current tag (either the first tag or the tag pointed to by GetNextTag())
/// If TagName is not unique in the content, use the first matching tag.
/// May generate <READ> error
Method ReadFile(Path As %String) As %Status [ Private ]
{
}

/// Similar to WriteFile, except that the data source is a %Stream object. NOT IMPLEMENTED.
Method WriteStream(StreamOref As %Stream, TagName As %String = "_") As %Status [ Private ]
{
}

/// Similar to ReadFile, except that the data sink is a %Stream object. NOT IMPLEMENTED.
Method ReadStream(StreamOref As %Stream, TagName As %String) As %Status [ Private ]
{
}

Method Create(ContentOref As %Archive.Content) As %Status [ Private ]
{
}

Method Commit(ByRef ContentUID As %String) As %Status [ Private ]
{
}

Method Open(ContentOref As %Archive.Content, ContentUID As %String) As %Status [ Private ]
{
}

Method Close() As %Status [ Private ]
{
}

Method SetAttribute(AttribName As %String, AttribValue As %String) As %Status [ Private ]
{
}

Method NewTag(Name) As %Status [ Private ]
{
}

Method NextTag(ByRef Name As %String) As %Status [ Private ]
{
}

}
