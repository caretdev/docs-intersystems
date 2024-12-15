/// This class provides the ability to index and search a character stream from SQL.
/// Specify this class as the type class for a stream property and supply values for
/// the <PARAMETER>LANGUAGECLASS</PARAMETER> and (optionally) <PARAMETER>SIMILARITYINDEX</PARAMETER>
/// parameters.
///
Class %Stream.GlobalCharacterSearchable Extends %Stream.GlobalCharacter [ MemberSuper = %Library.TextStreamInterface, System = 4 ]
{

Property container As %ObjectHandle [ Transient ];

Property containerProperty As %RawString [ Transient ];

Method ReadPassage(ByRef len As %Integer = 24576, ByRef sc As %Status) As %RawString
{
}

Method BuildValueArray(ByRef subvalue As %String) As %Status [ Private ]
{
}

ClassMethod %SVAExists(pStream As %String(MAXLEN="")) As %Integer [ Internal, ServerOnly = 1 ]
{
}

ClassMethod %GetValueArray(pStream As %String(MAXLEN=""), pContainer As %String(MAXLEN="") = "", pContainerProperty As %String(MAXLEN="") = "", ByRef pValueArray As %String(MAXLEN="")) As %Integer [ Internal, ServerOnly = 1 ]
{
}

ClassMethod %PutValueArray(pStream As %String(MAXLEN=""), pContainer As %String(MAXLEN="") = "", pContainerProperty As %String(MAXLEN="") = "") As %Integer [ Internal, ServerOnly = 1 ]
{
}

}
