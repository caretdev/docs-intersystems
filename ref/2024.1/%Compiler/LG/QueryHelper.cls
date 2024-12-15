Class %Compiler.LG.QueryHelper Extends (%Library.RegisteredObject, %Collection.AbstractListOfObj) [ ClientName = com.intersystems.classes.ListOfObjects, Inheritance = right, System = 4 ]
{

Property RS As %Library.ScrollableResultSet [ Private ];

Property Count As %Integer [ Private ];

Property Cursor As %Integer [ Private ];

Property Class As %String [ Private ];

ClassMethod Query(class As %String, sql As %String, args) As QueryHelper [ ServerOnly = 1 ]
{
}

Method Init(class As %String, sql As %String, args) As %Status [ ServerOnly = 1 ]
{
}

/// Returns the number of elements contained in the list.
Method Count() As %Integer
{
}

/// Finds and returns the value of the element at the position after <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the value of the first element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or null string ("") if <var>key</var>
/// is at the end of the list.
Method GetNext(ByRef key As %Integer) As %RegisteredObject
{
}

/// Finds and returns the value of the element at position
/// <var>key</var> in the list.
///
/// <p><b>GetAt</b> returns the value of the element at location <var>key</var>
/// or null string ("") if no element is found.
Method GetAt(key As %Integer = 0) As %RegisteredObject
{
}

}
