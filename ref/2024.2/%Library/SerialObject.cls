/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.SerialObject">Introduction to Serial Objects</a>.</p>
/// The <b>%SerialObject</b> class builds upon the functionality provided by the
/// <CLASS>%RegisteredObject</CLASS> class and gives an object
/// the ability to serialize itself and be embedded within another object.
Class %Library.SerialObject Extends %SwizzleObject [ Abstract, ClassType = serial, NoExtent, SqlCategory = STRING, System = 2 ]
{

/// This parameter specifies the delimiter character used when created a serialized
/// version of the object. If the parameter is set to null string ("") then a length
/// delimited ($List) string is used which can be manipulated using the <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$List</a> functions.
Parameter SERIALDELIMITER;

/// A serial object is converted to a delimited string containing the
/// object's property values when it is projected via ODBC.
/// <var>ODBCDELIMITER</var> is the delimiter character
/// used to construct the delimited string.
Parameter ODBCDELIMITER = ",";

/// 	If true, %ValidateObject will return $$$OK for instances that are null as determined by %IsNull().
/// 	If FALSE (the default), %ValidateObject will perform a full validation on the instance, even if it is
/// 	null. This means that if VALIDIFNULL is TRUE then the property constraint, REQUIRED, can be defined
/// 	without causing failures on null objects. It is important to note that a property with an INITIALEXPRESSION
/// that returns a non-null initial value will cause %IsNull() to return FALSE for a new, otherwise unmodified
/// instance.
Parameter VALIDIFNULL As BOOLEAN = 0;

/// Deletes streams referenced by this object and calls %Delete on any embedded objects
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the optional <var>concurrency</var> argument.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
///
ClassMethod %Delete(oid As %ObjectIdentity = "", concurrency As %Integer = -1) As %Status [ CodeMode = generator, Final, GenerateAfter = %OnDelete, ServerOnly = 0 ]
{
}

/// Deletes the stored version of the object with ID <var>id</var> from the database.
///
/// <p><METHOD>%DeleteId</METHOD> is identical in operation to the <METHOD>%Delete</METHOD> method except
/// that it uses and Id value instead of an OID value to find an object.
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the optional <var>concurrency</var> argument.
ClassMethod %DeleteId(id As %String, concurrency As %Integer = -1) As %Status [ Final, ServerOnly = 0 ]
{
}

/// Returns true if this is a "NULL" serial object. Subclasses of %SerialObject are expected to override
/// this method. The default implementation returns 0 (false) indicating that the serial object is not
/// null. The default serialization class will generate an IsNull method that checks each property for null
/// and if all are null then IsNull() is 1 (true).
Method %IsNull() As %Boolean [ CodeMode = expression ]
{
}

/// Swizzles a serial object from the value passed and returns an OREF referring to the object.
/// <var>initvalue</var> is the Id (serial value, not a full OID) value of the object to swizzle.
///
/// <p><METHOD>%OpenId</METHOD> is identical in operation to the <METHOD>%Open</METHOD> method except
/// that it uses and Id value instead of an OID value to find an object instance.
///
/// <p><METHOD>%OpenId</METHOD> returns an OREF value that refers to the in-memory object instance.
ClassMethod %OpenId(initvalue As %String, concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle [ CodeMode = expression, Final, ServerOnly = 0 ]
{
}

/// Creates an instance (in-memory version) of a serial object from the
/// serialized value <var>initvalue</var>. Note that <var>concurrency</var> is not used, the argument is kept to keep
/// the interface consistent with <class>%Library.Persistent</class>. If an error occurrs it is returned by refence in <var>sc</var>.
ClassMethod %Open(initvalue As %ObjectIdentity, concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle [ Final, ServerOnly = 0 ]
{
}

Method %LoadInit(oid As %ObjectIdentity) As %Status [ CodeMode = generator, Final, Internal, Private ]
{
}

/// <b>%GetSwizzleObject()</b> is used to obtain the serial value of the object that can
/// later be used by <b>%SetSerial()</b> to restore the object. It calls <b>%SerializeObject()</b>
/// which returns the serialized state of the object or the OID (for persistent objects).
/// Before calling <b>%GetSerial()</b>, <b>%GetSwizzleObject()</b> calls <b>%AddToSaveSet([force])</b>
/// which will result in calling the <b>%GetSwizzleObject()</b> method of other referenced objects,
/// passing along the value of <var>force</var>.
///
/// <p><METHOD>%GetSwizzleObject</METHOD> automatically detects and handles circular references between objects.
/// For example, <METHOD>%GetSwizzleObject</METHOD> will detect if object A refers to object B and object B
/// likewise refers to object A. In this case it will avoid falling into an infinite, recursive loop.
///
/// <p>Note that either reference attribute, A to B or B to A, can be specified as being
/// a required attribute but not both of them. If both reference attributes are required
/// then <METHOD>%GetSwizzleObject</METHOD> will fail.
///
/// <p>By default <METHOD>%GetSwizzleObject</METHOD> automatically manages transactions. You can enable and disable
/// automatic transaction support using the <code>$$SetTransactionMode^%apiOBJ()</code> routine.
///
/// <p>When <METHOD>%GetSwizzleObject</METHOD> serializes an object, it initiates one transaction
/// (by calling TSTART) for the entire set of serializations, including the original object
/// and any related objects. If the serialization operation is successful, <METHOD>%GetSwizzleObject</METHOD>
/// will issue a TCOMMIT command to commit the transaction and write the data to the database.
/// If <METHOD>%GetSwizzleObject</METHOD> encounters an error during the transaction it rolls back the entire
/// transaction and performs the following actions:
/// <ul>
/// <li>It issues a TROLLBACK command to rollback any changes to the database that may
/// have occurred. (In the case of persistent objects with system assigned ids changes to the on-disk
/// counter value, used to determine the next available object id number, are not rolled back.)</li>
/// <li>It attempts to restore the in-memory state of all the objects involved in the transaction to
/// their pre-transaction state. This includes restoring any modified flags, and
/// restoring to null ("") any OID values that have been assigned during the course of
/// the transaction. Additional property values changed during the course of the
/// transaction are not restored, however.</li>
/// <li>It calls the <METHOD>%RollBack</METHOD> method on each object involved with the transaction.
/// The order in which the <METHOD>%RollBack</METHOD> methods are called is undefined. <METHOD>%RollBack</METHOD> will
/// call a user-written <METHOD>%OnRollback</METHOD> method if it is present.</li>
/// </ul>
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %GetSwizzleObject(force As %Integer = 0, ByRef oid As %ObjectIdentity) As %Status [ CodeMode = generator, GenerateAfter = %OnAddToSaveSet, ServerOnly = 1 ]
{
}

Method %GetSerial(force As %Integer = 0) As %String [ CodeMode = generator, Private, ServerOnly = 1 ]
{
}

Method %SetSerial(val As %String) As %Status [ CodeMode = generator, Private, ServerOnly = 1 ]
{
}

/// Converts the serial state of this serial object to a delimited string
/// using the value of the <var>ODBCDELIMITER</var> parameter as a delimiter.
ClassMethod LogicalToOdbc(val As %String = "") As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the value of an incoming delimited string to a serialized state
/// using the value of the <var>ODBCDELIMITER</var> parameter as a delimiter.
ClassMethod OdbcToLogical(val As %String = "") As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

Method %OnOpen() As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

}
