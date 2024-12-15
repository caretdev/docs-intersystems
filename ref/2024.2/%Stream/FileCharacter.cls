/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Stream.FileCharacter">Working with Streams</a>.</p>
/// Stream class that stores character data in files.
/// For example, the following code opens a file binary stream, points it at a particular file
/// on the filesystem, and then reads it in chunks of 32,000 bytes:
/// <example>
/// Set stream=##class(%Stream.FileCharacter).%New()
/// Set sc=stream.LinkToFile("c:\myfile.txt")
/// While 'stream.AtEnd {
/// Set line=stream.Read()
/// ; Process the chunk here
/// }
/// </example>
/// The difference between file character stream and file binary streams is that the character
/// stream understands that it is writing character data and this may be subject to characterset
/// translation. For example you may wish to utf-8 encode character data being written to the file,
/// but with a binary file stream it is just a series of binary data and so this is always read/written
/// exactly as it is without and translation. Also the file is written in 'S' mode so for example
/// writing cr/lf on a unix system will just append lf as this is the unix line terminator.
Class %Stream.FileCharacter Extends %Stream.FileBinary [ ClientDataType = CHARACTERSTREAM, MemberSuper = (%Compiler.Type.FileStream, %Compiler.Type.Stream), OdbcType = LONGVARCHAR, System = 2 ]
{

Parameter OPENREAD = "RU";

Parameter OPENWRITE = "WSN";

Parameter OPENAPPEND = "AWS";

Parameter OPENREADTERM = "RS";

/// The StreamFormatWrite property controls whether file output is in stream or undefined format.
/// If StreamFormatWrite is 1 (true), the default, the file is written in S (stream) format.
/// If StreamFormatWrite is 0 (false), the file is written in U (Undefined) format.
/// For Unix file output, S format converts crlf to lf which can be a problem for MIME
/// output such as email. The user can now set messagepart.TextData.StreamFormatWrite=0
/// to keep crlf in text message parts of the mail message.
Property StreamFormatWrite As %Boolean [ InitialExpression = 1, Transient ];

/// Returns the OID of this object.
Method %Oid() As %ObjectIdentity
{
}

/// The translation table to be used when reading or writing the file.
/// See <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=LANDING+TRANSLATETABLES">Translation Tables</a>.
/// <br>Initial value of 0 indicates that the table has not yet been set.<br>
/// If the translation table is set after the file has been opened
/// then switch the table used for the file.
/// If the translation table is set to "", then the "RAW" table is used.
Property TranslateTable As %String [ InitialExpression = "0", Transient ];

/// Used to create the oid, only defined if user has explicitly set this
Property OidTranslateTable As %String [ InitialExpression = 0, Internal, Private, Transient ];

/// If translation table is set after the file has been opened
/// then switch the table used for the file.
/// If the translation table is set to "", then the "RAW" table is used.
Method TranslateTableSet(table As %String) As %Status
{
}

/// BOM characters that appear at start of file to signify which encoding it is using
Property BOM As %String [ Transient ];

/// Returns true if the file is Unicode.
/// This method may only be called after data has been read
/// from the file stream.
Method IsFileUnicode() As %Boolean
{
}

Method OpenDevice(filename As %String, mode As %Integer, nocheck As %Boolean = 0) As %Status [ Private ]
{
}

Method GetWriteOpenParameter(filename As %String, mode As %Integer) As %String [ Private ]
{
}

/// Return the current size of the data stream.
/// Note this is complicated by having to worry about the translate table used to write the file.
Method SizeGet() As %Integer
{
}

Method %ObjectModified() As %Integer [ ServerOnly = 1 ]
{
}

Method %IsModified() As %Integer
{
}

}
