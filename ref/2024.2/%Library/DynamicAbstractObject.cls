/// <p><b>For information on the API provided by this superclass</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.DynamicAbstractObject">Using Dynamic Entities</a>.</p>
///
/// Dynamic Entity base class.
Class %Library.DynamicAbstractObject Extends %Library.AbstractSet [ Abstract, ClassType = dynamic, System = 1 ]
{

/// remove all elements of the current set, throws an exception if this operation is
/// not supported or the set cannot be cleared.
Method clear() [ CodeMode = call ]
{
}

/// return true if the <var>key</var> is currently an element of the set, false otherwise.
Method contains(key As %DataType) As %Boolean [ CodeMode = expression ]
{
}

/// return true if the set contains() all <var>key[n]</var> where 0&leq;n&leq; size(<var>array</var>)
Method containsAll(array As %Library.DynamicArray) As %Boolean
{
}

/// get the element identified by <var>key</var>
Method get(key As %DataType) As %Library.Any [ CodeMode = expression ]
{
}

///             return an iterator over the elements of this set
Method iterator() As %Iterator [ CodeMode = call ]
{
}

/// put the <var>value</var> into the set with the element name (id) of <var>key</var>.
/// If an element with this <var>key</var> is already present in the set then that element's value is replaced
/// by <var>value</var>
/// </p><p>
/// parameters:
/// <ul>
/// <li>key: key to put into the set</li>
/// <li>value: value to put into the set</li>
/// <li>type: type of the value, refer to <method>%GetTypeOf</method> for a list of supported types</li>
/// </ul>
/// </p><p>
/// returns:<ul><li>oref referencing the modified DAO, this may be different from the current oref</li></ul>
/// </p><p>
/// throws:<ul><li>exception</li></ul>
/// </p>
Method put(key As %DataType, value As %Library.Any, type As %Library.String) As %Library.DynamicAbstractObject [ CodeMode = call ]
{
}

/// <p>
/// put all {<var>keys[n]</var>, <var>values[n]</var>} elements where 0&leq;n&leq; size(<var>keys</var>) into the DAO
/// </p><p>
/// parameters:
/// <ul>
/// <li>keys: array of keys to put into the DAO</li>
/// <li>values: array of values to put into the DAO</li>
/// </ul>
/// </p><p>
/// returns:<ul><li>oref referencing the modified DAO</li></ul>
/// </p><p>
/// throws:<ul><li>exception</li></ul>
/// </p>
Method putAll(key As %Library.DynamicAbstractObject, value As %Library.DynamicArray) As %Library.DynamicAbstractObject
{
}

/// <p>
/// put the {<var>key</var>, <var>value</var>} element into the set.
/// If contains(<var>key</var>) is false or get(<var>key</var>) is null then put(<var>key</var>,<var>value</var>)
/// </p><p>
/// parameters:
/// <ul>
/// <li>key: key to put into the set</li>
/// <li>value: value to put into the set</li>
/// </ul>
/// returns:<ul><li>oref referencing the modified set</li></ul>
/// </p><p>
/// throws:<ul><li>exception</li></ul>
/// </p>
Method putIfAbsent(key As %DataType, value As %Library.Any) As %Library.AbstractSet
{
}

/// <p>
/// put all {<var>keys[n]</var>, <var>values[n]</var>} elements where 0&leq;n&leq; size(<var>keys</var>)
/// and <var>keys[n]</var> is not already associated with a value in the set.
/// </p><p>
/// parameters:
/// <ul>
/// <li>keys: array of keys to be put into the set</li>
/// <li>values: array of values to be put into the set</li>
/// </ul>
/// </p><p>
/// returns:<ul><li>oref referencing the modified set</li></ul>
/// </p><p>
/// throws:<ul><li>exception</li></ul>
/// </p>
Method putAllIfAbsent(key As %Library.DynamicAbstractObject, value As %Library.DynamicArray) As %Library.DynamicAbstractObject
{
}

/// <p>
/// remove the element identified by <var>key</var> from the set
/// </p><p>
/// parameters:
/// <ul><li>key: key of element to be removed from the set</li></ul>
/// </p><p>
/// returns:<ul><li>the removed element or null if that element doesn't exist</li></ul>
/// </p><p>
/// throws:<ul><li>exception</li></ul>
/// </p>
Method remove(key As %DataType) As %Library.Any [ CodeMode = expression ]
{
}

/// <p>
/// remove all elements identified by <var>keys[n]</var> where 0&leq;n&leq; size(<var>keys</var>) from the set
/// </p><p>
/// parameters:
/// <ul><li>keys: array of keys to be removed from the set</li></ul>
/// </p><p>
/// returns:<ul><li>array of removed elements (null element if key doesn't exist)</li></ul>
/// </p><p>
/// throws:<ul><li>exception</li></ul>
/// </p>
Method removeAll(key As %Library.DynamicArray) As %Library.DynamicArray
{
}

/// remove all of the elements matching the <var>expression</var>
/// <p>
/// parameters:
/// <ul><li>expression: elements matching <var>expression</var> are to be removed</li></ul>
/// </p><p>
/// returns:<ul><li>array of removed elements (null element if key doesn't exist)</li></ul>
/// </p><p>
/// throws:<ul><li>exception</li></ul>
/// </p>
Method removeIf(expression As %RawString) As %Library.DynamicArray [ Abstract ]
{
}

/// replace the key of the element identified by <var>currentKey</var> with <var>newKey</var>
/// </p><p>
/// parameters:
/// <ul>
/// <li>currentkey - current key of the element to be renamed</li>
/// <li>newkey - new key to assign to the element</li>
/// </ul>
/// returns:<ul><li>the current key if the element exists, null otherwise</li></ul>
/// </p><p>
/// throws:<ul><li>exception</li></ul>
/// </p>
Method rename(currentkey As %DataType, newkey As %DataType) As %DataType
{
}

/// replace the value of the element identified by <var>key</var> with <var>value</var>
/// </p><p>
/// parameters:
/// <ul>
/// <li>key - key of the element to be replaced</li>
/// <li>value - new value of the element</li>
/// </ul>
/// returns:<ul><li>return the previous value of the element</li></ul>
/// </p><p>
/// throws:<ul><li>exception</li></ul>
/// </p>
Method replace(key As %DataType, value As %Library.Any) As %Library.Any
{
}

/// replace all {<var>keys[n]</var>, <var>values[n]</var>} members, return an array containing the replaced values
/// </p><p>
/// parameters:
/// <ul>
/// <li>keys: array of keys of the elements to be replaced</li>
/// <li>values: array of values of the elements</li>
/// </ul>
/// </p><p>
/// returns:<ul><li>array of previous element values</li></ul>
/// </p><p>
/// throws:<ul><li>exception</li></ul>
/// </p>
Method replaceAll(key As %Library.DynamicArray, value As %Library.DynamicArray) As %Library.DynamicArray
{
}

/// return the number of elements in the current set
Method size() As %Integer [ CodeMode = call ]
{
}

/// The toString() method returns the contents of a set as a string.
/// <p>
Method toString() As %String [ CodeMode = expression ]
{
}

Method %OnClose() As %Status
{
}

/// Find out the type of value.
/// <p><b>Returns</b> One of the following strings are returned.
/// <br> "null"                  - JSON null
/// <br> "boolean"               - Either "true" or "false"
/// <br> "number"                - Any numeric value
/// <br> "oref"                  - An %ObjectHandle (an ObjectScript oref)
/// <br> "object"                - A nested object
/// <br> "array"                 - A nested array
/// <br> "string"                - Normal text string
/// <br> "unassigned"            - The value is unassigned
///
Method %GetTypeOf(key As %DataType) As %String
{
}

/// Find the size of an %DynamicArray or a %DynamicObject.
/// <p>
/// <b>Returns</b> An integer showing the size of the array or object. In the
/// case of an array, the size includes unassigned entries within the array.  In
/// the case of an object, the size only includes elements that have assigned
/// values.
Method %Size() As %Integer
{
}

/// Given a JSON source, parse the source and return an object of type
/// <class>%DynamicAbstractObject</class>. If an error occurs during parsing,
/// an exception will be thrown.
/// <p><b>str</b> The input can be from a number of sources
/// <p>
///    (1) A string value containing the source.
/// <br>
///    (2) A stream object to read the source from.
/// <p>
/// <b>Returns</b> An object of type %DynamicAbstractObject containing the
/// parsed JSON.
/// <p>
/// <b>NOTE:</b> RFC 7159 specifies that the default encoding for JSON values
/// uses UTF-8.  This implies
/// that for streams not containing 16-bit Unicode it <i>may</i>
/// be necessary to explicitly convert individual character values via a call to
/// $ZCONVERT (e.g. $zcvt(value,"I","UTF8") ) or entire streams by setting
/// the TranslateTable attribute of the stream to "UTF8".
/// <EXAMPLE>
///
///    set filename = "c:/iscsrc/json/greg4.json"
///    set stream = ##class(%Stream.FileCharacter).%New()
///    set sc = stream.LinkToFile(filename)
///    if ('sc) { w "Error on linking file "_filename,!   q }
///    try {
///        set obj = ##class(%DynamicAbstractObject).%FromJSON(stream)
///    } catch ex {
///        w "Error. Unable to parse file "_filename,!
///        w "Error type   "_ex.Name,!
///        w "Error code   "_ex.Code,!
///        w "Error location "_ex.Location,!
///        set obj = ""
///    }
///    q obj
/// </EXAMPLE>
/// <p>
/// <EXAMPLE>
///    set src = "{""name"" : ""greg"", ""weight"" : 220 }"
///    set obj = ##class(%DynamicAbstractObject).%FromJSON(src)
/// </EXAMPLE>
/// <p>
/// An alternative in the catch block, to see formatted exception information, is
/// to do $SYSTEM.OBJ.DisplayError(%objlasterror).
ClassMethod %FromJSON(str As %RawString) As %DynamicAbstractObject
{
}

/// Given a filename, parse the contents and return an object of type
/// <class>%DynamicAbstractObject</class>. If an error occurs during parsing,
/// an exception will be thrown. See the example in <method>%FromJSON</method>
/// for how to handle an exception.
/// <p><b>filename</b>
/// A file URI where the JSON source can be read. By default, the file must be
/// encoded as UTF8.
/// <p><b>TranslateTable</b> An optional parameter specifying the character encoding
/// used in the JSON source file.  If the parameter is missing, the file will use
/// the "UTF8" encoding.  See <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=LANDING+TRANSLATETABLES">Translation Tables</a>
/// for other available Translation Tables.
/// <p><b>Returns</b> An object of type %DynamicAbstractObject containing the parsed JSON.
ClassMethod %FromJSONFile(filename As %RawString, TranslateTable As %String = "UTF8") As %DynamicAbstractObject
{
}

/// INTERNAL ONLY!
/// <br><p>
/// The %FromJSONStats(...) method is for internal use only.  The
/// actions taken by this method may change in the future as additional
/// capabilities are added to %DynamicAbstractObject class objects.
///
ClassMethod %FromJSONStats(str As %RawString, stats As %RawString) As %DynamicAbstractObject [ Internal ]
{
}

/// Convert a %DynamicAbstractObject into a JSON string.
/// <p>
/// <b>outstrm</b> is optional. There are a number of possibilities:
/// <br>(1) Parameter <b>outstrm</b> is not defined and the method is called via
/// 'DO'. In this case the JSON string is written to the current output device.
/// <br>(2) Parameter <b>outstrm</b> is not defined and the method is called as an
/// expression. In this case the JSON string becomes the value of the expression.
/// <br>(3) Parameter <b>outstrm</b> is defined. If it is %Stream object then the
/// JSON string will be written to the stream. If <var>outstrm</var> is
/// present but not an object then it is presumed to be a fully qualified
/// file specification. In that case, a <class>%Stream.FileCharacter</class>
/// stream is created, linked to that file
/// and the JSON string is written to that stream. On completion, this
/// stream is saved. The full path to the file must be defined. If
/// <var>outstrm</var> is an object but is not
/// an instance of %Stream.Object then an exception will be thrown.
/// <p>
/// <b>NOTE:</b> RFC 7159 specifies that the default encoding for JSON values
/// uses UTF-8.  When writing a stream containing 8-bit characters this implies
/// that it <i>may</i>
/// be necessary to explicitly convert individual values via a call to
/// $ZCONVERT (e.g. $zcvt(value,"O","UTF8") ) or entire streams by setting
/// the TranslateTable attribute of the stream to "UTF8"
/// <EXAMPLE>
/// set obj = {"title" : "MR" , "lastname" : "JONES"}
/// set obj.firstname = "JIMMY"
/// do obj.%ToJSON()
///     {"title":"MR","lastname":"JONES","firstname":"JIMMY"}
/// set source = obj.%ToJSON()
/// write source
///     {"title":"MR","lastname":"JONES","firstname":"JIMMY"}
/// </EXAMPLE>
///
Method %ToJSON(outstrm As %Stream.Object) As %String
{
}

/// This method is for INTERNAL USE only.  It's specifications will change in
/// the future.
/// <p>
/// Convert the Packed Vector Array binary representation (PVA
/// representation) stored in a global array into a tree of class objects
/// defined the %DynamicAbstractObject subclasses.  The subclass of
/// objects from the $DynamicAbstractObject classes will be abbreviated as
/// the %DAO objects.  The PVA binary representation can be created by executing
/// <br>  DO DynObj.%ToPVA(Global)
/// <p>
/// The conversion can be done by evaluating:
/// <br>  SET dao=##class(%DynamicAbstractObject).%FromPFA(Global)
/// which sets the local variable 'dao' to be a reference of the root of
/// a tree of %DAOs described in the global array 'Global'.
/// <p>
/// <b>Global</b> is the $NAME representation of the root of a global subtree.
/// <p>
/// If you execute
/// <br>SET dao=##class(%DynamicAbstractObject).%FromPVA("^Docs(""alpha"",""book1"")")
/// <br>or execute
/// <br>SET dao=##class(%DynamicAbstractObject).%FromPVA($NAME(^Docs("alpha","book1"))
/// <br>then the binary PVA will be extracted from the data under the global
/// ^Docs(alpha,book1).
/// <p>
/// In the future the %FromPVA(Stream,Global) will accept PVA binary data
/// from a %Stream and will distribute it into the 'Global' array entry.
///
ClassMethod %FromPVA(Global As %String) As %DynamicAbstractObject [ Internal ]
{
}

/// This method is for INTERNAL USE only.  It's specifications will change in
/// the future.
/// <p>
/// Convert an object of the %DynamicAbstractObject subclass into the binary
/// Packed Vector Array representation which will be stored into global tree
/// by executing DO DynObj.%ToPVA(Global).
/// <p>
/// <b>Global</b> is the $NAME representation of the root of a global subtree.
/// <p>
/// If you execute DO DynObj.%ToPVA("^Docs(""alpha"",""book1"")")
/// <br> or execute DO DynObj.%ToPVA($NAME(^Docs("alpha","book1"))
/// <br>
/// then binary data will be created under ^Docs(alpha,book1).
/// <p>
/// The preexisting data at ^Docs(alpha,book1) will be KILL-ed.
/// <p>The newly created data
/// will look like: ^Docs(alpha,book1,0,0),...,^Docs(alpha,book1,0,N0-1)
/// where the binary data is broken in 'N0' chunks of binary strings.  The
/// binary strings always contain 8-bit binary bytes, even on Unicode
/// instances of IRIS.  Complicated %DynamicAbstractObject objects may
/// also generate additional subtrees of the form ^Docs(alpha,book1,1,0),
/// ..., ^Docs(alpha,book1,1,N1-1) where additional binary data is broken
/// into 'N1' chunks of binary strings.  And %ToPVA may need to generate
/// additional chunks, like ^Docs(alpha,book1,i,j), when the necessary.
/// These additional chunks are created to simplify generation and
/// retrieval of the binary Packed Vector Array data.
///
Method %ToPVA(Global As %String) As %Status [ Internal ]
{
}

/// The parameter 'value' must be a %Stream.  The contents of 'value' will be
/// placed in a <class>%DynamicString</class>, <class>%DynamicBinary</class>
/// or <class>%DynamicBase64</class> object.
/// <p>
/// <b>Returns</b> The generated <class>%DynamicString</class>,
/// <class>%DynamicBinary</class> or <class>%DynamicBase64</class> object.
///
Method ConvertStreamToValue(value) As %DynamicAbstractObject [ Internal, Private ]
{
}

Method %GetObjectType() As %Integer [ Internal ]
{
}

/// <p>
/// Performs an iteration over all the values in a %DynamicAbstractObject
/// subclass.  Adding or removing an element of the %DynamicAbstractObject subclass
/// will cause further calls on the %GetNext(.key,.value,.type) method to have
/// undefined behavior.
/// <p>
/// In the example below, we will output all values contained in a
/// <class>%DynamicArray</class> or a <class>%DynamicObject</class>.
/// <EXAMPLE>
///    set iter = AbstractObject.%GetIterator()
///    while iter.%GetNext(.key, .value, .type ) {
///       write "key = "_key_", value = "_value_", type = "_type,!
///    }
/// </EXAMPLE>
/// See the descriptions of the <method class="%Iterator.AbstractIterator">%GetNext</method> in the <class>%Iterator.Array</class> and <class>%Iterator.Object</class> classes for more details.
Method %GetIterator() As %Iterator.AbstractIterator [ Abstract ]
{
}

/// INTERNAL USE ONLY.
/// <br><p>
/// The ToZWrite() method is for internal use only.  It
/// provides output for the ZWRITE command.  It returns the contents of a
/// %DynamicAbstractObject as a %String using combined JSON/%String
/// syntax.
/// <p>
/// <EXAMPLE>
/// set obj = {"NaNvalue" : ($DOUBLE("NAN")), "Infinity":($DOUBLE("Inf"))}
/// write obj.ToZWrite()
/// </EXAMPLE>
///
Method ToZWrite() As %String [ Internal ]
{
}

/// INTERNAL ONLY!
/// <br><p>
/// The <b>%SetKeyMap(keymap)</b> method is for internal use only.  The
/// actions taken by this method may change in the future as additional
/// capabilities are added to <class>%DynamicAbstractObject</class> class objects.
/// <p>
/// The statement <b>SET count=dao.%SetKeyMap(dkm)</b> will attach the
/// <class>%DynamicKeyMap</class> <b>dkm</b> to the
/// <class>%DynamicAbstractObject</class> <b>dao</b>, replacing
/// the key map that was previously attached to <b>dao</b>.  If <b>dao</b> is a
/// <class>%DynamicObject</class> then its internal key index array will be
/// modified to use the <b>dkm</b> <class>%DynamicKeyMap</class>.  If necessary,
/// additional key names will be added
/// to the <b>dkm</b> key map.  The <b>count</b> value returned by the
/// <b>%SetKeyMap(dkm)</b>
/// call is a count of the number of the key name strings added to the <b>dkm</b>
/// key map.  If the <b>dkm</b> key map is not modified by <b>%SetKeyMap</b>
/// then the value zero is returned.
/// <p>
/// <b>dkm</b> is the <class>%DynamicKeyMap</class> to replace the key map currently
/// used by the <class>%DynamicAbstractObject</class>.
/// <p>
/// <b>flags</b> is optional.  When present it is a bit encoded integer of flag
/// values.  The 0x1 bit clears the key map value used by a
/// <class>%DynamicArray</class>.  The
/// 0x2 bit clears the key map values used by a <class>%DynamicObject</class> <b>BUT</b> the key
/// index arrays of the <class>%DynamicObject<class> are modified to conform
/// to the new <b>dkm</b> key map ordering.
/// <p>
/// <b>Returns</b> The count of the number of key name strings added to the
/// <b>dkm</b> key map.
///
Method %SetKeyMap(keymap As %DynamicKeyMap, flags = 0) As %Integer [ Internal ]
{
}

/// INTERNAL ONLY!
/// <br><p>
/// The <b>%SetKeyMapRecursive(keymap)</b> method is for internal use only.  The
/// actions taken by this method may change in the future as additional
/// capabilities are added to <class>%DynamicAbstractObject</class> class objects.
/// <p>
/// The statement <b>SET count=dao.%SetKeyMapRecursive(dkm)</b>
/// will attach the <class>%DynamicKeyMap</class> <b>dkm</b> to the
/// <class>%DynamicAbstractObject</class> <b>dao</b>
/// and to all decendant <class>%DynamicAbstractObject</class>-s in the tree
/// rooted at <b>dao</b>.
/// Every <class>%DynamicObject</class> in the tree rooted at <b>dao</b>
/// will have its internal key index array modified to use
/// the <b>dkm</b> <class>%DynamicKeyMap</class>.  If necessary, additional
/// key names will be added
/// to the <b>dkm</b> key map.  The <b>count</b> value returned by the
/// <b>%SetKeyMap(dkm)</b> method
/// call is a count of the number of the key name strings added to the <b>dkm</b>
/// key map.  If the <b>dkm</b> key map is not modified by
/// <b>%SetKeyMapRecursive</b> then the value zero is returned.
/// <p>
/// <b>dkm</b> is the <class>%DynamicKeyMap</class> to replace the key maps
/// currently used by the <class>%DynamicAbstractObject</class>-s in the
/// tree rooted at <b>dao</b>.
/// <p>
/// <b>flags</b> is optional.  When present it is a bit encoded integer of flag
/// values.  The 0x1 bit clears the key map value used by any
/// <class>%DynamicArray</class> in the tree of
/// <class>%DynamicAbstractObject</class>-s.  The
/// 0x2 bit clears the key map value used by any <class>%DynamicObject</class>
/// in the tree of <class>%DynamicAbstractObject</class>-s, <b>BUT</b> the key
/// index arrays of the <class>%DynamicObject</class> are modified to conform to
/// the new <b>dkm</b> key map ordering.
/// <p>
/// <b>Returns</b> The count of the number of key name strings added to the
/// <b>dkm</b> key map.
///
Method %SetKeyMapRecursive(keymap As %DynamicKeyMap, flags = 0) As %Integer [ Internal ]
{
}

/// INTERNAL ONLY!
/// <br><p>
/// The <method>%GetKeyMap</method>() method is for internal use only.
/// It returns a reference to the <class>%DynamicKeyMap</class> associated with
/// a <class>%DynamicAbstractObject</class>.
/// The formats and semantics of a key map are known only to the routines
/// and methods that implement the <class>%DynamicAbstractObject</class> class
/// and its subclasses.  These formats, semantics, routines and methods may change
/// in the future as additional capabilities are added to
/// <class>%DynamicAbstractObject</class> class objects.
/// <p>
/// The <class>%GetKeyMap</class>() method returns a reference to the
/// <class>%DynamicKeyMap</class>
/// used by the <class>%DynamicArray</class> or <class>%DynamicObject</class>.
/// Adding additional key names to this key map will also affect the key map
/// currently attached to the <class>%DynamicAbstractObject</class>, and vice
/// versa.  If a <class>%DynamicArray</class> or <class>%DynamicObject</class>
/// has no associated key map then <method>%GetKeyMap</method>() returns
/// the empty string.
/// <p>
/// Most <class>%DynamicObject</class> class objects have a KeyMap attached.  When
/// a <class>%DynamicObject</class> is created by the <method>%FromJSON</method>
/// method, abd when there are other <class>%DynamicObject</class>-s created in
/// the same <method>%FromJSON</method> call then all those
/// <class>%DynamicObject</class>-s will share the same KeyMap.
/// A <class>%DynamicArray</class> created by the <method>%FromJSON</method> method
/// may also have a shared KeyMap attached if there was a
/// <class>%DynamicObject</class> created in the same <class>%FromJSON</class>
/// method call.
///
Method %GetKeyMap() As %DynamicKeyMap [ Internal ]
{
}

Method %GetSwizzleObject(force As %Integer = 0, ByRef oid As %ObjectIdentity) As %Status [ ServerOnly = 1 ]
{
}

Method %GetSerial(force As %Integer = 0) As %String [ CodeMode = expression, ServerOnly = 1 ]
{
}

ClassMethod %SetSerial(val As %String) As %Status [ CodeMode = expression, ServerOnly = 1 ]
{
}

Method %SetDocumentMetadata(documentID As %RawString, documentVersion As %Integer, collectionName As %String(MAXLEN=""), localID As %Integer(MINVALUE=1) = "")
{
}

Method %GetDocumentCollection() As %RawString
{
}

Method getDocumentCollection() As %RawString [ CodeMode = call ]
{
}

Method getDocumentId() As %RawString [ CodeMode = call ]
{
}

Method toJson(outstrm As %Stream.Object) As %RawString [ CodeMode = call ]
{
}

Method getDocumentVersion() As %Integer [ CodeMode = call ]
{
}

Method %GetDocumentID() As %RawString
{
}

Method %GetDocumentLID() As %RawString [ Internal ]
{
}

Method %GetDocumentVersion() As %Integer
{
}

Method %GetDocumentMetadata(Output documentID As %RawString, Output documentVersion As %Integer, Output collectionName As %String(MAXLEN=""), Output localID As %Integer(MINVALUE=1) = "") [ Internal ]
{
}

Method %SetDocumentCollection(collection As %RawString) [ Internal ]
{
}

Method %SetDocumentID(documentID As %RawString) [ Internal ]
{
}

Method %SetDocumentLID(localID As %RawString) [ Internal ]
{
}

Method %SetDocumentVersion(version As %Integer) [ Internal ]
{
}

Method %SetMetadata(key As %DataType, value As %RawString) [ Internal ]
{
}

Method %GetMetadata(key As %DataType) As %RawString [ Internal ]
{
}

/// INTERNAL ONLY!
/// <br>
/// <p>
/// $toPVA() serializes an AbstractObject instance into a packed vector array. The key names can be optionally included, excluded or only the key names
/// included (no data). The form of the packed vector array is not public and the only way to access data serialized as PVA is to extract it from the
/// PVA using $<method>fromPVA</method>.
/// </p>
/// <p>
/// This method accepts two arguments. The first is the name of the reference where the PVA will be placed. That reference can be
/// a local variable expression or a global variable expression. Typically, this is produced using the $Name function.
/// <br>
/// <pre>
/// USER>set obj = {"name":"test PVA","stuff":"misc"}
/// USER>set id = 6 do obj.$toPVA($Name(mypva(id)))
/// USER>zw mypva
/// mypva(6,1)=<data is encoded as a byte array>
/// </pre>
/// <p>
/// The above example is using a local variable but it could be a global reference, simply place the '^' in front of the variable name.
/// </p>
/// <p>
/// The encoding of the data is proprietary and direct access is not supported.
/// </p>
/// <p>
/// The second argument, <var>options</var>, is used to control whether or not the key names are included in the packed vector array.
/// <p>    0x00 - do not include the key names, only include data </p>
/// <p>    0x01 - include the key names and the data </p>
/// <p>    0x02 - means this is the key map being dumped.</p>
/// <p>
/// If the key name map is not included in the packed vector array (options = 1) then the key names cannot be recovered when extracting the
/// contents of the packed vector array. Normally the key name map would be supplied as a separate argument passed to $<method>fromPVA</method>() in that case.
/// </p>
/// <p>
/// This function returns the length of the packed vector.
/// </p>
Method toPVA(gloref, options = 0) As %Integer [ Internal ]
{
}

/// INTERNAL ONLY!
/// <br>
/// <p>
/// fromPVA() extracts the contents of a packed vector array (PVA) into an instance AbstractObject. The form of the packed vector array is
/// not public and the only way to construct a PVA is to invoke $<method>toPVA</method>.
/// This method accepts two arguments. The first is the name of the variable where the PVA is located. That reference can be
/// a local variable expression or a global variable expression. Typically, this is produced using the $Name function.
/// The optional second argument is the key name map. If the packed vector array contained in the reference passed as the first argument
/// includes the key name map then the key name map does not need to be passed as a separate argument. If the packed vector array does not
/// contain the key name map then it must be supplied. The key name map is expected to be an instance of
/// <class>%Library.Array</class>. The key name map can be extracted from a packed vector array or it can be retrieved by invoking
/// $<method>getKeyNameMap</method>. To serialize the key name map as a packed vector array, refer to $<method>toPVA</method>.
/// <br>
/// <pre>
/// USER>k
/// USER>set obj = {"name":"test PVA","stuff":"misc"}
/// USER>set id = 6 do obj.$toPVA($Name(mypva(id)),$zh("1"))
/// USER>set obj2 = ##class(%Library.AbstractObject).$fromPVA($Name(mypva(id)))
/// USER>write obj2.$toJSON()
/// {"name":"test PVA","stuff":"misc"}
/// </pre>
/// <br>
/// <p>
/// The encoding of the data is proprietary and direct access is not supported.
/// </p>
/// <p>
/// The above example is using a local variable but it could be a global reference, simply place the '^' in front of the variable name.
/// </p>
ClassMethod fromPVA(gloref As %RawString, keymap = "") As %Library.DynamicAbstractObject [ Internal ]
{
}

///             Remove all the data from the dynamic object, leaving a blank object intact.
///             return $this to allow chaining.
Method %Clear() As %Library.DynamicAbstractObject
{
}

Method %Clone() As %DynamicAbstractObject [ Internal ]
{
}

/// %FromOref() will return an instance of %DynamicAbstractObject populated from the <var>source</var> object.
/// <h4>request object</h4>
/// <p>
/// <table border="1" title="Request">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>source</td>
/// 		<td>Oref of the object to be cast as a DynamicAbstractObject.</td>
/// 	</tr>
/// 	<tr>
/// 		<td>returnValue</td>
/// 		<td>An oref referencing the DynamicAbstractObject.</td>
/// 	</tr>
/// </table>
/// <br>
/// <pre>
/// set person = ##class(Sample.Person).%OpenId(50)
/// set object = ##class(%DynamicObject).%FromOref(person)
/// </pre>
/// </p>
ClassMethod %FromOref(source As %Library.AbstractSet) As %DynamicAbstractObject
{
}

ClassMethod %FromObject(source As %Any) As %DynamicAbstractObject
{
}

ClassMethod %FromObjectSwizzle(oref As %Any, property As %String) As %DynamicAbstractObject
{
}

ClassMethod %FromObjectMulti(oref As %Any, property As %String) As %DynamicAbstractObject
{
}

ClassMethod addList(type, ByRef json, ByRef source)
{
}

///             @Override
Method "_isLabeled"() As %Boolean [ CodeMode = expression ]
{
}

}
