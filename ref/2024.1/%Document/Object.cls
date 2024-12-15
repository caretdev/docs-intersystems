Class %Document.Object Extends (%Library.SerialObject, %XML.Adaptor) [ OdbcType = VARCHAR, StorageStrategy = custom, System = 3 ]
{

///  Internal property used to track if this object is modified.
Property %changed As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0, Internal, Transient ];

Property %columnIndex As %ZEN.Datatype.string(MAXLEN = "") [ Internal, MultiDimensional, Transient ];

/// 	Internal property used to define this document as a simple document or a collection
Property %isList As %ZEN.Datatype.integer(XMLPROJECTION = "NONE") [ InitialExpression = 0, Internal, Transient ];

///  Internal property used to client index of this object.
Property %index As %ZEN.Datatype.integer(XMLPROJECTION = "NONE") [ Internal, Transient ];

///  Internal array of data values within the proxy, indexed by series and property name.
Property "_data" As %ZEN.Datatype.string [ Internal, MultiDimensional ];

Property "_documentID" As %Binary [ Internal ];

Property "_location" As %String(MAXLEN = 512) [ Internal, Transient ];

///  Property dispatch method to catch references to
///  virtual properties.<br>
///  This should not be called directly.<br>
Method %DispatchGetProperty(pProperty As %String) [ Final, Internal ]
{
}

///  Property dispatch method to catch references to
///  virtual properties.<br>
///  This should not be called directly.<br>
Method %DispatchSetProperty(pProperty As %String, pValue As %String) [ Final, Internal ]
{
}

///  This callback method is invoked by the <METHOD>%New</METHOD> method to
///  provide notification that a new instance of an object is being created.
///
///  <P>If this method returns an error then the object will not be created.
///  <p>It is passed the arguments provided in the %New call.
///  When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
///  For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
///  <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
///  If instead of returning a %Status code this returns an oref and this oref is a subclass of the current
///  class then this oref will be the one returned to the caller of %New method.
Method %OnNew(pObjectValue As %String(MAXLEN="") = "", pIsList As %Integer = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %ValidateObject(force As %Integer) As %Status
{
}

/// Clears the contents of the array.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method Clear() As %Status
{
}

/// Returns the number of elements contained in the array.
Method Count() As %Integer [ ProcedureBlock = 1 ]
{
}

/// Starting from, but not including, location <var>key</var>,
/// finds the next element in the array with value equal to <var>element</var>.
/// <p>If key is a null string (""), the search starts at the beginning of the array.
/// <p><b>Find</b> returns the key associated with the found element or null string ("") if no element is found.
Method Find(element As %String, key As %String) As %String
{
}

///  Finds and returns the value of the element at position
///  <var>key</var> in the list.
///
///  <p><b>GetAt</b> returns the value of the element at location <var>key</var>
///  or null string ("") if no element is found.
Method GetAt(key As %String = "") As %String [ CodeMode = expression, Final ]
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

///  Inserts an element with value <var>element</var> at the end of the list.
///
///  <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method Insert(element As %RawString) As %Status
{
}

///  Inserts an element with value <var>element</var> at position <var>key</var>.
///
///  <p>To make room for the new element, the elements previously at or following position
///  <var>key</var> are moved up by one position.
///  <p><var>key</var> must be in the following range:
///  <blockquote><code>
///  1 &lt= key &lt= Count() + 1
///  </blockquote></code>
///
///  Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertAt(element As %RawString, key As %Integer) As %Status
{
}

///  Inserts a list with value <var>inslist</var> at the end of the list.
///
///  <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertList(inslist As %RawString) As %Status
{
}

///  Inserts an element with value <var>element</var> into the list at the correct ordered
///  position. The elements in the list are shifted to accommodate the new element as necessary.
///
///  <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertOrdered(element As %RawString) As %Status
{
}

/// Returns true (1) if a value is defined at location <var>key</var>,
/// otherwise false (0).
Method IsDefined(key As %String) As %Boolean [ CodeMode = expression, Final ]
{
}

Method Next(key As %String = "") As %String [ CodeMode = expression, Final ]
{
}

/// Finds and returns the key value of the element at the location preceding <var>key</var> in the array.
/// If key is a null string (""), then <METHOD>Next</METHOD> returns the key value for the last element in the array.
Method Previous(key As %String = "") As %String [ CodeMode = expression, Final ]
{
}

///  Removes the element at position <var>key</var> in the list.
///  The elements following position <var>key</var> are moved to fill in the resulting gap.
///
///  <p><b>RemoveAt</b> returns the value of the removed element or null string ("")
///  if no element was removed.
Method RemoveAt(key As %Integer) As %RawString
{
}

///  Sets the value of the element at position <var>key</var> to <var>element</var>.
///  <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetAt(element As %RawString, key As %Integer) As %Status
{
}

/// Constructs array(key)=value for each element in the serialval value.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
ClassMethod BuildValueArray(serialized As %Binary, array As %Binary) As %Status
{
}

Method %GetSerial(force As %Integer = 0) As %String [ Private ]
{
}

Method %SetSerial(serialized As %String) As %Status [ Private ]
{
}

/// Converts the serial state of this array object to a delimited string
/// using the value of the <var>ODBCDELIMITER</var> parameter as a delimiter.
ClassMethod LogicalToOdbc(val As %String = "") As %String
{
}

/// Converts the value of an incoming delimited string to a serialized state
/// using the value of the <var>ODBCDELIMITER</var> parameter as a delimiter.
ClassMethod OdbcToLogical(val As %String = "") As %String
{
}

///  Write out the contents of this proxy object to
///  the current device in JSON format.<br/>
///  This method is used a proxy object is used in
///  conjunction with the <class>%ZEN.Auxiliary.jsonProvider</class>
///  component.
Method %ToJSON(pLevel As %Integer = 0) As %Status [ Internal ]
{
}

///
/// Write the document as JSON to a stream.
///
Method %ToJSONStream(ByRef pStream As %Stream.Object, pRewindStream As %Boolean = 0) As %Status [ ProcedureBlock = 0 ]
{
}

ClassMethod CSON(pObjectValue As %String(MAXLEN="")) As %Document.Object
{
}

/// 	%Document.Object contructor that populates the document content from an XML source.
/// 	pXML can either be a counted array of lines, a stream object, or...
ClassMethod XML(pXML As %Binary = "") As %Document.Object
{
}

Method loadXML(pXMLNode As %XML.Node)
{
}

Method loadResultSet(pResultSet As %SQL.IResultSet, pFieldName As %String(MAXLEN="") = "results")
{
}

/// deswizzle serializes a %Document object into CSON format.
Method deswizzle() As %String(MAXLEN="")
{
}

/// swizzle converts a CSON object value into the current object.
Method swizzle(pObjectValue As %String(MAXLEN="") = "")
{
}

/// Display the current object and all nested objects.
Method show(pLevel As %ZEN.Datatype.integer = 0)
{
}

/// Document string parser
ClassMethod parse(pLex As %String(MAXLEN="") = "", ByRef pToken As %String(MAXLEN=""), pDelimiter As %String = ",") [ Internal ]
{
}

/// DocumentExists() returns a boolean value indicate whether or not the documentID exists in the global/local variable reference (GLVN).
/// 	<p>
/// <table border=1>
/// <th>
/// Parameters
/// </th>
/// <tr>
/// 		<td>pWhere</td>
/// 		<td>Input</td>
/// 		<td>
/// 				<p>Global or local variable reference where documents are stored.</p>
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>pDocumentID</td>
/// 		<td>Input</td>
/// 		<td>
/// 				<p>The document ID.</p>
/// 		</td>
/// </tr>
/// </table>
/// </p>
ClassMethod DocumentExists(pWhere As %ZEN.Datatype.string, pDocumentID As %ZEN.Datatype.string = "") As %ZEN.Datatype.boolean
{
}

/// OpenDocument will retrieve a previously saved document from the specified global or local variable reference (GLVN) with the specified <var>pDocumentID</var>
/// and return an oref referencing an instance of %ZEN.proxyObject.
/// If a document with the specified ID does not exist in that GLVN then OpenDocument will return an error in the output pStatus parameter.
/// 	<p>
/// <table border=1>
/// <th>
/// Parameters
/// </th>
/// <tr>
/// 		<td>pWhere</td>
/// 		<td>Input</td>
/// 		<td>
/// 				<p>Global or local variable reference. This is the location where the proxyObject instance will be saved.</p>
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>pDocumentID</td>
/// 		<td>Input</td>
/// 		<td>
/// 				<p>The ID of the document to be opened.</p>
/// 		</td>
/// <tr>
/// 		<td>pStatus</td>
/// 		<td>Output</td>
/// 		<td>
/// 				<p>The returned %Status value, indicating success or failure.</p>
/// 		</td>
/// </tr>
/// </table>
/// </p>
ClassMethod open(pWhere As %ZEN.Datatype.string, pDocumentID As %ZEN.Datatype.string, Output pStatus As %Status = "") As %Document.Object
{
}

/// Save the Document to a global or local variable reference (GLVN) with the specified <var>pDocumentID</var>.
/// If a document with the same ID already exists in that GLVN then an error %Status value is returned.
/// 	<p>
/// <table border=1>
/// <th>
/// Parameters
/// </th>
/// <tr>
/// 		<td>pWhere</td>
/// 		<td>Input</td>
/// 		<td>
/// 				<p>Global or local variable reference. This is the location where the %Document instance will be saved.</p>
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>pDocumentID</td>
/// 		<td>Input</td>
/// 		<td>
/// 				<p>The document ID. This value must be unique within the GLVN specified in <var>pWhere</var>.</p>
/// 		</td>
/// </tr>
/// </table>
/// </p>
Method save(pWhere As %ZEN.Datatype.string, pDocumentID As %ZEN.Datatype.string = "", pUpdate As %Integer = 1) As %Status
{
}

Method load(pWhere As %ZEN.Datatype.string, pDocumentID As %ZEN.Datatype.string, pObjectID As %ZEN.Datatype.integer, ByRef pOQ, ByRef pOREF) [ Internal ]
{
}

}
