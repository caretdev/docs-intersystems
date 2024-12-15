/// Class to represent MIME charsets within InterSystems IRIS and map these charsets
/// to InterSystems IRIS locales.
Class %Net.Charset [ System = 3 ]
{

/// Test if the translate table name for the input charset name is loaded.
ClassMethod TranslateTableExists(charset As %String, Output table) As %Boolean
{
}

/// Return the translate table name for the given charset name.
/// For information on translate tables, see <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=LANDING+TRANSLATETABLES">Translation Tables</a>.</p>
ClassMethod GetTranslateTable(ByRef charset As %String) As %String
{
}

/// Return default charset for the current locale.
ClassMethod GetDefaultCharset() As %String
{
}

ClassMethod IsLocaleUnicode() As %Integer [ CodeMode = expression ]
{
}

}
