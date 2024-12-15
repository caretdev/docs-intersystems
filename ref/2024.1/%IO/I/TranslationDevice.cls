/// This class is intended as a secondary superclass for those Stream classes that are implemented using InterSystems IRIS devices and thus support the use of a Translation Table for character set conversion on input, on output, or both.
/// It contains a property TranslationTable that names the translation table to be used, if any. It also implements a number of classmethods to support the use of a Translation Table.
/// This class also extends the class ILineStream which facilitates line-by-line Read and Write operations.
Class %IO.I.TranslationDevice Extends %IO.IParts.CharacterIO [ Abstract, System = 2 ]
{

/// The name of the TranslationTable in effect for the Stream's device.
Property TranslationTable As %String;

/// Does the TranslationTable currently in effect represent a single-byte encoding.
Property IsSingleByte As %Boolean;

/// Set translation table based on character encoding
Method SetCharEncodingTable(pCharEncoding As %String, pCharEncodingAlias As %String) As %Status
{
}

Method TranslationTableSet(pTable As %String) As %Status [ CodeMode = expression ]
{
}

Method SetTranslationTable(pTable As %String) As %Status
{
}

ClassMethod IsTableSingleByte(pTable As %String) As %String [ CodeMode = expression ]
{
}

ClassMethod GetCharEncodingTable(pCharEncoding As %String) As %String
{
}

ClassMethod GetLocaleDefaultTable() As %String [ CodeMode = expression ]
{
}

ClassMethod IsLocaleUnicode() As %Boolean [ CodeMode = expression ]
{
}

ClassMethod GetTableCharEncoding(pTable As %String) As %String
{
}

ClassMethod GetDeviceTranslationTable(pDevice As %String) As %String
{
}

ClassMethod SetDeviceTranslationTable(pDevice As %String, pTable As %String, Output pSC As %Status) As %String
{
}

ClassMethod GetDeviceLineTerminator(pDevice As %String) As %String
{
}

ClassMethod SetDeviceLineTerminator(pDevice As %String, pLineTerm As %String, Output pSC As %Status)
{
}

}
