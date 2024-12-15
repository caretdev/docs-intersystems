///
/// Implementation of an iterator helper for Python
///
Class %SYS.Python.IteratorHelper Extends %RegisteredObject [ System = 4 ]
{

/// Abstract iterator that we are iterating on
Property %Iterator As %Collection.AbstractIterator [ Transient ];

/// Mode flag
Property %Mode As %String(VALUELIST = ",values,keys,both") [ InitialExpression = "values", Required, Transient ];

/// Current iterator key
Property %Key As %String;

///
/// Initialize this iterator helper
///
Method %OnNew(iter As %Collection.AbstractIterator, mode As %String = "") As %Status
{
}

///
/// Python iterator implementation
///
Method "__next__"() As %String
{
}

///
/// Allows an "iterator on an iterator", note that it does NOT reset then
/// "index" it just continues on and this doesn not "clone", it's a reference
/// as per Python behavior
///
Method "__iter__"() As IteratorHelper
{
}

///
/// Return the length of the iterable collection (if known)
///
Method "__len__"() As %Integer
{
}

///
/// Check to see if this iterator contains the following
///
Method "__contains__"(item As %Any) As %Boolean
{
}

}
