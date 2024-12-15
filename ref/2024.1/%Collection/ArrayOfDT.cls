/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Collection.ArrayOfDT">Working with Collections</a>.</p>
/// The <CLASS>%Collection.ArrayOfDataTypes</CLASS> class represents an array of literal (i.e., data type) elements,
/// each of which is associated with a unique key value. Keys can have any value, string or numeric.
/// These %Collection classes can only be used when you have a collection property of another object as they rely on
/// storing the data inside the parent object, they cannot be used as 'standalone' collections, for this use the <class>%ArrayOfDataTypes</class>.
Class %Collection.ArrayOfDT Extends (%Collection.AbstractArrayOfDT, Super) [ Inheritance = right, System = 2 ]
{

/// Returns the number of elements contained in the array.
Method Count() As %Integer
{
}

/// Returns true (1) if a value is defined at location <var>key</var>,
/// otherwise false (0).
Method IsDefined(key As %String) As %Boolean [ CodeMode = expression ]
{
}

/// <b>This method is deprecated.</b>
/// <p>Please use <METHOD>IsDefined</METHOD> instead.
Method Define(key As %String) As %Boolean [ CodeMode = expression, Deprecated ]
{
}

/// Starting from, but not including, location <var>key</var>,
/// finds the next element in the array with value equal to <var>element</var>.
/// <p>If key is a null string (""), the search starts at the beginning of the array.
/// <p><b>Find</b> returns the key associated with the found element or null string ("") if no element is found.
Method Find(element As %String, key As %String) As %String
{
}

/// Finds and returns the value of the element associated with <var>key</var>.
/// <p><b>GetAt</b> returns the value of the element associated with <var>key</var>
/// or null string ("") if no element is found.
Method GetAt(key As %String = "") As %String
{
}

/// Finds and returns the value of the element at the location after <var>key</var>
/// in the array. If <var>key</var> is a null string (""), it returns
/// the value of the first element in the array.
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the key
/// value of the returned element or null string ("") if <var>key</var> is at the end of the array.
Method GetNext(ByRef key As %String) As %String
{
}

/// Finds and returns the value of the element at the location before <var>key</var>
/// in the array. If <var>key</var> is a null string (""), it returns
/// the value of the last element in the array.
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the key
/// value of the returned element or null string ("") if <var>key</var> is at the beginning of the array.
Method GetPrevious(ByRef key As %String) As %String
{
}

/// Finds and returns the key value of the element at the location following <var>key</var> in the array.
/// If key is a null string (""), then <b>Next</b> returns the key value for the first element in the array.
Method Next(key As %String = "") As %String [ CodeMode = expression ]
{
}

/// Finds and returns the key value of the element at the location preceding <var>key</var> in the array.
/// If key is a null string (""), then <METHOD>Previous</METHOD> returns the key value for the last element in the array.
Method Previous(key As %String = "") As %String [ CodeMode = expression ]
{
}

/// Removes the element associated with <var>key</var> in the array.
/// <p><b>RemoveAt</b> returns the value of the removed element or null string ("")
/// if no element was removed.
Method RemoveAt(key As %String) As %String
{
}

/// Sets the value of the element associated with <var>key</var> to <var>element</var>.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetAt(element As %String, key As %String) As %Status
{
}

/// Serialize() constructs a serialized form of the collection as a string
Method Serialize(force As %Integer = 0) As %String(MAXLEN="")
{
}

Method DeSerialize(serialized As %String(MAXLEN="")) As %Status
{
}

/// Converts the serial state of this array object to a delimited string
/// using <var>delim</var> as a delimiter.
ClassMethod LogicalToDisplay(val As %String = "", delim As %String = {$c(13,10)}, class As %String = "", method As %String = "") As %String
{
}

/// Converts the value of an incoming delimited string to a serialized state
/// using <var>delim</var> as a delimiter.
ClassMethod DisplayToLogical(val As %String = "", delim As %String = {$c(13,10)}, class As %String = "", method As %String = "") As %String
{
}

}
