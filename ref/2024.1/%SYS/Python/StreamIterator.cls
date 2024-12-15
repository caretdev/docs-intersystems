///
/// Implementation of a COS Stream Iterator for Python
///
Class %SYS.Python.StreamIterator Extends %RegisteredObject [ System = 4 ]
{

/// Stream that we are iterating on
Property %Stream As %Stream.Object [ Transient ];

///
/// Initialize this iterator helper
///
Method %OnNew(stream As %Stream.Object, mode As %String = "") As %Status
{
}

///
/// Python iterator implementation.
/// The spec states that an iterator should return lines.
///
Method "__next__"() As %String
{
}

///
/// Allows an "iterator on an iterator", note that it does NOT reset then
/// "index" it just continues on and this does not "clone", it's a reference
/// as per Python behavior
///
Method "__iter__"() As %SYS.Python.StreamIterator
{
}

///
/// Return the length of the iterable collection (if known)
///
Method "__len__"() As %Integer
{
}

}
