/// %Net.ChunkedWriter provides an interface so that its sub class may be used as an
/// %Net.HttpRequest EntityBody for chunked output from %Net.HttpRequest.<p>
///
/// In order to do chunked output from %Net.HttpRequest, a subclass of %Net.ChunkedWriter
/// must be created which implements the OutputStream method.  This subclass of %Net.ChunkedWriter
/// is then assigned to the EntityBody property of %Net.HttpRequest which uses
/// the OutputStream method of this class to produce the chunked output.<p>
/// If the entire request body fits in one buffer, OutputStream is implemented by
/// calling WriteSingleChunk(buffer).<p>
/// If the entire request is multiple buffers, then WriteFirstChunk(buffer) is called
/// followed by 0 or more calls to WriteChunk(buffer) followed by a call to WriteLastChunk(buffer).
/// WriteLastChunk may be called with the last buffer of output or with the empty string
/// as its argument if no more output is required.<p>
///
/// The TranslateTable property may be set to force automatic translation of the chunks as
/// they are written.
Class %Net.ChunkedWriter Extends %AbstractStream [ Abstract, System = 3 ]
{

/// Translate table to be used for outputting the buffer.
/// See <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=LANDING+TRANSLATETABLES">Translation Tables</a>.</p>
Property TranslateTable As %String [ InitialExpression = "RAW" ];

/// Number of characters we send
Property SentChars As %Integer [ InitialExpression = 0 ];

/// Abstract method to be overridden by subclass to do the chunked output using the
/// utility functions defined by this abstract super class.
Method OutputStream()
{
}

/// Just return ok
Method Clear() As %Status
{
}

/// Write the Content-Length HTTP header followed by the entity body as a single chunk.
/// This is used to output the data as not chunked if its length can be determined.
Method WriteSingleChunk(buffer As %String)
{
}

/// Write the Transfer-Encoding: chunked header followed by the first chunk,
Method WriteFirstChunk(buffer As %String)
{
}

/// Write a chunk.
Method WriteChunk(buffer As %String)
{
}

/// Write the last chunk followed by a zero length chunk to mark the end.
Method WriteLastChunk(buffer As %String)
{
}

Method GetChunkLength(buffer As %String) As %Integer [ Internal, Private ]
{
}

}
