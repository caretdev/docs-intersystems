/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
Class %Studio.ClassMgr [ System = 4 ]
{

/// Perform basic checks we are allowed to proceed
ClassMethod Check() As %Status
{
}

/// Return the timestamp a class was last modified and last compiled
ClassMethod Timestamp(class As %String(MAXLEN=256), ByRef timemodified As %TimeStamp, ByRef timecompiled As %TimeStamp) As %Status
{
}

/// Lock the class for editing
ClassMethod Lock(class As %String(MAXLEN=256)) As %Status
{
}

/// Unlock the class
ClassMethod UnLock(class As %String(MAXLEN=256)) As %Status
{
}

/// Check if there is a class name conflict
ClassMethod IsClassnameConflict(class As %String(MAXLEN=256)) As %Status
{
}

/// Return the entire class definition in the stream <var>defintion</var> property
ClassMethod GetDefinition(class As %String(MAXLEN=256), Output definition As %Stream.GlobalCharacter, Output Hash As %String(MAXLEN="")) As %Status
{
}

/// Call the OnBeforeLoad/OnAfterLoad source control events for this class
/// return true if the class is modified and false if it is not
ClassMethod OnOpenClass(class As %String(MAXLEN=256), Output modified As %Boolean) As %Status
{
}

/// Passed a class definition in stream <var>definition</var> this is saved
ClassMethod SaveDefinition(ByRef definition As %Stream.GlobalCharacter, Hash As %String(MAXLEN=""), Output List As %Stream.GlobalCharacter, Output Lengths As %String(MAXLEN="")) As %Status
{
}

ClassMethod Delete(class As %String(MAXLEN=256)) As %Status
{
}

ClassMethod GetSchema(schemaspec As %String(MAXLEN=256), ByRef definition As %Stream.GlobalBinary) As %Status
{
}

ClassMethod GetSpecialListByStream(kind As %String, param As %String, ByRef result As %Stream.GlobalBinary) As %Status
{
}

/// Return a list of all classes available in this namespace, it is passed the client hash value
/// in the format $$$SLB(name)_$$$SLB(hash)_$$$SLB(name2)_$$$SLB(hash2). This checks each of the named regions and if they are
/// all identical then it returns with a null stream in <var>List</var>. If any of the regions has
/// changed then we will resend all the classes in this region in the format:<br>
/// $$SLB(name)_$$$SLB(hash)_data_$$$SLB("")_$$$SLB(name2)_$$$SLB(hash2)_data2_$$$SLB("")<br>
/// Where data is of the form:<br>
/// $$$SLB(row)_$$$SLB(nextrow)_...<br>
/// Where row is of the form:<br>
/// $$$SLB(classname)_$$$SLB(timestamp)_$$SLB(superclass)_$$$SLB(classtype defined)_$$$SLB(classtype)_$$$SLB(system)_$$$SLB(hidden)_$$$SLB(abstract)_$$$SLB(import)<br>
/// To tell the client to remove a named block from its cache we will send the hash=-1 for this i.e.<br>
/// $$$SLB(name)_$$$SLB("")_$$$SLB("")_nextblock<br>
/// So the hash is "" and the block is terminated with $$$SLB("") as per normal. Note that the last block is also terminated with $$$SLB("").
/// The lengths of the various block is returned in <var>Lengths</var> which is an output argument. This is a comma separated list
/// of length in characters of the stream data. This can be used to quickly divide the stream into pieces on the client.
ClassMethod ClassList(Hash As %String(MAXLEN=""), Output List As %Stream.GlobalCharacter, Output Lengths As %String(MAXLEN="")) As %Status
{
}

/// Return information about this macro
/// If <var>arglist</var> is not defined ($d(arglist)=0) then it does not return the expansion
ClassMethod GetMacroInf(macroname As %String(MAXLEN=512), arg As %String(MAXLEN=512), arglist As %String(MAXLEN=1024), ByRef signature As %String(MAXLEN=512), ByRef location As %String(MAXLEN=512), ByRef definition As %String(MAXLEN=512), ByRef expansion As %String(MAXLEN=512))
{
}

/// Return list of macros
ClassMethod MacroListExecute(ByRef qHandle As %Binary, arg As %String(MAXLEN=512), ByRef clienthash As %String(MAXLEN=128), Output Reload As %Boolean) As %Status
{
}

ClassMethod MacroListClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = MacroListExecute ]
{
}

ClassMethod MacroListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = MacroListExecute ]
{
}

}
