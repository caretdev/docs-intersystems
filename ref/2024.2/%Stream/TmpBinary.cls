/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Stream.TmpBinary">Working with Streams</a>.</p>
Class %Stream.TmpBinary Extends TmpCharacter [ ClientDataType = BINARYSTREAM, OdbcType = LONGVARBINARY, System = 2 ]
{

/// Copies the contents of <i>source</i> from the beginning up to the
/// the <i>insert offset</i>, adds the <i>new data</i>, moves to the
/// <i>delete size</i> + <i>insert offset</i> position and copies the remainder
/// of the <i>source</i> stream into this Stream.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
///
/// This method is used internally to implement the TSQL UPDATETEXT SQL statement
ClassMethod CopyFromAndUpdate(pSource As %Stream.Object = "", pInsertOffset As %Integer, pDeleteSize As %Integer, pText As %Binary, pTextObject As %Binary, ByRef pStatus As %Library.Status) As %Stream.TmpBinary [ Internal ]
{
}

}
