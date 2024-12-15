/// <p>
/// This class implements the primary set of functions IRIS Native API for Object Script. The only other members
/// of the IRIS Native API that are not implemented by this class are implemented by <class>%Net.DB.DataSource</class> and
/// <class>%Net.DB.Connection</class>. This class should never be instantiated directly. The proper way to instantiate this class
/// is to invoke the CreateIris() method using an instance of <class>%Net.DB.Connection</class>.
/// </p>
/// <p>
/// </p>
Class %Net.DB.Iris Extends %RegisteredObject [ Final ]
{

/// <p>
/// Return the value of a global array node. The global array node reference is defined by a <var>globalName</var> and a variable number of <var>subscripts</var>.
/// </p>
/// <p>
/// This method throws an exception if the global array node is not defined.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>globalName</td>
/// 			<td>input</td>
/// 			<td>The name of the global array. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>subscripts</td>
/// 			<td>input...</td>
/// 			<td>The subscripts to the global named by the first parameter. Together with the global name they form the full global reference. </td>
/// 		</tr>
/// 		<tr>
/// 			<td></td>
/// 			<td>return</td>
/// 			<td>The value of the global array node. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method Get(globalName As %String(MAXLEN=220), subscripts...) As %RawString
{
}

/// <p>
/// Return the boolean value of a global array node. The global array node reference is defined by a <var>globalName</var> and a variable number of <var>subscripts</var>.
/// </p>
/// <p>
/// This method throws an exception if the global array node is not defined.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>globalName</td>
/// 			<td>input</td>
/// 			<td>The name of the global array. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>subscripts</td>
/// 			<td>input...</td>
/// 			<td>The subscripts to the global named by the first parameter. Together with the global name they form the full global reference. </td>
/// 		</tr>
/// 		<tr>
/// 			<td></td>
/// 			<td>return</td>
/// 			<td>The value of the global array node. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method GetBoolean(globalName As %String(MAXLEN=220), subscripts...) As %Boolean [ CodeMode = expression ]
{
}

/// <p>
/// Iterates to the next subscript in the $ORDER sense and returns the subscript, the value or both based on returnSubscript and returnValue flags.
/// The global array node reference is defined by a <var>globalName</var> and a variable number of <var>subscripts</var>.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>returnSubscript</td>
/// 			<td>input</td>
/// 			<td>If true, the value of the subscript is returned, defaults to 1 (true). </td>
/// 		</tr>
/// 		<tr>
/// 			<td>returnValue</td>
/// 			<td>input</td>
/// 			<td>If true, the value of the global array node at the position defined by <var>subscripts...</var> is returned, defaults to 0 (false). </td>
/// 		</tr>
/// 		<tr>
/// 			<td>isReveresed</td>
/// 			<td>input</td>
/// 			<td>If true, the iteration is in reverse order, defaults to 0 (forward). </td>
/// 		</tr>
/// 		<tr>
/// 			<td>globalName</td>
/// 			<td>input</td>
/// 			<td>The name of the global array. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>subscripts</td>
/// 			<td>input...</td>
/// 			<td>The subscripts to the global named by the first parameter. Together with the global name they form the full global reference. </td>
/// 		</tr>
/// 		<tr>
/// 			<td></td>
/// 			<td>return</td>
/// 			<td>
/// 				The subscript and/or value of the global array node at the position defined by $order of the <var>subscripts...</var>. If both the
/// 				value and the subscript are returned then a $list with the subscript in element position 1 and the value in element position 2 is returned.
/// 				If the $order advances to the end and there are no further subscripts defined then the return value is null.
/// 		 	</td>
/// 		</tr>
/// 	</table>
/// </p>
Method GetNext(returnSubscript As %Boolean = 1, returnValue As %Boolean = 0, isReversed As %Boolean = 0, globalName As %String(MAXLEN=220), subscripts...) As %RawString
{
}

/// <p>
/// Set the value of a global array node. The global array node reference is defined by a <var>globalName</var> and a variable number of <var>subscripts</var>.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>value</td>
/// 			<td>input</td>
/// 			<td>The value to be stored. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>globalName</td>
/// 			<td>input</td>
/// 			<td>The name of the global array. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>subscripts</td>
/// 			<td>input...</td>
/// 			<td>The subscripts to the global named by the first parameter. Together with the global name they form the full global reference. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method Set(value As %RawString, globalName As %String(MAXLEN=220), subscripts...) As %RawString
{
}

/// <p>
/// Kill the value of a global array node, including any descendants.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>globalName</td>
/// 			<td>input</td>
/// 			<td>The name of the global array. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>subscripts</td>
/// 			<td>input...</td>
/// 			<td>The subscripts to the global named by the first parameter. Together with the global name they form the full global reference. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method Kill(globalName As %String(MAXLEN=220), subscripts...)
{
}

/// <p>
/// Increments a global node by the given integer value. Returns the new value of the node.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>value</td>
/// 			<td>input</td>
/// 			<td>The value by which to increment the global array node. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>globalName</td>
/// 			<td>input</td>
/// 			<td>The name of the global array. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>subscripts</td>
/// 			<td>input...</td>
/// 			<td>The subscripts to the global named by the first parameter. Together with the global name they form the full global reference. </td>
/// 		</tr>
/// 		<tr>
/// 			<td></td>
/// 			<td>return</td>
/// 			<td>The value of the global array node after incremented it by <var>value</var>. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method Increment(value, globalName As %String(MAXLEN=220), subscripts...) As %Integer
{
}

/// <p>
/// Checks if a a global contains data ($DATA).
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>globalName</td>
/// 			<td>input</td>
/// 			<td>The name of the global array. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>subscripts</td>
/// 			<td>input...</td>
/// 			<td>The subscripts to the global named by the first parameter. Together with the global name they form the full global reference. </td>
/// 		</tr>
/// 		<tr>
/// 			<td></td>
/// 			<td>return</td>
/// 			<td>0 if the node is undefined, 1 if the global node exists and contains data, 10 if it's an array element that has descendants, 11 has data and descendants. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method IsDefined(globalName As %String(MAXLEN=220), subscripts...) As %Integer
{
}

/// <p>
/// Calls a class method, passing zero or more arguments and returning the method's return value.
/// Trailing arguments may be omitted, causing default values to be used for those arguments.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>className</td>
/// 			<td>input</td>
/// 			<td>The name of the class that implements the method to be called. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>methodName</td>
/// 			<td>input</td>
/// 			<td>The name of the method to be called. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>args</td>
/// 			<td>input...</td>
/// 			<td>The arguments to be passed to the method. </td>
/// 		</tr>
/// 		<tr>
/// 			<td></td>
/// 			<td>return</td>
/// 			<td>The value returned by the <var>methodName</var> method. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method ClassMethodValue(className, methodName, args...) As %RawString
{
}

/// <p>
/// Calls a class method with no return value, passing zero or more arguments.
/// Trailing arguments may be omitted, causing default values to be used for those arguments.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>className</td>
/// 			<td>input</td>
/// 			<td>The name of the class that implements the method to be called. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>methodName</td>
/// 			<td>input</td>
/// 			<td>The name of the method to be called. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>args</td>
/// 			<td>input...</td>
/// 			<td>The arguments to be passed to the method. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method ClassMethodVoid(className, methodName, args...)
{
}

/// <p>
/// Calls a function (label^routine), passing zero or more arguments and returning the function's return value.
/// Trailing arguments may be omitted, causing default values to be used for those arguments.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>routineName</td>
/// 			<td>input</td>
/// 			<td>The name of the routine that implements the function to be called. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>functionName</td>
/// 			<td>input</td>
/// 			<td>The name of the function to be invoked. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>args</td>
/// 			<td>input...</td>
/// 			<td>The arguments to be passed to the method. </td>
/// 		</tr>
/// 		<tr>
/// 			<td></td>
/// 			<td>return</td>
/// 			<td>The value returned by the <var>functionName</var> function. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method Function(routineName, functionName, args...) As %RawString
{
}

/// <p>
/// Calls a procedure (label^routine) with no return value, passing zero or more arguments.
/// Trailing arguments may be omitted, causing default values to be used for those arguments.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 		<tr>
/// 			<td>routineName</td>
/// 			<td>input</td>
/// 			<td>The name of the routine that implements the function to be called. </td>
/// 		</tr>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>functionName</td>
/// 			<td>input</td>
/// 			<td>The name of the function to be invoked. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>args</td>
/// 			<td>input...</td>
/// 			<td>The arguments to be passed to the method. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method Procedure(routineName, procedureName, args...)
{
}

/// <p>
/// Lock the global node, returns true on success.
/// Note that this method performs an incremental lock and not the implicit unlock before lock feature that is also offered in COS.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>lockMode</td>
/// 			<td>input</td>
/// 			<td>A combination of the following chars, S for shared lock, E for escalating lock, default is empty string (exclusive and non-escalating). </td>
/// 		</tr>
/// 		<tr>
/// 			<td>timeout</td>
/// 			<td>input</td>
/// 			<td>The number of seconds to wait to acquire the lock. -1 means infinite (no) timeout. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>globalName</td>
/// 			<td>input</td>
/// 			<td>The name of the global array. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>subscripts</td>
/// 			<td>input...</td>
/// 			<td>The subscripts to the global named by the first parameter. Together with the global name they form the full global reference. </td>
/// 		</tr>
/// 		<tr>
/// 			<td></td>
/// 			<td>return</td>
/// 			<td>1 (true) if the lock is successfully acquired. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method Lock(lockMode, timeout, globalName As %String(MAXLEN=220), subscripts...) As %Boolean
{
}

/// <p>
/// Unlock the global node.
/// Note that this method performs an incremental unlock and not the implicit unlock before lock feature that is also offered in COS.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>lockMode</td>
/// 			<td>input</td>
/// 			<td>
/// 				A combination of the following chars, S for shared lock, E for escalating lock, I for immediate unlock, D for deferred unlock.
/// 				default is empty string (exclusive and non-escalating).
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>globalName</td>
/// 			<td>input</td>
/// 			<td>The name of the global array. </td>
/// 		</tr>
/// 		<tr>
/// 			<td>subscripts</td>
/// 			<td>input...</td>
/// 			<td>The subscripts to the global named by the first parameter. Together with the global name they form the full global reference. </td>
/// 		</tr>
/// 	</table>
/// </p>
Method Unlock(lockMode, globalName As %String(MAXLEN=220), subscripts...)
{
}

/// <p>
/// Release all locks associated with the session.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
Method ReleaseAllLocks() As %Status
{
}

/// <p>
/// Start/open a transaction.
/// This is equivalent to executing TSTART in a InterSystems IRIS terminal.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
Method TStart()
{
}

/// <p>
/// Commit the current transaction.
/// This is equivalent to executing TCOMMIT in a InterSystems IRIS terminal.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
Method TCommit() As %Status
{
}

/// <p>
/// Roll back all open transactions in the session.
/// This is equivalent to executing TROLLBACK in a InterSystems IRIS terminal.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
Method TRollback()
{
}

/// <p>
/// Roll back the current level transaction only.
/// If this is a nested transaction, any higher-level transactions will not be rolled back.
/// This is equivalent to executing TROLLBACK 1 in a InterSystems IRIS terminal.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
Method TRollbackOne()
{
}

/// <p>
/// Get the level of the current nested transaction.
/// Returns 1 if there is only a single transaction open. Returns 0 if there are no transactions open.
/// This is equivalent to fetching the value of the $TLEVEL special variable.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
Method GetTLevel() As %Integer
{
}

/// </p>
/// GetObject returns an object from the connected data source. This method accepts the name of the persistent
/// class in the remote IRIS namespace and the ID of the requested object. The return value is an instance
/// of <class>%Library.DynamicAbstractObject</class>. All properties defined in the requested class will be
/// present in the result object except streams and relationships are not yet supported. The remote class must have
/// a unified schema defined. Any properties whose type class is a subclass of <class>%Library.SerialObject</class>
/// must also have a defined unified schema. Unified schemas are instances of <class>%FOI.Schema</class>.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
Method GetObject(className As %String(MAXLEN=220) = "", id) As %Library.DynamicAbstractObject
{
}

/// <p>
/// %FOI.Schema instances are specific to a connection - url, port, and namespace. Remote schemas are cached by the Connection instance (client? or is that a bad word?).
/// The cache only lasts as long as the Connection instance.
/// </p>
/// <p>
/// There are no checks for stale cache entries at this time.
/// </p>
/// <p>
/// If a schema for the requested class or any of the embedded properties defined by that class does not exist then an exception is thrown. There is no database first
/// feature implemented yet.
/// </p>
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
Method GetSchema(schemaName As %String(MAXLEN=220)) As %Library.DynamicAbstractObject
{
}

/// %FOI.Schema instances are specific to a connection - url, port, and namespace. Remote schemas are cached by the Native instance (client? or is that a bad word?).
/// The cache only lasts as long as the Native instance.
/// </p>
/// <p>
/// This method throws an exception when an error condition is encountered.
/// </p>
Method GetRecordMetadata(schemaName As %String(MAXLEN=220)) As %Library.DynamicAbstractObject
{
}

/// ---- internal schema cache - used by GetObject
Property schemas As %Library.RawString [ Internal, MultiDimensional ];

/// ---- internal context stack - used by GetObject
Property context As %RawString [ Internal, MultiDimensional ];

Property Connection As %Net.DB.Connection [ Internal ];

/// ------------- Constructor, Destructor --------------
/// Note that there is no connect when this instance is created.
/// You have to call Connect on the connection object, not via this class.
Method %OnNew(connection) As %Status [ Internal ]
{
}

/// Note that there is no disconnect when this instance is killed.
/// You have to call Disconnect on the connection object, not via this class.
Method %OnClose() As %Status [ Internal ]
{
}

/// Iterates over all subscripts in the $ORDER sense and produces a $List of rows.
Method GetRows(Output reply, returnSubscripts As %Boolean = 0, returnValues As %Boolean = 1, globalName As %String(MAXLEN=220), subscripts...) As %Status [ Internal ]
{
}

/// Copies an entire global and resurrects it as a local or global variable.
/// The globalName argument is required. It's name of the global on the remote server that you want to copy. It can include the "^" or not.
/// The rootName argument is optional. It's the name of the local or global variable that you want to copy to.
/// 	It must include the "^" to save it in a global, otherwise it will save it in a local variable.
/// 	If you don't pass this argument or pass the empty string, then the global is copied into a global of the same name.
Method CopyGlobal(globalName As %String(MAXLEN=220), rootName = "") As %Status [ Internal ]
{
}

/// ------------- Debug Methods -------------
/// The new $system.IO protocol now uses the same 14-byte header as the old $zobjexport protocol.
/// So the DBSRV routine will delegate to $system.IS.Execute accordingly depending on the opcode value,
/// and we no longer need a separate message just to stop/exit the $system.IO kernel-level loop.
/// The method is left here just in case it becomes useful in future debugging to be able to explicitly break out of the kernel-level loop.
Method StopSYSIO() As %Status [ Internal, Private ]
{
}

Method flushContext() [ Internal, Private ]
{
}

Method pushContext(schemaname) [ Internal, Private ]
{
}

Method popContext() As %RawString [ Internal, Private ]
{
}

/// outermost deserializer for an IRIS Object. Accepts global reference and subscripts. This method iterates over fields and
/// retrieves data from the connection as indicated by the fields in the record metadata. From that point on, all values are
/// extracted from the object's data and dispatched to value deserializers.
/// <var>schema</var> is the record metadata object and it is needed to retrieve named types.
/// Sample test commands:
/// 	set native = ##class(%Net.DB.DataSource).GetConnection(,51774,"DEV","danp","SYS")
/// 	set obj = native.GetObject("Sample.Person",1)
Method deserializeObject(recordmd As %Library.DynamicObject, global As %Library.RawString, ByRef subscripts) As %Library.RawString [ Internal, Private ]
{
}

Method deserializeValue(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]
{
}

Method deserializeLogical(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]
{
}

Method deserializeArray(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]
{
}

Method deserializeMap(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]
{
}

Method deserializeEnum(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]
{
}

/// type here is not record metadata, it is the type category with category = 'named' and name = type name.
/// this method is only ever called with type = {"category":"named","name":<typename>,"namespace":<typenamespace>}.
/// "namespace" is optional but "name" is not.
/// But, just for completeness, type can be passed as a literal string that is a name.
Method deserializeNamed(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]
{
}

Method deserializeRecord(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.DynamicAbstractObject [ Internal, Private ]
{
}

Method deserializeRecordList(type As %Library.RawString = "", target As %Library.DynamicAbstractObject, list As %Library.RawString) As %Library.DynamicAbstractObject [ Internal, Private ]
{
}

Method getTypeCategory(type As %Library.DynamicAbstractObject) As %Library.DynamicAbstractObject [ Internal, Private ]
{
}

ClassMethod isPrimitive(type As %String) As %Boolean [ CodeMode = expression, Internal, Private ]
{
}

Method isLogicalType(type As %Library.DynamicObject) As %Boolean [ Internal, Private ]
{
}

/// ------------- Low-level Send, Receive Methods -------------
/// Sends the request and reads the reply header.
/// This method uses the connection device and leaves it as the current device.
/// That is, the calling device is Not preserved.
/// Throws exception on error
Method SendRequest(arguments...) [ Internal, Private ]
{
}

}
