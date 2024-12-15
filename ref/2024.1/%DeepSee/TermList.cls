/// This class contains the APIs for DeepSee Term Lists.
/// A Term List is a simple lookup table that can be used to translate
/// values when creating DeepSee models or can be referenced at run-time.
Class %DeepSee.TermList Extends %RegisteredObject [ System = 4 ]
{

/// Get a list of currently defined term lists. This is returned as:<br/>
/// pList(NAME) = $LB(name,caption,moddate,type)<br/>
ClassMethod %GetTermLists(Output pList As %List) As %Status
{
}

/// Return an array of all currently defined DeepSee TermLists
/// in a format that can be used by a finderDialog.
ClassMethod %GetTermListArray(ByRef pParameters, Output pMetaData, Output %pData) As %Status [ Final, Internal ]
{
}

/// Test if the given term list exists.
ClassMethod %TermListExists(pTermList As %String, Output pSC As %Status) As %Boolean
{
}

/// Delete the specified term list.
ClassMethod %DeleteTermList(pTermList As %String) As %Status
{
}

/// Lookup a single value within the term list <var>pTermList</var>.
/// <var>pKey</var> is the unique key for the item in the term list.<br/>
/// <var>pField</var> is the name of the value field to use; if not supplied, "value" is used.<br/>
/// <var>pDefault</var> is a value to return if the key or property value do not exist.<br/>
/// If the termlist has a pattern associated with it, and the requested field is the "value"
/// field, then the pattern is applied to value before it is returned.
ClassMethod %Lookup(pTermList As %String, pKey As %String, pField As %String = "", pDefault As %String = "") As %String
{
}

/// Lookup all values (the "value" field) from the term list <var>pTermList</var> and copy them into a local array.
/// The output is:<br/>
/// pArray(key) = value<br/>
/// If <var>pField</var> is supplied, then use the value of that field.<br/>
ClassMethod %GetValueArray(pTermList As %String, Output pArray As %String, pField As %String = "") As %Status
{
}

/// Create (or update if present) the given term list.<br/>
/// <var>pTermList</var> is the name of the term list.<br/>
/// <var>pCaption</var> is the optional caption (display name) of the term list.<br/>
/// <var>pFieldList</var> is an optional ^-delimited list of fields.<br/>
/// <var>pPattern</var> is an optional pattern to apply to the "value" field.<br/>
/// <var>pDescription</var> is the description of the term list.<br/>
/// <var>pSubjectArea</var> is the optional name of the subject area the term list applies to.<br/>
ClassMethod %CreateTermList(pTermList As %String, pCaption As %String = "", pFieldList As %String = "", pPattern As %String = "", pDescription As %String = "", pSubjectArea As %String = "", pHideValue As %Boolean = 0) As %Status
{
}

/// Set a value within the term list <var>pTermList</var>
/// using the given key value. If <var>pField</var> is provided, then set the value of
/// that field.
ClassMethod %SetValue(pTermList As %String, pKey As %String, pValue As %String, pField As %String = "") As %Status
{
}

ClassMethod %GetTermListNameFromStream(pFileName As %String, ByRef pTermListName As %String = "") As %Status
{
}

/// Load a TermList from the CSV-file, <var>pFileName</var>.
/// The first value on each line is used as a key value, the second as the "value" field. All
/// other values are ignored unless there is a field list defined. In this case, the field list
/// determines how the values within each record are used.<br/>
/// If <var>pTermListName</var> is supplied, use it. Otherwise use the %%NAME field found
/// in the file.<br/>
/// If <var>pFileName</var> is a stream, then import from it.
/// WAL041 -- pTermListName is returned
ClassMethod %ImportCSV(pFileName As %String, ByRef pTermListName As %String = "", pVerbose As %Boolean = 1) As %Status
{
}

/// Export a TermList to the CSV-file, <var>pFileName</var>.
/// The meta-data for the term list is written to the starting lines of the file
/// using %% as a prefix for key values.
/// + WAL044 -- add pIncludeEncoding; this is not needed in %DeepSee.UI.TermListExport
ClassMethod %ExportCSV(pTermList As %String, pFileName As %String = "", pIncludeEncoding As %Boolean = 1) As %Status
{
}

/// Write out the contents of the integer-indexed array <var>pRecord</var> in csv format.
/// There should be no gaps in the array.
ClassMethod %WriteCSVRecord(ByRef pRecord, pEncode As %Boolean)
{
}

/// Parse a CSV record and split it into an ordinally index array.
ClassMethod %ParseCSVRecord(pText As %String, Output pValues)
{
}

ClassMethod %ToObj(pTermList As %String, Output pSC) As %DeepSee.UserLibrary.TermList
{
}

ClassMethod %FromObj(pObject As %DeepSee.UserLibrary.TermList) As %Status
{
}

}
