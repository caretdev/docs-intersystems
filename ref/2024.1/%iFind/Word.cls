/// This table contains all words identified by iFind indices in this namespace using namespace-wide
/// shared storage (cf the IFINDSHAREDSTORAGELOCATION parameter in <class>%iFind.Index.Basic</class>).
/// Note that this may also include transformed words. To only find original words wrt a specific
/// transformation, use <class>%iFind.OriginalWord</class>.
Class %iFind.Word Extends %Persistent [ Final, StorageStrategy = iFind, System = 4 ]
{

Parameter READONLY = 1;

///  String value of this word
Property Value As %String(COLLATION = "SQLSTRING", MAXLEN = "");

///  Internal identifier of this word
Property Key As %Integer;

///  Calculated property returning the word object equivalent to this object, with all punctuation stripped off.
Property StrippedWordId As %iFind.Word [ Calculated, SqlComputeCode = { set {StrippedWordId}=##class(%iFind.Word).GetStrippedWordId({Value})}, SqlComputed ];

///  Returns the word ID for the supplied string, stripped of all punctuation.
ClassMethod GetStrippedWordId(pString As %String, pKeepChars As %String = {$$$STRIPKEEP}) As %Integer
{
}

}
