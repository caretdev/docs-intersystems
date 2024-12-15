Class %Library.ConstraintForeignKey Extends %ConstraintAbstract [ System = 2 ]
{

ClassMethod Delete() As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

ClassMethod Update() As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Method to Check foreign key for existence. If lock is TRUE then the object referenced by
/// the key value is also locked. If the reference does not exist or, if locking is requested and the lock fails
/// then an error message is returned.
ClassMethod Check(lockonly As %Boolean = 0) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod SQLFKeyExists(%p... As %String) As %Status [ CodeMode = generator, Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

ClassMethod SQLFKeyRefAction(pSameTable As %Boolean = 0, k As %Integer, pNoLock As %Boolean = 0, %p... As %String) As %Status [ CodeMode = generator, Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

}
