/// Collection specific property superclass, for internal use only
Class %Compiler.Type.Collection Extends %Compiler.Type.Object [ NoContext, System = 1 ]
{

/// STORAGEDEFAULT is the type of storage used for the collection if it is not already
/// allocated in a DATA definition in the active STORAGE definition. LIST collections
/// default to list storage and ARRAY collections default to array storage (SUBNODE structure).
Parameter STORAGEDEFAULT As STRING [ Constraint = ",array,list", Flags = ENUM ];

/// SQLPROJECTION is the way this collection will be projected to SQL - either as a simple
/// COLUMN or as a child TABLE or both.
Parameter SQLPROJECTION As STRING [ Constraint = ",table,column,table/column", Flags = ENUM ];

/// SQLTABLENAME is the name of the projected child table for this collection. If
/// the collection is not projected as a child table (refer to SQLPROJECTION) then
/// this parameter is ignored.
Parameter SQLTABLENAME As STRING;

Parameter CollectionDisplayDelimiter As STRING = "$C(13,10)";

Parameter CollectionOdbcDelimiter As STRING = """,""";

/// ACCESSPOLICY defines how collection is fetched to the client application.
///
/// 	EAGER:	The whole collection is fetched no later than it is first accessed by application in any manner.
/// 				If collection contains object values then objects are opened and instantiated in application memory.
/// 				For applications using POJO mode this means that application can use this collection even if it has
/// 				been disconnected from the server afterwards. Value EAGER is a requirement, meaning that if it is
/// 				specified then EAGER policy always be employed.
///
/// 	LAZY: 	Values in collection can be fetched as they are requested by the application, e.g. when methods get()
/// 				or Iterator.next() are invoked. Value LAZY is a hint meaning that if it is specified it tells that LAZY
/// 				policy may be used for this collection but does not guarantee that it is used. In case LAZY fetching is
/// 				used collection may become invalid when application disconnected from the server.
Parameter ACCESSPOLICY As STRING [ Constraint = ",lazy,eager", Flags = ENUM ];

ClassMethod BuildValueArray(value As %Binary, array As %Binary) As %Status [ CodeMode = generator, Final, ServerOnly = 1 ]
{
}

/// Returns an oref, performing swizzling if necessary it returns "" ($$$NULLOREF) if there is no oref and the id=""
/// If <var>noswizzle</var> is passed as true then this will just return the current value for the property, so if it
/// has been swizzled already then it will return the oref, if it has not been swizzled it will return "" ($$$NULLOREF).
Method GetSwizzled(noswizzle As %Boolean = 0) As %RegisteredObject [ CodeMode = generator, ServerOnly = 1 ]
{
}

Method NewObject() As %ObjectHandle [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Set the property to an oref value if the new oref is different from an old oref, the old object is closed                                                             |
Method Set(newvalue As %RawString) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the serial state of this list object to a delimited string
/// using "," as a delimiter.
ClassMethod CollectionToOdbc(val As %String(MAXLEN="") = "") As %String(MAXLEN="") [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the value of an incoming delimited string to a serialized state
/// using "," as a delimiter.
ClassMethod OdbcToCollection(val As %String(MAXLEN="") = "") As %String(MAXLEN="") [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the serial state of this list object to a delimited string
/// using the value of the <var>%delim</var> argument as a delimiter.
ClassMethod CollectionToDisplay(val As %String(MAXLEN="") = "", delim As %String = "") As %String(MAXLEN="") [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the value of an incoming delimited string to a serialized state
/// using the value of the <var>delim</var> argument as a delimiter.
ClassMethod DisplayToCollection(val As %String(MAXLEN="") = "", delim As %String = "") As %String(MAXLEN="") [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
