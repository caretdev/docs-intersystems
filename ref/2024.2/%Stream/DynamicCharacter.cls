/// <class>%Stream.DynamicCharacter</class> character stream containing
/// the textual value of
/// an element of a <class>%DynamicAbstractObject</class>. It is
/// particularly useful for
/// holding the value of a <class>%DynamicAbstractObject</class> element
/// with a textual
/// value that would exceed the capacity of an ObjectScript string variable.
/// A <class>%Stream.DynamicCharacter</class> object is readonly and it
/// cannot be modified or saved.
/// But it can be copied to any other %Stream class object that does support
/// modification and saving.
/// <p>
/// One way to create a <class>%Stream.DynamicCharacter</class>
/// is by making a method call that
/// looks like dao.%Get(key,default,"stream") where <var>dao</var> is
/// an object reference
/// to a subclass of <class>%DynamicAbstractObject</class>, and
/// where <var>key</var> is the key name
/// value of an element of a <class>%DynamicObject</class> or the index value of an
/// element of a <class>%DynamicArray</class>.  You can also get a
/// <class>%Stream.DynamicCharacter</class> object by calling the
/// <method class="%Iterator.AbstractIterator">%GetNext</method>(.key,.value,.type)
/// method in one of subclasses of the
/// <class>%Iterator.AbstractIterator</class> class.
///
Class %Stream.DynamicCharacter Extends %Stream.Object [ ClientDataType = CHARACTERSTREAM, OdbcType = LONGVARCHAR, System = 2 ]
{

/// Default length for a Read.
Parameter READLEN = 32000;

/// Default read length when buffering
Parameter BUFLEN = 32000;

Property DAOData [ Internal, ReadOnly ];

Property DAOPos As %Integer [ InitialExpression = 1, Private ];

Property DAOSize As %Integer [ Private ];

/// The line terminator we use for this stream.  It defaults to $CHAR(13,10),
/// CR/LF.  Maximum length is 10 characters.
Property LineTerminator As %String(MAXLEN = 10) [ InitialExpression = {$char(13,10)}, Transient ];

/// <property>Position</property> is a read-only property containing the
/// current character
/// position of the <class>%Stream.DynamicCharacter</class>.  The next
/// <method>Read</method>() method call will
/// start reading at this character position.  Character position 1 is the
/// position of the first character in the stream.  When <var>Position</var>
/// contains the value 1 then the first <method>Read</method>() (after
/// creation of the stream or
/// after execution of the <method>Rewind</method>() method) has not yet
/// been executed.  After
/// the last character has been read then <var>Position</var> will again contain
/// the value 1.
///
Property Position As %Integer [ Calculated ];

/// <property>Size</property> is a read-only property containing the
/// current size of the <class>%Stream.DynamicCharacter</class> in characters
///
Property Size As %Integer [ Calculated ];

/// Implements Property <property>Position</property>
/// which contains
/// the current position within the data stream.
Method PositionGet() As %Integer [ CodeMode = expression ]
{
}

/// Implements Property <property>Size</property>
/// which contains
/// the current size of the data stream.
Method SizeGet() As %Integer [ CodeMode = expression ]
{
}

Method %NormalizeObject() As %Status [ CodeMode = expression ]
{
}

Method %ValidateObject(force As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// Returns true if this is a "NULL" stream; that is, a stream which has never
/// been written to and saved. This is used by the InterSystems IRIS ODBC
/// server.  But a <class>%Stream.DynamicCharacter</class> is never NULL, even if it only contains the
/// empty string.
Method IsNull() As %Boolean [ CodeMode = expression ]
{
}

/// Returns true if this is a "NULL" stream; that is, a stream which has never
/// been written to and saved. This is used by the InterSystems IRIS ODBC
/// server.  But a <class>%Stream.DynamicCharacter</class> is never NULL,
/// even if it only contains the
/// empty string.
Method %IsNull() As %Boolean [ CodeMode = expression ]
{
}

Method %OnNew(initval) As %Status [ Private ]
{
}

Method %LoadData(id As %String) As %Status [ Private ]
{
}

Method %OnRollBack() As %Status [ Private ]
{
}

Method %SaveData(ByRef sid As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(streamvalue As %String, concurrency As %Integer) As %Status [ Private ]
{
}

/// Returns the global reference used to lock the current stream object.
///
ClassMethod %GetLockReference(pLocation As %String(MAXLEN="") = "", pId As %String(MAXLEN="") = "") As %String(MAXLEN="") [ Private ]
{
}

Method %OnConstructClone(object As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Private ]
{
}

Method Read(ByRef len As %Integer = {..#READLEN}, ByRef sc As %Status) As %String
{
}

Method ReadLine(ByRef len As %Integer = {..#READLEN}, ByRef sc As %Status, ByRef eol As %Boolean) As %String
{
}

/// This reads from the stream until it finds the
/// <property>LineTerminator</property> and returns a new
/// <class>%Stream.TmpCharacter</class>
/// stream containing the characters in the line. If the stream does not contain
/// the line terminator then this can potentially be the
/// entire stream.
Method ReadLineIntoStream(ByRef sc As %Status) As %Stream.Object
{
}

Method %LocationSet(val As %String) As %Status
{
}

/// <p>Not supported.  <class>%Stream.DynamicCharacter</class>
/// is readonly.
Method Write(data As %String = "") As %Status
{
}

/// <p>Not supported.  <class>%Stream.DynamicCharacter</class>
/// is readonly.
Method WriteLine(data As %String = "") As %Status
{
}

/// <p>Not supported.  <class>%Stream.DynamicCharacter</class>
/// is readonly.
Method MoveToEnd() As %Status
{
}

/// Move to this <var>position</var> in the stream. If this succeeds then return
/// true, else return false.
/// <p>
/// <method>MoveTo</method>(1) is equivalent to a <method>Rewind</method>().
/// <method>MoveTo</method>(1) will always succeed
/// and it will position the <class>%Stream.DynamicCharacter</class> at
/// character position 1 even if the
/// <class>%Stream.DynamicCharacter</class> contains no characters.
/// Moving to position 1 (or earlier)
/// will be at the first character of the stream; position 2 will be at the
/// second character of the stream, etc.
Method MoveTo(position As %Integer) As %Boolean
{
}

Method Rewind() As %Status
{
}

Method Flush() As %Status
{
}

/// <p>Not supported.  <class>%Stream.DynamicCharacter</class>
/// is readonly.
Method CopyFrom(source As %Stream.Object) As %Status
{
}

/// Write out <var>len</var> characters of the stream to the current device
/// starting from the current position. If <var>len</var> is omitted
/// or set to -1 then the <method>OutputToDevice</method> method
/// will write out the entire stream starting at the beginning and then
/// rewind back to the beginning.  If <var>len</var>&gt0 and we are unable to
/// write <var>len</var>
/// characters because we reach the end of the stream then we will stop writing
/// and set the <property>AtEnd</property> property to 1.  Otherwise, we will leave
/// the stream positioned after the last character written to the device.
/// If parameter <var>len</var>
/// is passed by reference and if no error occurs then the number of
/// characters actually written to the output device will be assigned
/// to <var>len</var>.
/// If zero characters are written because we are already positioned at the end
/// of the stream then <var>len</var> will be assigned to -1.
/// If an error occurs while writing the device then <var>len</var> will be assigned
/// to -2, an error <type>%Status</type> value will be returned and the stream
/// will rollback to its original position.
Method OutputToDevice(ByRef len As %Integer = -1) As %Status
{
}

/// <p>Not supported.  <class>%Stream.DynamicCharacter</class>
/// is readonly.
Method Clear(permanent As %Boolean = 1) As %Status
{
}

Method %ObjectModified() As %Integer [ ServerOnly = 1 ]
{
}

Method %IsModified() As %Integer
{
}

ClassMethod %LogicalToStorage(val As %String) As %String [ Private ]
{
}

ClassMethod %StorageToLogical(val As %String) As %String [ Private ]
{
}

/// Callback for searchable stream
Method BuildValueArray(ByRef subvalue As %String) As %Status [ Private ]
{
}

}
