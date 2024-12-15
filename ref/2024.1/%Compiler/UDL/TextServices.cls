Class %Compiler.UDL.TextServices Extends %RegisteredObject
{

/// This method takes a namespace, classname and a file name. On success writes it to the named file
/// the text which represents a class definition in the UDL class definition language.
ClassMethod GetTextAsFile(pNamespace As %String = {$namespace}, pClassName As %String, pFileName As %String) As %Status
{
}

/// This method takes the namespace and a name of a file which  contains text representing a class definition in the UDL
/// class definition language.
///
/// The method will parse the class representation and if it is syntactically valid will attempt to
/// save the class definition. It returns $$$OK on success and a (possibly composite) error status on
/// failure. Note: a syntactically valid class represention may fail to save due to failure to obtain a lock.
///
/// It is important to realize that this method will replace the existing class definition if present and therefore
/// must contain a full representation of the class as can be obtained by calling the GetTextXXX() method(s) in
/// this class.  Note: The name of the class is derived from the name of the class defined within the text
ClassMethod SetTextFromFile(pNamespace As %String = {$namespace}, pClassName As %String, pFileName As %String) As %Status
{
}

/// This method takes namespace and a classname and returns a character stream containing text which represents a
/// class definition in the UDL class definition language.
///
/// Note: you should supply your own instance of a character stream to write to. If you don't supply
/// one then a new instance of a %Stream.GlobalCharacter will be created and used
ClassMethod GetTextAsStream(pNamespace As %String = {$namespace}, pClassName As %String, ByRef pTextStream As %Stream.Object) As %Status
{
}

/// This method takes a namespace and a stream of text which represents a class definition in the UDL class definition language.
///
/// The method will parse the class representation and if it is syntactically valid will attempt to
/// save the class definition. It returns $$$OK on success and a (possibly composite) error status on
/// failure. Note: a syntactically valid class represention may fail to save due to failure to obtain a lock.
///
/// It is important to realize that this method will replace the existing class definition if present and therefore
/// must contain a full representation of the class as can be obtained by calling the GetClassXXX() method(s) in
/// this class.  Note: The name of the class is derived from the name of the class defined within the text
ClassMethod SetTextFromStream(pNamespace As %String = {$namespace}, pClassname As %String, pTextStream As %Library.CharacterStream) As %Status
{
}

/// This method takes a namespace and a classname and returns a string which represnts the class definition in the UDL
/// class definition language
ClassMethod GetTextAsString(pNamespace As %String = {$namespace}, pClassName As %String, Output pTextString As %String, pDelimiter As %String = {$Char(13,10)}) As %Status
{
}

/// This method takes a namespace and a string of text which represents a class definition in the UDL class definition language.
///
/// The method will parse the class representation and if it is syntactically valid will attempt to
/// save the class definition. It returns $$$OK on success and a (possibly composite) error status on
/// failure. Note: a syntactically valid class represention may fail to save due to failure to obtain a lock.
///
/// It is important to realize that this method will replace the existing class definition if present and therefore
/// must contain a full representation of the class as can be obtained by calling the GetClassXXX() method(s) in
/// this class.  Note: The name of the class is derived from the name of the class defined within the text
ClassMethod SetTextFromString(pNamespace As %String = {$namespace}, pClassname As %String, pTextString As %String, pDelimiter As %String = {$Char(13,10)}) As %Status
{
}

/// This method takes a namespace and the name of a class and on success returns an integer subscripted array of text
/// representing the class definition. The 0 node contains the number of lines of text (n) and each line
/// of source is stored at the nodes 1 .. n.
ClassMethod GetTextAsArray(pNamespace As %String = {$namespace}, pClassName As %String, Output pDocumentText As %String) As %Status
{
}

/// This method takes a namespace an integer subscripted array containing lines of text which represent a
/// class definition in the UDL class definition language. Subscript value 0 should contain a count
/// of lines of text which are defined as subscript value 1 ... n in the array
///
/// The method will parse the class representation and if it is syntactically valid will attempt to
/// save the class definition. It returns $$$OK on success and a (possibly composite) error status on
/// failure. Note: a syntactically valid class represention may fail to save due to failure to obtain a lock.
///
/// It is important to realize that this method will replace the existing class definition if present and therefore
/// must contain a full representation of the class as can be obtained by calling the GetClassXXX() method(s) in
/// this class.  Note: The name of the class is derived from the name of the class defined within the text
ClassMethod SetTextFromArray(pNamespace As %String = {$namespace}, pClassname As %String, ByRef pDocumentArray As %String) As %Status
{
}

}
