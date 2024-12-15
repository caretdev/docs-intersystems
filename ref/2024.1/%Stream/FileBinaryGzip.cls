/// <p>For information on this class, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Stream.FileBinaryGzip">Working with Streams</a>.</p>
Class %Stream.FileBinaryGzip Extends FileBinary
{

Parameter FILEEXT = "stream.gz";

Parameter GZIP = 1;

/// Return the current size of the data stream.
Method SizeGet() As %Integer
{
}

}
