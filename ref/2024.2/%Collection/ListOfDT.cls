/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Collection.ListOfDT">Working with Collections</a>.</p>
/// The <CLASS>%Collection.ListOfDT</CLASS> class represents a list of literal (i.e., data type) values
/// each of which is associated with a numeric position in the list.
/// The first element in the list is stored at position 1.
/// <p>These %Collection classes can only be used when you have a collection property of another object as they rely on
/// storing the data inside the parent object, they cannot be used as 'standalone' collections; for this, use the <class>%ListOfDataTypes</class>.</p>
Class %Collection.ListOfDT Extends (%Collection.AbstractListOfDT, Super) [ Inheritance = right, System = 2 ]
{

/// <var>Size</var> is the number of elements contained in the list.
Property Size As %Integer [ Calculated ];

Method SizeSet(newvalue As %Integer) As %Status [ Abstract ]
{
}

Method SizeGet() As %Integer [ CodeMode = expression ]
{
}

/// Returns the number of elements contained in the list.
Method Count() As %Integer [ CodeMode = expression, Final ]
{
}

/// Returns true (1) if a value is defined at location <var>key</var>,
/// otherwise false (0).
Method IsDefined(key As %Integer) As %Boolean [ CodeMode = expression ]
{
}

/// Starting from, and including, position <var>key</var>, <b>Find</b> finds
/// the next element in the list with value equal to <var>element</var>.
/// If <var>key</var> is a null string, <b>Find</b> starts at the beginning
/// of the list.
///
/// <p><b>Find</b> returns the position of the found element or
/// null string ("") if no element was found.
Method Find(element As %String, key As %Integer) As %String
{
}

/// Finds and returns the value of the element at position
/// <var>key</var> in the list.
///
/// <p><b>GetAt</b> returns the value of the element at location <var>key</var>
/// or null string ("") if no element is found.
Method GetAt(key As %Integer = 0) As %String [ CodeMode = expression, Final ]
{
}

/// Finds and returns the value of the element at the position after <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the value of the first element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or null string ("") if <var>key</var>
/// is at the end of the list.
Method GetNext(ByRef key As %Integer) As %String
{
}

/// Finds and returns the value of the element at the position before <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the value of the last element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or null string ("")
/// if <var>key</var> is at the beginning of the list.
Method GetPrevious(ByRef key As %Integer) As %String
{
}

/// Inserts an element with value <var>element</var> at the end of the list.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method Insert(element As %String) As %Status
{
}

/// Inserts an element with value <var>element</var> at position <var>key</var>.
///
/// <p>To make room for the new element, the elements previously at or following position
/// <var>key</var> are moved up by one position.
/// <p><var>key</var> must be in the following range:
/// <blockquote><code>
/// 1 &lt= key &lt= Count() + 1
/// </blockquote></code>
///
/// Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertAt(element As %String, key As %Integer) As %Status
{
}

/// Inserts a list with value <var>inslist</var> at the end of the list.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertList(inslist As %String) As %Status
{
}

/// Inserts an element with value <var>element</var> into the list at the correct ordered
/// position. The elements in the list are shifted to accommodate the new element as necessary.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertOrdered(element As %String) As %Status
{
}

/// Finds and returns the index value of the element at the location following <var>key</var> in the list.
/// If key is a null string (""), then <b>Next</b> returns the position of the first element in the list (1).
Method Next(key As %Integer = 0) As %Integer [ CodeMode = expression, Final ]
{
}

/// Finds and returns the index value of the element at the location preceding <var>key</var> in the list.
/// If key is a null string (""), then <b>Next</b> returns the position of the last element in the list.
Method Previous(key As %Integer = 0) As %Integer [ CodeMode = expression, Final ]
{
}

/// Removes the element at position <var>key</var> in the list.
/// The elements following position <var>key</var> are moved to fill in the resulting gap.
///
/// <p><b>RemoveAt</b> returns the value of the removed element or null string ("")
/// if no element was removed.
Method RemoveAt(key As %Integer) As %String
{
}

/// Sets the value of the element at position <var>key</var> to <var>element</var>.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetAt(element As %String, key As %Integer) As %Status
{
}

/// Converts the serial state of this list object to a delimited string
/// using the value of the <var>%delim</var> argument as a delimiter.
ClassMethod LogicalToDisplay(val As %String = "", delim As %String = {$char(13,10)}, class As %String = "", method As %String = "") As %String
{
}

/// Converts the value of an incoming delimited string to a serialized state
/// using the value of the <var>delim</var> argument as a delimiter.
ClassMethod DisplayToLogical(val As %String = "", delim As %String = {$char(13,10)}, class As %String = "", method As %String = "") As %String
{
}

/// Converts the serial state of this list object to a delimited string
/// using the value of the <var>%delim</var> argument as a delimiter.
ClassMethod LogicalToFDBMS(val As %String = "", delim As %String = {$char(13,10)}) As %String [ CodeMode = expression ]
{
}

/// Converts the value of an incoming delimited string to a serialized state
/// using the value of the <var>delim</var> argument as a delimiter.
ClassMethod FDBMSToLogical(val As %String = "", delim As %String = {$char(13,10)}) As %String [ CodeMode = expression ]
{
}

/// Serialize() constructs a serialized form of the collection as a string
Method Serialize(force As %Integer = 0) As %String(MAXLEN="")
{
}

Method DeSerialize(serialized As %String(MAXLEN="")) As %Status
{
}

}