/// Class Member Class: Index
Class %Compiler.Type.Index [ NoContext, Not ProcedureBlock, System = 2 ]
{

/// <index>Exists()
/// 	This method returns true if an object whose index key value matches the value/values passed
/// 	in by the caller. The optional byref id parameter will contain the id matching the object that
/// 	was found to match the index key value upon a successful return.
ClassMethod Exists(ByRef id As %String = "") As %Boolean [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 0 ]
{
}

/// <key>Check()
/// 	This method checks for the existence of the key and locks the object associated with that key.
///
/// 	The optional lockonly parameter is used to validate the key. If lockonly is true then we just want
/// 	to acquire/release a lock for the id associated with the key value. If the key value doesn't exist then
/// 	lockonly causes a success status to be returned, otherwise failure is returned. If lockonly is not true
/// 	then the id associated with the key is looked up, if found the associated object is locked/released.
/// 	Also, the key is validated again after the lock is acquired.
///
/// 		A %Status value is returned.
ClassMethod Check(lockonly As %Integer = 0, concurrency As %Integer = -1) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// <p>The index Open method is generated as a member method for for unique and primary key indices as well as an IDKEY index based on more than one index property.
/// This method, Open, will open the object whose index property values match the supplied values. If no object that matches the supplied values is found
/// then if the optional status parameter is set to an error message. This interface is the same as %OpenId except that <index>Open accepts one parameter
/// corresponding to each property in the index. For example:</p><br>
/// <pre>
///    Set person = ##class(Sample.Person).SSNKeyOpen("111-22-3333",2,.sc)
/// </pre>
/// <br>
/// <p>
/// Upon successful execution, person will be the oref that references an instance of Sample.Person whose SSN property value is "111-22-3333".
/// The concurrency value is 2 and, if an error occurred its value will be in the variable <var>sc</var>.</p>
ClassMethod Open(concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 0 ]
{
}

ClassMethod Delete(concurrency As %Integer = -1) As %Status [ CodeMode = generator, GenerateAfter = Open, ProcedureBlock = 1, ServerOnly = 0 ]
{
}

ClassMethod SQLExists(pLockOnly As %Boolean = 0, ByRef pUnlockRef As %String, %pVal... As %String) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

ClassMethod SQLCheckUnique(pFromOrig As %Boolean = 0, %pID As %String, %pVals... As %String) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

ClassMethod SQLFindPKeyByConstraint(%con As %String) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

ClassMethod SQLFindRowIDByConstraint(%con As %String, pInternal As %Boolean = 0) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

}
