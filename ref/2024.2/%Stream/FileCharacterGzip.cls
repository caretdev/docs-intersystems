/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Stream.FileCharacterGzip">Working with Streams</a>.</p>
Class %Stream.FileCharacterGzip Extends FileCharacter
{

Parameter FILEEXT = "stream.gz";

Parameter GZIP = 1;

/// Return the current size of the data stream.
Method SizeGet() As %Integer
{
}

}
