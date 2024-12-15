/// The Zen Proxy class provides a way to assemble data that can be
/// conveniently passed between the web client and the server.
/// It works in conjunction with the <b>zenProxy</b> JavaScript class
/// defined in <i>zenutils.js</i>. The <b>zenProxy</b> class is
/// the client-side representation of the server-side <class>%ZEN.proxyObject</class>
/// class and vice versa.<br/>
/// The <class>%ZEN.proxyObject</class> class is useful for cases where
/// you do not know what run-time properties will exist when you are designing
/// your application (perhaps it is user-configurable).<br/>
/// The proxy class can be used in several ways. You can use it to send
/// an arbitrary set of data values from the client to a server-side method.
/// To do this, create an instance of <b>zenProxy</b> in a client-side JavaScript method:
/// <example language="javascript">
/// 	// create instance of zenProxy
/// 	var obj = new zenProxy();
/// 	obj.name = 'Smith';
/// 	obj.code = 'CRM114';
/// </example>
/// The <b>zenProxy</b> object is basically a generic JavaScript object with
/// a few pre-defined behaviors. You can dynamically add properties to it
/// simply by setting them.
/// These properties should have <em>literal</em> values, that is, they
/// should not refer to other JavaScript objects.<br/>
/// If you define a server-side ZenMethod whose signature includes an
/// argument of type <class>%ZEN.proxyObject</class>, then you can invoke
/// this method from the client passing it an instance of a <b>zenProxy</b>
/// object. Zen will automatically marshal the values in the <b>zenProxy</b>
/// object into an instance of the <class>%ZEN.proxyObject</class> object.<br/>
/// For example, suppose you have defined a server method:
/// <example language="cls!member">
/// ClassMethod MyMethod(pProxy as %ZEN.proxyObject) As %Boolean [ZenMethod]
/// {
/// 	Set tName = pProxy.name
/// 	Set tCode = pProxy.code
/// 	Quit 1
/// }
/// </example>
/// The client can invoke this method as it would any other Zen method, passing
/// an instance of <b>zenProxy</b> as the <var>pProxy</var> argument:
/// <example language="javascript">
/// 	var obj = new zenProxy();
/// 	obj.name = 'Smith';
/// 	obj.code = 'CRM114';
/// 	var ok = this.MyMethod(obj);
/// </example>
/// The <method>MyMethod</method> method will see the values 'Smith' and 'CRM114' for the properties
/// <property>name</property> and <property>code</property>, respectively.<br/>
/// You can also use the <class>%ZEN.proxyObject</class> class to pass values
/// from a server method back to the client. To do this, create a server method
/// whose return type is <class>%ZEN.proxyObject</class>:
/// <example language="cls!member">
/// ClassMethod GetServerInfo() As %ZEN.proxyObject [ZenMethod]
/// {
/// 	Set tProxy = ##class(%ZEN.proxyObject).%New()
/// 	Set tProxy.whatever = "Some server value"
/// 	Quit tProxy
/// }
/// </example>
/// The client can invoke this method and use its return value as an object:
/// <example language="javascript">
/// 	var obj = this.GetServerInfo();
/// 	alert(obj.whatever);
/// </example>
/// The <class>%ZEN.proxyObject</class> does not actually define any
/// properties. Instead it maintains an internal array of property names
/// along with their corresponding values and uses dynamic dispatch
/// to handle references to specific properties. This means that there
/// is no name checking for properties of <class>%ZEN.proxyObject</class>
/// (the same behavior as JavaScript objects). You can remove the current set of
/// properties within a <class>%ZEN.proxyObject</class> object using
/// the <method>%Clear</method> method. You can find out what the
/// current set of properties is (as a local array) or supply a new set
/// using the <method>%CopyToArray</method> and <method>%CopyFromArray</method> methods.<br/>
/// The client-side <b>zenProxy</b> class defines only one public method,
/// <method>clear</method>, which deletes the current set of properties
/// from the object. In all other ways, you can treat is an instance
/// of JavaScript <b>Object</b>.<br/>
/// You can get the set of values within a <class>%ZEN.Auxiliary.dataController</class>
/// objects using its <method>getDataAsObject</method> method.<br/>
/// When using the <class>%ZEN.proxyObject</class> class keep the following
/// things in mind:
/// <ul>
/// <li>All properties must have literal values (numbers or strings).</li>
/// <li>You have to use property names that are valid in both the client
/// and server environments. This means that names have to agree in case. It
/// also means that you cannot have two properties with the same name
/// but different case.</li>
/// </ul>
/// Note that <class>%ZEN.proxyObject</class> DOES support
/// various property names that are valid in Javascript but were not traditionally
/// valid Objectscript property names. In general, these property names include symbols like
/// "$" and "_" that are relatively common in Javascript. To reference such a property in a
/// <class>%ZEN.proxyObject</class> instance, simply delimit the property name using quotes:
/// <example>
/// Set myProperty = tProxy."my_property"
/// Set tProxy."$$foo" = "bar"
/// </example>
Class %ZEN.proxyObject Extends %RegisteredObject [ Deprecated, Final, System = 3 ]
{

///  Internal property used to track if this object is modified.
Property %changed As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0, Internal ];

///  Internal property used to client index of this object.
Property %index As %ZEN.Datatype.integer(XMLPROJECTION = "NONE") [ Internal ];

///  Internal array of data values within the proxy, indexed by series and property name.
Property %data As %ZEN.Datatype.string(XMLPROJECTION = "NONE") [ Internal, MultiDimensional ];

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

///  Delete all properties and data currently in the proxy object.
Method %Clear() [ Final ]
{
}

///  Copy the properties in this proxyObject into
///  a local array subscripted by property name.
Method %CopyToArray(Output pArray) [ Final ]
{
}

///  Copy the values from a local array
///  (subscripted by property name) into
///  this proxyObject.
Method %CopyFromArray(ByRef pArray) [ Final ]
{
}

Method %ZENDeserialize(pState As %String, ByRef pObjSet) As %Status [ Final, Internal ]
{
}

///  Synchronize this object with its client version.
Method %ObjectSynch() As %Status [ Final, Internal ]
{
}

///  Serialize this object so that it can be shipped to the client.
Method %Serialize() As %Status [ Final, Internal ]
{
}

///  Given a string from the client,
///  see if it contains a packed representation of a proxyObject.
///  If it does, unpack and return a new object, otherwise
///  return "".
ClassMethod %Create(pState As %String) As %ZEN.proxyObject [ Internal ]
{
}

/// Drill down just enough to find out if the object has any content displayable as JSON given the current pFormat options
Method hasJSONContent(pFormat As %String) As %Boolean [ Internal ]
{
}

/// Write out the contents of this proxy object to the current device in JSON format.<br/>
/// This method is called when a proxy object is used in conjunction with
/// the <class>%ZEN.Auxiliary.jsonProvider</class> component.<br/>
/// <var>pFormat</var> is a flags string to control output formatting options.<br/>
/// The following character option codes are supported:<br/>
/// 1-9 : indent with this number of spaces (4 is the default with the 'i' format specifier)<br/>
/// a - output null arrays/objects<br/>
/// b - line break before opening { of objects<br/>
/// c - output the ObjectScript-specific "_class" and "_id" properties (if a child property is an instance of a concrete object class)<br/>
/// e - output empty object properties<br/>
/// i - indent with 4 spaces unless 't' or 1-9<br/>
/// l - output empty lists<br/>
/// n - newline (lf)<br/>
/// o - output empty arrays/objects<br/>
/// q - output numeric values unquoted even when they come from a non-numeric property<br/>
/// s - use strict JSON output - <strong>NOTE:</strong> special care should be taken when sending data to a browser, as using this flag
/// may expose you to cross site scripting (XSS) vulnerabilities if the data is sent inside <code>&lt;script&gt;</code> tags. Zen uses
/// this technique extensively, so this flag should <strong>NOT</strong> be specified for jsonProviders in Zen pages.<br/>
/// t - indent with tab character<br/>
/// u - output pre-converted to UTF-8 instead of in native internal format<br/>
/// w - Windows-style cr/lf newline<br/>
Method %ToJSON(pLevel As %Integer = 0, pFormat As %String = "aelotw") As %Status [ Internal ]
{
}

///  Utility method.<br/>
///  Print out contents of this proxy object to the current device.
Method %Print(pLevel As %Integer = 0) [ Internal ]
{
}

/// Enumerate the contents of this proxy object, calling Client for each node
Method Enumerate(Client As %ZEN.proxyObjectEnumeratee, pLevel As %Integer = 0) As %Status [ Internal ]
{
}

/// DeleteDocument will delete a document identified by ID from the specified global or local variable reference (GLVN)</var>.
/// If a document with the specified ID does not exist in that GLVN then DeleteDocument will return an error in the returned %Status value.
/// 	<p>
/// <table border=1>
/// <th>
/// Parameters
/// </th>
/// <tr>
/// 		<td>pWhere</td>
/// 		<td>Input</td>
/// 		<td>
/// 				<p>Global or local variable reference. This is the location from where the proxyObject instance will be deleted.</p>
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
ClassMethod DeleteDocument(pWhere As %ZEN.Datatype.string, pDocumentID As %ZEN.Datatype.string = "") As %Status
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
ClassMethod OpenDocument(pWhere As %ZEN.Datatype.string, pDocumentID As %ZEN.Datatype.string, Output pStatus As %Status = "") As %ZEN.proxyObject
{
}

/// OpenEmbeddedDocument will retrieve a document embedded in a previously saved document from the specified global or local variable reference (GLVN) with the specified <var>pDocumentID</var>
/// and return an oref referencing an instance of %ZEN.proxyObject.
/// If a document with the specified documentID does not exist in that GLVN then OpenDocument will return an error in the output pStatus parameter.
/// If an embedded document with the specified objectID does not exist in that GLVN then OpenDocument will return an error in the output pStatus parameter.
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
/// 				<p>The ID of the document containing the embedded document.</p>
/// 		</td>
/// <tr>
/// <tr>
/// 		<td>pObjectID</td>
/// 		<td>Input</td>
/// 		<td>
/// 				<p>The objectID of the document embedded in the specified <var>pDocumentID</var>.</p>
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
ClassMethod OpenEmbeddedDocument(pWhere As %ZEN.Datatype.string, pDocumentID As %ZEN.Datatype.string, pObjectID As %ZEN.Datatype.string, Output pStatus As %Status = "") As %ZEN.proxyObject
{
}

/// SaveDocument will save the proxyObject to a global or local variable reference (GLVN) with the specified <var>pDocumentID</var>.
/// If a document with the same ID already exists in that GLVN then SaveDocument will return an error in the returned %Status value.
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
/// 				<p>The document ID. This value must be unique within the GLVN specified in <var>pWhere</var>.</p>
/// 		</td>
/// </tr>
/// </table>
/// </p>
Method SaveDocument(pWhere As %ZEN.Datatype.string, pDocumentID As %ZEN.Datatype.string = "") As %Status
{
}

ClassMethod loadObject(pObject As %Library.RegisteredObject, pWhere As %ZEN.Datatype.string, pDocumentID As %ZEN.Datatype.string, pObjectID As %ZEN.Datatype.integer, ByRef pOQ, ByRef pOREF) [ Internal ]
{
}

ClassMethod loadList(pObject As %Collection.AbstractList, pWhere As %ZEN.Datatype.string, pDocumentID As %ZEN.Datatype.string, pObjectID As %ZEN.Datatype.integer, ByRef pOQ, ByRef pOREF) [ Internal ]
{
}

}
