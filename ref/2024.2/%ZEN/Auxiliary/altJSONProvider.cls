/// The jsonProvider component provides a way to transport object data between a server and client
/// (and vice versa) using JavaScript Object Notation (commonly abbreviated as JSON), as defined in RFC4627.<br/>
/// JSON format refers to a common JavaScript programming technique where you
/// define a set of one or more objects using object literal syntax:<br/>
/// <example language="JavaScript">
/// var obj = { "name": "Bill" };
/// </example>
///
/// The jsonProvider works as follows:
/// <ul>
/// <li>You place an instance of the (invisible) jsonProvider component on your page.</li>
/// <li>You supply a callback method, <property>OnGetTargetObject</property>,
/// that creates an object or set of objects and returns it. This can be an
/// instance of a specific class or classes or it can use the generic <class>%ZEN.proxyObject</class>.</li>
/// <li>The jsonProvider converts the target object to a set of JavaScript objects
/// when the page is rendered (which you can see if you view the source of the
/// page as sent to the client).</li>
/// <li>The jsonProvider has a client-side method, <method>getContentObject</method>(),
/// which returns the client-side version of the target object. This is simply a
/// graph of generic JavaScript Object objects. These objects will have
/// the same properties and values as the target objects. If the target objects refer
/// to other objects or have collections (literal or object-valued) then the
/// JavaScript object will have corresponding object or collection properties.</li>
/// <li>The client can modify these client-side objects or replace them completely using
/// the <method>setContentObject</method>() method.</li>
/// <li>The client can ship its content objects back to the server for processing by
/// calling the <method>submitContent</method>() method. This converts the objects back into
/// server-side objects and invokes the callback method specified by the
/// <property>OnSubmitContent</property> property.</li>
/// <li>The callback defined by <property>OnSubmitContent</property> can modify the objects
/// shipped to it or return a completely different set of objects. This makes it
/// possible to use the jsonProvider as a way to execute different types of server operations.</li>
/// </ul>
///
/// Using the jsonProvider component as an object transport has advantages and disadvantages
/// when compared with other mechanisms provided by Zen, such as the built-in transport
/// provided for Zen components. The main advantage is that you can transport data
/// without having to create or modify server classes &mdash; you can ship most any
/// server-side object using this technique. The disadvantages are:
/// <ul>
/// <li>You can ship a set of objects, but the objects must form a graph from a "parent"
/// object down through levels of "children" (this is due to how JSON format data
/// is reconstituted on the client). You cannot have child objects refer to parents, siblings
/// or other objects outside of the graph.</li>
/// <li>This approach uses late binding so it is not as efficient as the code generated
/// approach used by Zen components.</li>
/// <li>Not all object properties are supported: you cannot ship binary streams or
/// values. Only references to "child" objects are transported. Any user-defined Javascript properties whose
/// name starts with "_" (an underscore) are not included in the content shipped back to the server.</li>
/// </ul>
///
/// The jsonProvider code may also be invoked from a non-Zen context by calling one of the following APIs:
/// <ul><li><method>%WriteJSONFromArray</method></li>
/// <li><method>%WriteJSONFromObject</method></li>
/// <li><method>%WriteJSONStreamFromArray</method></li>
/// <li><method>%WriteJSONStreamFromObject</method></li>
/// <li><method>%ConvertJSONToObject</method></li></ul>
Class %ZEN.Auxiliary.altJSONProvider Extends %ZEN.Auxiliary.abstractController [ Deprecated, System = 3 ]
{

Parameter SYSMODULE = "json";

/// This component is not visible.
Parameter DEFAULTVISIBLE = 0;

/// Class name of the target object expected to be served by this component.
/// Setting the target object will also set this as a side effect.
Property targetClass As %ZEN.Datatype.className;

/// Used to hold the target object.
Property %TargetObject As %RegisteredObject(XMLPROJECTION = "none") [ Internal, Private ];

/// Used to temporarily hold the response object returned by the <method>OnSubmitContent</method>() callback.
Property %ObjectReplacement As %RegisteredObject(XMLPROJECTION = "none") [ Internal, Private ];

/// This property contains the JSON-notation content of the target object.<br/>
/// This is automatically set in any of the following ways:
/// <ul>
/// <li>When the server-side <property>OnGetTargetObject</property> callback is called.</li>
/// <li>When the server-side <method>%SetTargetObject</method>() method is called.</li>
/// <li>When the client-side <method>setContentObject</method>() method is called.</li>
/// <li>When the client-side <method>setContentText</method>() method is called.</li>
/// </ul>
/// Use the <method>getContentObject</method>() method to get the contents of this property.
Property content As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Run-time value. Set to indicate an error within this component.<br>
/// This is primarily used by controls.
/// It is defined here for flexibility.
Property error As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0);

/// User-defined set of parameters. These values are passed on
/// to the user callback function that provides the contents of
/// this view. Typically this is used to hold search parameters.
Property parameters As array Of %ZEN.Auxiliary.parameter(XMLKEYNAME = "paramName", XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// Flags string consisting of character options that control output formatting.<br/>
/// JSON written out using the <property>OnRenderJSON</property> callback is not affected by this value.
/// See the description of method <property>%ObjectToJSON</property>() for a list of options this value may include.
Property %Format As %ZEN.Datatype.string [ InitialExpression = "aceloqtw" ];

/// Supply data for the JSON provider as a set of server objects.<br/>
/// This callback method is invoked when the page containing this jsonProvider is
/// rendered. It is expected to return (by reference) an instance of the object
/// whose data is to be provided to the client in JSON format.<br/>
/// For example:<br/>
/// <example language="cls!member">
/// Method GetTarget(
/// 	ByRef pParameters As %String,
/// 	Output pObject As %RegisteredObject) As %Status
/// {
///   Set pObject = ##class(MyApp.MyClass).%New()
///   Set pObject.Name = "Bob"
///   Quit $$$OK
/// }
/// </example>
Property OnGetTargetObject As %ZEN.Datatype.delegator(FORMALSPEC = "&pParameters:%String,*pObject:%RegisteredObject", RETURNTYPE = "%Status");

/// Supply data for the JSON provider as a server-side array.<br/>
/// This callback method is invoked when the page containing this jsonProvider is
/// rendered.<br/>
/// This callback provides an easy way to ship a set of identical objects to the client
/// by filling in a multidimensional array.
/// The callback method is expected to fill in two structures:<br/>
/// <var>pMetaData</var> is a $List containing the names of the properties
/// of the objects in the order in which they will appear.<br/>
/// <var>pData</var> is an array containing the data. Each node in the array
/// should be a $List containing values for properties. This should match the
/// meta data provided in <var>pMetaData</var>. The array of data can use any subscript
/// value its wants. It is possible to define a hierarchical array. In this case,
/// children nodes are placed within a parent collection called <var>children</var>.<br/>
/// If this callback is defined, then the <property>OnGetTargetObject</property> callback will not be invoked.
/// For example:<br/>
/// <example language="cls!member">
/// Method GetArray(
/// 	ByRef pParameters As %String,
/// 	Output pMetaData,
/// 	Output pData) As %Status
/// {
///   Set pMetaData = $LB("name","rank","serialNo")
///   Set pData(1) = $LB("Smith","Captain","444-33-2222")
///   Set pData(1,1) = $LB("Jones","Corporal","333-22-3333")
///   Quit $$$OK
/// }
/// </example>
///
/// This would result in the two objects being shipped to the client (in JSON format):
/// <example language="javascript">
/// var content = {
/// 	"name": "Smith",
/// 	"rank": "Captain",
/// 	"serialNo": "444-33-2222",
/// 	"children": [
/// 		{
/// 			"name": "Jones",
/// 			"rank": "Corporal",
/// 			"serialNo": "333-22-3333"
/// 		}
/// 	]
/// };
/// </example>
///
Property OnGetArray As %ZEN.Datatype.delegator(FORMALSPEC = "&pParameters:%String,*pMetaData,*pData", RETURNTYPE = "%Status");

/// This callback method is invoked when the client submits an object to the
/// server by calling the <method>submitContent</method>() method.
/// The callback is passed the submitted object in <var>pSubmitObject</var> after it has
/// been converted from JSON format back into an object instance. It is also passed the
/// command string supplied to the <method>submitContent</method>() method in <var>pCommand</var>.<br/>
/// If the callback method returns an object via the <var>pResponseObject</var>
/// argument, then this object is returned to the client and becomes the
/// new content of the JSON provider.<br/>
/// For example:<br/>
/// <example language="cls!member">
/// Method SubmitHandler(
/// 	pCommand As %String,
/// 	pProvider As %ZEN.Auxiliary.jsonProvider,
/// 	pSubmitObject As %RegisteredObject,
/// 	Output pResponseObject As %RegisteredObject) As %Status
/// {
///   Set tSC = $$$OK
///   If ($IsObject(pObject)) {
///     Set tSC = pObject.%Save()
///   }
///   Quit tSC
/// }
/// </example>
Property OnSubmitContent As %ZEN.Datatype.delegator(FORMALSPEC = "pCommand:%String,pProvider:%ZEN.Auxiliary.jsonProvider,pSubmitObject:%RegisteredObject,&pResponseObject:%RegisteredObject", RETURNTYPE = "%Status");

/// Optional. If implemented this callback is expected to write out
/// to the current device the contents of a set of related
/// objects in JSON format.<br/>
/// If present, this overrides the default behavior of this component and the
/// <property>OnGetTargetObject</property> callback is ignored.
Property OnRenderJSON As %ZEN.Datatype.delegator(FORMALSPEC = "&pParameters:%String", RETURNTYPE = "%Status");

/// Optional.
/// When this provider is used as a data controller, this is the name of the property
/// in the JSON data that provides the series names to view connected to the provider.
/// The default is "caption".
Property seriesNameProperty As %ZEN.Datatype.string [ InitialExpression = "caption" ];

/// Indicates what kind of data is supplied by this provider. This can be:
/// "object" (an object or graph of objects) or "array" (an array of objects).<br/>
/// This is set automatically. For custom JSON output, the user specified value is used.
Property contentType As %ZEN.Datatype.string [ Internal ];

/// Optional.
/// If supplied this is an comma-delimited list of property names. These names are used
/// to define the default ordering of properties supplied by this provider.
/// If a property name is in the list but not in the content data, it is used but will have a
/// value of ''. Properties in the content object but not in this list are listed at the end.
Property propertyList As %ZEN.Datatype.csv;

/// Name of class containing callback methods when this provider is used in direct (non-Zen) mode.
/// See <method>%WriteJSONFromArray</method> for details.
Property %containerClass As %ZEN.Datatype.string [ Internal ];

/// Optional. If provided (and no other callbacks are defined), then
/// this is the id of a document interface (subclass of <class>%ZEN.DataModel.AbstractDocument</class>) that is used to supply data to the provider.<br/>
/// A document id takes the form "docName/docInstance", where *docName* is the logical name of a
/// data document and *docInstance* is a instance id.
Property documentId As %ZEN.Datatype.string;

/// Draw JSON output for the target object.
Method %DrawJSON() As %Status [ Internal ]
{
}

/// Set <var>pObject</var> as the target object for this provider.<br/>
/// Set <property>targetClass</property> to the target object class.
Method %SetTargetObject(pObject As %RegisteredObject) As %Status
{
}

/// Invoke the OnGetArray callback.
Method %OnGetArray(ByRef pParms, Output pMetaData, Output pData) As %Status [ Internal ]
{
}

/// Invoke the OnGetTargetObject callback.
Method %OnGetTargetObject(ByRef pParms, Output pObject As %RegisteredObject) As %Status [ Internal ]
{
}

/// Invoke the <property>OnSubmitContent</property> callback.<br/>
/// If <var>pResponseObject</var> is returned, then it is passed back to the client.
Method %OnSubmitContent(pCommand As %String, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status [ Internal ]
{
}

/// Invoke the <property>OnRenderJSON</property> callback.
Method %OnRenderJSON(ByRef pParms) As %Status [ Internal ]
{
}

/// This server-side method is called by the <method>submitContent</method>() method.
Method SubmitToServer(pCommand As %String, pContent As %String, pTargetClass As %String) As %Boolean [ Internal, ZenMethod ]
{
}

/// This server-side method is called by the <method>submitContent</method>() method in async mode.
Method SubmitToServerAsync(pCommand As %String, pContent As %String, pTargetClass As %String) [ Internal, ZenMethod ]
{
}

/// This server-side method is called by the <method>reloadContents</method>() method.
Method RefreshFromServer() As %Boolean [ Internal, ZenMethod ]
{
}

/// This server-side method is called by the <method>reloadContentsAsynch</method>() method.
Method RefreshFromServerAsynch() [ Internal, ZenMethod ]
{
}

/// Drill down just enough to find out if the object has any content displayable as JSON given the current <var>pFormat</var> options.
ClassMethod hasObjContent(pObject As %RegisteredObject, ByRef pVisited, pFormat As %String, pRecursing As %Boolean = 0) As %Boolean [ Internal ]
{
}

/// Repack the contents of a Zen proxy object to an abstract entity tree.<br/>
/// <var>pFormat</var> is a flags string to control output formatting options.<br/>
/// The following character option codes are supported:<br/>
/// c - output the ObjectScript-specific "_class" and "_id" properties (if a child property is an instance of a concrete object class)<br/>
ClassMethod %ZPOToAET(pZPO As %ZEN.proxyObject, pLevel As %Integer = 0, pFormat As %String = "aelo") As %DynamicAbstractObject [ Internal ]
{
}

/// Convert an instance of AbstractList to an AET structure
/// returning that structure is successful or -1 if the
/// structure cannot be converted for some reason
ClassMethod %AbstractListToAET(pObject As %RegisteredObject, ByRef pVisited, pLevel As %Integer = 0, pFormat As %String = "acelo") As %DynamicAbstractObject [ Internal ]
{
}

/// Convert an instance of AbstractArray to an AET structure
/// returning that structure is successful or -1 if the
/// structure cannot be converted for some reason
ClassMethod %AbstractArrayToAET(pObject As %RegisteredObject, ByRef pVisited, pLevel As %Integer = 0, pFormat As %String = "acelo") As %DynamicAbstractObject [ Internal ]
{
}

/// Convert an instance of a COS Object to an AET structure
/// returning that structure is successful or -1 if the
/// structure cannot be converted for some reason
ClassMethod %COSObjectToAET(pObject As %RegisteredObject, ByRef pVisited, pLevel As %Integer = 0, pFormat As %String = "acelo") As %DynamicAbstractObject [ Internal ]
{
}

/// Convert the contents of object instance <var>pObject</var> to
/// an abstract entity tree.
/// <var>pFormat</var> is a flags string to control output options.</br>
/// The following character option codes are supported:<br/>
/// c - output the ObjectScript-specific "_class" and "_id" properties<br/>
/// d - output numeric properties that have value "" as null<br/>
ClassMethod %ObjectToAET(pObject As %RegisteredObject, ByRef pVisited, pLevel As %Integer = 0, pFormat As %String = "acelo") As %DynamicAbstractObject
{
}

ClassMethod %ConvertAETScalar(pValue As %String, pDataType As %String, pFormat As %String) As %String [ Internal ]
{
}

/// Write out the contents of object instance <var>pObject</var> to
/// the current device using JSON notation.
ClassMethod %ObjectToJSON(pObject As %RegisteredObject, ByRef pVisited, pLevel As %Integer = 0, pFormat As %String = "aceloqstw") As %Status
{
}

/// Convert the contents of the local array <var>pData</var> to an AET structure
/// <var>pMetaData</var> is a $List containing the names of the properties
/// of the objects in the order in which they will appear.<br/>
/// <var>pData</var> is an array containing the data. Each node in the array
/// should be a $List containing values for properties. This should match the
/// meta data provided in <var>pMetaData</var>. The array of data can use any subscript
/// value its wants. It is possible to define a hierarchical array. In this case,
/// children nodes are placed within a parent collection called <var>children</var>.<br/>
ClassMethod %ArrayToAET(ByRef pMetaData, ByRef pData) As %DynamicAbstractObject [ PublicList = pData ]
{
}

/// Write out the contents of the local array <var>pData</var> to the current device using JSON notation
/// <var>pMetaData</var> is a $List containing the names of the properties
/// of the objects in the order in which they will appear.<br/>
/// <var>pData</var> is an array containing the data. Each node in the array
/// should be a $List containing values for properties. This should match the
/// meta data provided in <var>pMetaData</var>. The array of data can use any subscript
/// value its wants. It is possible to define a hierarchical array. In this case,
/// children nodes are placed within a parent collection called <var>children</var>.<br/>
/// <var>pFormat</var> is a flags string that controls output formatting options.<br/>
/// The following character option codes are supported:<br/>
/// 1-9 : indent with this number of spaces (4 is the default with the 'i' format specifier)<br/>
/// b - line break before opening { of objects<br/>
/// i - indent with 4 spaces unless 't' or 1-9<br/>
/// n - newline (lf)<br/>
/// s - use strict JSON output - <strong>NOTE:</strong> special care should be taken when sending data to a browser, as using this flag
/// may expose you to cross site scripting (XSS) vulnerabilities if the data is sent inside <code>&lt;script&gt;</code> tags. Zen uses
/// this technique extensively, so this flag should <strong>NOT</strong> be specified for jsonProviders in Zen pages.<br/>
/// t - indent with tab character<br/>
/// u - output pre-converted to UTF-8 instead of in native internal format<br/>
/// w - Windows-style cr/lf newline<br/>
ClassMethod %ArrayToJSON(ByRef pMetaData, ByRef pData, pFormat As %String = "tw") As %Status [ PublicList = pData ]
{
}

ClassMethod LogMessage(msg As %String) As %Status
{
}

/// Given an Abstract Entity Tree of potentially nested %DynamicObject and
/// %DynamicArray nodes, convert this memory structure to one using
/// the legacy %ZEN.proxyObject and %Collection.AbstractList
ClassMethod %ConvertAETToZPO(obj As %DynamicAbstractObject, rootType As %String) As %ZEN.proxyObject [ Internal ]
{
}

ClassMethod %TestForNestedObjects(pObj As %DynamicArray) As %Boolean
{
}

ClassMethod %GetTypeInfo(pClass As %String, pProperty As %String) As %DynamicObject
{
}

/// Given an AET Array node of potentially nested %DynamicObject and
/// %DynamicArray nodes, convert this memory structure to one using
/// the the provided COS object class
ClassMethod %UnpackArrayToCOSObject(obj As %DynamicAbstractObject, targetObj As %RegisteredObject, pMember As %String, pIgnoreUnknownProps As %Boolean = 0) [ Internal ]
{
}

/// Given an AET Object node of potentially nested %DynamicObject and
/// %DynamicArray nodes, convert this memory structure to one using
/// the the provided COS object class
ClassMethod %UnpackObjectToCOSObject(obj As %DynamicAbstractObject, pClass As %String, pIgnoreUnknownProps As %Boolean = 0) As %RegisteredObject [ Internal ]
{
}

/// Given an Abstract Entity Tree of potentially nested %DynamicObject and
/// %DynamicArray nodes, convert this memory structure to one using
/// the the provided COS object class
ClassMethod %UnpackAETToObject(obj As %DynamicAbstractObject, rootType As %String, pClass As %String, pIgnoreUnknownProps As %Boolean = 0) As %RegisteredObject [ Internal ]
{
}

/// Parse the string <var>pJSON</var> containing JSON notation
/// and convert it to an object instance <var>pObject</var>.<br/>
/// <var>pJSON</var> could also be a character stream.<br/>
/// <var>pClass</var> is the name of the class to create to hold
/// the instantiated object. This class must match the data within the JSON
/// notation. If <var>pClass</var> is empty (""), then an instance
/// of the generic class <class>%ZEN.proxyObject</class> will be created.
/// <var>pCharsProcessed</var> and <var>pLevel</var> are used
/// internally and do not have to be supplied.
/// <var>pIgnoreUnknownProps</var> controls whether we will
/// ignore errors when we process a property that isn't expected. The default
/// behaviour is to treat this as an error.<br/>
/// Note that this method assumes well-formed JSON notation: it does
/// not perform complete error checking.
ClassMethod %ParseJSON(pJSON As %String, pClass As %String = "", Output pObject As %RegisteredObject, Output pCharsProcessed As %Integer, pLevel As %Integer = 1, pFirstChar As %String = "", pIgnoreUnknownProps As %Boolean = 0) As %Status [ Internal ]
{
}

/// Diagnostic method: write JSON content to the given file.
ClassMethod %WriteJSONToFile(pJSON As %String, pFileName As %String) As %Status [ Internal ]
{
}

/// Test method: process JSON content from the given file.
ClassMethod %ParseFile(pFileName As %String, pClass As %String = "", Output pObject As %RegisteredObject) As %Status [ Internal ]
{
}

/// Clear the (shadow) modified bit for the content property.
Method %ClearContentModified() [ Internal ]
{
}

/// Set the (shadow) modified bit for the content property.
Method %SetContentModified() [ Internal ]
{
}

/// Render the JSON content of the target object
/// along with the other properties of the provider.
Method %OnDrawObjectProperties() [ Internal ]
{
}

/// Render the JSON content of the target object
/// along with the other properties of the provider.
Method %OnObjectSynch() As %Status [ Internal ]
{
}

/// Acquire data from the associated DataModel object.
/// This is typically called on the server before a page is served in order
/// to get initial values for bound components.
Method %AcquireData() As %Status [ Internal ]
{
}

/// Utility method to allow direct use of JSON from a non-ZEN context (such as a CSP page).<br/>
/// Calls the class method <var>pArrayMethod</var> within the class <var>pClass</var> and converts the
/// resulting array to an array of objects in JSON format using the convention of the <property>OnGetArray</property>
/// callback.<br/>
/// The JSON notation is written out to the current device.<br/>
/// <var>pVar</var> is the optional name of the client-side Javascript variable that refers to the JSON notation.<br/>
/// <var>pParms</var> is an optional array of parameter names and values that is passed to the callback method.<br/>
/// <var>pReturnStatus</var> is a flag to control whether the status code from the method should be returned to the caller.
/// If <var>pReturnStatus</var> is 0, an alert will be raised via Javascript. If <var>pReturnStatus</var> is 1, the status code
/// will be used as the return value from the method and an alert will NOT be raised.<br/>
/// <var>pFormat</var> is provided for signature compatibility with the
/// legacy jsonProvider class, but using it to pretty-print the output
/// stream is not supported by this class.<br />
/// From a CSP page, you could invoke the method as follows:<br/>
/// <example language="CSP">
/// #(##class(%ZEN.Auxiliary.jsonProvider).%WriteJSONFromArray("json",$classname(),"GetArray"))#
/// </example>
ClassMethod %WriteJSONFromArray(pVar As %String = "", pClass As %String = "", pArrayMethod As %String = "", ByRef pParms As %String, pReturnStatus As %Boolean = 0, pFormat As %String) As %String
{
}

/// Utility method to allow direct use of JSON from a non-ZEN context (such as a CSP page).<br/>
/// Calls the class method <var>pMethod</var> within the class <var>pClass</var> and converts the
/// resulting object to JSON format using the convention of the <property>OnGetTargetObject</property>
/// callback.<br/>
/// The JSON notation is written out to the current device.<br/>
/// <var>pVar</var> is the optional name of the client-side Javascript variable that refers to the JSON notation.<br/>
/// <var>pParms</var> is an optional array of parameter names and values that is passed to the callback method.<br/>
/// <var>pReturnStatus</var> is a flag to control whether the status code from the method should be returned to the caller.
/// If <var>pReturnStatus</var> is 0, an alert will be raised via Javascript. If <var>pReturnStatus</var> is 1, the status code
/// will be used as the return value from the method and an alert will NOT be raised.<br/>
/// <var>pFormat</var> is provided for signature compatibility with the
/// legacy jsonProvider class, but using it to pretty-print the output
/// stream is not supported by this class.<br />
/// From a CSP page, you could invoke the method as follows:<br/>
/// <example language="CSP">
/// #(##class(%ZEN.Auxiliary.jsonProvider).%WriteJSONFromObject("json",$classname(),"GetObject"))#
/// </example>
ClassMethod %WriteJSONFromObject(pVar As %String = "", pClass As %String = "", pMethod As %String = "", ByRef pParms As %String, pReturnStatus As %Boolean = 0, pFormat As %String) As %String
{
}

/// Utility method to allow direct use of JSON from a non-ZEN context (such as a CSP page).<br/>
/// <var>pContent</var> is a string or a stream containing JSON notation.<br/>
/// <var>pTargetClass</var> is an optional class type for the resulting object; if not provided,
/// <class>%ZEN.proxyObject</class> is used.<br/>
/// <var>pObject</var> is the object created from the JSON.
/// <var>pIgnoreUnknownProps</var> controls whether properties that are not defined in the object
/// structure will be ignored or treated as an error condition. The default behaviour is to stop
/// processing the incoming JSON.
ClassMethod %ConvertJSONToObject(pContent As %String, pTargetClass As %String = "", Output pObject As %RegisteredObject, pIgnoreUnknownProps As %Boolean = 0) As %Status [ CodeMode = expression ]
{
}

/// Utility method to allow JSON output to be written to a stream from a general non-ZEN context.<br/>
/// Calls the class method <var>pArrayMethod</var> within the class <var>pClass</var> and converts the
/// resulting array to an array of objects in JSON format using the convention of the <property>OnGetArray</property>
/// callback.<br/>
/// The JSON notation is written out to the stream supplied in <var>pStream</var>.<br/>
/// <var>pParms</var> is an optional array of parameter names and values that is passed to the callback method.<br/>
/// <var>pRewindStream</var> is a flag to control whether the stream should be rewound after the data is written to it.<br/>
/// <var>pFormat</var> is provided for signature compatibility with the
/// legacy jsonProvider class, but using it to pretty-print the output
/// stream is not supported by this class.<br />
ClassMethod %WriteJSONStreamFromArray(pStream As %Stream.Object, pClass As %String, pArrayMethod As %String, ByRef pParms As %String, pRewindStream As %Boolean = 0, pFormat As %String) As %Status [ ProcedureBlock = 0 ]
{
}

/// Utility method to allow JSON output to be written to a stream from a general non-ZEN context.<br/>
/// Calls the class method <var>pMethod</var> within the class <var>pClass</var> and converts the
/// resulting object to JSON format using the convention of the <property>OnGetTargetObject</property>
/// callback. However, if an object is supplied in <var>pClass</var>, then the supplied object will be
/// used as the source object.<br/>
/// The JSON notation is written out to the stream supplied in <var>pStream</var>.<br/>
/// <var>pParms</var> is an optional array of parameter names and values that is passed to the callback method.
/// If <var>pClass</var> is an object, these parameters will be ignored.<br/>
/// <var>pRewindStream</var> is a flag to control whether the stream should be rewound after the data is written to it.<br/>
/// <var>pFormat</var> is provided for signature compatibility with the
/// legacy jsonProvider class, but using it to pretty-print the output
/// stream is not supported by this class.<br />
ClassMethod %WriteJSONStreamFromObject(pStream As %Stream.Object, pObject As %String, pMethod As %String, ByRef pParms As %String, pRewindStream As %Boolean = 0, pFormat As %String) As %Status [ ProcedureBlock = 0 ]
{
}

ClassMethod redirects() [ Internal, Private, ProcedureBlock = 0 ]
{
}

/// Build a list of super classes (indexed by number) starting from (and including) <var>pClass</var>.
/// Stop when any of the classes in the list <var>pSkip</var> are reached.
/// Skip any classes in any of the packages in the list <var>pSkipPackage</var> are reached.
ClassMethod getSuperClassList(pClass As %String, ByRef pList As %String, ByRef pSkip As %String, ByRef pSkipPackage As %String) [ Internal ]
{
}

/// Build a list of properties in sequence order, including inherited properties.<br>
/// On return, <var>pList</var> is a list of properties names (subscripted by order number).
ClassMethod getOrderedProps(pClass As %Dictionary.CompiledClass, ByRef pList) [ Internal ]
{
}

/// Return the client-side JSON data as an object or null.
ClientMethod getContentObject() [ Language = javascript ]
{
}

/// Return the type of the data supplied by this provider: "object" or "array".
ClientMethod getContentType() [ Language = javascript ]
{
}

/// Set the type of the data supplied by this provider: "object" or "array".
ClientMethod setContentType(type) [ Language = javascript ]
{
}

/// Make <var>obj</var> the new target object for this provider.
ClientMethod setContentObject(obj) [ Language = javascript ]
{
}

/// Set the content for this provider using the string <var>json</var>.
/// <var>json</var> is expected to contain object data in JSON format.
ClientMethod setContentText(json) [ Language = javascript ]
{
}

/// Send the current target object for this provider to the server
/// for processing. This will recreate the object on the server and
/// invoke the <property>OnSubmitContent</property> callback.<br/>
/// This method will return true if successful and false otherwise.
/// If the method fails, an error string is placed in this object's
/// <property>error</property> property (accessible via the <method>getError</method>() method).<br/>
/// <var>command</var> is an optional string that is passed on to the server
/// callback method to allow for different behaviors in the server logic.<br/>
/// <var>targetClass</var> is an optional argument that, if specified, should
/// be the name of the server-class that you wish to have instantiated on the server.
/// This has the same effect as setting the <property>targetClass</property> property.
/// This makes it possible to submit content for different object classes. If the
/// server cannot create an instance of the specified class, it will return
/// an error.<br/>
/// Normally the submit operation is synchronous. If the optional <var>notify</var> parameter
/// is a function, then the operation will be invoked <i>asynchronously</i> and <var>notify</var>
/// will be invoked when the operation is complete. Note that only one asynchronous operation can be
/// handled at a time.<br/>
/// If <var>time</var> is defined, then raise the notify function every <var>time</var> milliseconds
/// until the task is complete.
ClientMethod submitContent(command, targetClass, notify, time) [ Language = javascript ]
{
}

/// Reload the contents of the provider with data from the server.<br/>
/// Unlike the <method>submitContent</method>() method,
/// this does not send data to the server.<br/>
/// This is typically used in conjunction with the <property>OnGetArray</property>
/// callback &mdash; this method will call the server and the server, in turn, will
/// invoke the <property>OnGetArray</property> callback to create new content to ship back to the client.
ClientMethod reloadContents() [ Language = javascript ]
{
}

/// Reload the contents of the json provider asynchronously;
/// invoke the function <var>notify</var> when complete.
/// If <var>time</var> is defined, then raise the notify function every <var>time</var> ms
/// until the task is complete.
ClientMethod reloadContentsAsynch(notify, time) [ Language = javascript ]
{
}

/// Called when async refresh is complete (final is true) or when the notifier timer fires.
ClientMethod refreshHandler(final, notify) [ Internal, Language = javascript ]
{
}

/// Called when async submit is complete (final is true) or when the notifier timer fires.
ClientMethod submitHandler(final, notify) [ Internal, Language = javascript ]
{
}

/// Deprecated: use <method>reloadContents</method>().
ClientMethod refreshContent() [ Language = javascript ]
{
}

/// Get the current value of the <property>error</property> property.
/// This is set when a server-side method encounters an error.
ClientMethod getError() [ Language = javascript ]
{
}

/// Convert object <var>obj</var> to JavaScript
/// object literal syntax (JSON) so that it can be shipped
/// to the server.<br/>
/// Note that you cannot convert objects that refer to native types to JSON,
/// this includes any HTML elements or Zen components.
ClientMethod toJSON(obj, cycle, level) [ Internal, Language = javascript ]
{
}

/// Set the value of a named property.<br/>
/// This is part of the data controller API.
ClientMethod setProperty(property, value, value2) [ Internal, Language = javascript ]
{
}

/// Return number of dimensions in the data.
/// Fixed at 2 for JSON.
ClientMethod getDimensions() [ Internal, Language = javascript ]
{
}

/// Reset the metadata for this provider. When used as a data controller
/// this will force recalculation of the meta data (property names) when this
/// data is next used for rendering.
ClientMethod resetMetaData() [ Final, Internal, Language = javascript ]
{
}

/// Determine the property names for the current data.<br/>
/// If the content type is "array", then assume that the model is an array of children and all children are the same.
/// If the content type is "object", use the properties of the object.
ClientMethod findMetaData() [ Final, Internal, Language = javascript ]
{
}

/// Add the properties in object <var>data</var> to the metaData list.
/// Ignore any properties in <var>props</props>.
ClientMethod getObjectMetaData(data, metaData, props, parent) [ Internal, Language = javascript ]
{
}

/// Return the number of items in the specified dimension
/// (<var>dim</var> is 1,2, or 3).
ClientMethod getDimSize(dim) [ Language = javascript ]
{
}

/// This is a specialized variant of <method>getData</method>() that
/// returns the data in this controller as an array of arrays (used
/// by charts).
ClientMethod getDataAsArrays() [ Final, Language = javascript ]
{
}

/// Get the label at position n (0-based) in the given
/// dimension (1,2, or 3).
ClientMethod getLabel(n, dim) [ Language = javascript ]
{
}

/// Return a title to display for this data source.
/// This provides the title for a chart.<br/>
/// <var>which</var> indicates which type of caption: "title", "subtitle",etc.
/// <var>text</var> is the original text for the caption.
ClientMethod getDataSourceCaption(which, text) [ Language = javascript ]
{
}

/// Data API.
/// Lookup a value by its name.
ClientMethod getDataByName(property, series) [ Internal, Language = javascript ]
{
}

/// dataSet API<br/>
/// Return the data contained in the specified location.
/// Location is 0-based.
ClientMethod getData(d1, d2, d3) [ Language = javascript ]
{
}

/// Set the data contained in the specified location.
/// Location is 0-based.<br/>
/// This is part of the dataController API.
ClientMethod setData(value, d1, d2, d3) [ Internal, Language = javascript ]
{
}

/// Given a 0-based index, return the corresponding property name.
ClientMethod getPropertyName(n) [ Language = javascript ]
{
}

/// This is part of the data controller API.
/// Set a data value, by property name, into this dataController.<br>
/// If <var>property</var> is "%id", then change the id of this controller.<br>
/// If <var>property</var> is "%series", then change the
/// <property>defaultSeries</property> of this controller.
ClientMethod setDataByName(property, value, series) [ Internal, Language = javascript ]
{
}

/// Return true if this controller currently contains data.
ClientMethod hasData() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Decode a reference to a property within the given data and return its value.
ClientMethod findObjectValue(data, prop) [ Internal, Language = javascript ]
{
}

/// Decode a reference to a property within the given data and set its value.
ClientMethod setObjectValue(data, prop, value) [ Internal, Language = javascript ]
{
}

/// Internal method. Test if an object is an array.
ClientMethod isArray(obj) [ Internal, Language = javascript ]
{
}

/// Save data from this dataController back to the DataModel on the server.
/// Return the id with which the model was saved or '' if it was not saved.
ClientMethod save() [ Language = javascript ]
{
}

/// Return the array within the content object that supplies the values to a dataView.
ClientMethod getContentArray() [ Internal, Language = javascript ]
{
}

}
